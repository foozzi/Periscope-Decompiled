.class final Lcom/localytics/android/AnalyticsHandler$AnalyticsListenersSet;
.super Lcom/localytics/android/BaseHandler$ListenersSet;
.source ""

# interfaces
.implements Lcom/localytics/android/AnalyticsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/AnalyticsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AnalyticsListenersSet"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/AnalyticsHandler;


# direct methods
.method private constructor <init>(Lcom/localytics/android/AnalyticsHandler;)V
    .locals 0

    .line 1843
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$AnalyticsListenersSet;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-direct {p0, p1}, Lcom/localytics/android/BaseHandler$ListenersSet;-><init>(Lcom/localytics/android/BaseHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/AnalyticsHandler$1;)V
    .locals 0

    .line 1843
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler$AnalyticsListenersSet;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized localyticsDidTagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 1866
    const-string v0, "localyticsDidTagEvent"

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/util/Map;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/localytics/android/AnalyticsHandler$AnalyticsListenersSet;->callListeners(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized localyticsSessionDidOpen(ZZZ)V
    .locals 5

    monitor-enter p0

    .line 1854
    const-string v0, "localyticsSessionDidOpen"

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/localytics/android/AnalyticsHandler$AnalyticsListenersSet;->callListeners(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1855
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized localyticsSessionWillClose()V
    .locals 4

    monitor-enter p0

    .line 1860
    const-string v0, "localyticsSessionWillClose"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/localytics/android/AnalyticsHandler$AnalyticsListenersSet;->callListeners(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1861
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized localyticsSessionWillOpen(ZZZ)V
    .locals 5

    monitor-enter p0

    .line 1848
    const-string v0, "localyticsSessionWillOpen"

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/localytics/android/AnalyticsHandler$AnalyticsListenersSet;->callListeners(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1849
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
