.class final Lcom/localytics/android/DatapointHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/DatapointHelper$AdvertisingInfo;
    }
.end annotation


# static fields
.field private static final HARDWARE_TELEPHONY:[Ljava/lang/Object;

.field private static final INVALID_ANDROID_ID:Ljava/lang/String; = "9774d56d682e549c"

.field private static final LEGACY_DEVICE_ID_FILE:Ljava/lang/String; = "/localytics/device_id"

.field private static final STRING_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[Ljava/lang/Class<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/localytics/android/DatapointHelper;->STRING_CLASS_ARRAY:[Ljava/lang/Class;

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "android.hardware.telephony"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/localytics/android/DatapointHelper;->HARDWARE_TELEPHONY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getAdvertisingInfo()Lcom/localytics/android/DatapointHelper$AdvertisingInfo;
    .locals 9

    .line 217
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    :try_start_0
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

    move-result-object v6

    .line 218
    const/4 v0, 0x0

    if-eq v0, v6, :cond_1

    .line 220
    const-string v0, "getId"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v2}, Lcom/localytics/android/ReflectionUtils;->tryInvokeInstance(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 221
    const-string v0, "isLimitAdTrackingEnabled"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v2}, Lcom/localytics/android/ReflectionUtils;->tryInvokeInstance(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 222
    new-instance v0, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v7

    :goto_0
    invoke-direct {v0, v1, v8}, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 228
    :cond_1
    goto :goto_1

    .line 225
    :catch_0
    move-exception v6

    .line 227
    const-string v0, "Device doesn\'t have Google Play Services installed"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 230
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static getAndroidIdHashOrNull()Ljava/lang/String;
    .locals 2

    .line 113
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAndroidIdOrNull()Ljava/lang/String;

    move-result-object v1

    .line 115
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/localytics/android/DatapointHelper;->getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static getAndroidIdOrNull()Ljava/lang/String;
    .locals 11

    .line 127
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/localytics/device_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 132
    const/4 v5, 0x0

    .line 135
    const/16 v0, 0x64

    :try_start_0
    new-array v6, v0, [C

    .line 137
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v5, v0

    .line 138
    invoke-virtual {v5, v6}, Ljava/io/BufferedReader;->read([C)I

    move-result v7

    .line 139
    const/4 v0, 0x0

    invoke-static {v6, v0, v7}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v8

    .line 140
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    move-object v9, v8

    .line 149
    const/4 v0, 0x0

    if-eq v0, v5, :cond_0

    .line 151
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    return-object v9

    .line 143
    :catch_0
    move-exception v6

    .line 145
    const-string v0, "Caught exception"

    :try_start_2
    invoke-static {v0, v6}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    const/4 v0, 0x0

    if-eq v0, v5, :cond_2

    .line 151
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v10

    const/4 v0, 0x0

    if-eq v0, v5, :cond_1

    .line 151
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_1
    throw v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 158
    :cond_2
    :goto_0
    goto :goto_1

    .line 155
    :catch_1
    move-exception v5

    .line 157
    const-string v0, "Caught exception"

    invoke-static {v0, v5}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :cond_3
    :goto_1
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 162
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_5
    return-object v5
.end method

.method static getApiLevel()I
    .locals 4

    .line 80
    :try_start_0
    const-class v2, Landroid/os/Build$VERSION;

    .line 81
    const-string v0, "SDK"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 84
    :catch_0
    move-exception v2

    .line 86
    const-string v0, "Caught exception"

    invoke-static {v0, v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :try_start_1
    const-class v3, Landroid/os/Build$VERSION;

    .line 92
    const-string v0, "SDK_INT"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    return v0

    .line 94
    :catch_1
    move-exception v3

    .line 96
    const-string v0, "Caught exception"

    invoke-static {v0, v3}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    const/4 v0, 0x3

    return v0
.end method

.method static getAppVersion()Ljava/lang/String;
    .locals 4

    .line 389
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 393
    :try_start_0
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 398
    const/4 v0, 0x0

    if-ne v0, v3, :cond_0

    .line 400
    const-string v0, "versionName was null--is a versionName attribute set in the Android Manifest?"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    const-string v0, "unknown"

    return-object v0

    .line 405
    :cond_0
    return-object v3

    .line 407
    :catch_0
    move-exception v3

    .line 412
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static getFBAttribution()Ljava/lang/String;
    .locals 14

    .line 351
    const/4 v6, 0x0

    .line 353
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 354
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 355
    const-string v9, "aid"

    .line 356
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "aid"

    const/4 v1, 0x0

    aput-object v0, v10, v1

    .line 357
    const/4 v11, 0x0

    .line 360
    move-object v0, v7

    move-object v1, v8

    move-object v2, v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v11, v0

    .line 361
    const/4 v0, 0x0

    if-eq v0, v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "aid"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v6, v0

    .line 372
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v11, :cond_2

    .line 374
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 375
    const/4 v11, 0x0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v12

    .line 368
    const-string v0, "Error reading FB attribution"

    :try_start_1
    invoke-static {v0, v12}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    const/4 v0, 0x0

    if-eq v0, v11, :cond_2

    .line 374
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 375
    const/4 v11, 0x0

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v13

    const/4 v0, 0x0

    if-eq v0, v11, :cond_1

    .line 374
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 375
    const/4 v11, 0x0

    :cond_1
    throw v13

    .line 379
    :cond_2
    :goto_0
    return-object v6
.end method

.method static getLocalyticsAppKeyOrNull(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 457
    if-nez p0, :cond_0

    .line 459
    const-string v0, "Context passed to getLocalyticsAppKeyOrNull() is NULL. Please pass a valid context."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 460
    const/4 v0, 0x0

    return-object v0

    .line 465
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 466
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 467
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "LOCALYTICS_APP_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 470
    instance-of v0, v5, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 472
    move-object v0, v5

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 482
    :cond_1
    goto :goto_0

    .line 476
    :catch_0
    move-exception v3

    .line 481
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 484
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static getLocalyticsNotificationIcon()I
    .locals 6

    .line 495
    :try_start_0
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 496
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "LOCALYTICS_NOTIFICATION_ICON"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 499
    const/4 v0, 0x0

    if-eq v0, v4, :cond_0

    .line 501
    const/16 v0, 0x2f

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2e

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 502
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    sget-object v2, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 506
    :cond_0
    :try_start_1
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 507
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v0, :cond_1

    .line 509
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 514
    :cond_1
    goto :goto_0

    .line 512
    :catch_0
    move-exception v4

    .line 515
    :goto_0
    const v0, 0x1080093

    return v0
.end method

.method static getLocalyticsRollupKeyOrNull()Ljava/lang/String;
    .locals 6

    .line 520
    const/4 v3, 0x0

    .line 524
    :try_start_0
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 525
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "LOCALYTICS_ROLLUP_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 528
    instance-of v0, v5, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 530
    move-object v0, v5

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 540
    :cond_0
    goto :goto_0

    .line 534
    :catch_0
    move-exception v4

    .line 539
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 542
    :goto_0
    return-object v3
.end method

.method static getManufacturer()Ljava/lang/String;
    .locals 4

    .line 328
    const-string v2, "unknown"

    .line 329
    sget v0, Lcom/localytics/android/Constants;->CURRENT_API_LEVEL:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 333
    :try_start_0
    const-class v3, Landroid/os/Build;

    .line 334
    const-string v0, "MANUFACTURER"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 339
    goto :goto_0

    .line 336
    :catch_0
    move-exception v3

    .line 338
    const-string v0, "Caught exception"

    invoke-static {v0, v3}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    :cond_0
    :goto_0
    return-object v2
.end method

.method static getNetworkType(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 4

    .line 295
    :try_start_0
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    sget-object v2, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 297
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 298
    const/4 v0, 0x0

    if-eq v0, v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const-string v0, "wifi"

    return-object v0

    .line 302
    :cond_0
    goto :goto_0

    .line 305
    :cond_1
    const-string v0, "Application does not have one more more of the following permissions: ACCESS_WIFI_STATE. Determining Wi-Fi connectivity is unavailable"

    :try_start_1
    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    :goto_0
    goto :goto_1

    .line 308
    :catch_0
    move-exception v3

    .line 314
    const-string v0, "Application does not have the permission ACCESS_NETWORK_STATE. Determining Wi-Fi connectivity is unavailable"

    invoke-static {v0, v3}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android_network_type_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSerialNumberHashOrNull()Ljava/lang/String;
    .locals 4

    .line 261
    const/4 v2, 0x0

    .line 262
    sget v0, Lcom/localytics/android/Constants;->CURRENT_API_LEVEL:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 266
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v1, "SERIAL"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 274
    goto :goto_0

    .line 268
    :catch_0
    move-exception v3

    .line 273
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 277
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 279
    const/4 v0, 0x0

    return-object v0

    .line 282
    :cond_1
    invoke-static {v2}, Lcom/localytics/android/DatapointHelper;->getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 192
    const-string v0, "SHA-256"

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 193
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 194
    new-instance v3, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v3, v0, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 195
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 197
    :catch_0
    move-exception v1

    .line 199
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 201
    :catch_1
    move-exception v1

    .line 203
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static getTelephonyDeviceIdOrNull()Ljava/lang/String;
    .locals 6

    .line 427
    sget v0, Lcom/localytics/android/Constants;->CURRENT_API_LEVEL:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 429
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "hasSystemFeature"

    sget-object v2, Lcom/localytics/android/DatapointHelper;->STRING_CLASS_ARRAY:[Ljava/lang/Class;

    sget-object v3, Lcom/localytics/android/DatapointHelper;->HARDWARE_TELEPHONY:[Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/localytics/android/ReflectionUtils;->tryInvokeInstance(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    .line 430
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    const-string v0, "Device does not have telephony; cannot read telephony id"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->i(Ljava/lang/String;)I

    .line 433
    const/4 v0, 0x0

    return-object v0

    .line 441
    :cond_0
    const/4 v4, 0x0

    .line 442
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    sget-object v2, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 444
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v5, v0

    .line 445
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 446
    goto :goto_0

    .line 449
    :cond_1
    const-string v0, "Application does not have permission READ_PHONE_STATE; determining device id is not possible.  Please consider requesting READ_PHONE_STATE in the AndroidManifest"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 452
    :goto_0
    return-object v4
.end method
