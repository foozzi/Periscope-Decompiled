package com.localytics.android;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.provider.BaseColumns;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;

final class AnalyticsProvider
  extends BaseProvider
{
  private static final int DATABASE_VERSION = 1;
  
  AnalyticsProvider(String paramString)
  {
    this.mDb = new AnalyticsDatabaseHelper(String.format("com.localytics.android.%s.%s.sqlite", new Object[] { DatapointHelper.getSha256_buggy(Localytics.apiKey), paramString }), 1, null).getWritableDatabase();
  }
  
  boolean canAddToDB()
  {
    return new File(this.mDb.getPath()).length() < maxSiloDbSize();
  }
  
  long maxSiloDbSize()
  {
    return Constants.dbMaxSizeForAnalytics;
  }
  
  static final class AnalyticsDatabaseHelper
    extends BaseProvider.LocalyticsDatabaseHelper
  {
    private AnalyticsDatabaseHelper(String paramString, int paramInt)
    {
      super(paramInt);
    }
    
    protected void migrateV2ToV3(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER NOT NULL);", new Object[] { "events", "_id", "blob", "upload_format" }));
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE %s (%s TEXT PRIMARY KEY, %s TEXT NOT NULL);", new Object[] { "identifiers", "key", "value" }));
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE %s (%s TEXT PRIMARY KEY, %s TEXT NOT NULL);", new Object[] { "custom_dimensions", "custom_dimension_key", "custom_dimension_value" }));
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT UNIQUE NOT NULL, %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL CHECK(%s IN (%s, %s)), %s INTEGER NOT NULL CHECK(%s IN (%s, %s)), %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s INTEGER CHECK (%s >= 0), %s INTEGER CHECK (%s >= 0), %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL CHECK (%s >= 0), %s TEXT, %s INTEGER);", new Object[] { "info", "_id", "api_key", "uuid", "created_time", "created_time", "opt_out", "opt_out", "0", "1", "push_disabled", "push_disabled", "0", "1", "sender_id", "registration_id", "registration_version", "customer_id", "user_type", "fb_attribution", "play_attribution", "first_android_id", "first_advertising_id", "package_name", "app_version", "current_session_uuid", "last_session_open_time", "last_session_open_time", "last_session_close_time", "last_session_close_time", "next_session_number", "next_session_number", "next_header_number", "next_header_number", "queued_close_session_blob", "queued_close_session_blob_upload_format" }));
      SQLiteDatabase localSQLiteDatabase;
      Object localObject1;
      if (oldDB != null)
      {
        localSQLiteDatabase = oldDB;
        localObject1 = null;
      }
      for (;;)
      {
        long l5;
        Object localObject7;
        Object localObject12;
        try
        {
          ContentValues localContentValues1 = new ContentValues();
          String str1 = null;
          String str2 = null;
          long l7 = 0L;
          boolean bool = false;
          l5 = 1L;
          long l1 = 1L;
          localObject4 = null;
          Object localObject5 = null;
          l2 = 0L;
          Object localObject10 = null;
          Object localObject6 = null;
          Object localObject11 = null;
          localObject9 = null;
          localObject7 = null;
          try
          {
            localObject3 = oldDB.query("api_keys", null, null, null, null, null, null);
            localObject1 = localObject3;
            if (((Cursor)localObject3).moveToFirst())
            {
              localObject1 = localObject3;
              str1 = ((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("api_key"));
              localObject1 = localObject3;
              str2 = ((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("uuid"));
              localObject1 = localObject3;
              l7 = ((Cursor)localObject3).getLong(((Cursor)localObject3).getColumnIndexOrThrow("created_time"));
              localObject1 = localObject3;
              int i = ((Cursor)localObject3).getInt(((Cursor)localObject3).getColumnIndexOrThrow("opt_out"));
              localObject1 = localObject3;
              int j = Integer.valueOf("1").intValue();
              if (i == j) {
                bool = true;
              } else {
                bool = false;
              }
            }
            localObject1 = localObject3;
            if (localObject3 != null)
            {
              ((Cursor)localObject3).close();
              localObject1 = null;
            }
          }
          finally
          {
            if (localObject1 != null) {
              ((Cursor)localObject1).close();
            }
          }
          Object localObject8;
          try
          {
            localObject3 = oldDB.query("identifiers", null, null, null, null, null, null);
            localObject1 = localObject3;
            if (((Cursor)localObject3).moveToNext())
            {
              localObject1 = localObject3;
              localObject12 = ((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("key"));
              localObject1 = localObject3;
              localObject8 = ((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("value"));
              localObject1 = localObject3;
              if (((String)localObject12).equals("customer_id")) {
                localObject11 = localObject8;
              }
              localObject1 = localObject3;
              localContentValues1.put("key", (String)localObject12);
              localObject1 = localObject3;
              localContentValues1.put("value", (String)localObject8);
              localObject1 = localObject3;
              paramSQLiteDatabase.insert("identifiers", null, localContentValues1);
              localObject1 = localObject3;
              localContentValues1.clear();
              continue;
            }
            localObject1 = localObject3;
            if (localObject3 != null)
            {
              ((Cursor)localObject3).close();
              localObject1 = null;
            }
          }
          finally
          {
            if (localObject1 != null) {
              ((Cursor)localObject1).close();
            }
          }
          localObject3 = localObject1;
          try
          {
            localObject1 = oldDB.query("custom_dimensions", null, null, null, null, null, null);
            localObject3 = localObject1;
            if (((Cursor)localObject1).moveToNext())
            {
              localObject3 = localObject1;
              localContentValues1.put("custom_dimension_key", ((Cursor)localObject1).getString(((Cursor)localObject1).getColumnIndexOrThrow("custom_dimension_key")).replace("com.localytics.android:", ""));
              localObject3 = localObject1;
              localContentValues1.put("custom_dimension_value", ((Cursor)localObject1).getString(((Cursor)localObject1).getColumnIndexOrThrow("custom_dimension_value")));
              localObject3 = localObject1;
              paramSQLiteDatabase.insert("custom_dimensions", null, localContentValues1);
              localObject3 = localObject1;
              localContentValues1.clear();
              continue;
            }
            localObject8 = localObject1;
            if (localObject1 != null)
            {
              ((Cursor)localObject1).close();
              localObject8 = null;
            }
          }
          finally
          {
            if (localObject3 != null) {
              ((Cursor)localObject3).close();
            }
          }
          long l3 = l5;
          long l4 = l1;
          long l6 = l2;
          localObject1 = localObject10;
          localObject3 = localObject9;
          Object localObject2;
          if (str1 != null)
          {
            MigrationDatabaseHelper.preUploadBuildBlobs(oldDB);
            localObject9 = null;
            localObject3 = localObject7;
            localObject1 = localObject6;
            localObject4 = localObject5;
            localObject5 = MigrationDatabaseHelper.convertDatabaseToJson(Localytics.appContext, oldDB, str1);
            if (((List)localObject5).isEmpty())
            {
              l3 = l5;
              l4 = l1;
              l6 = l2;
            }
            else
            {
              StringBuilder localStringBuilder = new StringBuilder();
              Iterator localIterator = ((List)localObject5).iterator();
              if (localIterator.hasNext())
              {
                localObject12 = (JSONObject)localIterator.next();
                l6 = l5;
                l3 = l1;
                localObject5 = localObject4;
                l4 = l2;
                localObject6 = localObject1;
                localObject10 = localObject3;
                try
                {
                  if (((JSONObject)localObject12).getString("dt").equals("h"))
                  {
                    l3 = l5;
                    if (localObject9 != null) {
                      break label2724;
                    }
                    l6 = l5;
                    l3 = l1;
                    localObject5 = localObject4;
                    l4 = l2;
                    localObject6 = localObject1;
                    localObject10 = localObject3;
                    l5 = ((JSONObject)localObject12).getLong("seq");
                    l3 = l5;
                    break label2724;
                  }
                  long l8 = 1L + l5;
                  l6 = l8;
                  l3 = l1;
                  localObject5 = localObject4;
                  l4 = l2;
                  localObject6 = localObject1;
                  localObject10 = localObject3;
                  localObject9.put("seq", l5);
                  l6 = l8;
                  l3 = l1;
                  localObject5 = localObject4;
                  l4 = l2;
                  localObject6 = localObject1;
                  localObject10 = localObject3;
                  localObject9.put("u", UUID.randomUUID().toString());
                  l6 = l8;
                  l3 = l1;
                  localObject5 = localObject4;
                  l4 = l2;
                  localObject6 = localObject1;
                  localObject10 = localObject3;
                  localStringBuilder.append(localObject9.toString()).append("\n").append(((JSONObject)localObject12).toString());
                  l6 = l8;
                  l3 = l1;
                  localObject5 = localObject4;
                  l4 = l2;
                  localObject6 = localObject1;
                  localObject10 = localObject3;
                  if (((JSONObject)localObject12).getString("dt").equals("c"))
                  {
                    l6 = l8;
                    l3 = l1;
                    localObject5 = localObject4;
                    l4 = l2;
                    localObject6 = localObject1;
                    localObject10 = localObject3;
                    localObject7 = localStringBuilder.toString();
                    l6 = l8;
                    l3 = l1;
                    localObject5 = localObject4;
                    l4 = l2;
                    localObject6 = localObject1;
                    localObject10 = localObject3;
                    l5 = ((Long)((JSONObject)localObject12).get("ct")).longValue() * 1000L;
                    if (localObject4 == null) {
                      break label2734;
                    }
                    l6 = l8;
                    l3 = l1;
                    localObject5 = localObject4;
                    l4 = l2;
                    localObject6 = localObject1;
                    localObject10 = localObject3;
                    ContentValues localContentValues2 = new ContentValues();
                    l6 = l8;
                    l3 = l1;
                    localObject5 = localObject4;
                    l4 = l2;
                    localObject6 = localObject1;
                    localObject10 = localObject3;
                    localContentValues2.put("upload_format", Integer.valueOf(AnalyticsProvider.EventsV3Columns.UploadFormat.V2.getValue()));
                    if (l5 > l2)
                    {
                      l6 = l8;
                      l3 = l1;
                      localObject5 = localObject4;
                      l4 = l2;
                      localObject6 = localObject1;
                      localObject10 = localObject3;
                      localContentValues2.put("blob", localObject4);
                      l6 = l8;
                      l3 = l1;
                      localObject5 = localObject4;
                      l4 = l2;
                      localObject6 = localObject1;
                      localObject10 = localObject3;
                      paramSQLiteDatabase.insert("events", null, localContentValues2);
                      localObject4 = localObject7;
                      l2 = l5;
                      break label2731;
                    }
                    l6 = l8;
                    l3 = l1;
                    localObject5 = localObject4;
                    l4 = l2;
                    localObject6 = localObject1;
                    localObject10 = localObject3;
                    localContentValues2.put("blob", (String)localObject7);
                    l6 = l8;
                    l3 = l1;
                    localObject5 = localObject4;
                    l4 = l2;
                    localObject6 = localObject1;
                    localObject10 = localObject3;
                    paramSQLiteDatabase.insert("events", null, localContentValues2);
                    break label2731;
                    l6 = l8;
                    l3 = l1;
                    localObject5 = localObject4;
                    l4 = l2;
                    localObject6 = localObject1;
                    localObject10 = localObject3;
                    localObject7 = localObject3;
                    if (!((JSONObject)localObject12).has("fl")) {
                      break label2745;
                    }
                    l6 = l8;
                    l3 = l1;
                    localObject5 = localObject4;
                    l4 = l2;
                    localObject6 = localObject1;
                    localObject10 = localObject3;
                    localObject7 = ((JSONObject)localObject12).getJSONArray("fl").join(",");
                    break label2745;
                  }
                  l5 = l1;
                  localObject7 = localObject1;
                  l6 = l8;
                  l3 = l1;
                  localObject5 = localObject4;
                  l4 = l2;
                  localObject6 = localObject1;
                  localObject10 = localObject3;
                  if (((JSONObject)localObject12).getString("dt").equals("s"))
                  {
                    l6 = l8;
                    l3 = l1;
                    localObject5 = localObject4;
                    l4 = l2;
                    localObject6 = localObject1;
                    localObject10 = localObject3;
                    l5 = ((JSONObject)localObject12).getLong("nth");
                    l6 = l8;
                    l3 = l5;
                    localObject5 = localObject4;
                    l4 = l2;
                    localObject6 = localObject1;
                    localObject10 = localObject3;
                    localObject7 = ((JSONObject)localObject12).getString("u");
                  }
                  l6 = l8;
                  l3 = l5;
                  localObject5 = localObject4;
                  l4 = l2;
                  localObject6 = localObject7;
                  localObject10 = localObject3;
                  localContentValues1.put("blob", localStringBuilder.toString());
                  l6 = l8;
                  l3 = l5;
                  localObject5 = localObject4;
                  l4 = l2;
                  localObject6 = localObject7;
                  localObject10 = localObject3;
                  localContentValues1.put("upload_format", Integer.valueOf(AnalyticsProvider.EventsV3Columns.UploadFormat.V2.getValue()));
                  l6 = l8;
                  l3 = l5;
                  localObject5 = localObject4;
                  l4 = l2;
                  localObject6 = localObject7;
                  localObject10 = localObject3;
                  paramSQLiteDatabase.insert("events", null, localContentValues1);
                  localObject1 = localObject7;
                  l1 = l5;
                  l6 = l8;
                  l3 = l1;
                  localObject5 = localObject4;
                  l4 = l2;
                  localObject6 = localObject1;
                  localObject10 = localObject3;
                  localContentValues1.clear();
                  l6 = l8;
                  l3 = l1;
                  localObject5 = localObject4;
                  l4 = l2;
                  localObject6 = localObject1;
                  localObject10 = localObject3;
                  localStringBuilder.delete(0, localStringBuilder.length());
                  l3 = l8;
                }
                catch (Exception localException)
                {
                  localObject3 = localObject10;
                  localObject2 = localObject6;
                  l2 = l4;
                  localObject4 = localObject5;
                  l1 = l3;
                  l3 = l6;
                }
                l5 = l3;
                continue;
              }
              continue;
            }
          }
          try
          {
            localObject5 = oldDB.query("info", null, null, null, null, null, null);
            localObject8 = localObject5;
            if (((Cursor)localObject5).moveToFirst())
            {
              localObject8 = localObject5;
              localContentValues1.put("api_key", str1);
              localObject8 = localObject5;
              localContentValues1.put("uuid", str2);
              localObject8 = localObject5;
              localContentValues1.put("created_time", Long.valueOf(l7));
              localObject8 = localObject5;
              localContentValues1.put("opt_out", Boolean.valueOf(bool));
              localObject8 = localObject5;
              localContentValues1.put("push_disabled", Integer.valueOf(((Cursor)localObject5).getInt(((Cursor)localObject5).getColumnIndexOrThrow("push_disabled"))));
              localObject8 = localObject5;
              localContentValues1.put("sender_id", ((Cursor)localObject5).getString(((Cursor)localObject5).getColumnIndexOrThrow("sender_id")));
              localObject8 = localObject5;
              localContentValues1.put("registration_id", ((Cursor)localObject5).getString(((Cursor)localObject5).getColumnIndexOrThrow("registration_id")));
              localObject8 = localObject5;
              localContentValues1.put("registration_version", ((Cursor)localObject5).getString(((Cursor)localObject5).getColumnIndexOrThrow("registration_version")));
              if (localObject11 != null)
              {
                localObject8 = localObject5;
                localContentValues1.put("customer_id", localObject11);
                localObject8 = localObject5;
                localContentValues1.put("user_type", "known");
              }
              else
              {
                localObject8 = localObject5;
                localContentValues1.put("customer_id", str2);
                localObject8 = localObject5;
                localContentValues1.put("user_type", "anonymous");
              }
              localObject8 = localObject5;
              localContentValues1.put("fb_attribution", ((Cursor)localObject5).getString(((Cursor)localObject5).getColumnIndexOrThrow("fb_attribution")));
              localObject8 = localObject5;
              localContentValues1.put("play_attribution", ((Cursor)localObject5).getString(((Cursor)localObject5).getColumnIndexOrThrow("play_attribution")));
              localObject8 = localObject5;
              localContentValues1.put("first_android_id", ((Cursor)localObject5).getString(((Cursor)localObject5).getColumnIndexOrThrow("first_android_id")));
              localObject8 = localObject5;
              localContentValues1.put("first_advertising_id", ((Cursor)localObject5).getString(((Cursor)localObject5).getColumnIndexOrThrow("first_advertising_id")));
              localObject8 = localObject5;
              localContentValues1.put("app_version", DatapointHelper.getAppVersion());
              localObject8 = localObject5;
              localContentValues1.put("package_name", ((Cursor)localObject5).getString(((Cursor)localObject5).getColumnIndexOrThrow("package_name")));
              localObject8 = localObject5;
              localContentValues1.put("current_session_uuid", (String)localObject2);
              localObject8 = localObject5;
              l1 = ((Cursor)localObject5).getLong(((Cursor)localObject5).getColumnIndexOrThrow("last_session_open_time"));
              localObject8 = localObject5;
              localContentValues1.put("last_session_open_time", Long.valueOf(l1));
              localObject8 = localObject5;
              localContentValues1.put("last_session_close_time", Long.valueOf(l6));
              localObject8 = localObject5;
              localContentValues1.put("next_header_number", Long.valueOf(1L + l3));
              localObject8 = localObject5;
              localContentValues1.put("next_session_number", Long.valueOf(1L + l4));
              if (l6 > l1)
              {
                localObject8 = localObject5;
                localContentValues1.put("queued_close_session_blob", localObject4);
                localObject8 = localObject5;
                localContentValues1.put("queued_close_session_blob_upload_format", Integer.valueOf(AnalyticsProvider.EventsV3Columns.UploadFormat.V2.getValue()));
                if (localObject3 != null)
                {
                  localObject8 = localObject5;
                  Localytics.setScreenFlow(Arrays.asList(((String)localObject3).split(",")));
                }
              }
              else if (localObject4 != null)
              {
                localObject8 = localObject5;
                localObject2 = new ContentValues();
                localObject8 = localObject5;
                ((ContentValues)localObject2).put("blob", localObject4);
                localObject8 = localObject5;
                ((ContentValues)localObject2).put("upload_format", Integer.valueOf(AnalyticsProvider.EventsV3Columns.UploadFormat.V2.getValue()));
                localObject8 = localObject5;
                paramSQLiteDatabase.insert("events", null, (ContentValues)localObject2);
              }
              localObject8 = localObject5;
              paramSQLiteDatabase.insert("info", null, localContentValues1);
              localObject8 = localObject5;
              localContentValues1.clear();
            }
          }
          finally
          {
            if (localObject8 != null) {
              ((Cursor)localObject8).close();
            }
          }
          cleanUpOldDB();
          return;
        }
        finally {}
        return;
        label2724:
        Object localObject9 = localObject12;
        continue;
        label2731:
        continue;
        label2734:
        Object localObject4 = localObject7;
        long l2 = l5;
        continue;
        label2745:
        Object localObject3 = localObject7;
      }
    }
    
    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      if (paramSQLiteDatabase == null) {
        throw new IllegalArgumentException("db cannot be null");
      }
      paramSQLiteDatabase.execSQL("PRAGMA auto_vacuum = INCREMENTAL;");
      onUpgrade(paramSQLiteDatabase, 0, 1);
    }
    
    public void onOpen(SQLiteDatabase paramSQLiteDatabase)
    {
      super.onOpen(paramSQLiteDatabase);
      Localytics.Log.v(String.format("SQLite library version is: %s", new Object[] { DatabaseUtils.stringForQuery(paramSQLiteDatabase, "select sqlite_version()", null) }));
      if (!paramSQLiteDatabase.isReadOnly()) {
        paramSQLiteDatabase.execSQL("PRAGMA foreign_keys = ON;");
      }
    }
    
    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      if (paramInt1 < 1) {
        migrateV2ToV3(paramSQLiteDatabase);
      }
    }
  }
  
  static final class CustomDimensionsV3Columns
    implements BaseColumns
  {
    static final String CUSTOM_DIMENSION_KEY = "custom_dimension_key";
    static final String CUSTOM_DIMENSION_VALUE = "custom_dimension_value";
    static final String TABLE_NAME = "custom_dimensions";
    
    private CustomDimensionsV3Columns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class EventsV3Columns
    implements BaseColumns
  {
    static final String BLOB = "blob";
    static final String TABLE_NAME = "events";
    static final String UPLOAD_FORMAT = "upload_format";
    
    private EventsV3Columns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
    
    static enum UploadFormat
    {
      V2(2),  V3(3);
      
      private final int value;
      
      private UploadFormat(int paramInt)
      {
        this.value = paramInt;
      }
      
      public int getValue()
      {
        return this.value;
      }
    }
  }
  
  static final class IdentifiersV3Columns
    implements BaseColumns
  {
    static final String KEY = "key";
    static final String TABLE_NAME = "identifiers";
    static final String VALUE = "value";
    
    IdentifiersV3Columns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class InfoV3Columns
    implements BaseColumns
  {
    static final String API_KEY = "api_key";
    static final String APP_VERSION = "app_version";
    static final String CREATED_TIME = "created_time";
    static final String CURRENT_SESSION_UUID = "current_session_uuid";
    static final String CUSTOMER_ID = "customer_id";
    static final String FB_ATTRIBUTION = "fb_attribution";
    static final String FIRST_ADVERTISING_ID = "first_advertising_id";
    static final String FIRST_ANDROID_ID = "first_android_id";
    static final String LAST_SESSION_CLOSE_TIME = "last_session_close_time";
    static final String LAST_SESSION_OPEN_TIME = "last_session_open_time";
    static final String NEXT_HEADER_NUMBER = "next_header_number";
    static final String NEXT_SESSION_NUMBER = "next_session_number";
    static final String OPT_OUT = "opt_out";
    static final String PACKAGE_NAME = "package_name";
    static final String PLAY_ATTRIBUTION = "play_attribution";
    static final String PUSH_DISABLED = "push_disabled";
    static final String QUEUED_CLOSE_SESSION_BLOB = "queued_close_session_blob";
    static final String QUEUED_CLOSE_SESSION_BLOB_UPLOAD_FORMAT = "queued_close_session_blob_upload_format";
    static final String REGISTRATION_ID = "registration_id";
    static final String REGISTRATION_VERSION = "registration_version";
    static final String SENDER_ID = "sender_id";
    static final String TABLE_NAME = "info";
    static final String USER_TYPE = "user_type";
    static final String UUID = "uuid";
    
    private InfoV3Columns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.AnalyticsProvider
 * JD-Core Version:    0.7.0.1
 */