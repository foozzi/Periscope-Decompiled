.class final Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;
.super Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/ProfileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProfileDatabaseHelper"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;-><init>(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/localytics/android/ProfileProvider$1;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17

    .line 120
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "changes"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "scope"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "change"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "customer_id"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_3

    .line 133
    sget-object v8, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v8

    .line 135
    const/4 v9, 0x0

    .line 138
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 139
    sget-object v0, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "profile"

    const-string v7, "_id ASC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 143
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :try_start_1
    new-instance v11, Lorg/json/JSONObject;

    const-string v0, "attribute"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 149
    const-string v0, "op"

    sget-object v1, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-virtual {v1}, Lcom/localytics/android/ProfileHandler$ProfileOperation;->getOperationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 151
    const-string v0, "attr"

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v0, "value"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v0, "scope"

    sget-object v1, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {v1}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "change"

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "customer_id"

    const-string v1, "customer_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "changes"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 158
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    goto/16 :goto_0

    .line 160
    :catch_0
    move-exception v14

    .line 162
    const-string v0, "Caught JSON exception"

    :try_start_2
    invoke-static {v0, v14}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    goto/16 :goto_0

    .line 166
    :cond_0
    invoke-static {}, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;->cleanUpOldDB()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    const/4 v0, 0x0

    if-eq v0, v9, :cond_2

    .line 172
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    const/4 v9, 0x0

    goto :goto_1

    .line 170
    :catchall_0
    move-exception v15

    const/4 v0, 0x0

    if-eq v0, v9, :cond_1

    .line 172
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 173
    const/4 v9, 0x0

    :cond_1
    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 176
    :cond_2
    :goto_1
    monitor-exit v8

    goto :goto_2

    :catchall_1
    move-exception v16

    monitor-exit v8

    throw v16

    .line 178
    :cond_3
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 107
    const/4 v0, 0x0

    if-ne v0, p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "db cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    const-string v0, "PRAGMA auto_vacuum = INCREMENTAL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 114
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 192
    invoke-super {p0, p1}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 194
    const-string v0, "SQLite library version is: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "select sqlite_version()"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 196
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const-string v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 203
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 183
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;->migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 187
    :cond_0
    return-void
.end method
