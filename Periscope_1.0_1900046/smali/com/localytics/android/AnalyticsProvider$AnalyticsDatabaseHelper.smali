.class final Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;
.super Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/AnalyticsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnalyticsDatabaseHelper"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 332
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;-><init>(Ljava/lang/String;I)V

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/localytics/android/AnalyticsProvider$1;)V
    .locals 0

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 37

    .line 360
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER NOT NULL);"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "events"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "blob"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "upload_format"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 370
    const-string v0, "CREATE TABLE %s (%s TEXT PRIMARY KEY, %s TEXT NOT NULL);"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "identifiers"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "key"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "value"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 378
    const-string v0, "CREATE TABLE %s (%s TEXT PRIMARY KEY, %s TEXT NOT NULL);"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "custom_dimensions"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "custom_dimension_key"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "custom_dimension_value"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 415
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT UNIQUE NOT NULL, %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL CHECK(%s IN (%s, %s)), %s INTEGER NOT NULL CHECK(%s IN (%s, %s)), %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s INTEGER CHECK (%s >= 0), %s INTEGER CHECK (%s >= 0), %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL CHECK (%s >= 0), %s TEXT, %s INTEGER);"

    const/16 v1, 0x24

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "info"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "api_key"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "uuid"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "created_time"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "created_time"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "opt_out"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "opt_out"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "0"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "1"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "push_disabled"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "push_disabled"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "0"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string v2, "1"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "sender_id"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string v2, "registration_id"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string v2, "registration_version"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string v2, "customer_id"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string v2, "user_type"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string v2, "fb_attribution"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string v2, "play_attribution"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string v2, "first_android_id"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string v2, "first_advertising_id"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string v2, "package_name"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string v2, "app_version"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string v2, "current_session_uuid"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string v2, "last_session_open_time"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string v2, "last_session_open_time"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string v2, "last_session_close_time"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string v2, "last_session_close_time"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string v2, "next_session_number"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string v2, "next_session_number"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string v2, "next_header_number"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string v2, "next_header_number"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string v2, "queued_close_session_blob"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string v2, "queued_close_session_blob_upload_format"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 466
    sget-object v0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_1b

    .line 468
    sget-object v8, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v8

    .line 470
    const/4 v9, 0x0

    .line 471
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 473
    const/4 v11, 0x0

    .line 474
    const/4 v12, 0x0

    .line 475
    const-wide/16 v13, 0x0

    .line 476
    const/4 v15, 0x0

    .line 477
    const-wide/16 v16, 0x1

    .line 478
    const-wide/16 v18, 0x1

    .line 479
    const/16 v20, 0x0

    .line 480
    const-wide/16 v21, 0x0

    .line 481
    const/16 v23, 0x0

    .line 482
    const/16 v24, 0x0

    .line 483
    const/16 v25, 0x0

    .line 487
    :try_start_1
    sget-object v0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "api_keys"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 488
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    const-string v0, "api_key"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 491
    const-string v0, "uuid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 492
    const-string v0, "created_time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 493
    const-string v0, "opt_out"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "1"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 498
    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eq v0, v9, :cond_3

    .line 500
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 501
    const/4 v9, 0x0

    goto :goto_1

    .line 498
    :catchall_0
    move-exception v26

    const/4 v0, 0x0

    if-eq v0, v9, :cond_2

    .line 500
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 501
    const/4 v9, 0x0

    :cond_2
    throw v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 507
    :cond_3
    :goto_1
    :try_start_4
    sget-object v0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "identifiers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 508
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 510
    const-string v0, "key"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 511
    const-string v0, "value"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 512
    const-string v0, "customer_id"

    move-object/from16 v1, v26

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 513
    move-object/from16 v24, v27

    .line 515
    :cond_4
    const-string v0, "key"

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v0, "value"

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v0, "identifiers"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 518
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 519
    goto :goto_2

    .line 523
    :cond_5
    const/4 v0, 0x0

    if-eq v0, v9, :cond_7

    .line 525
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 526
    const/4 v9, 0x0

    goto :goto_3

    .line 523
    :catchall_1
    move-exception v28

    const/4 v0, 0x0

    if-eq v0, v9, :cond_6

    .line 525
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 526
    const/4 v9, 0x0

    :cond_6
    throw v28
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 532
    :cond_7
    :goto_3
    :try_start_7
    sget-object v0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "custom_dimensions"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 533
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 535
    const-string v0, "custom_dimension_key"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 536
    const-string v0, "custom_dimension_key"

    const-string v1, "com.localytics.android:"

    const-string v2, ""

    move-object/from16 v3, v26

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v0, "custom_dimension_value"

    const-string v1, "custom_dimension_value"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v0, "custom_dimensions"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 539
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 540
    goto :goto_4

    .line 544
    :cond_8
    const/4 v0, 0x0

    if-eq v0, v9, :cond_a

    .line 546
    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 547
    const/4 v9, 0x0

    goto :goto_5

    .line 544
    :catchall_2
    move-exception v29

    const/4 v0, 0x0

    if-eq v0, v9, :cond_9

    .line 546
    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 547
    const/4 v9, 0x0

    :cond_9
    throw v29

    .line 551
    :cond_a
    :goto_5
    const/4 v0, 0x0

    if-eq v0, v11, :cond_14

    .line 553
    sget-object v0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->preUploadBuildBlobs(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 555
    const/16 v27, 0x0

    .line 558
    :goto_6
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v11}, Lcom/localytics/android/MigrationDatabaseHelper;->convertDatabaseToJson(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 559
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 561
    goto/16 :goto_d

    .line 563
    :cond_b
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_7
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v30, v0

    .line 568
    const-string v0, "dt"

    move-object/from16 v1, v30

    :try_start_a
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 570
    const/4 v0, 0x0

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 572
    const-string v0, "seq"

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide/from16 v16, v0

    .line 574
    :cond_c
    move-object/from16 v27, v30

    goto/16 :goto_b

    .line 578
    :cond_d
    const-string v0, "seq"

    move-wide/from16 v1, v16

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    move-wide/from16 v16, v3

    move-object/from16 v3, v27

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 579
    const-string v0, "u"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v27

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string v0, "dt"

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 584
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 585
    const-string v0, "ct"

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v32, v0, v2

    .line 589
    if-eqz v20, :cond_f

    .line 593
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 594
    const-string v0, "upload_format"

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v1}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v34

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    cmp-long v0, v32, v21

    if-lez v0, :cond_e

    .line 599
    const-string v0, "blob"

    move-object/from16 v1, v34

    move-object/from16 v2, v20

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v0, "events"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move-object/from16 v3, v34

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 603
    move-object/from16 v20, v31

    .line 604
    move-wide/from16 v21, v32

    goto :goto_8

    .line 607
    :cond_e
    const-string v0, "blob"

    move-object/from16 v1, v34

    move-object/from16 v2, v31

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v0, "events"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move-object/from16 v3, v34

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 611
    :goto_8
    goto :goto_9

    .line 613
    :cond_f
    move-object/from16 v20, v31

    .line 614
    move-wide/from16 v21, v32

    .line 617
    :goto_9
    const-string v0, "fl"

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 619
    const-string v0, "fl"

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    .line 621
    :cond_10
    goto :goto_a

    .line 624
    :cond_11
    const-string v0, "dt"

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 626
    const-string v0, "nth"

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide/from16 v18, v0

    .line 627
    const-string v0, "u"

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .line 629
    :cond_12
    const-string v0, "blob"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v0, "upload_format"

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v1}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 631
    const-string v0, "events"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 633
    :goto_a
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 634
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    move-object/from16 v1, v28

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 639
    :goto_b
    goto :goto_c

    .line 637
    :catch_0
    move-exception v31

    .line 640
    :goto_c
    goto/16 :goto_7

    .line 641
    :cond_13
    goto/16 :goto_6

    .line 646
    :cond_14
    :goto_d
    :try_start_b
    sget-object v0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 647
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 649
    const-string v0, "api_key"

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v0, "uuid"

    invoke-virtual {v10, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v0, "created_time"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 652
    const-string v0, "opt_out"

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 653
    const-string v0, "push_disabled"

    const-string v1, "push_disabled"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    const-string v0, "sender_id"

    const-string v1, "sender_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v0, "registration_id"

    const-string v1, "registration_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v0, "registration_version"

    const-string v1, "registration_version"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const/4 v0, 0x0

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_15

    .line 659
    const-string v0, "customer_id"

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v0, "user_type"

    const-string v1, "known"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 664
    :cond_15
    const-string v0, "customer_id"

    invoke-virtual {v10, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v0, "user_type"

    const-string v1, "anonymous"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :goto_e
    const-string v0, "fb_attribution"

    const-string v1, "fb_attribution"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v0, "play_attribution"

    const-string v1, "play_attribution"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v0, "first_android_id"

    const-string v1, "first_android_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v0, "first_advertising_id"

    const-string v1, "first_advertising_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v0, "app_version"

    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v0, "package_name"

    const-string v1, "package_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v0, "current_session_uuid"

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v0, "last_session_open_time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 675
    const-string v0, "last_session_open_time"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 676
    const-string v0, "last_session_close_time"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 677
    const-string v0, "next_header_number"

    const-wide/16 v1, 0x1

    add-long v1, v1, v16

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 678
    const-string v0, "next_session_number"

    const-wide/16 v1, 0x1

    add-long v1, v1, v18

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 679
    cmp-long v0, v21, v26

    if-lez v0, :cond_16

    .line 681
    const-string v0, "queued_close_session_blob"

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v0, "queued_close_session_blob_upload_format"

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v1}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 683
    const/4 v0, 0x0

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_17

    .line 685
    const-string v0, ","

    move-object/from16 v1, v25

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setScreenFlow(Ljava/util/List;)V

    goto :goto_f

    .line 688
    :cond_16
    const/4 v0, 0x0

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_17

    .line 690
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 691
    const-string v0, "blob"

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v0, "upload_format"

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v1}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v28

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string v0, "events"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move-object/from16 v3, v28

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 695
    :cond_17
    :goto_f
    const-string v0, "info"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 696
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 701
    :cond_18
    const/4 v0, 0x0

    if-eq v0, v9, :cond_1a

    .line 703
    :try_start_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 704
    const/4 v9, 0x0

    goto :goto_10

    .line 701
    :catchall_3
    move-exception v35

    const/4 v0, 0x0

    if-eq v0, v9, :cond_19

    .line 703
    :try_start_d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 704
    const/4 v9, 0x0

    :cond_19
    throw v35

    .line 708
    :cond_1a
    :goto_10
    invoke-static {}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->cleanUpOldDB()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 709
    monitor-exit v8

    goto :goto_11

    :catchall_4
    move-exception v36

    monitor-exit v8

    throw v36

    .line 711
    :cond_1b
    :goto_11
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 347
    const/4 v0, 0x0

    if-ne v0, p1, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "db cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    const-string v0, "PRAGMA auto_vacuum = INCREMENTAL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 354
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 725
    invoke-super {p0, p1}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 727
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

    .line 729
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    const-string v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 736
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 716
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 718
    invoke-virtual {p0, p1}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 720
    :cond_0
    return-void
.end method
