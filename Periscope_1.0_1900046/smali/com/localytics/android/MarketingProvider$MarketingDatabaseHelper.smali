.class final Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;
.super Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MarketingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MarketingDatabaseHelper"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;-><init>(Ljava/lang/String;I)V

    .line 381
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/localytics/android/MarketingProvider$1;)V
    .locals 0

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17

    .line 407
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER, %s INTEGER, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER, %s INTEGER NOT NULL, %s TEXT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL)"

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "marketing_rules"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "campaign_id"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "expiration"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "display_seconds"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "display_session"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "version"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "phone_location"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "phone_size_width"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "phone_size_height"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "tablet_location"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "tablet_size_width"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "tablet_size_height"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string v2, "time_to_display"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "internet_required"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string v2, "ab_test"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string v2, "rule_name"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string v2, "location"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string v2, "devices"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 428
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "marketing_ruleevent"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "event_name"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "rule_id_ref"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "marketing_rules"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 434
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY);"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "marketing_displayed"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "campaign_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 437
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "marketing_conditions"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "attribute_name"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "operator"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "rule_id_ref"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "marketing_rules"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 444
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "marketing_condition_values"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "value"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "condition_id_ref"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "marketing_conditions"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    sget-object v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_10

    .line 451
    sget-object v8, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v8

    .line 453
    const/4 v9, 0x0

    .line 454
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 457
    :try_start_1
    sget-object v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "amp_rules"

    const-string v7, "_id ASC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 458
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const-string v0, "_id"

    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    const-string v0, "campaign_id"

    const-string v1, "campaign_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    const-string v0, "expiration"

    const-string v1, "expiration"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 463
    const-string v0, "display_seconds"

    const-string v1, "display_seconds"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    const-string v0, "display_session"

    const-string v1, "display_session"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 465
    const-string v0, "version"

    const-string v1, "version"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v0, "phone_location"

    const-string v1, "phone_location"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v0, "phone_size_width"

    const-string v1, "phone_size_width"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 468
    const-string v0, "phone_size_height"

    const-string v1, "phone_size_height"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 469
    const-string v0, "tablet_location"

    const-string v1, "tablet_location"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v0, "tablet_size_width"

    const-string v1, "tablet_size_width"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 471
    const-string v0, "tablet_size_height"

    const-string v1, "tablet_size_height"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 472
    const-string v0, "time_to_display"

    const-string v1, "time_to_display"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 473
    const-string v0, "internet_required"

    const-string v1, "internet_required"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    const-string v0, "ab_test"

    const-string v1, "ab_test"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v0, "rule_name"

    const-string v1, "rule_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v0, "location"

    const-string v1, "location"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v0, "devices"

    const-string v1, "devices"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v0, "marketing_rules"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 479
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 484
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v9, :cond_2

    .line 486
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 487
    const/4 v9, 0x0

    goto :goto_1

    .line 484
    :catchall_0
    move-exception v11

    const/4 v0, 0x0

    if-eq v0, v9, :cond_1

    .line 486
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 487
    const/4 v9, 0x0

    :cond_1
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 493
    :cond_2
    :goto_1
    :try_start_4
    sget-object v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "amp_ruleevent"

    const-string v7, "_id ASC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 494
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    const-string v0, "_id"

    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    const-string v0, "event_name"

    const-string v1, "event_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v0, "rule_id_ref"

    const-string v1, "rule_id_ref"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v0, "marketing_ruleevent"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 500
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 505
    :cond_3
    const/4 v0, 0x0

    if-eq v0, v9, :cond_5

    .line 507
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 508
    const/4 v9, 0x0

    goto :goto_3

    .line 505
    :catchall_1
    move-exception v12

    const/4 v0, 0x0

    if-eq v0, v9, :cond_4

    .line 507
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 508
    const/4 v9, 0x0

    :cond_4
    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 514
    :cond_5
    :goto_3
    :try_start_7
    sget-object v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "amp_displayed"

    const-string v7, "_id ASC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 515
    :cond_6
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 517
    const-string v0, "displayed"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 519
    const-string v0, "campaign_id"

    const-string v1, "campaign_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    const-string v0, "marketing_displayed"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 521
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 527
    :cond_7
    const/4 v0, 0x0

    if-eq v0, v9, :cond_9

    .line 529
    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 530
    const/4 v9, 0x0

    goto :goto_5

    .line 527
    :catchall_2
    move-exception v13

    const/4 v0, 0x0

    if-eq v0, v9, :cond_8

    .line 529
    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 530
    const/4 v9, 0x0

    :cond_8
    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 536
    :cond_9
    :goto_5
    :try_start_a
    sget-object v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "amp_conditions"

    const-string v7, "_id ASC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 537
    :goto_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 539
    const-string v0, "_id"

    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    const-string v0, "attribute_name"

    const-string v1, "attribute_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v0, "operator"

    const-string v1, "operator"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v0, "rule_id_ref"

    const-string v1, "rule_id_ref"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    const-string v0, "marketing_conditions"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 544
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    .line 549
    :cond_a
    const/4 v0, 0x0

    if-eq v0, v9, :cond_c

    .line 551
    :try_start_b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 552
    const/4 v9, 0x0

    goto :goto_7

    .line 549
    :catchall_3
    move-exception v14

    const/4 v0, 0x0

    if-eq v0, v9, :cond_b

    .line 551
    :try_start_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 552
    const/4 v9, 0x0

    :cond_b
    throw v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 558
    :cond_c
    :goto_7
    :try_start_d
    sget-object v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "amp_condition_values"

    const-string v7, "_id ASC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 559
    :goto_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 561
    const-string v0, "_id"

    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    const-string v0, "value"

    const-string v1, "value"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v0, "condition_id_ref"

    const-string v1, "condition_id_ref"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    const-string v0, "marketing_condition_values"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 565
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_8

    .line 570
    :cond_d
    const/4 v0, 0x0

    if-eq v0, v9, :cond_f

    .line 572
    :try_start_e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 573
    const/4 v9, 0x0

    goto :goto_9

    .line 570
    :catchall_4
    move-exception v15

    const/4 v0, 0x0

    if-eq v0, v9, :cond_e

    .line 572
    :try_start_f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 573
    const/4 v9, 0x0

    :cond_e
    throw v15

    .line 577
    :cond_f
    :goto_9
    invoke-static {}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->cleanUpOldDB()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 578
    monitor-exit v8

    goto :goto_a

    :catchall_5
    move-exception v16

    monitor-exit v8

    throw v16

    .line 580
    :cond_10
    :goto_a
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 395
    const/4 v0, 0x0

    if-ne v0, p1, :cond_0

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "db cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 401
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 594
    invoke-super {p0, p1}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 596
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

    .line 598
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    const-string v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 605
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 585
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 587
    invoke-virtual {p0, p1}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 589
    :cond_0
    return-void
.end method
