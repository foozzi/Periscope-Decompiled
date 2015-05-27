.class final Lcom/localytics/android/MarketingHandler$MessagingListenersSet;
.super Lcom/localytics/android/BaseHandler$ListenersSet;
.source ""

# interfaces
.implements Lcom/localytics/android/MessagingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MarketingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MessagingListenersSet"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;


# direct methods
.method private constructor <init>(Lcom/localytics/android/MarketingHandler;)V
    .locals 0

    .line 2429
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$MessagingListenersSet;->this$0:Lcom/localytics/android/MarketingHandler;

    invoke-direct {p0, p1}, Lcom/localytics/android/BaseHandler$ListenersSet;-><init>(Lcom/localytics/android/BaseHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingHandler$1;)V
    .locals 0

    .line 2429
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingHandler$MessagingListenersSet;-><init>(Lcom/localytics/android/MarketingHandler;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized localyticsDidDismissInAppMessage()V
    .locals 4

    monitor-enter p0

    .line 2457
    const-string v0, "localyticsDidDismissInAppMessage"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/localytics/android/MarketingHandler$MessagingListenersSet;->callListeners(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2458
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized localyticsDidDisplayInAppMessage()V
    .locals 4

    monitor-enter p0

    .line 2445
    const-string v0, "localyticsDidDisplayInAppMessage"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/localytics/android/MarketingHandler$MessagingListenersSet;->callListeners(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2446
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized localyticsWillDismissInAppMessage()V
    .locals 4

    monitor-enter p0

    .line 2451
    const-string v0, "localyticsWillDismissInAppMessage"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/localytics/android/MarketingHandler$MessagingListenersSet;->callListeners(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2452
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized localyticsWillDisplayInAppMessage()V
    .locals 4

    monitor-enter p0

    .line 2439
    const-string v0, "localyticsWillDisplayInAppMessage"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/localytics/android/MarketingHandler$MessagingListenersSet;->callListeners(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2440
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
