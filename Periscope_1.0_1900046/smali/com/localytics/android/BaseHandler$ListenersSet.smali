.class abstract Lcom/localytics/android/BaseHandler$ListenersSet;
.super Ljava/util/HashSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/BaseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ListenersSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<Lcom/localytics/android/BaseHandler$BaseListener;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/BaseHandler;


# direct methods
.method constructor <init>(Lcom/localytics/android/BaseHandler;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/localytics/android/BaseHandler$ListenersSet;->this$0:Lcom/localytics/android/BaseHandler;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized callListeners(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;[Ljava/lang/Class<*>;[Ljava/lang/Object;)V"
        }
    .end annotation

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/localytics/android/BaseHandler$ListenersSet;->this$0:Lcom/localytics/android/BaseHandler;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 261
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/BaseHandler$ListenersSet;->this$0:Lcom/localytics/android/BaseHandler;

    const/4 v1, 0x1

    # setter for: Lcom/localytics/android/BaseHandler;->queuePriorityMessages:Z
    invoke-static {v0, v1}, Lcom/localytics/android/BaseHandler;->access$102(Lcom/localytics/android/BaseHandler;Z)Z

    .line 262
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler$ListenersSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 266
    :try_start_2
    invoke-static {v4, p1, p2, p3}, Lcom/localytics/android/ReflectionUtils;->tryInvokeInstance(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    goto :goto_1

    .line 268
    :catch_0
    move-exception v5

    .line 271
    :goto_1
    goto :goto_0

    .line 272
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/localytics/android/BaseHandler$ListenersSet;->this$0:Lcom/localytics/android/BaseHandler;

    const/4 v1, 0x0

    # setter for: Lcom/localytics/android/BaseHandler;->queuePriorityMessages:Z
    invoke-static {v0, v1}, Lcom/localytics/android/BaseHandler;->access$102(Lcom/localytics/android/BaseHandler;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v2

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 274
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
