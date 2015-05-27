.class Lo/ة;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/ة;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 22
    return-void
.end method


# virtual methods
.method ˊ(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/util/concurrent/Callable<TT;>;)TT;"
        }
    .end annotation

    .line 43
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lo/ة;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/ة;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 49
    :catch_0
    move-exception v4

    .line 50
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Executor is shut down because we\'re handling a fatal crash."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 53
    :catch_1
    move-exception v4

    .line 54
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed to execute task."

    invoke-interface {v0, v1, v2, v4}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method ˊ(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Runnable;)Ljava/util/concurrent/Future<*>;"
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Lo/ة;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lo/ن;

    invoke-direct {v1, p0, p1}, Lo/ن;-><init>(Lo/ة;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 81
    :catch_0
    move-exception v3

    .line 82
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Executor is shut down because we\'re handling a fatal crash."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method ˋ(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/util/concurrent/Callable<TT;>;)Ljava/util/concurrent/Future<TT;>;"
        }
    .end annotation

    .line 100
    :try_start_0
    iget-object v0, p0, Lo/ة;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lo/ٮ;

    invoke-direct {v1, p0, p1}, Lo/ٮ;-><init>(Lo/ة;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 111
    :catch_0
    move-exception v3

    .line 112
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Executor is shut down because we\'re handling a fatal crash."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method
