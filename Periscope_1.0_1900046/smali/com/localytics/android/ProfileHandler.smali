.class final Lcom/localytics/android/ProfileHandler;
.super Lcom/localytics/android/BaseHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/ProfileHandler$ProfileListenersSet;,
        Lcom/localytics/android/ProfileHandler$ProfileOperation;
    }
.end annotation


# static fields
.field static final ATTRIBUTE_JSON_KEY_KEY:Ljava/lang/String; = "attr"

.field static final ATTRIBUTE_JSON_OP_KEY:Ljava/lang/String; = "op"

.field static final ATTRIBUTE_JSON_VALUE_KEY:Ljava/lang/String; = "value"

.field private static final MESSAGE_SET_PROFILE_ATTRIBUTE:I = 0x12d


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 32
    const-string v0, "Profile"

    iput-object v0, p0, Lcom/localytics/android/ProfileHandler;->siloName:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/localytics/android/ProfileHandler$ProfileListenersSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/localytics/android/ProfileHandler$ProfileListenersSet;-><init>(Lcom/localytics/android/ProfileHandler;Lcom/localytics/android/ProfileHandler$1;)V

    iput-object v0, p0, Lcom/localytics/android/ProfileHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/ProfileHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/ProfileHandler;->queueMessage(Landroid/os/Message;)Z

    .line 35
    return-void
.end method

.method private _setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 372
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 373
    const-string v0, "scope"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v0, "change"

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v0, "customer_id"

    invoke-virtual {v2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "changes"

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 377
    return-void
.end method

.method static synthetic access$100(Lcom/localytics/android/ProfileHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/ProfileHandler;->_setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static checkAttributeName(Ljava/lang/String;)Z
    .locals 3

    .line 277
    const/4 v0, 0x0

    if-ne v0, p0, :cond_0

    .line 279
    const-class v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attribute name cannot be null"

    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_1

    .line 285
    const-class v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attribute name cannot be empty"

    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    const/4 v0, 0x0

    return v0

    .line 300
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static checkStringLengths(Ljava/lang/Object;)Z
    .locals 1

    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method private static convertDateToString(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 333
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 334
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    instance-of v0, p0, [Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 340
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 341
    move-object v0, p0

    check-cast v0, [Ljava/util/Date;

    check-cast v0, [Ljava/util/Date;

    move-object v3, v0

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 343
    const/4 v0, 0x0

    if-eq v0, v6, :cond_1

    .line 345
    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 349
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 352
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 355
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static convertToObjectArray([J)[Ljava/lang/Long;
    .locals 8

    .line 360
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Long;

    .line 361
    const/4 v2, 0x0

    .line 362
    move-object v3, p0

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-wide v6, v3, v5

    .line 364
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v2

    .line 365
    add-int/lit8 v2, v2, 0x1

    .line 362
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 367
    :cond_0
    return-object v1
.end method

.method private saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    .line 164
    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->checkAttributeName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 169
    const-string v0, "op"

    invoke-virtual {p1}, Lcom/localytics/android/ProfileHandler$ProfileOperation;->getOperationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v0, "attr"

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    instance-of v0, p3, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 173
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 174
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 176
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 174
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 178
    :cond_0
    const-string v0, "value"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    goto :goto_1

    .line 180
    :cond_1
    const/4 v0, 0x0

    if-eq v0, p3, :cond_2

    .line 182
    const-string v0, "value"

    invoke-virtual {v3, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    :cond_2
    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {}, Lcom/localytics/android/Localytics;->getCustomerIdInMemory()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x12d

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/ProfileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/ProfileHandler;->queueMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_2

    .line 186
    :catch_0
    move-exception v3

    .line 188
    const-string v0, "Caught JSON exception"

    invoke-static {v0, v3}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected _deleteUploadedData(I)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "changes"

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

    .line 79
    return-void
.end method

.method protected _getDataToUpload()Ljava/util/TreeMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
        }
    .end annotation

    .line 115
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 116
    const/4 v7, 0x0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "changes"

    const-string v5, "_id ASC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 120
    const/4 v8, 0x0

    .line 121
    const/4 v9, 0x0

    .line 122
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_1

    .line 124
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 125
    const-string v0, "change"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 126
    const-string v0, "customer_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 127
    const-string v0, "scope"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 128
    const/4 v0, 0x0

    if-ne v0, v8, :cond_0

    .line 130
    move-object v8, v12

    .line 131
    move-object v9, v13

    .line 134
    :cond_0
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v12, v1, v2

    const/4 v2, 0x1

    aput-object v13, v1, v2

    const/4 v2, 0x2

    aput-object v11, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    goto/16 :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x0

    if-eq v0, v7, :cond_2

    .line 148
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 149
    const/4 v7, 0x0

    .line 152
    :cond_2
    return-object v6

    .line 146
    :catchall_0
    move-exception v14

    const/4 v0, 0x0

    if-eq v0, v7, :cond_3

    .line 148
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 149
    const/4 v7, 0x0

    .line 152
    :cond_3
    return-object v6
.end method

.method protected _getMaxRowToUpload()I
    .locals 9

    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v7, 0x0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "changes"

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

    .line 95
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v6, v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v7, :cond_1

    .line 104
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 105
    const/4 v7, 0x0

    .line 108
    :cond_1
    return v6

    .line 102
    :catchall_0
    move-exception v8

    const/4 v0, 0x0

    if-eq v0, v7, :cond_2

    .line 104
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 105
    const/4 v7, 0x0

    .line 108
    :cond_2
    return v6
.end method

.method protected _init()V
    .locals 2

    .line 71
    new-instance v0, Lcom/localytics/android/ProfileProvider;

    iget-object v1, p0, Lcom/localytics/android/ProfileHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/localytics/android/ProfileProvider;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    .line 72
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 73
    return-void
.end method

.method protected _onUploadCompleted(Ljava/lang/String;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 85
    return-void
.end method

.method addProfileAttributesToSet(Ljava/lang/String;[JLjava/lang/String;)V
    .locals 2

    .line 236
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETADD:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->convertToObjectArray([J)[Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 241
    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->checkStringLengths(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETADD:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method

.method addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V
    .locals 2

    .line 249
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETADD:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->convertDateToString(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method deleteProfileAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 231
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->DELETE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method protected getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;"
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/localytics/android/ProfileUploadHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/localytics/android/ProfileUploadHandler;-><init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;)V

    return-object v0
.end method

.method protected handleMessageExtended(Landroid/os/Message;)V
    .locals 6

    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 44
    :sswitch_0
    const-string v0, "Profile handler received MESSAGE_SET_PROFILE_ATTRIBUTE"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 46
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 47
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 48
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 49
    const/4 v0, 0x2

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 51
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/ProfileHandler$1;

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/localytics/android/ProfileHandler$1;-><init>(Lcom/localytics/android/ProfileHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 59
    goto :goto_1

    .line 63
    :goto_0
    invoke-super {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V

    .line 67
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
    .end sparse-switch
.end method

.method incrementProfileAttribute(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 272
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->INCREMENT:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p4}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method removeProfileAttributesFromSet(Ljava/lang/String;[JLjava/lang/String;)V
    .locals 2

    .line 254
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETREMOVE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->convertToObjectArray([J)[Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 259
    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->checkStringLengths(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETREMOVE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    :cond_0
    return-void
.end method

.method removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V
    .locals 2

    .line 267
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETREMOVE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->convertDateToString(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method setProfileAttribute(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 195
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p4}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 205
    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->checkStringLengths(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method

.method setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 2

    .line 221
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->convertDateToString(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method setProfileAttribute(Ljava/lang/String;[JLjava/lang/String;)V
    .locals 2

    .line 200
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->convertToObjectArray([J)[Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 213
    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->checkStringLengths(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V
    .locals 2

    .line 226
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->convertDateToString(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    return-void
.end method
