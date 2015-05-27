package com.localytics.android;

import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.provider.BaseColumns;
import java.io.File;

final class ProfileProvider
  extends BaseProvider
{
  private static final int DATABASE_VERSION = 1;
  
  ProfileProvider(String paramString)
  {
    this.mDb = new ProfileDatabaseHelper(String.format("com.localytics.android.%s.%s.sqlite", new Object[] { DatapointHelper.getSha256_buggy(Localytics.apiKey), paramString }), 1, null).getWritableDatabase();
  }
  
  boolean canAddToDB()
  {
    return new File(this.mDb.getPath()).length() < maxSiloDbSize();
  }
  
  long maxSiloDbSize()
  {
    return Constants.dbMaxSizeForProfiles;
  }
  
  static final class ProfileDatabaseHelper
    extends BaseProvider.LocalyticsDatabaseHelper
  {
    private ProfileDatabaseHelper(String paramString, int paramInt)
    {
      super(paramInt);
    }
    
    /* Error */
    protected void migrateV2ToV3(SQLiteDatabase paramSQLiteDatabase)
    {
      // Byte code:
      //   0: aload_1
      //   1: ldc 20
      //   3: iconst_5
      //   4: anewarray 22	java/lang/Object
      //   7: dup
      //   8: iconst_0
      //   9: ldc 24
      //   11: aastore
      //   12: dup
      //   13: iconst_1
      //   14: ldc 26
      //   16: aastore
      //   17: dup
      //   18: iconst_2
      //   19: ldc 28
      //   21: aastore
      //   22: dup
      //   23: iconst_3
      //   24: ldc 30
      //   26: aastore
      //   27: dup
      //   28: iconst_4
      //   29: ldc 32
      //   31: aastore
      //   32: invokestatic 38	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
      //   35: invokevirtual 44	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
      //   38: getstatic 48	com/localytics/android/ProfileProvider$ProfileDatabaseHelper:oldDB	Landroid/database/sqlite/SQLiteDatabase;
      //   41: ifnull +308 -> 349
      //   44: getstatic 48	com/localytics/android/ProfileProvider$ProfileDatabaseHelper:oldDB	Landroid/database/sqlite/SQLiteDatabase;
      //   47: astore 5
      //   49: aload 5
      //   51: monitorenter
      //   52: aconst_null
      //   53: astore 4
      //   55: aload 4
      //   57: astore_3
      //   58: new 50	android/content/ContentValues
      //   61: dup
      //   62: invokespecial 53	android/content/ContentValues:<init>	()V
      //   65: astore 6
      //   67: aload 4
      //   69: astore_3
      //   70: getstatic 48	com/localytics/android/ProfileProvider$ProfileDatabaseHelper:oldDB	Landroid/database/sqlite/SQLiteDatabase;
      //   73: ldc 55
      //   75: aconst_null
      //   76: aconst_null
      //   77: aconst_null
      //   78: aconst_null
      //   79: aconst_null
      //   80: ldc 57
      //   82: invokevirtual 61	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
      //   85: astore 4
      //   87: aload 4
      //   89: astore_3
      //   90: aload 4
      //   92: invokeinterface 67 1 0
      //   97: istore_2
      //   98: iload_2
      //   99: ifeq +206 -> 305
      //   102: aload 4
      //   104: astore_3
      //   105: new 69	org/json/JSONObject
      //   108: dup
      //   109: aload 4
      //   111: aload 4
      //   113: ldc 71
      //   115: invokeinterface 75 2 0
      //   120: invokeinterface 79 2 0
      //   125: invokespecial 81	org/json/JSONObject:<init>	(Ljava/lang/String;)V
      //   128: astore 7
      //   130: aload 4
      //   132: astore_3
      //   133: new 69	org/json/JSONObject
      //   136: dup
      //   137: invokespecial 82	org/json/JSONObject:<init>	()V
      //   140: astore 8
      //   142: aload 4
      //   144: astore_3
      //   145: aload 8
      //   147: ldc 84
      //   149: getstatic 90	com/localytics/android/ProfileHandler$ProfileOperation:ASSIGN	Lcom/localytics/android/ProfileHandler$ProfileOperation;
      //   152: invokevirtual 94	com/localytics/android/ProfileHandler$ProfileOperation:getOperationString	()Ljava/lang/String;
      //   155: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
      //   158: pop
      //   159: aload 4
      //   161: astore_3
      //   162: aload 7
      //   164: invokevirtual 102	org/json/JSONObject:keys	()Ljava/util/Iterator;
      //   167: invokeinterface 108 1 0
      //   172: checkcast 34	java/lang/String
      //   175: astore 9
      //   177: aload 4
      //   179: astore_3
      //   180: aload 8
      //   182: ldc 110
      //   184: aload 9
      //   186: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
      //   189: pop
      //   190: aload 4
      //   192: astore_3
      //   193: aload 8
      //   195: ldc 112
      //   197: aload 7
      //   199: aload 9
      //   201: invokevirtual 116	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
      //   204: invokevirtual 98	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
      //   207: pop
      //   208: aload 4
      //   210: astore_3
      //   211: aload 6
      //   213: ldc 28
      //   215: getstatic 122	com/localytics/android/Localytics$ProfileScope:APPLICATION	Lcom/localytics/android/Localytics$ProfileScope;
      //   218: invokevirtual 125	com/localytics/android/Localytics$ProfileScope:getScope	()Ljava/lang/String;
      //   221: invokevirtual 128	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   224: aload 4
      //   226: astore_3
      //   227: aload 6
      //   229: ldc 30
      //   231: aload 8
      //   233: invokevirtual 131	org/json/JSONObject:toString	()Ljava/lang/String;
      //   236: invokevirtual 128	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   239: aload 4
      //   241: astore_3
      //   242: aload 6
      //   244: ldc 32
      //   246: aload 4
      //   248: aload 4
      //   250: ldc 32
      //   252: invokeinterface 75 2 0
      //   257: invokeinterface 79 2 0
      //   262: invokevirtual 128	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   265: aload 4
      //   267: astore_3
      //   268: aload_1
      //   269: ldc 24
      //   271: aconst_null
      //   272: aload 6
      //   274: invokevirtual 135	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
      //   277: pop2
      //   278: aload 4
      //   280: astore_3
      //   281: aload 6
      //   283: invokevirtual 138	android/content/ContentValues:clear	()V
      //   286: goto -199 -> 87
      //   289: astore 7
      //   291: aload 4
      //   293: astore_3
      //   294: ldc 140
      //   296: aload 7
      //   298: invokestatic 146	com/localytics/android/Localytics$Log:w	(Ljava/lang/String;Ljava/lang/Throwable;)I
      //   301: pop
      //   302: goto -215 -> 87
      //   305: aload 4
      //   307: astore_3
      //   308: invokestatic 149	com/localytics/android/ProfileProvider$ProfileDatabaseHelper:cleanUpOldDB	()V
      //   311: aload 4
      //   313: ifnull +26 -> 339
      //   316: aload 4
      //   318: invokeinterface 152 1 0
      //   323: goto +16 -> 339
      //   326: astore_1
      //   327: aload_3
      //   328: ifnull +9 -> 337
      //   331: aload_3
      //   332: invokeinterface 152 1 0
      //   337: aload_1
      //   338: athrow
      //   339: aload 5
      //   341: monitorexit
      //   342: return
      //   343: astore_1
      //   344: aload 5
      //   346: monitorexit
      //   347: aload_1
      //   348: athrow
      //   349: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	350	0	this	ProfileDatabaseHelper
      //   0	350	1	paramSQLiteDatabase	SQLiteDatabase
      //   97	2	2	bool	boolean
      //   57	275	3	localCursor1	android.database.Cursor
      //   53	264	4	localCursor2	android.database.Cursor
      //   47	298	5	localSQLiteDatabase	SQLiteDatabase
      //   65	217	6	localContentValues	android.content.ContentValues
      //   128	70	7	localJSONObject1	org.json.JSONObject
      //   289	8	7	localJSONException	org.json.JSONException
      //   140	92	8	localJSONObject2	org.json.JSONObject
      //   175	25	9	str	String
      // Exception table:
      //   from	to	target	type
      //   105	130	289	org/json/JSONException
      //   133	142	289	org/json/JSONException
      //   145	159	289	org/json/JSONException
      //   162	177	289	org/json/JSONException
      //   180	190	289	org/json/JSONException
      //   193	208	289	org/json/JSONException
      //   211	224	289	org/json/JSONException
      //   227	239	289	org/json/JSONException
      //   242	265	289	org/json/JSONException
      //   268	278	289	org/json/JSONException
      //   281	286	289	org/json/JSONException
      //   58	67	326	finally
      //   70	87	326	finally
      //   90	98	326	finally
      //   105	130	326	finally
      //   133	142	326	finally
      //   145	159	326	finally
      //   162	177	326	finally
      //   180	190	326	finally
      //   193	208	326	finally
      //   211	224	326	finally
      //   227	239	326	finally
      //   242	265	326	finally
      //   268	278	326	finally
      //   281	286	326	finally
      //   294	302	326	finally
      //   308	311	326	finally
      //   316	323	343	finally
      //   331	337	343	finally
      //   337	339	343	finally
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
  
  static final class ProfileV3Columns
    implements BaseColumns
  {
    static final String CHANGE = "change";
    static final String CUSTOMER_ID = "customer_id";
    static final String DATABASE = "scope";
    static final String TABLE_NAME = "changes";
    
    private ProfileV3Columns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.ProfileProvider
 * JD-Core Version:    0.7.0.1
 */