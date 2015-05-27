.class final Lcom/localytics/android/AnalyticsHandler;
.super Lcom/localytics/android/BaseHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/AnalyticsHandler$AnalyticsListenersSet;
    }
.end annotation


# static fields
.field private static final MESSAGE_CLOSE:I = 0x66

.field private static final MESSAGE_DISABLE_PUSH:I = 0x70

.field private static final MESSAGE_HANDLE_PUSH_REGISTRATION:I = 0x6e

.field private static final MESSAGE_OPEN:I = 0x65

.field private static final MESSAGE_OPT_OUT:I = 0x6c

.field private static final MESSAGE_REGISTER_PUSH:I = 0x6d

.field private static final MESSAGE_SET_CUSTOM_DIMENSION:I = 0x6b

.field private static final MESSAGE_SET_IDENTIFIER:I = 0x69

.field private static final MESSAGE_SET_LOCATION:I = 0x6a

.field private static final MESSAGE_SET_PUSH_REGID:I = 0x71

.field private static final MESSAGE_SET_REFERRERID:I = 0x72

.field private static final MESSAGE_TAG_EVENT:I = 0x67

.field private static final MESSAGE_TAG_SCREEN:I = 0x68

.field private static final PROJECTION_SET_CUSTOM_DIMENSION:[Ljava/lang/String;

.field private static final PROJECTION_SET_IDENTIFIER:[Ljava/lang/String;

.field private static final SELECTION_SET_CUSTOM_DIMENSION:Ljava/lang/String;

.field private static final SELECTION_SET_IDENTIFIER:Ljava/lang/String;

.field private static sLastLocation:Landroid/location/Location; = null


# instance fields
.field private appWasUpgraded:Z

.field private firstSessionEver:Z

.field private final screenFlow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "custom_dimension_value"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->PROJECTION_SET_CUSTOM_DIMENSION:[Ljava/lang/String;

    .line 130
    const-string v0, "%s = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "custom_dimension_key"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_CUSTOM_DIMENSION:Ljava/lang/String;

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "value"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->PROJECTION_SET_IDENTIFIER:[Ljava/lang/String;

    .line 140
    const-string v0, "%s = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "key"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_IDENTIFIER:Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .line 170
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->screenFlow:Ljava/util/List;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->appWasUpgraded:Z

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->firstSessionEver:Z

    .line 171
    const-string v0, "Analytics"

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->siloName:Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$AnalyticsListenersSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/localytics/android/AnalyticsHandler$AnalyticsListenersSet;-><init>(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/AnalyticsHandler$1;)V

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 174
    return-void
.end method

.method private _addLocationIDsAndCustomDimensions(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1063
    :try_start_0
    sget-object v0, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 1065
    sget-object v0, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 1066
    sget-object v0, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 1067
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-eqz v0, :cond_0

    .line 1069
    const-string v0, "lat"

    invoke-virtual {p1, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1070
    const-string v0, "lng"

    invoke-virtual {p1, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1074
    :cond_0
    const-string v0, "cid"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1075
    const-string v0, "utp"

    invoke-virtual {p1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1077
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1079
    const-string v0, "ids"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    :cond_1
    const/4 v6, 0x0

    .line 1088
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "custom_dimensions"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 1090
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1092
    const-string v0, "custom_dimension_key"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1093
    const-string v0, "custom_dimension_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1094
    const-string v0, "custom_dimension_"

    const-string v1, "c"

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1095
    invoke-virtual {p1, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1096
    goto :goto_0

    .line 1100
    :cond_2
    const/4 v0, 0x0

    if-eq v0, v6, :cond_4

    .line 1102
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1103
    const/4 v6, 0x0

    goto :goto_1

    .line 1100
    :catchall_0
    move-exception v10

    const/4 v0, 0x0

    if-eq v0, v6, :cond_3

    .line 1102
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1103
    const/4 v6, 0x0

    :cond_3
    throw v10
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1109
    :cond_4
    :goto_1
    goto :goto_2

    .line 1107
    :catch_0
    move-exception v6

    .line 1110
    :goto_2
    return-void
.end method

.method private _close()V
    .locals 1

    .line 1302
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_isSessionOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1304
    const-string v0, "Session was not open, so close is not possible."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1305
    return-void

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    check-cast v0, Lcom/localytics/android/AnalyticsListener;

    invoke-interface {v0}, Lcom/localytics/android/AnalyticsListener;->localyticsSessionWillClose()V

    .line 1310
    const-string v0, "close"

    invoke-direct {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_tagEvent(Ljava/lang/String;)V

    .line 1311
    return-void
.end method

.method private _dequeQueuedCloseSessionTag(Z)V
    .locals 11

    .line 1210
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1212
    if-eqz p1, :cond_2

    .line 1214
    const/4 v7, 0x0

    .line 1217
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "queued_close_session_blob"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "queued_close_session_blob_upload_format"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 1218
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    const-string v0, "queued_close_session_blob"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1221
    const-string v0, "queued_close_session_blob_upload_format"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1223
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->screenFlow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1226
    const-string v0, "blob"

    invoke-virtual {v6, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const-string v0, "upload_format"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1228
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "events"

    invoke-virtual {v0, v1, v6}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1229
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 1230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->appWasUpgraded:Z

    .line 1231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->firstSessionEver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v7, :cond_2

    .line 1239
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1240
    const/4 v7, 0x0

    goto :goto_0

    .line 1237
    :catchall_0
    move-exception v10

    const/4 v0, 0x0

    if-eq v0, v7, :cond_1

    .line 1239
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1240
    const/4 v7, 0x0

    :cond_1
    throw v10

    .line 1245
    :cond_2
    :goto_0
    const-string v0, "queued_close_session_blob"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1246
    const-string v0, "queued_close_session_blob_upload_format"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1247
    const-string v0, "last_session_close_time"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1248
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1249
    return-void
.end method

.method private _getCustomDimension(I)Ljava/lang/String;
    .locals 10

    .line 727
    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 729
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 732
    :cond_1
    const/4 v6, 0x0

    .line 733
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->getCustomDimensionAttributeKey(I)Ljava/lang/String;

    move-result-object v7

    .line 734
    const/4 v8, 0x0

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "custom_dimensions"

    sget-object v2, Lcom/localytics/android/AnalyticsHandler;->PROJECTION_SET_CUSTOM_DIMENSION:[Ljava/lang/String;

    sget-object v3, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_CUSTOM_DIMENSION:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 739
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    const-string v0, "custom_dimension_value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 746
    :cond_2
    const/4 v0, 0x0

    if-eq v0, v8, :cond_4

    .line 748
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 749
    const/4 v8, 0x0

    goto :goto_0

    .line 746
    :catchall_0
    move-exception v9

    const/4 v0, 0x0

    if-eq v0, v8, :cond_3

    .line 748
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 749
    const/4 v8, 0x0

    :cond_3
    throw v9

    .line 753
    :cond_4
    :goto_0
    return-object v6
.end method

.method private _getIdentifiers()Lorg/json/JSONObject;
    .locals 10

    .line 1495
    const/4 v6, 0x0

    .line 1496
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1499
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "identifiers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 1501
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    const-string v0, "key"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1511
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v6, :cond_1

    .line 1513
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1514
    const/4 v6, 0x0

    .line 1517
    :cond_1
    return-object v7

    .line 1506
    :catch_0
    move-exception v8

    .line 1511
    const/4 v0, 0x0

    if-eq v0, v6, :cond_2

    .line 1513
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1514
    const/4 v6, 0x0

    .line 1517
    :cond_2
    return-object v7

    .line 1511
    :catchall_0
    move-exception v9

    const/4 v0, 0x0

    if-eq v0, v6, :cond_3

    .line 1513
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1514
    const/4 v6, 0x0

    .line 1517
    :cond_3
    return-object v7
.end method

.method private _handlePushRegistration(Landroid/content/Intent;)V
    .locals 4

    .line 516
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 519
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_isPushDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "GCM registered but push disabled: removing id"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 523
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_setPushID(Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :cond_0
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 528
    const-string v0, "GCM registration failed"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_0

    .line 531
    :cond_1
    const-string v0, "unregistered"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 533
    const-string v0, "GCM unregistered: removing id"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 535
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_setPushID(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_2
    if-eqz v3, :cond_3

    .line 540
    const-string v0, "GCM registered, new id: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 542
    invoke-direct {p0, v3}, Lcom/localytics/android/AnalyticsHandler;->_setPushID(Ljava/lang/String;)V

    .line 544
    :cond_3
    :goto_0
    return-void
.end method

.method private _isOptedOut()Z
    .locals 9

    .line 1609
    const/4 v6, 0x0

    .line 1612
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "opt_out"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 1614
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1616
    const-string v0, "opt_out"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 1621
    :goto_0
    const/4 v0, 0x0

    if-eq v0, v6, :cond_1

    .line 1623
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1624
    const/4 v6, 0x0

    :cond_1
    return v7

    .line 1621
    :cond_2
    const/4 v0, 0x0

    if-eq v0, v6, :cond_4

    .line 1623
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1624
    const/4 v6, 0x0

    goto :goto_1

    .line 1621
    :catchall_0
    move-exception v8

    const/4 v0, 0x0

    if-eq v0, v6, :cond_3

    .line 1623
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1624
    const/4 v6, 0x0

    :cond_3
    throw v8

    .line 1628
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private _isPushDisabled()Z
    .locals 10

    .line 670
    const/4 v6, 0x0

    .line 671
    const/4 v7, 0x0

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "push_disabled"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 675
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    const-string v0, "push_disabled"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 678
    const/4 v0, 0x1

    if-ne v8, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    move v6, v0

    .line 679
    goto :goto_0

    .line 683
    :cond_1
    if-eqz v7, :cond_2

    .line 685
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 686
    const/4 v7, 0x0

    .line 688
    :cond_2
    return v6

    .line 683
    :catchall_0
    move-exception v9

    if-eqz v7, :cond_3

    .line 685
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 686
    const/4 v7, 0x0

    .line 688
    :cond_3
    return v6
.end method

.method private _isSessionOpen()Z
    .locals 12

    .line 1461
    const-wide/16 v6, 0x0

    .line 1462
    const-wide/16 v8, 0x0

    .line 1463
    const/4 v10, 0x0

    .line 1466
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "last_session_open_time"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "last_session_close_time"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    .line 1467
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    const-string v0, "last_session_open_time"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1470
    const-string v0, "last_session_close_time"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 1475
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v10, :cond_2

    .line 1477
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1478
    const/4 v10, 0x0

    goto :goto_0

    .line 1475
    :catchall_0
    move-exception v11

    const/4 v0, 0x0

    if-eq v0, v10, :cond_1

    .line 1477
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1478
    const/4 v10, 0x0

    :cond_1
    throw v11

    .line 1485
    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_3

    cmp-long v0, v6, v8

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private _open()V
    .locals 11

    .line 1151
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_isSessionOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    const-string v0, "Session was already open"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1155
    return-void

    .line 1159
    :cond_0
    const/4 v8, 0x0

    .line 1162
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "last_session_close_time"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 1163
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1165
    const-string v0, "last_session_close_time"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/localytics/android/Constants;->SESSION_EXPIRATION:J

    add-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    check-cast v0, Lcom/localytics/android/AnalyticsListener;

    iget-boolean v1, p0, Lcom/localytics/android/AnalyticsHandler;->appWasUpgraded:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v3}, Lcom/localytics/android/AnalyticsListener;->localyticsSessionWillOpen(ZZZ)V

    .line 1172
    const-string v0, "Opening old closed session and reconnecting"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 1174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_dequeQueuedCloseSessionTag(Z)V

    .line 1176
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    check-cast v0, Lcom/localytics/android/AnalyticsListener;

    iget-boolean v1, p0, Lcom/localytics/android/AnalyticsHandler;->appWasUpgraded:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v3}, Lcom/localytics/android/AnalyticsListener;->localyticsSessionDidOpen(ZZZ)V

    goto :goto_1

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    check-cast v0, Lcom/localytics/android/AnalyticsListener;

    iget-boolean v1, p0, Lcom/localytics/android/AnalyticsHandler;->firstSessionEver:Z

    iget-boolean v2, p0, Lcom/localytics/android/AnalyticsHandler;->appWasUpgraded:Z

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/localytics/android/AnalyticsListener;->localyticsSessionWillOpen(ZZZ)V

    .line 1183
    const-string v0, "Opening new session"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 1185
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_dequeQueuedCloseSessionTag(Z)V

    .line 1186
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAdvertisingInfo()Lcom/localytics/android/DatapointHelper$AdvertisingInfo;

    move-result-object v9

    .line 1187
    if-nez v9, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v9, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;->id:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_setFirstAdvertisingId(Ljava/lang/String;)V

    .line 1188
    const-string v0, "open"

    invoke-direct {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_tagEvent(Ljava/lang/String;)V

    .line 1193
    invoke-static {}, Lcom/localytics/android/BaseProvider;->deleteOldFiles()V

    .line 1194
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    check-cast v0, Lcom/localytics/android/AnalyticsListener;

    iget-boolean v1, p0, Lcom/localytics/android/AnalyticsHandler;->firstSessionEver:Z

    iget-boolean v2, p0, Lcom/localytics/android/AnalyticsHandler;->appWasUpgraded:Z

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/localytics/android/AnalyticsListener;->localyticsSessionDidOpen(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    :cond_3
    :goto_1
    const/4 v0, 0x0

    if-eq v0, v8, :cond_5

    .line 1202
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1203
    const/4 v8, 0x0

    goto :goto_2

    .line 1200
    :catchall_0
    move-exception v10

    const/4 v0, 0x0

    if-eq v0, v8, :cond_4

    .line 1202
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1203
    const/4 v8, 0x0

    :cond_4
    throw v10

    .line 1206
    :cond_5
    :goto_2
    return-void
.end method

.method private _registerPush(Ljava/lang/String;)V
    .locals 12

    .line 613
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_isPushDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    const-string v0, "Registering for GCM but push disabled"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 617
    return-void

    .line 620
    :cond_0
    const/4 v6, 0x0

    .line 622
    const/4 v7, 0x0

    .line 623
    const/4 v8, 0x0

    .line 624
    const/4 v9, 0x0

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "sender_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "registration_version"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "registration_id"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 629
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    const-string v0, "sender_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 632
    const-string v0, "registration_version"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 633
    const-string v0, "registration_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 638
    :cond_1
    const/4 v0, 0x0

    if-eq v0, v6, :cond_3

    .line 640
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 641
    const/4 v6, 0x0

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v10

    const/4 v0, 0x0

    if-eq v0, v6, :cond_2

    .line 640
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 641
    const/4 v6, 0x0

    :cond_2
    throw v10

    .line 646
    :cond_3
    :goto_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 648
    const/4 v8, 0x0

    .line 650
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/AnalyticsHandler;->_setPushID(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_4
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v10

    .line 656
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 659
    :cond_5
    const-string v0, "com.google.android.gms.gcm.GoogleCloudMessaging"

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/localytics/android/ReflectionUtils;->tryInvokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 660
    if-eqz v11, :cond_6

    .line 662
    sput-object p1, Lcom/localytics/android/PushReceiver;->retrySenderId:Ljava/lang/String;

    .line 663
    const-string v0, "register"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v11, v0, v1, v2}, Lcom/localytics/android/ReflectionUtils;->tryInvokeInstance(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_6
    return-void
.end method

.method private _setCustomDimension(ILjava/lang/String;)V
    .locals 10

    .line 1323
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 1325
    :cond_0
    const-string v0, "Only valid dimensions are 0 - 9"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1326
    return-void

    .line 1329
    :cond_1
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->getCustomDimensionAttributeKey(I)Ljava/lang/String;

    move-result-object v6

    .line 1331
    const/4 v7, 0x0

    .line 1334
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "custom_dimensions"

    sget-object v2, Lcom/localytics/android/AnalyticsHandler;->PROJECTION_SET_CUSTOM_DIMENSION:[Ljava/lang/String;

    sget-object v3, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_CUSTOM_DIMENSION:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 1336
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1338
    const/4 v0, 0x0

    if-ne v0, p2, :cond_2

    .line 1340
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "custom_dimensions"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "custom_dimension_key"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1344
    :cond_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1345
    const-string v0, "custom_dimension_key"

    invoke-virtual {v8, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const-string v0, "custom_dimension_value"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "custom_dimensions"

    sget-object v2, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_CUSTOM_DIMENSION:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1348
    goto :goto_0

    .line 1352
    :cond_3
    if-eqz p2, :cond_4

    .line 1354
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1355
    const-string v0, "custom_dimension_key"

    invoke-virtual {v8, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-string v0, "custom_dimension_value"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "custom_dimensions"

    invoke-virtual {v0, v1, v8}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    :cond_4
    :goto_0
    const/4 v0, 0x0

    if-eq v0, v7, :cond_6

    .line 1366
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1367
    const/4 v7, 0x0

    goto :goto_1

    .line 1364
    :catchall_0
    move-exception v9

    const/4 v0, 0x0

    if-eq v0, v7, :cond_5

    .line 1366
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1367
    const/4 v7, 0x0

    :cond_5
    throw v9

    .line 1371
    :cond_6
    :goto_1
    return-void
.end method

.method private _setFirstAdvertisingId(Ljava/lang/String;)V
    .locals 9

    .line 1258
    const/4 v6, 0x0

    .line 1260
    const/4 v7, 0x0

    .line 1263
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "first_advertising_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 1265
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1267
    const-string v0, "first_advertising_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1272
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v7, :cond_2

    .line 1274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1275
    const/4 v7, 0x0

    goto :goto_0

    .line 1272
    :catchall_0
    move-exception v8

    const/4 v0, 0x0

    if-eq v0, v7, :cond_1

    .line 1274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1275
    const/4 v7, 0x0

    :cond_1
    throw v8

    .line 1279
    :cond_2
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1281
    const-string v0, "First advertising id has already been set before."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 1282
    return-void

    .line 1285
    :cond_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1286
    const-string v0, "first_advertising_id"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1288
    return-void
.end method

.method private _setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1375
    if-eqz p2, :cond_0

    .line 1376
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1379
    :cond_0
    const/4 v6, 0x0

    .line 1382
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "identifiers"

    sget-object v2, Lcom/localytics/android/AnalyticsHandler;->PROJECTION_SET_IDENTIFIER:[Ljava/lang/String;

    sget-object v3, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_IDENTIFIER:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 1384
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1386
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1388
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "identifiers"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "key"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "key"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1392
    :cond_1
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1393
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1395
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1396
    const-string v0, "key"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const-string v0, "value"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "identifiers"

    sget-object v2, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_IDENTIFIER:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1400
    :cond_2
    goto :goto_0

    .line 1404
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1406
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1407
    const-string v0, "key"

    invoke-virtual {v7, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-string v0, "value"

    invoke-virtual {v7, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "identifiers"

    invoke-virtual {v0, v1, v7}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    :cond_4
    :goto_0
    const/4 v0, 0x0

    if-eq v0, v6, :cond_6

    .line 1418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1419
    const/4 v6, 0x0

    goto :goto_1

    .line 1416
    :catchall_0
    move-exception v9

    const/4 v0, 0x0

    if-eq v0, v6, :cond_5

    .line 1418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1419
    const/4 v6, 0x0

    :cond_5
    throw v9

    .line 1423
    :cond_6
    :goto_1
    const-string v0, "customer_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1427
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "user_type"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 1428
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1430
    const-string v0, "user_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1431
    const-string v0, "known"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1433
    :cond_7
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1434
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1436
    const-string v0, "customer_id"

    invoke-static {}, Lcom/localytics/android/Localytics;->getInstallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const-string v0, "user_type"

    const-string v1, "anonymous"

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1441
    :cond_8
    const-string v0, "customer_id"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const-string v0, "user_type"

    const-string v1, "known"

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    :goto_2
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1450
    :cond_9
    const/4 v0, 0x0

    if-eq v0, v6, :cond_b

    .line 1452
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1453
    const/4 v6, 0x0

    goto :goto_3

    .line 1450
    :catchall_1
    move-exception v10

    const/4 v0, 0x0

    if-eq v0, v6, :cond_a

    .line 1452
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1453
    const/4 v6, 0x0

    :cond_a
    throw v10

    .line 1457
    :cond_b
    :goto_3
    return-void
.end method

.method private _setOptedOut(Z)V
    .locals 5

    .line 1634
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_isOptedOut()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1636
    return-void

    .line 1639
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "opt_out"

    goto :goto_0

    :cond_1
    const-string v0, "opt_in"

    :goto_0
    invoke-direct {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_tagEvent(Ljava/lang/String;)V

    .line 1641
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_isSessionOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1643
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_close()V

    .line 1646
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1647
    const-string v0, "opt_out"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1648
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1649
    return-void
.end method

.method private _setPushDisabled(I)V
    .locals 5

    .line 509
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 510
    const-string v0, "push_disabled"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method private _setPushID(Ljava/lang/String;)V
    .locals 5

    .line 1693
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1694
    const-string v0, "registration_id"

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    const-string v0, "registration_version"

    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1697
    return-void
.end method

.method private _setPushID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1701
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1702
    const-string v0, "sender_id"

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    const-string v0, "registration_id"

    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1705
    return-void
.end method

.method private _setReferrerId(Ljava/lang/String;)V
    .locals 10

    .line 1809
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1811
    const/4 v6, 0x0

    .line 1814
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "play_attribution"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 1816
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1818
    const-string v0, "play_attribution"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1819
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1821
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1822
    const-string v0, "play_attribution"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1829
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v6, :cond_2

    .line 1831
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1832
    const/4 v6, 0x0

    goto :goto_0

    .line 1829
    :catchall_0
    move-exception v9

    const/4 v0, 0x0

    if-eq v0, v6, :cond_1

    .line 1831
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1832
    const/4 v6, 0x0

    :cond_1
    throw v9

    .line 1836
    :cond_2
    :goto_0
    return-void
.end method

.method private _tagEvent(Ljava/lang/String;)V
    .locals 2

    .line 704
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/localytics/android/AnalyticsHandler;->_tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    .line 705
    return-void
.end method

.method private _tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/Long;)V"
        }
    .end annotation

    .line 823
    const/4 v6, 0x0

    .line 824
    const/4 v7, 0x0

    .line 825
    const-string v8, ""

    .line 826
    const-string v9, ""

    .line 827
    const-string v10, ""

    .line 828
    const/4 v11, 0x0

    .line 829
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 830
    const-wide/16 v13, 0x0

    .line 831
    const-string v0, "dt"

    const-string v1, "h"

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 832
    const-string v0, "u"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 834
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v15, v0

    .line 835
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    move-object/from16 v0, p0

    :try_start_1
    iget-object v0, v0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v11, v0

    .line 840
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 842
    const-string v0, "pa"

    const-string v1, "created_time"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 843
    const-string v0, "next_header_number"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 844
    const-string v0, "next_session_number"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 845
    const-string v0, "customer_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 846
    const-string v0, "user_type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 847
    const-string v0, "current_session_uuid"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 848
    const-string v0, "seq"

    invoke-virtual {v12, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 850
    const-string v0, "dt"

    const-string v1, "a"

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 851
    const-string v0, "au"

    sget-object v1, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 852
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAndroidIdHashOrNull()Ljava/lang/String;

    move-result-object v17

    .line 853
    const/4 v0, 0x0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 855
    const-string v0, "du"

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 857
    :cond_0
    const-string v0, "lv"

    const-string v1, "androida_3.1.1"

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 858
    const-string v0, "av"

    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 859
    const-string v0, "dp"

    const-string v1, "Android"

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 860
    const-string v0, "dll"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 861
    const-string v0, "dlc"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 862
    const-string v0, "nc"

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 863
    const-string v0, "dc"

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    const-string v0, "dma"

    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 865
    const-string v0, "dmo"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 866
    const-string v0, "dov"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 867
    const-string v0, "nca"

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 868
    const-string v0, "dac"

    invoke-static {v15}, Lcom/localytics/android/DatapointHelper;->getNetworkType(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 869
    const-string v0, "iu"

    invoke-static {}, Lcom/localytics/android/Localytics;->getInstallId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 870
    const-string v0, "fb_attribution"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 871
    const/4 v0, 0x0

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 873
    const-string v0, "fbat"

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 875
    :cond_1
    const-string v0, "registration_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 876
    const/4 v0, 0x0

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 878
    const-string v0, "push"

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 880
    :cond_2
    const-string v0, "first_android_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 881
    const/4 v0, 0x0

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 883
    const-string v0, "aid"

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 885
    :cond_3
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAndroidIdOrNull()Ljava/lang/String;

    move-result-object v21

    .line 886
    const-string v0, "caid"

    const/4 v1, 0x0

    move-object/from16 v2, v21

    if-ne v1, v2, :cond_4

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move-object/from16 v1, v21

    :goto_0
    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 888
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAdvertisingInfo()Lcom/localytics/android/DatapointHelper$AdvertisingInfo;

    move-result-object v22

    .line 889
    const-string v0, "lad"

    if-eqz v22, :cond_5

    move-object/from16 v1, v22

    iget-boolean v1, v1, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;->limitAdTracking:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 890
    const-string v0, "first_advertising_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 891
    const/4 v0, 0x0

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 893
    const-string v0, "gadid"

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 895
    :cond_6
    if-eqz v22, :cond_7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;->id:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 897
    const-string v0, "gcadid"

    move-object/from16 v1, v22

    iget-object v1, v1, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;->id:Ljava/lang/String;

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 900
    :cond_7
    const-string v0, "package_name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 901
    const/4 v0, 0x0

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_8

    .line 903
    const-string v0, "pkg"

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 905
    :cond_8
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getSerialNumberHashOrNull()Ljava/lang/String;

    move-result-object v25

    .line 906
    const-string v0, "dms"

    const/4 v1, 0x0

    move-object/from16 v2, v25

    if-ne v1, v2, :cond_9

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_2

    :cond_9
    move-object/from16 v1, v25

    :goto_2
    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 907
    const-string v0, "dsdk"

    sget v1, Lcom/localytics/android/Constants;->CURRENT_API_LEVEL:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 908
    const-string v0, "play_attribution"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 909
    const/4 v0, 0x0

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 911
    const-string v0, "aurl"

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 913
    :cond_a
    const-string v0, "last_session_open_time"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v13

    .line 918
    :cond_b
    const/4 v0, 0x0

    if-eq v0, v11, :cond_d

    .line 920
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 921
    const/4 v11, 0x0

    goto :goto_3

    .line 918
    :catchall_0
    move-exception v27

    const/4 v0, 0x0

    if-eq v0, v11, :cond_c

    .line 920
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 921
    const/4 v11, 0x0

    :cond_c
    throw v27

    .line 924
    :cond_d
    :goto_3
    const-string v0, "attrs"

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/localytics/android/AnalyticsHandler;->_getIdentifiers()Lorg/json/JSONObject;

    move-result-object v17

    .line 928
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 930
    const-string v0, "ids"

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 933
    :cond_e
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 934
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 936
    const-string v0, "next_header_number"

    add-int/lit8 v1, v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 939
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 940
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 941
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v23

    .line 942
    const-string v0, "open"

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 944
    const-string v0, "dt"

    const-string v1, "s"

    move-object/from16 v2, v20

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 945
    const-string v0, "ct"

    const-wide/16 v1, 0x3e8

    div-long v1, v21, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    move-object/from16 v3, v20

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 946
    const-string v0, "u"

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 948
    sub-long v24, v21, v13

    .line 949
    const-wide/16 v0, 0x0

    cmp-long v0, v13, v0

    if-nez v0, :cond_f

    .line 951
    const-string v0, "sl"

    move-object/from16 v1, v20

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_4

    .line 953
    :cond_f
    const-wide/16 v0, 0x0

    cmp-long v0, v24, v0

    if-lez v0, :cond_10

    .line 955
    const-string v0, "sl"

    const-wide/16 v1, 0x3e8

    div-long v1, v24, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    move-object/from16 v3, v20

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 961
    :cond_10
    :goto_4
    const-string v0, "nth"

    move-object/from16 v1, v20

    invoke-virtual {v1, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 963
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v9, v10}, Lcom/localytics/android/AnalyticsHandler;->_addLocationIDsAndCustomDimensions(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v0, "blob"

    const-string v1, "%s\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v0, "upload_format"

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v1}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 968
    const-string v0, "last_session_open_time"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 969
    const-string v0, "next_session_number"

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 970
    const-string v0, "current_session_uuid"

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    goto/16 :goto_8

    .line 972
    :cond_11
    const-string v0, "close"

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 974
    const-string v0, "dt"

    const-string v1, "c"

    move-object/from16 v2, v20

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 975
    const-string v0, "u"

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 976
    const-string v0, "su"

    move-object/from16 v1, v20

    invoke-virtual {v1, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 977
    const-string v0, "ss"

    const-wide/16 v1, 0x3e8

    div-long v1, v13, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    move-object/from16 v3, v20

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 978
    const-string v0, "ct"

    const-wide/16 v1, 0x3e8

    div-long v1, v21, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    move-object/from16 v3, v20

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 979
    const-string v0, "ctl"

    sub-long v1, v21, v13

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    move-object/from16 v3, v20

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 981
    new-instance v24, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/AnalyticsHandler;->screenFlow:Ljava/util/List;

    move-object/from16 v1, v24

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 982
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 984
    const-string v0, "fl"

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 987
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v9, v10}, Lcom/localytics/android/AnalyticsHandler;->_addLocationIDsAndCustomDimensions(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v0, "last_session_close_time"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 990
    const-string v0, "queued_close_session_blob"

    const-string v1, "%s\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v0, "queued_close_session_blob_upload_format"

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v1}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 992
    goto/16 :goto_8

    .line 993
    :cond_13
    const-string v0, "opt_in"

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "opt_out"

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 995
    :cond_14
    const-string v0, "dt"

    const-string v1, "o"

    move-object/from16 v2, v20

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 996
    const-string v0, "u"

    sget-object v1, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    move-object/from16 v2, v20

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 997
    const-string v0, "out"

    const-string v1, "opt_out"

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_15
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    move-object/from16 v2, v20

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 998
    const-string v0, "ct"

    const-wide/16 v1, 0x3e8

    div-long v1, v21, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    move-object/from16 v3, v20

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1000
    const-string v0, "blob"

    const-string v1, "%s\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v0, "upload_format"

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v1}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_8

    .line 1008
    :cond_16
    const-string v0, "dt"

    const-string v1, "e"

    move-object/from16 v2, v20

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1009
    const-string v0, "ct"

    const-wide/16 v1, 0x3e8

    div-long v1, v21, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    move-object/from16 v3, v20

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1010
    const-string v0, "u"

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1011
    const-string v0, "su"

    invoke-direct/range {p0 .. p0}, Lcom/localytics/android/AnalyticsHandler;->_isSessionOpen()Z

    move-result v1

    if-eqz v1, :cond_17

    move-object v1, v8

    goto :goto_6

    :cond_17
    const-string v1, ""

    :goto_6
    move-object/from16 v2, v20

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1012
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1014
    const-string v0, "n"

    sget-object v1, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    .line 1018
    :cond_18
    const-string v0, "n"

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1024
    :goto_7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 1026
    const-string v0, "v"

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1029
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v9, v10}, Lcom/localytics/android/AnalyticsHandler;->_addLocationIDsAndCustomDimensions(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const/4 v0, 0x0

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_1a

    .line 1033
    const-string v0, "attrs"

    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object/from16 v2, v20

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1036
    :cond_1a
    const-string v0, "blob"

    const-string v1, "%s\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v0, "upload_format"

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v1}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1040
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    move-object/from16 v2, v18

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1041
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "events"

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1046
    :cond_1b
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "open"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "close"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "opt_in"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "opt_out"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/AnalyticsHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    check-cast v0, Lcom/localytics/android/AnalyticsListener;

    const/4 v1, 0x0

    move-object/from16 v2, p3

    if-ne v1, v2, :cond_1c

    const-wide/16 v1, 0x0

    goto :goto_9

    :cond_1c
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_9
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/localytics/android/AnalyticsListener;->localyticsDidTagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1053
    :cond_1d
    goto :goto_a

    .line 1051
    :catch_0
    move-exception v6

    .line 1054
    :goto_a
    return-void
.end method

.method private _tagScreen(Ljava/lang/String;)V
    .locals 3

    .line 1127
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_isSessionOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->screenFlow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->screenFlow:Ljava/util/List;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->screenFlow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->screenFlow:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1136
    :cond_1
    const-string v0, "Screen not tagged because a session is not open"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1138
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/AnalyticsHandler;)Z
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_isPushDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/localytics/android/AnalyticsHandler;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_setPushDisabled(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/localytics/android/AnalyticsHandler;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_setOptedOut(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_registerPush(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/localytics/android/AnalyticsHandler;Landroid/content/Intent;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_handlePushRegistration(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_setReferrerId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/localytics/android/AnalyticsHandler;I)Ljava/lang/String;
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_getCustomDimension(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/localytics/android/AnalyticsHandler;->PROJECTION_SET_IDENTIFIER:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_IDENTIFIER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/localytics/android/AnalyticsHandler;)Z
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_isOptedOut()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/localytics/android/AnalyticsHandler;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_open()V

    return-void
.end method

.method static synthetic access$400(Lcom/localytics/android/AnalyticsHandler;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_close()V

    return-void
.end method

.method static synthetic access$500(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->_tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$600(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_tagScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/localytics/android/AnalyticsHandler;ILjava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/AnalyticsHandler;->_setCustomDimension(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/AnalyticsHandler;->_setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_setPushID(Ljava/lang/String;)V

    return-void
.end method

.method private getCustomDimensionAttributeKey(I)Ljava/lang/String;
    .locals 4

    .line 758
    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 760
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "custom_dimension_"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 764
    :cond_0
    const-class v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Custom dimension index cannot exceed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected _deleteUploadedData(I)V
    .locals 4

    .line 504
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "events"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 505
    return-void
.end method

.method protected _getDataToUpload()Ljava/util/TreeMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
        }
    .end annotation

    .line 580
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 581
    const/4 v7, 0x0

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "events"

    const-string v5, "_id ASC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 586
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 588
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 589
    const-string v0, "blob"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 590
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    goto :goto_0

    .line 595
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v7, :cond_1

    .line 597
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 598
    const/4 v7, 0x0

    .line 601
    :cond_1
    return-object v6

    .line 595
    :catchall_0
    move-exception v10

    const/4 v0, 0x0

    if-eq v0, v7, :cond_2

    .line 597
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 598
    const/4 v7, 0x0

    .line 601
    :cond_2
    return-object v6
.end method

.method protected _getMaxRowToUpload()I
    .locals 9

    .line 555
    const/4 v6, 0x0

    .line 556
    const/4 v7, 0x0

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "events"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v5, "_id ASC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 560
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v6, v0

    .line 567
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v7, :cond_1

    .line 569
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 570
    const/4 v7, 0x0

    .line 573
    :cond_1
    return v6

    .line 567
    :catchall_0
    move-exception v8

    const/4 v0, 0x0

    if-eq v0, v7, :cond_2

    .line 569
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 570
    const/4 v7, 0x0

    .line 573
    :cond_2
    return v6
.end method

.method protected _init()V
    .locals 14

    .line 1714
    const/4 v6, 0x0

    .line 1717
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    .line 1719
    new-instance v0, Lcom/localytics/android/AnalyticsProvider;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/localytics/android/AnalyticsProvider;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    .line 1722
    :cond_0
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    .line 1723
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "app_version"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "uuid"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "next_session_number"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "customer_id"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 1725
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1728
    const-string v0, "Loading details for API key %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 1730
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1731
    const-string v0, "app_version"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1733
    const-string v0, "app_version"

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->appWasUpgraded:Z

    .line 1737
    :cond_1
    invoke-virtual {v8}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1739
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1742
    :cond_2
    const-string v0, "next_session_number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->firstSessionEver:Z

    .line 1743
    const-string v0, "uuid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/Localytics;->installationID:Ljava/lang/String;

    .line 1744
    const-string v0, "customer_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1745
    const-class v10, Lcom/localytics/android/Localytics;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1747
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lcom/localytics/android/Localytics;->getCustomerIdInMemory(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_4

    .line 1749
    invoke-static {v9}, Lcom/localytics/android/Localytics;->setCustomerIdInMemory(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1751
    :cond_4
    monitor-exit v10

    goto :goto_1

    :catchall_0
    move-exception v11

    monitor-exit v10

    :try_start_2
    throw v11

    .line 1752
    :goto_1
    goto/16 :goto_2

    .line 1756
    :cond_5
    const-string v0, "Performing first-time initialization for new API key %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 1758
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1759
    sput-object v8, Lcom/localytics/android/Localytics;->installationID:Ljava/lang/String;

    .line 1760
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1761
    const-string v0, "api_key"

    sget-object v1, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    const-string v0, "uuid"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    const-string v0, "created_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1764
    const-string v0, "opt_out"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1765
    const-string v0, "push_disabled"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1766
    const-string v0, "customer_id"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    const-string v0, "user_type"

    const-string v1, "anonymous"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    const-string v0, "fb_attribution"

    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getFBAttribution()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    const-string v0, "first_android_id"

    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAndroidIdOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    const-string v0, "package_name"

    sget-object v1, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    const-string v0, "app_version"

    invoke-virtual {v9, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    const-string v0, "next_session_number"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1773
    const-string v0, "next_header_number"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1774
    const-string v0, "last_session_open_time"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1775
    const-string v0, "last_session_close_time"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1776
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    invoke-virtual {v0, v1, v9}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1778
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->firstSessionEver:Z

    .line 1780
    const-class v10, Lcom/localytics/android/Localytics;

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1782
    const/4 v0, 0x1

    :try_start_3
    invoke-static {v0}, Lcom/localytics/android/Localytics;->getCustomerIdInMemory(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_6

    .line 1784
    invoke-static {v8}, Lcom/localytics/android/Localytics;->setCustomerIdInMemory(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1786
    :cond_6
    monitor-exit v10

    goto :goto_2

    :catchall_1
    move-exception v12

    monitor-exit v10

    :try_start_4
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1791
    :goto_2
    const/4 v0, 0x0

    if-eq v0, v6, :cond_7

    .line 1793
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1794
    const/4 v6, 0x0

    .line 1796
    :cond_7
    sget-object v0, Lcom/localytics/android/Localytics;->initiatedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1797
    goto :goto_3

    .line 1791
    :catchall_2
    move-exception v13

    const/4 v0, 0x0

    if-eq v0, v6, :cond_8

    .line 1793
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1794
    const/4 v6, 0x0

    .line 1796
    :cond_8
    sget-object v0, Lcom/localytics/android/Localytics;->initiatedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v13

    .line 1799
    :goto_3
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 1800
    return-void
.end method

.method protected _onUploadCompleted(Ljava/lang/String;)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 550
    return-void
.end method

.method closeSession()V
    .locals 1

    .line 1580
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1581
    return-void
.end method

.method getCustomDimension(I)Ljava/lang/String;
    .locals 1

    .line 709
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$15;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/AnalyticsHandler$15;-><init>(Lcom/localytics/android/AnalyticsHandler;I)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1548
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$17;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/AnalyticsHandler$17;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIdentifiers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$2;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$2;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getMap(Ljava/util/concurrent/Callable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getPushRegistrationID()Ljava/lang/String;
    .locals 1

    .line 770
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$16;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$16;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;"
        }
    .end annotation

    .line 608
    new-instance v0, Lcom/localytics/android/AnalyticsUploadHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/localytics/android/AnalyticsUploadHandler;-><init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;)V

    return-object v0
.end method

.method protected handleMessageExtended(Landroid/os/Message;)V
    .locals 6

    .line 257
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 261
    :pswitch_0
    const-string v0, "Analytics handler received MESSAGE_OPEN"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/AnalyticsHandler$3;

    invoke-direct {v1, p0}, Lcom/localytics/android/AnalyticsHandler$3;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 277
    goto/16 :goto_2

    .line 281
    :pswitch_1
    const-string v0, "Analytics handler received MESSAGE_CLOSE"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/AnalyticsHandler$4;

    invoke-direct {v1, p0}, Lcom/localytics/android/AnalyticsHandler$4;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 297
    goto/16 :goto_2

    .line 301
    :pswitch_2
    const-string v0, "Analytics handler received MESSAGE_TAG_EVENT"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 303
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 304
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 306
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 307
    const/4 v0, 0x2

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/Long;

    move-object v5, v0

    .line 309
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/AnalyticsHandler$5;

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/localytics/android/AnalyticsHandler$5;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 323
    goto/16 :goto_2

    .line 327
    :pswitch_3
    const-string v0, "Analytics handler received MESSAGE_TAG_SCREEN"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 329
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 331
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/AnalyticsHandler$6;

    invoke-direct {v1, p0, v2}, Lcom/localytics/android/AnalyticsHandler$6;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 345
    goto/16 :goto_2

    .line 349
    :pswitch_4
    const-string v0, "Analytics handler received MESSAGE_SET_CUSTOM_DIMENSION"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 351
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 352
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 353
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 355
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/AnalyticsHandler$7;

    invoke-direct {v1, p0, v3, v4}, Lcom/localytics/android/AnalyticsHandler$7;-><init>(Lcom/localytics/android/AnalyticsHandler;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 363
    goto/16 :goto_2

    .line 367
    :pswitch_5
    const-string v0, "Analytics handler received MESSAGE_SET_IDENTIFIER"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 369
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 370
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 371
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 373
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/AnalyticsHandler$8;

    invoke-direct {v1, p0, v3, v4}, Lcom/localytics/android/AnalyticsHandler$8;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 381
    goto/16 :goto_2

    .line 385
    :pswitch_6
    const-string v0, "Analytics handler received MESSAGE_SET_LOCATION"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 387
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    .line 388
    goto/16 :goto_2

    .line 392
    :pswitch_7
    const-string v0, "Analytics handler received MESSAGE_SET_PUSH_REGID"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 394
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 396
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/AnalyticsHandler$9;

    invoke-direct {v1, p0, v2}, Lcom/localytics/android/AnalyticsHandler$9;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 411
    goto/16 :goto_2

    .line 415
    :pswitch_8
    const-string v0, "Analytics handler received MESSAGE_DISABLE_PUSH"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 417
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 419
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/AnalyticsHandler$10;

    invoke-direct {v1, p0, v2}, Lcom/localytics/android/AnalyticsHandler$10;-><init>(Lcom/localytics/android/AnalyticsHandler;I)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 427
    goto/16 :goto_2

    .line 431
    :pswitch_9
    const-string v0, "Analytics handler received MESSAGE_OPT_OUT"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 433
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 435
    :goto_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/AnalyticsHandler$11;

    invoke-direct {v1, p0, v2}, Lcom/localytics/android/AnalyticsHandler$11;-><init>(Lcom/localytics/android/AnalyticsHandler;Z)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 443
    goto :goto_2

    .line 447
    :pswitch_a
    const-string v0, "Analytics handler received MESSAGE_REGISTER_PUSH"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 449
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 451
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/AnalyticsHandler$12;

    invoke-direct {v1, p0, v2}, Lcom/localytics/android/AnalyticsHandler$12;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 459
    goto :goto_2

    .line 463
    :pswitch_b
    const-string v0, "Analytics handler received MESSAGE_HANDLE_PUSH_REGISTRATION"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 465
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    move-object v2, v0

    .line 467
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/AnalyticsHandler$13;

    invoke-direct {v1, p0, v2}, Lcom/localytics/android/AnalyticsHandler$13;-><init>(Lcom/localytics/android/AnalyticsHandler;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 475
    goto :goto_2

    .line 479
    :pswitch_c
    const-string v0, "Analytics handler received MESSAGE_SET_REFERRERID"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 481
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 483
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/AnalyticsHandler$14;

    invoke-direct {v1, p0, v2}, Lcom/localytics/android/AnalyticsHandler$14;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 491
    goto :goto_2

    .line 495
    :goto_1
    :pswitch_d
    invoke-super {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V

    .line 499
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method handleRegistration(Landroid/content/Intent;)V
    .locals 1

    .line 1840
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1841
    return-void
.end method

.method isOptedOut()Z
    .locals 1

    .line 1676
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$18;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$18;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getBool(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method isPushDisabled()Z
    .locals 1

    .line 153
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$1;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getBool(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method openSession()V
    .locals 1

    .line 1523
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1524
    return-void
.end method

.method registerPush(Ljava/lang/String;J)V
    .locals 1

    .line 1709
    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->queueMessageDelayed(Landroid/os/Message;J)Z

    .line 1710
    return-void
.end method

.method setCustomDimension(ILjava/lang/String;)V
    .locals 3

    .line 1528
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 1530
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only valid dimensions are 0 - 9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1533
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/16 v1, 0x6b

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1534
    return-void
.end method

.method setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1538
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1543
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/16 v1, 0x69

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1544
    return-void
.end method

.method setLocation(Landroid/location/Location;)V
    .locals 2

    .line 1604
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const/16 v1, 0x6a

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1605
    return-void
.end method

.method setOptedOut(Z)V
    .locals 4

    .line 1669
    const-string v0, "Requested opt-out state is %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 1671
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x6c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1672
    return-void
.end method

.method setPushDisabled(Z)V
    .locals 3

    .line 1688
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1689
    return-void
.end method

.method setPushRegistrationId(Ljava/lang/String;)V
    .locals 1

    .line 803
    const/16 v0, 0x71

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 804
    return-void
.end method

.method setReferrerId(Ljava/lang/String;)V
    .locals 1

    .line 1804
    const/16 v0, 0x72

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1805
    return-void
.end method

.method setScreenFlow(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->screenFlow:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 166
    return-void
.end method

.method tagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;J)V"
        }
    .end annotation

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    if-eq v0, p2, :cond_5

    .line 225
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    const-class v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attributes is empty.  Did the caller make an error?"

    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    .line 232
    const-class v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attributes size is %d, exceeding the maximum size of %d.  Did the caller make an error?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v6, v0

    .line 237
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 238
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 240
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    const-class v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attributes cannot contain null or empty keys"

    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    const-class v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attributes cannot contain null or empty values"

    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    :cond_4
    goto :goto_0

    .line 251
    :cond_5
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x67

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 252
    return-void
.end method

.method tagScreen(Ljava/lang/String;)V
    .locals 2

    .line 1594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1596
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1599
    :cond_0
    const/16 v0, 0x68

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1600
    return-void
.end method
