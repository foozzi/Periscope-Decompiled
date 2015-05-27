package com.localytics.android;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.provider.BaseColumns;

final class MarketingProvider
  extends BaseProvider
{
  private static final int DATABASE_VERSION = 1;
  
  MarketingProvider(String paramString)
  {
    this.mDb = new MarketingDatabaseHelper(String.format("com.localytics.android.%s.%s.sqlite", new Object[] { DatapointHelper.getSha256_buggy(Localytics.apiKey), paramString }), 1, null).getWritableDatabase();
  }
  
  boolean canAddToDB()
  {
    return true;
  }
  
  long maxSiloDbSize()
  {
    return 9223372036854775807L;
  }
  
  static final class MarketingConditionValuesV3Columns
    implements BaseColumns
  {
    static final String CONDITION_ID_REF = "condition_id_ref";
    static final String TABLE_NAME = "marketing_condition_values";
    static final String VALUE = "value";
    
    private MarketingConditionValuesV3Columns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class MarketingConditionsV3Columns
    implements BaseColumns
  {
    static final String ATTRIBUTE_NAME = "attribute_name";
    static final String OPERATOR = "operator";
    static final String RULE_ID_REF = "rule_id_ref";
    static final String TABLE_NAME = "marketing_conditions";
    
    private MarketingConditionsV3Columns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class MarketingDatabaseHelper
    extends BaseProvider.LocalyticsDatabaseHelper
  {
    private MarketingDatabaseHelper(String paramString, int paramInt)
    {
      super(paramInt);
    }
    
    protected void migrateV2ToV3(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER, %s INTEGER, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER, %s INTEGER NOT NULL, %s TEXT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL)", new Object[] { "marketing_rules", "_id", "campaign_id", "expiration", "display_seconds", "display_session", "version", "phone_location", "phone_size_width", "phone_size_height", "tablet_location", "tablet_size_width", "tablet_size_height", "time_to_display", "internet_required", "ab_test", "rule_name", "location", "devices" }));
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);", new Object[] { "marketing_ruleevent", "_id", "event_name", "rule_id_ref", "marketing_rules", "_id" }));
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE %s (%s INTEGER PRIMARY KEY);", new Object[] { "marketing_displayed", "campaign_id" }));
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);", new Object[] { "marketing_conditions", "_id", "attribute_name", "operator", "rule_id_ref", "marketing_rules", "_id" }));
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);", new Object[] { "marketing_condition_values", "_id", "value", "condition_id_ref", "marketing_conditions", "_id" }));
      if (oldDB != null)
      {
        SQLiteDatabase localSQLiteDatabase = oldDB;
        Object localObject = null;
        try
        {
          ContentValues localContentValues = new ContentValues();
          Cursor localCursor;
          try
          {
            localCursor = oldDB.query("amp_rules", null, null, null, null, null, "_id ASC");
            for (;;)
            {
              localObject = localCursor;
              if (!localCursor.moveToNext()) {
                break;
              }
              localObject = localCursor;
              localContentValues.put("_id", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("_id"))));
              localObject = localCursor;
              localContentValues.put("campaign_id", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("campaign_id"))));
              localObject = localCursor;
              localContentValues.put("expiration", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("expiration"))));
              localObject = localCursor;
              localContentValues.put("display_seconds", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("display_seconds"))));
              localObject = localCursor;
              localContentValues.put("display_session", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("display_session"))));
              localObject = localCursor;
              localContentValues.put("version", localCursor.getString(localCursor.getColumnIndexOrThrow("version")));
              localObject = localCursor;
              localContentValues.put("phone_location", localCursor.getString(localCursor.getColumnIndexOrThrow("phone_location")));
              localObject = localCursor;
              localContentValues.put("phone_size_width", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("phone_size_width"))));
              localObject = localCursor;
              localContentValues.put("phone_size_height", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("phone_size_height"))));
              localObject = localCursor;
              localContentValues.put("tablet_location", localCursor.getString(localCursor.getColumnIndexOrThrow("tablet_location")));
              localObject = localCursor;
              localContentValues.put("tablet_size_width", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("tablet_size_width"))));
              localObject = localCursor;
              localContentValues.put("tablet_size_height", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("tablet_size_height"))));
              localObject = localCursor;
              localContentValues.put("time_to_display", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("time_to_display"))));
              localObject = localCursor;
              localContentValues.put("internet_required", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("internet_required"))));
              localObject = localCursor;
              localContentValues.put("ab_test", localCursor.getString(localCursor.getColumnIndexOrThrow("ab_test")));
              localObject = localCursor;
              localContentValues.put("rule_name", localCursor.getString(localCursor.getColumnIndexOrThrow("rule_name")));
              localObject = localCursor;
              localContentValues.put("location", localCursor.getString(localCursor.getColumnIndexOrThrow("location")));
              localObject = localCursor;
              localContentValues.put("devices", localCursor.getString(localCursor.getColumnIndexOrThrow("devices")));
              localObject = localCursor;
              paramSQLiteDatabase.insert("marketing_rules", null, localContentValues);
              localObject = localCursor;
              localContentValues.clear();
            }
            localObject = localCursor;
            if (localCursor != null)
            {
              localCursor.close();
              localObject = null;
            }
          }
          finally
          {
            if (localObject != null) {
              localObject.close();
            }
          }
          try
          {
            localCursor = oldDB.query("amp_ruleevent", null, null, null, null, null, "_id ASC");
            for (;;)
            {
              localObject = localCursor;
              if (!localCursor.moveToNext()) {
                break;
              }
              localObject = localCursor;
              localContentValues.put("_id", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("_id"))));
              localObject = localCursor;
              localContentValues.put("event_name", localCursor.getString(localCursor.getColumnIndexOrThrow("event_name")));
              localObject = localCursor;
              localContentValues.put("rule_id_ref", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("rule_id_ref"))));
              localObject = localCursor;
              paramSQLiteDatabase.insert("marketing_ruleevent", null, localContentValues);
              localObject = localCursor;
              localContentValues.clear();
            }
            localObject = localCursor;
            if (localCursor != null)
            {
              localCursor.close();
              localObject = null;
            }
          }
          finally
          {
            if (localObject != null) {
              localObject.close();
            }
          }
          try
          {
            localCursor = oldDB.query("amp_displayed", null, null, null, null, null, "_id ASC");
            for (;;)
            {
              localObject = localCursor;
              if (!localCursor.moveToNext()) {
                break;
              }
              localObject = localCursor;
              if (localCursor.getInt(localCursor.getColumnIndexOrThrow("displayed")) == 1)
              {
                localObject = localCursor;
                localContentValues.put("campaign_id", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("campaign_id"))));
                localObject = localCursor;
                paramSQLiteDatabase.insert("marketing_displayed", null, localContentValues);
                localObject = localCursor;
                localContentValues.clear();
              }
            }
            localObject = localCursor;
            if (localCursor != null)
            {
              localCursor.close();
              localObject = null;
            }
          }
          finally
          {
            if (localObject != null) {
              localObject.close();
            }
          }
          try
          {
            localCursor = oldDB.query("amp_conditions", null, null, null, null, null, "_id ASC");
            for (;;)
            {
              localObject = localCursor;
              if (!localCursor.moveToNext()) {
                break;
              }
              localObject = localCursor;
              localContentValues.put("_id", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("_id"))));
              localObject = localCursor;
              localContentValues.put("attribute_name", localCursor.getString(localCursor.getColumnIndexOrThrow("attribute_name")));
              localObject = localCursor;
              localContentValues.put("operator", localCursor.getString(localCursor.getColumnIndexOrThrow("operator")));
              localObject = localCursor;
              localContentValues.put("rule_id_ref", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("rule_id_ref"))));
              localObject = localCursor;
              paramSQLiteDatabase.insert("marketing_conditions", null, localContentValues);
              localObject = localCursor;
              localContentValues.clear();
            }
            localObject = localCursor;
            if (localCursor != null)
            {
              localCursor.close();
              localObject = null;
            }
          }
          finally
          {
            if (localObject != null) {
              localObject.close();
            }
          }
          try
          {
            localCursor = oldDB.query("amp_condition_values", null, null, null, null, null, "_id ASC");
            for (;;)
            {
              localObject = localCursor;
              if (!localCursor.moveToNext()) {
                break;
              }
              localObject = localCursor;
              localContentValues.put("_id", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("_id"))));
              localObject = localCursor;
              localContentValues.put("value", localCursor.getString(localCursor.getColumnIndexOrThrow("value")));
              localObject = localCursor;
              localContentValues.put("condition_id_ref", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("condition_id_ref"))));
              localObject = localCursor;
              paramSQLiteDatabase.insert("marketing_condition_values", null, localContentValues);
              localObject = localCursor;
              localContentValues.clear();
            }
          }
          finally
          {
            if (localObject != null) {
              localObject.close();
            }
          }
          cleanUpOldDB();
          return;
        }
        finally {}
      }
    }
    
    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      if (paramSQLiteDatabase == null) {
        throw new IllegalArgumentException("db cannot be null");
      }
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
  
  static final class MarketingDisplayedV3Columns
    implements BaseColumns
  {
    static final String CAMPAIGN_ID = "campaign_id";
    static final String TABLE_NAME = "marketing_displayed";
    
    private MarketingDisplayedV3Columns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class MarketingRuleEventV3Columns
    implements BaseColumns
  {
    static final String EVENT_NAME = "event_name";
    static final String RULE_ID_REF = "rule_id_ref";
    static final String TABLE_NAME = "marketing_ruleevent";
    
    private MarketingRuleEventV3Columns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class MarketingRulesV3Columns
    implements BaseColumns
  {
    static final String AB_TEST = "ab_test";
    static final String CAMPAIGN_ID = "campaign_id";
    static final String DEVICES = "devices";
    static final String DISPLAY_SECONDS = "display_seconds";
    static final String DISPLAY_SESSION = "display_session";
    static final String EXPIRATION = "expiration";
    static final String INTERNET_REQUIRED = "internet_required";
    static final String LOCATION = "location";
    static final String PHONE_LOCATION = "phone_location";
    static final String PHONE_SIZE_HEIGHT = "phone_size_height";
    static final String PHONE_SIZE_WIDTH = "phone_size_width";
    static final String RULE_NAME = "rule_name";
    static final String TABLET_LOCATION = "tablet_location";
    static final String TABLET_SIZE_HEIGHT = "tablet_size_height";
    static final String TABLET_SIZE_WIDTH = "tablet_size_width";
    static final String TABLE_NAME = "marketing_rules";
    static final String TIME_TO_DISPLAY = "time_to_display";
    static final String VERSION = "version";
    
    private MarketingRulesV3Columns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingProvider
 * JD-Core Version:    0.7.0.1
 */