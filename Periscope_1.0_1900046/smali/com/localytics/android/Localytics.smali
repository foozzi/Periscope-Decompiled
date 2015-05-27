.class public Lcom/localytics/android/Localytics;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/Localytics$LocalyticsNotInitializedException;,
        Lcom/localytics/android/Localytics$Log;,
        Lcom/localytics/android/Localytics$ProfileScope;,
        Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    }
.end annotation


# static fields
.field private static activityCounter:I

.field private static analyticsHandler:Lcom/localytics/android/AnalyticsHandler;

.field static apiKey:Ljava/lang/String;

.field static appContext:Landroid/content/Context;

.field private static customerID:Ljava/lang/String;

.field static initiatedLatch:Ljava/util/concurrent/CountDownLatch;

.field static installationID:Ljava/lang/String;

.field private static isAutoIntegrate:Z

.field private static marketingHandler:Lcom/localytics/android/MarketingHandler;

.field private static profileHandler:Lcom/localytics/android/ProfileHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/Localytics;->analyticsHandler:Lcom/localytics/android/AnalyticsHandler;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/Localytics;->profileHandler:Lcom/localytics/android/ProfileHandler;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/Localytics;->marketingHandler:Lcom/localytics/android/MarketingHandler;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/Localytics;->installationID:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/Localytics;->customerID:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/localytics/android/Localytics;->activityCounter:I

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/localytics/android/Localytics;->isAutoIntegrate:Z

    .line 63
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/localytics/android/Localytics;->initiatedLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1299
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addAnalyticsListener(Lcom/localytics/android/AnalyticsListener;)V
    .locals 1

    .line 355
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/AnalyticsHandler;->addListener(Lcom/localytics/android/BaseHandler$BaseListener;)V

    .line 356
    return-void
.end method

.method public static addMessagingListener(Lcom/localytics/android/MessagingListener;)V
    .locals 1

    .line 1011
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/MarketingHandler;->addListener(Lcom/localytics/android/BaseHandler$BaseListener;)V

    .line 1012
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[J)V
    .locals 1

    .line 530
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->addProfileAttributesToSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 531
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .line 519
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/localytics/android/ProfileHandler;->addProfileAttributesToSet(Ljava/lang/String;[JLjava/lang/String;)V

    .line 520
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 553
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 554
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .line 542
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/localytics/android/ProfileHandler;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;)V
    .locals 1

    .line 576
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 577
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .line 565
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/localytics/android/ProfileHandler;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method private static classInManifest([Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 5

    .line 1523
    const/4 v0, 0x0

    if-eq v0, p0, :cond_1

    .line 1525
    move-object v1, p0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1527
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1529
    const/4 v0, 0x1

    return v0

    .line 1525
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1534
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static clearInAppMessageDisplayActivity()V
    .locals 2

    .line 774
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->setFragmentManager(Lo/ˈ;)V

    .line 775
    return-void
.end method

.method public static closeSession()V
    .locals 1

    .line 230
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->closeSession()V

    .line 231
    return-void
.end method

.method static decrementActivityCounter()V
    .locals 2

    .line 1482
    sget v0, Lcom/localytics/android/Localytics;->activityCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/localytics/android/Localytics;->activityCounter:I

    .line 1483
    return-void
.end method

.method public static decrementProfileAttribute(Ljava/lang/String;J)V
    .locals 1

    .line 692
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, p2, v0}, Lcom/localytics/android/Localytics;->decrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 693
    return-void
.end method

.method public static decrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 4

    .line 681
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    const-wide/16 v1, -0x1

    mul-long/2addr v1, p1

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/localytics/android/ProfileHandler;->incrementProfileAttribute(Ljava/lang/String;JLjava/lang/String;)V

    .line 682
    return-void
.end method

.method public static deleteProfileAttribute(Ljava/lang/String;)V
    .locals 1

    .line 713
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, v0}, Lcom/localytics/android/Localytics;->deleteProfileAttribute(Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 714
    return-void
.end method

.method public static deleteProfileAttribute(Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .line 703
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/localytics/android/ProfileHandler;->deleteProfileAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public static dismissCurrentInAppMessage()V
    .locals 3

    .line 803
    new-instance v2, Lcom/localytics/android/Localytics$1;

    invoke-direct {v2}, Lcom/localytics/android/Localytics$1;-><init>()V

    .line 811
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 813
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 817
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 819
    :goto_0
    return-void
.end method

.method static getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;
    .locals 2

    .line 1329
    sget-object v0, Lcom/localytics/android/Localytics;->analyticsHandler:Lcom/localytics/android/AnalyticsHandler;

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    .line 1331
    new-instance v0, Lcom/localytics/android/Localytics$LocalyticsNotInitializedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/localytics/android/Localytics$LocalyticsNotInitializedException;-><init>(Lcom/localytics/android/Localytics$1;)V

    throw v0

    .line 1333
    :cond_0
    sget-object v0, Lcom/localytics/android/Localytics;->analyticsHandler:Lcom/localytics/android/AnalyticsHandler;

    return-object v0
.end method

.method public static getAnalyticsHost()Ljava/lang/String;
    .locals 1

    .line 1231
    sget-object v0, Lcom/localytics/android/Constants;->ANALYTICS_HOST:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    .line 1188
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/localytics/android/DatapointHelper;->getLocalyticsAppKeyOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomDimension(I)Ljava/lang/String;
    .locals 1

    .line 337
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/AnalyticsHandler;->getCustomDimension(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomerId()Ljava/lang/String;
    .locals 1

    .line 1091
    const-string v0, "customer_id"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCustomerIdInMemory()Ljava/lang/String;
    .locals 1

    .line 1052
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/localytics/android/Localytics;->getCustomerIdInMemory(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCustomerIdInMemory(Z)Ljava/lang/String;
    .locals 3

    .line 1057
    if-nez p0, :cond_0

    .line 1061
    :try_start_0
    sget-object v0, Lcom/localytics/android/Localytics;->initiatedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    goto :goto_0

    .line 1063
    :catch_0
    move-exception v1

    .line 1067
    :cond_0
    :goto_0
    const-class v1, Lcom/localytics/android/Localytics;

    monitor-enter v1

    .line 1069
    :try_start_1
    sget-object v0, Lcom/localytics/android/Localytics;->customerID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1070
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private static getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 2

    .line 1310
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v0, 0xa

    invoke-direct {v1, p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1312
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1319
    return-object v1
.end method

.method public static getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1103
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/AnalyticsHandler;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getIdentifiers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 1418
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->getIdentifiers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getInAppMessageDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .locals 1

    .line 1220
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->getInAppDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    move-result-object v0

    return-object v0
.end method

.method public static getInstallId()Ljava/lang/String;
    .locals 3

    .line 1170
    sget-object v2, Lcom/localytics/android/Localytics;->installationID:Ljava/lang/String;

    .line 1171
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    return-object v2

    .line 1177
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No installation id!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLibraryVersion()Ljava/lang/String;
    .locals 1

    .line 1198
    const-string v0, "androida_3.1.1"

    return-object v0
.end method

.method static getMarketingHandler()Lcom/localytics/android/MarketingHandler;
    .locals 2

    .line 1343
    sget-object v0, Lcom/localytics/android/Localytics;->marketingHandler:Lcom/localytics/android/MarketingHandler;

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    .line 1345
    new-instance v0, Lcom/localytics/android/Localytics$LocalyticsNotInitializedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/localytics/android/Localytics$LocalyticsNotInitializedException;-><init>(Lcom/localytics/android/Localytics$1;)V

    throw v0

    .line 1347
    :cond_0
    sget-object v0, Lcom/localytics/android/Localytics;->marketingHandler:Lcom/localytics/android/MarketingHandler;

    return-object v0
.end method

.method public static getMessagingHost()Ljava/lang/String;
    .locals 1

    .line 1253
    sget-object v0, Lcom/localytics/android/Constants;->MARKETING_HOST:Ljava/lang/String;

    return-object v0
.end method

.method static getProfileHandler()Lcom/localytics/android/ProfileHandler;
    .locals 2

    .line 1357
    sget-object v0, Lcom/localytics/android/Localytics;->profileHandler:Lcom/localytics/android/ProfileHandler;

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    .line 1359
    new-instance v0, Lcom/localytics/android/Localytics$LocalyticsNotInitializedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/localytics/android/Localytics$LocalyticsNotInitializedException;-><init>(Lcom/localytics/android/Localytics$1;)V

    throw v0

    .line 1361
    :cond_0
    sget-object v0, Lcom/localytics/android/Localytics;->profileHandler:Lcom/localytics/android/ProfileHandler;

    return-object v0
.end method

.method public static getProfilesHost()Ljava/lang/String;
    .locals 1

    .line 1275
    sget-object v0, Lcom/localytics/android/Constants;->PROFILES_HOST:Ljava/lang/String;

    return-object v0
.end method

.method public static getPushRegistrationId()Ljava/lang/String;
    .locals 1

    .line 841
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->getPushRegistrationID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionTimeoutInterval()J
    .locals 4

    .line 1160
    sget-wide v0, Lcom/localytics/android/Constants;->SESSION_EXPIRATION:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method static handleNotificationReceived(Landroid/content/Intent;)V
    .locals 1

    .line 1409
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/MarketingHandler;->handleNotificationReceived(Landroid/content/Intent;)V

    .line 1410
    return-void
.end method

.method public static handlePushNotificationOpened(Landroid/content/Intent;)V
    .locals 1

    .line 885
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/MarketingHandler;->handlePushNotificationOpened(Landroid/content/Intent;)V

    .line 886
    return-void
.end method

.method static handleRegistration(Landroid/content/Intent;)V
    .locals 1

    .line 1398
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/AnalyticsHandler;->handleRegistration(Landroid/content/Intent;)V

    .line 1399
    return-void
.end method

.method public static handleTestMode(Landroid/content/Intent;)V
    .locals 1

    .line 899
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/MarketingHandler;->handleTestModeIntent(Landroid/content/Intent;)V

    .line 900
    return-void
.end method

.method static incrementActivityCounter()V
    .locals 2

    .line 1471
    sget v0, Lcom/localytics/android/Localytics;->activityCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/localytics/android/Localytics;->activityCounter:I

    .line 1472
    return-void
.end method

.method public static incrementProfileAttribute(Ljava/lang/String;J)V
    .locals 1

    .line 669
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, p2, v0}, Lcom/localytics/android/Localytics;->incrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 670
    return-void
.end method

.method public static incrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .line 658
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->incrementProfileAttribute(Ljava/lang/String;JLjava/lang/String;)V

    .line 659
    return-void
.end method

.method public static integrate(Landroid/content/Context;)V
    .locals 1

    .line 79
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/localytics/android/Localytics;->integrate(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static integrate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 92
    sget-object v0, Lcom/localytics/android/Localytics;->analyticsHandler:Lcom/localytics/android/AnalyticsHandler;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/localytics/android/Localytics;->profileHandler:Lcom/localytics/android/ProfileHandler;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/localytics/android/Localytics;->marketingHandler:Lcom/localytics/android/MarketingHandler;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    if-nez p0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    const-string v0, "com.localytics.android"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.test.IsolatedContext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.test.RenamingDelegatingContext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context.getPackageName() returned %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.test.RenamingDelegatingContext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 118
    if-nez v5, :cond_3

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity context use is not supported. You must call integrate() or registerActivityLifecycleCallbacks() from your Application class (see integration guide). If migrating from 3.0, see https://support.localytics.com/Android_SDK_Migration_3.0_to_3.x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_3
    if-eqz v5, :cond_4

    move-object v0, p0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    .line 124
    sput-object p1, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/localytics/android/DatapointHelper;->getLocalyticsAppKeyOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    .line 129
    :cond_5
    sget-object v0, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App key must be declared in a meta data tag in AndroidManifest.xml or passed into integrate(final Context context, final String localyticsKey) or new LocalyticsActivityLifecycleCallbacks(final Context context, final String localyticsKey) (see integration guide)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_6
    :try_start_0
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 137
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    const-class v1, Lcom/localytics/android/PushReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->classInManifest([Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 139
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const-class v1, Lcom/localytics/android/PushTrackingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->classInManifest([Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PushTrackingActivity must be declared in AndroidManifest.xml (see integration guide). If migrating from 3.0, see https://support.localytics.com/Android_SDK_Migration_3.0_to_3.x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_7
    goto :goto_1

    .line 144
    :catch_0
    move-exception v6

    .line 145
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 148
    :goto_1
    new-instance v0, Lcom/localytics/android/AnalyticsHandler;

    const-class v1, Lcom/localytics/android/AnalyticsHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/localytics/android/AnalyticsHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/localytics/android/Localytics;->analyticsHandler:Lcom/localytics/android/AnalyticsHandler;

    .line 150
    new-instance v0, Lcom/localytics/android/ProfileHandler;

    const-class v1, Lcom/localytics/android/ProfileHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/localytics/android/ProfileHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/localytics/android/Localytics;->profileHandler:Lcom/localytics/android/ProfileHandler;

    .line 152
    new-instance v0, Lcom/localytics/android/MarketingHandler;

    const-class v1, Lcom/localytics/android/MarketingHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/localytics/android/MarketingHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/localytics/android/Localytics;->marketingHandler:Lcom/localytics/android/MarketingHandler;

    .line 153
    return-void
.end method

.method static isAppInForeground()Z
    .locals 1

    .line 1494
    sget v0, Lcom/localytics/android/Localytics;->activityCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isAutoIntegrate()Z
    .locals 1

    .line 1507
    sget-boolean v0, Lcom/localytics/android/Localytics;->isAutoIntegrate:Z

    return v0
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .line 1138
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    return v0
.end method

.method public static isOptedOut()Z
    .locals 1

    .line 201
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->isOptedOut()Z

    move-result v0

    return v0
.end method

.method public static isPushDisabled()Z
    .locals 1

    .line 875
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->isPushDisabled()Z

    move-result v0

    return v0
.end method

.method public static isTestModeEnabled()Z
    .locals 1

    .line 931
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    return v0
.end method

.method public static openSession()V
    .locals 1

    .line 218
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->openSession()V

    .line 219
    return-void
.end method

.method public static registerPush(Ljava/lang/String;)V
    .locals 2

    .line 828
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/localytics/android/Localytics;->registerPush(Ljava/lang/String;J)V

    .line 829
    return-void
.end method

.method static registerPush(Ljava/lang/String;J)V
    .locals 1

    .line 833
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/AnalyticsHandler;->registerPush(Ljava/lang/String;J)V

    .line 834
    return-void
.end method

.method public static removeAnalyticsListener(Lcom/localytics/android/AnalyticsListener;)V
    .locals 1

    .line 366
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/AnalyticsHandler;->removeListener(Lcom/localytics/android/BaseHandler$BaseListener;)V

    .line 367
    return-void
.end method

.method public static removeMessagingListener(Lcom/localytics/android/MessagingListener;)V
    .locals 1

    .line 1022
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/MarketingHandler;->removeListener(Lcom/localytics/android/BaseHandler$BaseListener;)V

    .line 1023
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[J)V
    .locals 1

    .line 600
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->removeProfileAttributesFromSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 601
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .line 588
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/localytics/android/ProfileHandler;->removeProfileAttributesFromSet(Ljava/lang/String;[JLjava/lang/String;)V

    .line 589
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 623
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 624
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .line 612
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/localytics/android/ProfileHandler;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;)V
    .locals 1

    .line 646
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 647
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .line 635
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/localytics/android/ProfileHandler;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method private static scaleDownBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 6

    .line 1435
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1436
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 1439
    int-to-float v0, v3

    cmpl-float v0, v0, p1

    if-lez v0, :cond_2

    .line 1442
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1444
    float-to-int v0, p1

    div-float v1, p1, v4

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 1448
    :cond_0
    mul-float v0, p1, v4

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    float-to-int v1, p1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1451
    :goto_0
    const/4 v0, 0x0

    if-ne v0, v5, :cond_1

    .line 1453
    const-string v0, "Cannot scale down the new dismiss button image."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1456
    :cond_1
    return-object v5

    .line 1460
    :cond_2
    return-object p0
.end method

.method public static setAnalyticsHost(Ljava/lang/String;)V
    .locals 0

    .line 1242
    sput-object p0, Lcom/localytics/android/Constants;->ANALYTICS_HOST:Ljava/lang/String;

    .line 1243
    return-void
.end method

.method public static setCustomDimension(ILjava/lang/String;)V
    .locals 1

    .line 325
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/AnalyticsHandler;->setCustomDimension(ILjava/lang/String;)V

    .line 326
    return-void
.end method

.method public static setCustomerId(Ljava/lang/String;)V
    .locals 1

    .line 1081
    const-string v0, "customer_id"

    invoke-static {v0, p0}, Lcom/localytics/android/Localytics;->setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    return-void
.end method

.method static declared-synchronized setCustomerIdInMemory(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/localytics/android/Localytics;

    monitor-enter v1

    .line 1047
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/localytics/android/Localytics;->installationID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    sput-object v0, Lcom/localytics/android/Localytics;->customerID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1038
    const-string v0, "customer_id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    invoke-static {p1}, Lcom/localytics/android/Localytics;->setCustomerIdInMemory(Ljava/lang/String;)V

    .line 1042
    :cond_0
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/AnalyticsHandler;->setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    return-void
.end method

.method public static setInAppMessageDismissButtonImage(Landroid/content/res/Resources;I)V
    .locals 7

    .line 945
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 946
    const/4 v0, 0x1

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 947
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 948
    invoke-static {p0, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 949
    const/4 v0, 0x0

    if-ne v0, v4, :cond_0

    .line 951
    const-string v0, "Cannot load the new dismiss button image. Is the resource id corrected?"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 952
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->setDismissButtonImage(Landroid/graphics/Bitmap;)V

    .line 953
    return-void

    .line 957
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 958
    invoke-static {v4, v5}, Lcom/localytics/android/Localytics;->scaleDownBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 961
    if-eq v6, v4, :cond_1

    .line 963
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 964
    const/4 v4, 0x0

    .line 967
    :cond_1
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/localytics/android/MarketingHandler;->setDismissButtonImage(Landroid/graphics/Bitmap;)V

    .line 968
    return-void
.end method

.method public static setInAppMessageDismissButtonImage(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 978
    const/4 v3, 0x0

    .line 980
    const/4 v0, 0x0

    if-eq v0, p1, :cond_0

    .line 983
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 984
    invoke-static {p1, v4}, Lcom/localytics/android/Localytics;->scaleDownBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 987
    if-ne v3, p1, :cond_0

    .line 989
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 993
    :cond_0
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/localytics/android/MarketingHandler;->setDismissButtonImage(Landroid/graphics/Bitmap;)V

    .line 994
    return-void
.end method

.method public static setInAppMessageDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V
    .locals 1

    .line 1209
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/MarketingHandler;->setInAppDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V

    .line 1210
    return-void
.end method

.method public static setInAppMessageDisplayActivity(Lo/ι;)V
    .locals 2

    .line 754
    if-nez p0, :cond_0

    .line 756
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attached activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_0
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {p0}, Lo/ι;->getSupportFragmentManager()Lo/ˈ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->setFragmentManager(Lo/ˈ;)V

    .line 761
    invoke-static {}, Lcom/localytics/android/Localytics;->isTestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->showMarketingTest()V

    .line 765
    :cond_1
    return-void
.end method

.method static setIsAutoIntegrate(Z)V
    .locals 0

    .line 1518
    sput-boolean p0, Lcom/localytics/android/Localytics;->isAutoIntegrate:Z

    .line 1519
    return-void
.end method

.method public static setLocation(Landroid/location/Location;)V
    .locals 1

    .line 1113
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/AnalyticsHandler;->setLocation(Landroid/location/Location;)V

    .line 1114
    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0

    .line 1127
    sput-boolean p0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    .line 1128
    return-void
.end method

.method public static setMessagingHost(Ljava/lang/String;)V
    .locals 0

    .line 1264
    sput-object p0, Lcom/localytics/android/Constants;->MARKETING_HOST:Ljava/lang/String;

    .line 1265
    return-void
.end method

.method public static setOptedOut(Z)V
    .locals 1

    .line 190
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/AnalyticsHandler;->setOptedOut(Z)V

    .line 191
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;J)V
    .locals 1

    .line 392
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, p2, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 393
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .line 381
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;JLjava/lang/String;)V

    .line 382
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 438
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 439
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .line 427
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    .line 484
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 485
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .line 473
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[J)V
    .locals 1

    .line 415
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 416
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .line 404
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;[JLjava/lang/String;)V

    .line 405
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 461
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 462
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .line 450
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;)V
    .locals 1

    .line 507
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 508
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .line 496
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method public static setProfilesHost(Ljava/lang/String;)V
    .locals 0

    .line 1286
    sput-object p0, Lcom/localytics/android/Constants;->PROFILES_HOST:Ljava/lang/String;

    .line 1287
    return-void
.end method

.method public static setPushDisabled(Z)V
    .locals 1

    .line 864
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/AnalyticsHandler;->setPushDisabled(Z)V

    .line 865
    return-void
.end method

.method public static setPushRegistrationId(Ljava/lang/String;)V
    .locals 1

    .line 851
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/AnalyticsHandler;->setPushRegistrationId(Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method static setReferrerId(Ljava/lang/String;)V
    .locals 1

    .line 1388
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/AnalyticsHandler;->setReferrerId(Ljava/lang/String;)V

    .line 1389
    return-void
.end method

.method static setScreenFlow(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 1383
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/AnalyticsHandler;->setScreenFlow(Ljava/util/List;)V

    .line 1384
    return-void
.end method

.method public static setSessionTimeoutInterval(J)V
    .locals 2

    .line 1149
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    sput-wide v0, Lcom/localytics/android/Constants;->SESSION_EXPIRATION:J

    .line 1150
    return-void
.end method

.method public static setTestModeEnabled(Z)V
    .locals 1

    .line 913
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-eq v0, p0, :cond_0

    .line 915
    invoke-static {p0}, Lcom/localytics/android/Constants;->setTestModeEnabled(Z)V

    .line 916
    if-eqz p0, :cond_0

    .line 918
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->showMarketingTest()V

    .line 921
    :cond_0
    return-void
.end method

.method public static tagEvent(Ljava/lang/String;)V
    .locals 3

    .line 243
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 244
    return-void
.end method

.method public static tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 260
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 261
    return-void
.end method

.method public static tagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;J)V"
        }
    .end annotation

    .line 292
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 293
    return-void
.end method

.method public static tagScreen(Ljava/lang/String;)V
    .locals 1

    .line 306
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/AnalyticsHandler;->tagScreen(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method static throwOrLogError(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1558
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static throwOrLogError(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 1

    .line 1581
    const/4 v0, 0x0

    return-object v0
.end method

.method public static triggerInAppMessage(Ljava/lang/String;)V
    .locals 1

    .line 784
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/localytics/android/Localytics;->triggerInAppMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 785
    return-void
.end method

.method public static triggerInAppMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 795
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->triggerInAppMessage(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 796
    return-void
.end method

.method static triggerInAppMessage(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Z)V"
        }
    .end annotation

    .line 1372
    invoke-static {}, Lcom/localytics/android/Localytics;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/MarketingHandler;->displayMarketingMessage(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1373
    return-void
.end method

.method public static upload()V
    .locals 2

    .line 162
    sget-object v0, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Lcom/localytics/android/Localytics;->getCustomerIdInMemory()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {}, Lcom/localytics/android/Localytics;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/localytics/android/ProfileHandler;->upload(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/localytics/android/Localytics;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/localytics/android/AnalyticsHandler;->upload(Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method
