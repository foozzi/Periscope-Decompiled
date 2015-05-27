.class final Lcom/localytics/android/MigrationDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/MigrationDatabaseHelper$1;,
        Lcom/localytics/android/MigrationDatabaseHelper$EventFlow;,
        Lcom/localytics/android/MigrationDatabaseHelper$ProfileDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$AmpConditionValuesDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$AmpConditionsDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$AmpRuleEventDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$AmpDisplayedDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$AmpRulesDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$UploadBlobsDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$UploadBlobEventsDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$SessionsDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$EventHistoryDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$EventsDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$CustomDimensionsDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$IdentifiersDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$InfoDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$ApiKeysDbColumns;
    }
.end annotation


# static fields
.field private static final CLOSE_EVENT:Ljava/lang/String;

.field private static final EVENTS_SORT_ORDER:Ljava/lang/String;

.field private static final EVENT_FORMAT:Ljava/lang/String; = "%s:%s"

.field private static final FLOW_EVENT:Ljava/lang/String;

.field private static final JOINER_ARG_UPLOAD_EVENTS_COLUMNS:[Ljava/lang/String;

.field private static final OPEN_EVENT:Ljava/lang/String;

.field private static final OPT_IN_EVENT:Ljava/lang/String;

.field private static final OPT_OUT_EVENT:Ljava/lang/String;

.field private static final PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

.field private static final PROJECTION_UPLOAD_EVENTS:[Ljava/lang/String;

.field private static final SELECTION_UPLOAD_NULL_BLOBS:Ljava/lang/String;

.field private static final UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "com.localytics.android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "open"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->OPEN_EVENT:Ljava/lang/String;

    .line 36
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "com.localytics.android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "close"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->CLOSE_EVENT:Ljava/lang/String;

    .line 40
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "com.localytics.android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "opt_in"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->OPT_IN_EVENT:Ljava/lang/String;

    .line 44
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "com.localytics.android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "opt_out"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->OPT_OUT_EVENT:Ljava/lang/String;

    .line 45
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "com.localytics.android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "flow"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->FLOW_EVENT:Ljava/lang/String;

    .line 52
    const-string v0, "CAST(%s as TEXT)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->EVENTS_SORT_ORDER:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "events_key_ref"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

    .line 64
    const-string v0, "CAST(%s AS TEXT)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "events_key_ref"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->JOINER_ARG_UPLOAD_EVENTS_COLUMNS:[Ljava/lang/String;

    .line 75
    const-string v0, "%s IS NULL"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "processed_in_blob"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->SELECTION_UPLOAD_NULL_BLOBS:Ljava/lang/String;

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "event_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "wall_time"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->PROJECTION_UPLOAD_EVENTS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 92
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 93
    return-void
.end method

.method private static convertAttributesToJson(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;J)Lorg/json/JSONObject;
    .locals 15

    .line 2211
    const/4 v8, 0x0

    .line 2214
    move-object v0, p0

    const-string v1, "attributes"

    const-string v2, "%s = ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ?"

    const/16 v3, 0xb

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "events_key_ref"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "attribute_key"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "attribute_key"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "attribute_key"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "attribute_key"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string v4, "attribute_key"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string v4, "attribute_key"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string v4, "attribute_key"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string v4, "attribute_key"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string v4, "attribute_key"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string v4, "attribute_key"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb

    new-array v4, v2, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v2, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v4, v5

    sget-object v2, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v4, v5

    sget-object v2, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v2, v4, v5

    sget-object v2, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    const/4 v5, 0x4

    aput-object v2, v4, v5

    sget-object v2, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    const/4 v5, 0x5

    aput-object v2, v4, v5

    sget-object v2, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    const/4 v5, 0x6

    aput-object v2, v4, v5

    sget-object v2, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    const/4 v5, 0x7

    aput-object v2, v4, v5

    sget-object v2, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    const/16 v5, 0x8

    aput-object v2, v4, v5

    sget-object v2, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    const/16 v5, 0x9

    aput-object v2, v4, v5

    sget-object v2, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    const/16 v5, 0xa

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 2216
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 2218
    const/4 v9, 0x0

    .line 2237
    const/4 v0, 0x0

    if-eq v0, v8, :cond_0

    .line 2239
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2240
    const/4 v8, 0x0

    :cond_0
    return-object v9

    .line 2221
    :cond_1
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 2223
    const-string v0, "attribute_key"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 2224
    const-string v0, "attribute_value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 2225
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2227
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2228
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2230
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2231
    goto :goto_0

    .line 2233
    :cond_2
    move-object v12, v9

    .line 2237
    const/4 v0, 0x0

    if-eq v0, v8, :cond_3

    .line 2239
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2240
    const/4 v8, 0x0

    :cond_3
    return-object v12

    .line 2237
    :catchall_0
    move-exception v14

    const/4 v0, 0x0

    if-eq v0, v8, :cond_4

    .line 2239
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2240
    const/4 v8, 0x0

    :cond_4
    throw v14
.end method

.method static convertDatabaseToJson(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List<Lorg/json/JSONObject;>;"
        }
    .end annotation

    .line 2112
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 2113
    const/4 v9, 0x0

    .line 2116
    move-object/from16 v0, p1

    const-string v1, "upload_blobs"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 2118
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/localytics/android/MigrationDatabaseHelper;->getApiKeyCreationTime(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v10

    .line 2120
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 2121
    const-string v0, "uuid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 2122
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_5

    .line 2126
    :try_start_1
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 2128
    const-string v0, "dt"

    const-string v1, "h"

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2129
    const-string v0, "pa"

    invoke-virtual {v14, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2130
    const-string v0, "seq"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2131
    const-string v0, "u"

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2132
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1}, Lcom/localytics/android/MigrationDatabaseHelper;->getSessionIdForBlobId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v2, v3, v0, v1}, Lcom/localytics/android/MigrationDatabaseHelper;->getAttributesFromSession(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v15

    .line 2133
    const/4 v0, 0x0

    if-ne v0, v15, :cond_0

    .line 2135
    goto/16 :goto_3

    .line 2139
    :cond_0
    const-string v0, "attrs"

    :try_start_2
    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2142
    invoke-static/range {p1 .. p1}, Lcom/localytics/android/MigrationDatabaseHelper;->getIdentifiers(Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONObject;

    move-result-object v16

    .line 2143
    const/4 v0, 0x0

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 2145
    const-string v0, "ids"

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2148
    :cond_1
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2150
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2152
    const/16 v17, 0x0

    .line 2155
    move-object/from16 v0, p1

    const-string v1, "upload_blob_events"

    const/4 v2, 0x2

    :try_start_3
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "events_key_ref"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "upload_blobs_key_ref"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v7, "events_key_ref"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object/from16 v17, v0

    .line 2157
    const-string v0, "events_key_ref"

    move-object/from16 v1, v17

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 2158
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2160
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 2162
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v6, p2

    invoke-static/range {v0 .. v6}, Lcom/localytics/android/MigrationDatabaseHelper;->convertEventToJson(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;JJLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2163
    const-string v0, "upload_blob_events"

    const-string v1, "%s = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    move-object/from16 v4, v17

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v4, v17

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    move-object/from16 v3, p1

    invoke-virtual {v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2173
    :cond_2
    const/4 v0, 0x0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 2175
    :try_start_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 2173
    :catchall_0
    move-exception v19

    const/4 v0, 0x0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 2175
    :try_start_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v19
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2182
    :cond_4
    :goto_2
    goto/16 :goto_0

    .line 2179
    :catch_0
    move-exception v14

    .line 2181
    const-string v0, "Caught exception"

    :try_start_6
    invoke-static {v0, v14}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2182
    goto/16 :goto_0

    .line 2187
    :cond_5
    :goto_3
    if-eqz v9, :cond_7

    .line 2189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2190
    const/4 v9, 0x0

    goto :goto_4

    .line 2187
    :catchall_1
    move-exception v20

    if-eqz v9, :cond_6

    .line 2189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2190
    const/4 v9, 0x0

    :cond_6
    throw v20

    .line 2194
    :cond_7
    :goto_4
    const-string v0, "JSON result is %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 2196
    return-object v8
.end method

.method private static convertEventToJson(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;JJLjava/lang/String;)Lorg/json/JSONObject;
    .locals 30

    .line 1612
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1614
    const/4 v9, 0x0

    .line 1618
    move-object/from16 v0, p0

    const-string v1, "events"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v7, "_id"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 1620
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1622
    const-string v0, "event_name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1623
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/localytics/android/MigrationDatabaseHelper;->getSessionIdForEventId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v11

    .line 1624
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/localytics/android/MigrationDatabaseHelper;->getSessionUuid(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v13

    .line 1625
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/localytics/android/MigrationDatabaseHelper;->getSessionStartTime(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v14

    .line 1627
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->OPEN_EVENT:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1629
    const-string v0, "dt"

    const-string v1, "s"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1630
    const-string v0, "ct"

    const-string v1, "wall_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1631
    const-string v0, "u"

    invoke-virtual {v8, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1633
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/localytics/android/MigrationDatabaseHelper;->getElapsedTimeSinceLastSession(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v16

    .line 1634
    const-wide/16 v0, 0x0

    cmp-long v0, v16, v0

    if-lez v0, :cond_0

    .line 1636
    const-string v0, "sl"

    const-wide/16 v1, 0x3e8

    div-long v1, v16, v1

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1642
    :cond_0
    const-string v0, "nth"

    invoke-virtual {v8, v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1647
    const-string v0, "event_lat"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "event_lng"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1649
    const-string v0, "event_lat"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 1650
    const-string v0, "event_lng"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .line 1652
    const-wide/16 v0, 0x0

    cmpl-double v0, v18, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v0, v20, v0

    if-eqz v0, :cond_1

    .line 1654
    const-string v0, "lat"

    move-wide/from16 v1, v18

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1655
    const-string v0, "lng"

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1659
    :cond_1
    const-string v0, "customer_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1661
    const-string v0, "customer_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1662
    const-string v0, "user_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1664
    const-string v0, "cid"

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1665
    const-string v0, "utp"

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1668
    :cond_2
    const-string v0, "ids"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1670
    const-string v0, "ids"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1671
    const-string v0, "ids"

    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 1677
    :cond_3
    const/16 v18, 0x0

    .line 1680
    move-object/from16 v0, p0

    const-string v1, "attributes"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "events_key_ref"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object/from16 v18, v0

    .line 1682
    const-string v0, "attribute_key"

    move-object/from16 v1, v18

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1683
    const-string v0, "attribute_value"

    move-object/from16 v1, v18

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 1684
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1686
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1687
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1689
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1691
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 1693
    :cond_4
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1695
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 1697
    :cond_5
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1699
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 1701
    :cond_6
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1703
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 1705
    :cond_7
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1707
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 1709
    :cond_8
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1711
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1713
    :cond_9
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1715
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1717
    :cond_a
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1719
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1721
    :cond_b
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1723
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1725
    :cond_c
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1727
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1729
    :cond_d
    :goto_1
    goto/16 :goto_0

    .line 1733
    :cond_e
    const/4 v0, 0x0

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 1735
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 1736
    const/16 v18, 0x0

    goto :goto_2

    .line 1733
    :catchall_0
    move-exception v23

    const/4 v0, 0x0

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_f

    .line 1735
    :try_start_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1736
    const/16 v18, 0x0

    :cond_f
    throw v23

    .line 1739
    :cond_10
    :goto_2
    goto/16 :goto_12

    .line 1740
    :cond_11
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->CLOSE_EVENT:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1742
    const-string v0, "dt"

    const-string v1, "c"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1743
    const-string v0, "u"

    const-string v1, "uuid"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1744
    const-string v0, "su"

    invoke-virtual {v8, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1745
    const-string v0, "ss"

    long-to-double v1, v14

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1746
    const-string v0, "ct"

    const-string v1, "wall_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 1751
    const/16 v16, 0x0

    .line 1754
    move-object/from16 v0, p0

    const-string v1, "sessions"

    const/4 v2, 0x1

    :try_start_4
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "session_start_wall_time"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "session_key_ref"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1756
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1758
    const-string v0, "ctl"

    const-string v1, "wall_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    const-string v3, "session_start_wall_time"

    move-object/from16 v4, v16

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v4, v16

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_3

    .line 1763
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Session didn\'t exist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1768
    :goto_3
    const/4 v0, 0x0

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_14

    .line 1770
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 1771
    const/16 v16, 0x0

    goto :goto_4

    .line 1768
    :catchall_1
    move-exception v24

    const/4 v0, 0x0

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_13

    .line 1770
    :try_start_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1771
    const/16 v16, 0x0

    :cond_13
    throw v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1778
    :cond_14
    :goto_4
    const/16 v17, 0x0

    .line 1781
    move-object/from16 v0, p0

    const-string v1, "event_history"

    const/4 v2, 0x1

    :try_start_7
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ? AND %s = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "session_key_ref"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "type"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v7, "_id"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object/from16 v17, v0

    .line 1783
    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    .line 1784
    :goto_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1786
    const-string v0, "name"

    move-object/from16 v1, v17

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v17

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    .line 1789
    :cond_15
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_16

    .line 1791
    const-string v0, "fl"

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1796
    :cond_16
    const/4 v0, 0x0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_18

    .line 1798
    :try_start_8
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1799
    const/16 v17, 0x0

    goto :goto_6

    .line 1796
    :catchall_2
    move-exception v25

    const/4 v0, 0x0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_17

    .line 1798
    :try_start_9
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1799
    const/16 v17, 0x0

    :cond_17
    throw v25

    .line 1806
    :cond_18
    :goto_6
    const-string v0, "event_lat"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "event_lng"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1808
    const-string v0, "event_lat"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 1809
    const-string v0, "event_lng"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .line 1811
    const-wide/16 v0, 0x0

    cmpl-double v0, v18, v0

    if-eqz v0, :cond_19

    const-wide/16 v0, 0x0

    cmpl-double v0, v20, v0

    if-eqz v0, :cond_19

    .line 1813
    const-string v0, "lat"

    move-wide/from16 v1, v18

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1814
    const-string v0, "lng"

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1818
    :cond_19
    const-string v0, "customer_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1820
    const-string v0, "customer_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1821
    const-string v0, "user_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1823
    const-string v0, "cid"

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1824
    const-string v0, "utp"

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1827
    :cond_1a
    const-string v0, "ids"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1829
    const-string v0, "ids"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1830
    const-string v0, "ids"

    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 1836
    :cond_1b
    const/16 v18, 0x0

    .line 1839
    move-object/from16 v0, p0

    const-string v1, "attributes"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    :try_start_a
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "events_key_ref"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object/from16 v18, v0

    .line 1841
    const-string v0, "attribute_key"

    move-object/from16 v1, v18

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1842
    const-string v0, "attribute_value"

    move-object/from16 v1, v18

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 1843
    :goto_7
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1845
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1846
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1848
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1850
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 1852
    :cond_1c
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1854
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 1856
    :cond_1d
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1858
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 1860
    :cond_1e
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1862
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 1864
    :cond_1f
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1866
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 1868
    :cond_20
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1870
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    .line 1872
    :cond_21
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1874
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    .line 1876
    :cond_22
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1878
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    .line 1880
    :cond_23
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1882
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    .line 1884
    :cond_24
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1886
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1888
    :cond_25
    :goto_8
    goto/16 :goto_7

    .line 1892
    :cond_26
    const/4 v0, 0x0

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_28

    .line 1894
    :try_start_b
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1895
    const/16 v18, 0x0

    goto :goto_9

    .line 1892
    :catchall_3
    move-exception v26

    const/4 v0, 0x0

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_27

    .line 1894
    :try_start_c
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1895
    const/16 v18, 0x0

    :cond_27
    throw v26

    .line 1898
    :cond_28
    :goto_9
    goto/16 :goto_12

    .line 1899
    :cond_29
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->OPT_IN_EVENT:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->OPT_OUT_EVENT:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1901
    :cond_2a
    const-string v0, "dt"

    const-string v1, "o"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1902
    const-string v0, "u"

    move-object/from16 v1, p6

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1903
    const-string v0, "out"

    sget-object v1, Lcom/localytics/android/MigrationDatabaseHelper;->OPT_OUT_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_2b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1904
    const-string v0, "ct"

    const-string v1, "wall_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto/16 :goto_12

    .line 1906
    :cond_2c
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->FLOW_EVENT:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1908
    const-string v0, "dt"

    const-string v1, "f"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1909
    const-string v0, "u"

    const-string v1, "uuid"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1910
    const-string v0, "ss"

    long-to-double v1, v14

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1919
    const/16 v16, 0x0

    .line 1922
    move-object/from16 v0, p0

    const-string v1, "event_history"

    const/4 v2, 0x3

    :try_start_d
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "type"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "processed_in_blob"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "name"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "%s = ? AND %s <= ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "session_key_ref"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "processed_in_blob"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v7, "_id"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1924
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    .line 1925
    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    .line 1926
    :goto_b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1928
    const-string v0, "name"

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1930
    const-string v0, "type"

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_2d

    .line 1932
    const-string v20, "e"

    goto :goto_c

    .line 1936
    :cond_2d
    const-string v20, "s"

    .line 1939
    :goto_c
    const-string v0, "processed_in_blob"

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-nez v0, :cond_2e

    .line 1941
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    .line 1945
    :cond_2e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1947
    :goto_d
    goto :goto_b

    .line 1949
    :cond_2f
    const-string v0, "nw"

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1950
    const-string v0, "od"

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1954
    const/4 v0, 0x0

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_31

    .line 1956
    :try_start_e
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 1957
    const/16 v16, 0x0

    goto :goto_e

    .line 1954
    :catchall_4
    move-exception v27

    const/4 v0, 0x0

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_30

    .line 1956
    :try_start_f
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1957
    const/16 v16, 0x0

    :cond_30
    throw v27

    .line 1960
    :cond_31
    :goto_e
    goto/16 :goto_12

    .line 1966
    :cond_32
    const-string v0, "dt"

    const-string v1, "e"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1967
    const-string v0, "ct"

    const-string v1, "wall_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1968
    const-string v0, "u"

    const-string v1, "uuid"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1969
    const-string v0, "su"

    invoke-virtual {v8, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1970
    const-string v0, "n"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1975
    const-string v0, "clv_increase"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1976
    const-wide/16 v0, 0x0

    cmp-long v0, v16, v0

    if-eqz v0, :cond_33

    .line 1978
    const-string v0, "v"

    move-wide/from16 v1, v16

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1984
    :cond_33
    const-string v0, "event_lat"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "event_lng"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1986
    const-string v0, "event_lat"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 1987
    const-string v0, "event_lng"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .line 1989
    const-wide/16 v0, 0x0

    cmpl-double v0, v18, v0

    if-eqz v0, :cond_34

    const-wide/16 v0, 0x0

    cmpl-double v0, v20, v0

    if-eqz v0, :cond_34

    .line 1991
    const-string v0, "lat"

    move-wide/from16 v1, v18

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1992
    const-string v0, "lng"

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1996
    :cond_34
    const-string v0, "customer_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1998
    const-string v0, "customer_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1999
    const-string v0, "user_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2001
    const-string v0, "cid"

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2002
    const-string v0, "utp"

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2005
    :cond_35
    const-string v0, "ids"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 2007
    const-string v0, "ids"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2008
    const-string v0, "ids"

    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 2014
    :cond_36
    const/16 v18, 0x0

    .line 2017
    move-object/from16 v0, p0

    const-string v1, "attributes"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    :try_start_10
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "events_key_ref"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object/from16 v18, v0

    .line 2019
    const-string v0, "attribute_key"

    move-object/from16 v1, v18

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 2020
    const-string v0, "attribute_value"

    move-object/from16 v1, v18

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 2021
    :goto_f
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2023
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2024
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2026
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2028
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_10

    .line 2030
    :cond_37
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2032
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_10

    .line 2034
    :cond_38
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2036
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_10

    .line 2038
    :cond_39
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2040
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_10

    .line 2042
    :cond_3a
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2044
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_10

    .line 2046
    :cond_3b
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2048
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_10

    .line 2050
    :cond_3c
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2052
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_10

    .line 2054
    :cond_3d
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2056
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_10

    .line 2058
    :cond_3e
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2060
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_10

    .line 2062
    :cond_3f
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2064
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 2066
    :cond_40
    :goto_10
    goto/16 :goto_f

    .line 2070
    :cond_41
    const/4 v0, 0x0

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_43

    .line 2072
    :try_start_11
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 2073
    const/16 v18, 0x0

    goto :goto_11

    .line 2070
    :catchall_5
    move-exception v28

    const/4 v0, 0x0

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_42

    .line 2072
    :try_start_12
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 2073
    const/16 v18, 0x0

    :cond_42
    throw v28

    .line 2077
    :cond_43
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/localytics/android/MigrationDatabaseHelper;->convertAttributesToJson(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v19

    .line 2079
    const/4 v0, 0x0

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_44

    .line 2081
    const-string v0, "attrs"

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2084
    :cond_44
    :goto_12
    goto :goto_13

    .line 2090
    :cond_45
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 2095
    :goto_13
    const/4 v0, 0x0

    if-eq v0, v9, :cond_47

    .line 2097
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2098
    const/4 v9, 0x0

    goto :goto_14

    .line 2095
    :catchall_6
    move-exception v29

    const/4 v0, 0x0

    if-eq v0, v9, :cond_46

    .line 2097
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2098
    const/4 v9, 0x0

    :cond_46
    throw v29

    .line 2102
    :cond_47
    :goto_14
    return-object v8
.end method

.method private static getApiKeyCreationTime(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 12

    .line 2255
    const/4 v8, 0x0

    .line 2258
    move-object v0, p0

    const-string v1, "api_keys"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "api_key"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 2260
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2262
    const-string v0, "created_time"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v9, v0

    .line 2272
    const/4 v0, 0x0

    if-eq v0, v8, :cond_0

    .line 2274
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2275
    const/4 v8, 0x0

    :cond_0
    return-wide v9

    .line 2268
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "API key entry couldn\'t be found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2272
    :catchall_0
    move-exception v11

    const/4 v0, 0x0

    if-eq v0, v8, :cond_2

    .line 2274
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2275
    const/4 v8, 0x0

    :cond_2
    throw v11
.end method

.method private static getAttributesFromSession(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 20

    .line 2291
    const/4 v8, 0x0

    .line 2294
    move-object/from16 v0, p0

    const-string v1, "sessions"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 2296
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2298
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 2301
    const-string v0, "av"

    const-string v1, "app_version"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2302
    const-string v0, "dac"

    const-string v1, "network_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2303
    const-string v0, "device_android_id_hash"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2304
    const-string v0, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2306
    const-string v0, "du"

    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2308
    :cond_0
    const-string v0, "dc"

    const-string v1, "device_country"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2309
    const-string v0, "dma"

    const-string v1, "device_manufacturer"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2310
    const-string v0, "dmo"

    const-string v1, "device_model"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2311
    const-string v0, "dov"

    const-string v1, "android_version"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2312
    const-string v0, "dp"

    const-string v1, "Android"

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2313
    const-string v0, "dms"

    const-string v1, "device_serial_number_hash"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "device_serial_number_hash"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2314
    const-string v0, "dsdk"

    const-string v1, "android_sdk"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2315
    const-string v0, "au"

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2316
    const-string v0, "lv"

    const-string v1, "localytics_library_version"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2317
    const-string v0, "dt"

    const-string v1, "a"

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2318
    const-string v0, "caid"

    const-string v1, "device_android_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v1, "device_android_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2319
    const-string v0, "gcadid"

    const-string v1, "device_advertising_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v1, "device_advertising_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2322
    const-string v0, "iu"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2323
    const/4 v0, 0x0

    if-eq v0, v11, :cond_4

    .line 2325
    const-string v0, "iu"

    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2327
    :cond_4
    const-string v0, "dlc"

    const-string v1, "locale_country"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2328
    const-string v0, "dll"

    const-string v1, "locale_language"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2329
    const-string v0, "nca"

    const-string v1, "network_carrier"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2330
    const-string v0, "nc"

    const-string v1, "network_country"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2333
    const-string v0, "fb_attribution"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getStringFromAppInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2334
    const/4 v0, 0x0

    if-eq v0, v12, :cond_5

    .line 2336
    const-string v0, "fbat"

    invoke-virtual {v9, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2339
    :cond_5
    const-string v0, "play_attribution"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getStringFromAppInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2340
    const/4 v0, 0x0

    if-eq v0, v13, :cond_6

    .line 2342
    const-string v0, "aurl"

    invoke-virtual {v9, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2345
    :cond_6
    const-string v0, "registration_id"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getStringFromAppInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2346
    const/4 v0, 0x0

    if-eq v0, v14, :cond_7

    .line 2348
    const-string v0, "push"

    invoke-virtual {v9, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2351
    :cond_7
    const-string v0, "first_android_id"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getStringFromAppInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2352
    const/4 v0, 0x0

    if-eq v0, v15, :cond_8

    .line 2354
    const-string v0, "aid"

    invoke-virtual {v9, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2357
    :cond_8
    const-string v0, "first_advertising_id"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getStringFromAppInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2358
    const/4 v0, 0x0

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_9

    .line 2360
    const-string v0, "gadid"

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2363
    :cond_9
    const-string v0, "package_name"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/localytics/android/MigrationDatabaseHelper;->getStringFromAppInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2364
    const/4 v0, 0x0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 2366
    const-string v0, "pkg"

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2369
    :cond_a
    move-object/from16 v18, v9

    .line 2376
    const/4 v0, 0x0

    if-eq v0, v8, :cond_b

    .line 2378
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2379
    const/4 v8, 0x0

    :cond_b
    return-object v18

    .line 2372
    :cond_c
    const/4 v9, 0x0

    .line 2376
    const/4 v0, 0x0

    if-eq v0, v8, :cond_d

    .line 2378
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2379
    const/4 v8, 0x0

    :cond_d
    return-object v9

    .line 2376
    :catchall_0
    move-exception v19

    const/4 v0, 0x0

    if-eq v0, v8, :cond_e

    .line 2378
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2379
    const/4 v8, 0x0

    :cond_e
    throw v19
.end method

.method private static getCustomDimensionKey(I)Ljava/lang/String;
    .locals 4

    .line 2665
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "c"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    add-int/lit8 v2, p0, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getElapsedTimeSinceLastSession(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 12

    .line 2638
    const/4 v8, 0x0

    .line 2641
    move-object v0, p0

    const-string v1, "sessions"

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "elapsed"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 2643
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2645
    const-string v0, "elapsed"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    .line 2655
    const/4 v0, 0x0

    if-eq v0, v8, :cond_0

    .line 2657
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2658
    const/4 v8, 0x0

    :cond_0
    return-wide v9

    .line 2651
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2655
    :catchall_0
    move-exception v11

    const/4 v0, 0x0

    if-eq v0, v8, :cond_2

    .line 2657
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2658
    const/4 v8, 0x0

    :cond_2
    throw v11
.end method

.method private static getIdentifiers(Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONObject;
    .locals 12

    .line 2466
    const/4 v8, 0x0

    .line 2469
    move-object v0, p0

    const-string v1, "identifiers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 2471
    const/4 v9, 0x0

    .line 2473
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2475
    const/4 v0, 0x0

    if-ne v0, v9, :cond_0

    .line 2477
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 2480
    :cond_0
    const-string v0, "key"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2483
    :cond_1
    move-object v10, v9

    .line 2487
    const/4 v0, 0x0

    if-eq v0, v8, :cond_2

    .line 2489
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2490
    const/4 v8, 0x0

    :cond_2
    return-object v10

    .line 2487
    :catchall_0
    move-exception v11

    const/4 v0, 0x0

    if-eq v0, v8, :cond_3

    .line 2489
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2490
    const/4 v8, 0x0

    :cond_3
    throw v11
.end method

.method private static getSessionIdForBlobId(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 15

    .line 2397
    const/4 v10, 0x0

    .line 2400
    move-object v0, p0

    const-string v1, "upload_blob_events"

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "events_key_ref"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "upload_blobs_key_ref"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    .line 2402
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2404
    const-string v0, "events_key_ref"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    goto :goto_0

    .line 2412
    :cond_0
    const-wide/16 v11, -0x1

    .line 2417
    const/4 v0, 0x0

    if-eq v0, v10, :cond_1

    .line 2419
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2420
    const/4 v10, 0x0

    :cond_1
    return-wide v11

    .line 2417
    :goto_0
    const/4 v0, 0x0

    if-eq v0, v10, :cond_3

    .line 2419
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2420
    const/4 v10, 0x0

    goto :goto_1

    .line 2417
    :catchall_0
    move-exception v13

    const/4 v0, 0x0

    if-eq v0, v10, :cond_2

    .line 2419
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2420
    const/4 v10, 0x0

    :cond_2
    throw v13

    .line 2427
    :cond_3
    :goto_1
    const/4 v12, 0x0

    .line 2430
    move-object v0, p0

    const-string v1, "events"

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "session_key_ref"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v12, v0

    .line 2432
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2434
    const-string v0, "session_key_ref"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    goto :goto_2

    .line 2441
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No session associated with event"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2446
    :goto_2
    const/4 v0, 0x0

    if-eq v0, v12, :cond_6

    .line 2448
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2449
    const/4 v12, 0x0

    goto :goto_3

    .line 2446
    :catchall_1
    move-exception v14

    const/4 v0, 0x0

    if-eq v0, v12, :cond_5

    .line 2448
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2449
    const/4 v12, 0x0

    :cond_5
    throw v14

    .line 2454
    :cond_6
    :goto_3
    return-wide v10
.end method

.method private static getSessionIdForEventId(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 12

    .line 2536
    const/4 v8, 0x0

    .line 2539
    move-object v0, p0

    const-string v1, "events"

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "session_key_ref"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 2541
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2543
    const-string v0, "session_key_ref"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    .line 2553
    const/4 v0, 0x0

    if-eq v0, v8, :cond_0

    .line 2555
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2556
    const/4 v8, 0x0

    :cond_0
    return-wide v9

    .line 2549
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2553
    :catchall_0
    move-exception v11

    const/4 v0, 0x0

    if-eq v0, v8, :cond_2

    .line 2555
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2556
    const/4 v8, 0x0

    :cond_2
    throw v11
.end method

.method private static getSessionStartTime(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 12

    .line 2604
    const/4 v8, 0x0

    .line 2607
    move-object v0, p0

    const-string v1, "sessions"

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "session_start_wall_time"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 2609
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2611
    const-string v0, "session_start_wall_time"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    .line 2621
    const/4 v0, 0x0

    if-eq v0, v8, :cond_0

    .line 2623
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2624
    const/4 v8, 0x0

    :cond_0
    return-wide v9

    .line 2617
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2621
    :catchall_0
    move-exception v11

    const/4 v0, 0x0

    if-eq v0, v8, :cond_2

    .line 2623
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2624
    const/4 v8, 0x0

    :cond_2
    throw v11
.end method

.method private static getSessionUuid(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .locals 11

    .line 2570
    const/4 v8, 0x0

    .line 2573
    move-object v0, p0

    const-string v1, "sessions"

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "uuid"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 2575
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2577
    const-string v0, "uuid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2587
    const/4 v0, 0x0

    if-eq v0, v8, :cond_0

    .line 2589
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2590
    const/4 v8, 0x0

    :cond_0
    return-object v9

    .line 2583
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2587
    :catchall_0
    move-exception v10

    const/4 v0, 0x0

    if-eq v0, v8, :cond_2

    .line 2589
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2590
    const/4 v8, 0x0

    :cond_2
    throw v10
.end method

.method private static getStringFromAppInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 2504
    const/4 v8, 0x0

    .line 2508
    move-object v0, p0

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 2510
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2512
    invoke-interface {v8, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2517
    const/4 v0, 0x0

    if-eq v0, v8, :cond_0

    .line 2519
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2520
    const/4 v8, 0x0

    :cond_0
    return-object v9

    .line 2517
    :cond_1
    const/4 v0, 0x0

    if-eq v0, v8, :cond_3

    .line 2519
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2520
    const/4 v8, 0x0

    goto :goto_0

    .line 2517
    :catchall_0
    move-exception v10

    const/4 v0, 0x0

    if-eq v0, v8, :cond_2

    .line 2519
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2520
    const/4 v8, 0x0

    :cond_2
    throw v10

    .line 2524
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static preUploadBuildBlobs(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16

    .line 2686
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 2688
    const/4 v9, 0x0

    .line 2689
    const/4 v10, 0x0

    .line 2692
    move-object/from16 v0, p0

    const-string v1, "events"

    :try_start_0
    sget-object v2, Lcom/localytics/android/MigrationDatabaseHelper;->PROJECTION_UPLOAD_EVENTS:[Ljava/lang/String;

    sget-object v7, Lcom/localytics/android/MigrationDatabaseHelper;->EVENTS_SORT_ORDER:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 2694
    move-object/from16 v0, p0

    const-string v1, "upload_blob_events"

    sget-object v2, Lcom/localytics/android/MigrationDatabaseHelper;->PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

    sget-object v7, Lcom/localytics/android/MigrationDatabaseHelper;->UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    .line 2696
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 2697
    new-instance v12, Landroid/database/CursorJoiner;

    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->JOINER_ARG_UPLOAD_EVENTS_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/localytics/android/MigrationDatabaseHelper;->PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

    invoke-direct {v12, v9, v0, v10, v1}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 2698
    invoke-virtual {v12}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorJoiner$Result;

    move-object v14, v0

    .line 2700
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual {v14}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2704
    :pswitch_0
    sget-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->CLOSE_EVENT:Ljava/lang/String;

    const-string v1, "event_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "wall_time"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/localytics/android/Constants;->SESSION_EXPIRATION:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2708
    goto :goto_1

    .line 2711
    :cond_0
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2712
    nop

    .line 2715
    .line 2719
    :goto_1
    :pswitch_1
    goto/16 :goto_0

    .line 2723
    :cond_1
    const/4 v0, 0x0

    if-eq v0, v9, :cond_2

    .line 2725
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2726
    const/4 v9, 0x0

    .line 2729
    :cond_2
    const/4 v0, 0x0

    if-eq v0, v10, :cond_5

    .line 2731
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2732
    const/4 v10, 0x0

    goto :goto_2

    .line 2723
    :catchall_0
    move-exception v15

    const/4 v0, 0x0

    if-eq v0, v9, :cond_3

    .line 2725
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2726
    const/4 v9, 0x0

    .line 2729
    :cond_3
    const/4 v0, 0x0

    if-eq v0, v10, :cond_4

    .line 2731
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2732
    const/4 v10, 0x0

    :cond_4
    throw v15

    .line 2736
    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2739
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2743
    const-string v0, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    const-string v0, "upload_blobs"

    move-object/from16 v1, p0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 2745
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 2748
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v14, v0

    .line 2750
    const-string v0, "upload_blobs_key_ref"

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2751
    const-string v0, "events_key_ref"

    invoke-virtual {v11, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2753
    const-string v0, "upload_blob_events"

    move-object/from16 v1, p0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2755
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 2756
    goto :goto_3

    .line 2758
    :cond_6
    const-string v0, "processed_in_blob"

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2759
    const-string v0, "event_history"

    sget-object v1, Lcom/localytics/android/MigrationDatabaseHelper;->SELECTION_UPLOAD_NULL_BLOBS:Ljava/lang/String;

    move-object/from16 v2, p0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v11, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2760
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 2762
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
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

    .line 111
    :cond_0
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 340
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 342
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

    .line 344
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    const-string v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 351
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 16

    .line 120
    move/from16 v0, p2

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 122
    const-string v0, "upload_blob_events"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    const-string v0, "event_history"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    const-string v0, "upload_blobs"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    const-string v0, "attributes"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    const-string v0, "events"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    const-string v0, "sessions"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    :cond_0
    move/from16 v0, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 134
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "sessions"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "iu"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    :cond_1
    move/from16 v0, p2

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 139
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "sessions"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "device_wifi_mac_hash"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    :cond_2
    move/from16 v0, p2

    const/4 v1, 0x6

    if-ge v0, v1, :cond_5

    .line 144
    const/4 v8, 0x0

    .line 147
    move-object/from16 v0, p1

    const-string v1, "attributes"

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "attribute_key"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 151
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 152
    const-string v0, "attribute_key"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 154
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 155
    const-string v0, "%s = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 156
    const/4 v0, 0x1

    new-array v13, v0, [Ljava/lang/String;

    .line 158
    const/4 v0, -0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 159
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    const-string v0, "attribute_key"

    const-string v1, "%s:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v13, v1

    .line 164
    const-string v0, "attributes"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 166
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 171
    :cond_3
    const/4 v0, 0x0

    if-eq v0, v8, :cond_5

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 174
    const/4 v8, 0x0

    goto :goto_1

    .line 171
    :catchall_0
    move-exception v14

    const/4 v0, 0x0

    if-eq v0, v8, :cond_4

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 174
    const/4 v8, 0x0

    :cond_4
    throw v14

    .line 179
    :cond_5
    :goto_1
    move/from16 v0, p2

    const/4 v1, 0x7

    if-ge v0, v1, :cond_6

    .line 182
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s TEXT, %s INTEGER);"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "info"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "fb_attribution"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "first_run"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 184
    const-string v0, "fb_attribution"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 185
    const-string v0, "first_run"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 186
    const-string v0, "info"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 189
    :cond_6
    move/from16 v0, p2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_7

    .line 192
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL);"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "identifiers"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "key"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "value"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    :cond_7
    move/from16 v0, p2

    const/16 v1, 0x9

    if-ge v0, v1, :cond_8

    .line 198
    const-string v0, "ALTER TABLE %s ADD COLUMN %s INTEGER NOT NULL DEFAULT 0;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "events"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "clv_increase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 201
    :cond_8
    move/from16 v0, p2

    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    .line 204
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "info"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "play_attribution"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    :cond_9
    move/from16 v0, p2

    const/16 v1, 0xb

    if-ge v0, v1, :cond_a

    .line 210
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "info"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "registration_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 211
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "info"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "registration_version"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    :cond_a
    move/from16 v0, p2

    const/16 v1, 0xc

    if-ge v0, v1, :cond_b

    .line 217
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "info"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "first_android_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 218
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "info"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "first_telephony_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 219
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "info"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "package_name"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 220
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 221
    const-string v0, "first_android_id"

    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAndroidIdOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v0, "first_telephony_id"

    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getTelephonyDeviceIdOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "package_name"

    sget-object v1, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "info"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v8, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "sessions"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "device_android_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    :cond_b
    move/from16 v0, p2

    const/16 v1, 0xd

    if-ge v0, v1, :cond_c

    .line 233
    const-string v0, "ALTER TABLE %s ADD COLUMN %s REAL;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "events"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "event_lat"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    const-string v0, "ALTER TABLE %s ADD COLUMN %s REAL;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "events"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "event_lng"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    :cond_c
    move/from16 v0, p2

    const/16 v1, 0xe

    if-ge v0, v1, :cond_d

    .line 240
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER, %s INTEGER, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER, %s INTEGER NOT NULL, %s TEXT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL)"

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "amp_rules"

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

    .line 245
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "amp_ruleevent"

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

    const-string v2, "amp_rules"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER NOT NULL DEFAULT 0, %s INTEGER NOT NULL);"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "amp_displayed"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "displayed"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "campaign_id"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "amp_conditions"

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

    const-string v2, "amp_rules"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 254
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "amp_condition_values"

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

    const-string v2, "amp_conditions"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    :cond_d
    move/from16 v0, p2

    const/16 v1, 0xf

    if-ge v0, v1, :cond_e

    .line 260
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL);"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "custom_dimensions"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "custom_dimension_key"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "custom_dimension_value"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    :cond_e
    move/from16 v0, p2

    const/16 v1, 0x10

    if-ge v0, v1, :cond_10

    .line 266
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "info"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "first_advertising_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 268
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAdvertisingInfo()Lcom/localytics/android/DatapointHelper$AdvertisingInfo;

    move-result-object v9

    .line 269
    const-string v0, "first_advertising_id"

    if-nez v9, :cond_f

    const/4 v1, 0x0

    goto :goto_2

    :cond_f
    iget-object v1, v9, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;->id:Ljava/lang/String;

    :goto_2
    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "info"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v8, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 273
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "sessions"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "device_advertising_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    const-string v0, "ALTER TABLE %s ADD COLUMN %s INTEGER;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "info"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "push_disabled"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 279
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "info"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sender_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 282
    :cond_10
    move/from16 v0, p2

    const/16 v1, 0x11

    if-ge v0, v1, :cond_11

    .line 285
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT, %s INTEGER)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "profile"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "attribute"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "action"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "events"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "customer_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "events"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "user_type"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 290
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "events"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ids"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 293
    const-string v0, "ALTER TABLE %s ADD COLUMN %s INTEGER"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "info"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "last_session_open_time"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    const-string v0, "ALTER TABLE %s ADD COLUMN %s INTEGER NOT NULL CHECK (%s >= 0) DEFAULT 0"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "sessions"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "elapsed"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "elapsed"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 299
    :cond_11
    move/from16 v0, p2

    const/16 v1, 0x12

    if-ge v0, v1, :cond_14

    .line 301
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "profile"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "customer_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    const/4 v8, 0x0

    .line 303
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 308
    move-object/from16 v0, p1

    const-string v1, "profile"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 309
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 311
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    .line 314
    :try_start_2
    new-instance v10, Lorg/json/JSONObject;

    const-string v0, "attribute"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 315
    const-string v0, "attribute"

    const-string v1, "attributes"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "customer_id"

    const-string v1, "id"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "profile"

    const-string v1, "%s = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v11, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v9, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 318
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 323
    goto :goto_3

    .line 320
    :catch_0
    move-exception v12

    .line 322
    const-string v0, "profile"

    const-string v1, "%s = %s"

    const/4 v2, 0x2

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v11, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 323
    goto/16 :goto_3

    .line 328
    :cond_12
    const/4 v0, 0x0

    if-eq v0, v8, :cond_14

    .line 330
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 331
    const/4 v8, 0x0

    goto :goto_4

    .line 328
    :catchall_1
    move-exception v15

    const/4 v0, 0x0

    if-eq v0, v8, :cond_13

    .line 330
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 331
    const/4 v8, 0x0

    :cond_13
    throw v15

    .line 335
    :cond_14
    :goto_4
    return-void
.end method
