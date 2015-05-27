package com.localytics.android;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

abstract class BaseProvider
{
  static final String DATABASE_FILE = "com.localytics.android.%s.%s.sqlite";
  private static final String OLD_DATABASE_FILE = "com.localytics.android.%s.sqlite";
  private static final Map<String, String> sCountProjectionMap = Collections.unmodifiableMap(getCountProjectionMap());
  private static final Set<String> sValidTables = Collections.unmodifiableSet(getValidTables());
  SQLiteDatabase mDb;
  
  private static boolean deleteDirectory(File paramFile)
  {
    if ((paramFile.exists()) && (paramFile.isDirectory()))
    {
      String[] arrayOfString = paramFile.list();
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        if (!deleteDirectory(new File(paramFile, arrayOfString[i]))) {
          return false;
        }
        i += 1;
      }
    }
    return paramFile.delete();
  }
  
  static void deleteOldFiles()
  {
    deleteDirectory(new File(Localytics.appContext.getFilesDir(), "localytics"));
  }
  
  private static HashMap<String, String> getCountProjectionMap()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("_count", "COUNT(*)");
    return localHashMap;
  }
  
  private int getNumberOfRows(String paramString)
  {
    return query(paramString, null, null, null, null).getCount();
  }
  
  private static Set<String> getValidTables()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add("events");
    localHashSet.add("custom_dimensions");
    localHashSet.add("info");
    localHashSet.add("identifiers");
    localHashSet.add("changes");
    localHashSet.add("marketing_rules");
    localHashSet.add("marketing_ruleevent");
    localHashSet.add("marketing_conditions");
    localHashSet.add("marketing_condition_values");
    localHashSet.add("marketing_displayed");
    return localHashSet;
  }
  
  private static boolean isValidTable(String paramString)
  {
    return (paramString != null) && (sValidTables.contains(paramString));
  }
  
  abstract boolean canAddToDB();
  
  void close()
  {
    this.mDb.close();
  }
  
  long insert(String paramString, ContentValues paramContentValues)
  {
    Localytics.Log.v(String.format("Insert table: %s, values: %s", new Object[] { paramString, paramContentValues.toString() }));
    if (!canAddToDB())
    {
      Localytics.Log.v(String.format("Database is full; data not inserted", new Object[0]));
      return -1L;
    }
    long l = this.mDb.insertOrThrow(paramString, null, paramContentValues);
    Localytics.Log.v(String.format("Inserted row with new id %d", new Object[] { Long.valueOf(l) }));
    return l;
  }
  
  abstract long maxSiloDbSize();
  
  Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3)
  {
    Localytics.Log.v(String.format("Query table: %s, projection: %s, selection: %s, selectionArgs: %s", new Object[] { paramString1, Arrays.toString(paramArrayOfString1), paramString2, Arrays.toString(paramArrayOfString2) }));
    SQLiteQueryBuilder localSQLiteQueryBuilder = new SQLiteQueryBuilder();
    localSQLiteQueryBuilder.setTables(paramString1);
    if ((paramArrayOfString1 != null) && (1 == paramArrayOfString1.length) && ("_count".equals(paramArrayOfString1[0]))) {
      localSQLiteQueryBuilder.setProjectionMap(sCountProjectionMap);
    }
    paramString1 = localSQLiteQueryBuilder.query(this.mDb, paramArrayOfString1, paramString2, paramArrayOfString2, null, null, paramString3);
    Localytics.Log.v("Query result is: " + DatabaseUtils.dumpCursorToString(paramString1));
    return paramString1;
  }
  
  int remove(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    Localytics.Log.v(String.format("Delete table: %s, selection: %s, selectionArgs: %s", new Object[] { paramString1, paramString2, Arrays.toString(paramArrayOfString) }));
    int i;
    if (paramString2 == null) {
      i = this.mDb.delete(paramString1, "1", null);
    } else {
      i = this.mDb.delete(paramString1, paramString2, paramArrayOfString);
    }
    Localytics.Log.v(String.format("Deleted %d rows", new Object[] { Integer.valueOf(i) }));
    return i;
  }
  
  public void runBatchTransaction(Runnable paramRunnable)
  {
    this.mDb.beginTransaction();
    try
    {
      paramRunnable.run();
      this.mDb.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.mDb.endTransaction();
    }
  }
  
  int update(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    Localytics.Log.v(String.format("Update table: %s, values: %s, selection: %s, selectionArgs: %s", new Object[] { paramString1, paramContentValues.toString(), paramString2, Arrays.toString(paramArrayOfString) }));
    return this.mDb.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
  }
  
  void vacuumIfNecessary()
  {
    if (new File(this.mDb.getPath()).length() >= maxSiloDbSize() * 0.8D) {
      runBatchTransaction(new BaseProvider.1(this));
    }
  }
  
  static abstract class LocalyticsDatabaseHelper
    extends SQLiteOpenHelper
  {
    static final String SQLITE_BOOLEAN_FALSE = "0";
    static final String SQLITE_BOOLEAN_TRUE = "1";
    private static int completedMigrations = 0;
    static SQLiteDatabase oldDB;
    private static File oldDBFile = null;
    
    LocalyticsDatabaseHelper(String paramString, int paramInt)
    {
      super(paramString, null, paramInt);
      try
      {
        if (oldDBFile == null)
        {
          paramString = String.format("com.localytics.android.%s.sqlite", new Object[] { DatapointHelper.getSha256_buggy(Localytics.apiKey) });
          oldDBFile = new File(Localytics.appContext.getDatabasePath(paramString).getPath());
          if (oldDBFile.exists())
          {
            completedMigrations = 0;
            paramString = new MigrationDatabaseHelper(paramString, 18);
            try
            {
              oldDB = paramString.getWritableDatabase();
            }
            catch (SQLiteException paramString)
            {
              Localytics.Log.w("Error opening old database; old data will not be retained.");
            }
          }
        }
        return;
      }
      finally {}
    }
    
    static void cleanUpOldDB()
    {
      completedMigrations += 1;
      if (completedMigrations == 3)
      {
        oldDB.close();
        oldDBFile.delete();
      }
    }
    
    protected abstract void migrateV2ToV3(SQLiteDatabase paramSQLiteDatabase);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.BaseProvider
 * JD-Core Version:    0.7.0.1
 */