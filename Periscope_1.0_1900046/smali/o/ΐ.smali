.class public Lo/ΐ;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ΐ$1;,
        Lo/ΐ$ˊ;,
        Lo/ΐ$if;,
        Lo/ΐ$ˋ;
    }
.end annotation


# instance fields
.field private final ji:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final jj:Lo/ΐ$ˋ;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 62
    sget-object v0, Lo/ΐ$ˋ;->jn:Lo/ΐ$ˋ;

    invoke-direct {p0, p1, v0}, Lo/ΐ;-><init>(ILo/ΐ$ˋ;)V

    .line 63
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lo/ΐ$ˋ;)V
    .locals 8

    .line 80
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/ΐ;->ji:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    iput-object p7, p0, Lo/ΐ;->jj:Lo/ΐ$ˋ;

    .line 82
    return-void
.end method

.method public constructor <init>(ILo/ΐ$ˋ;)V
    .locals 8

    .line 74
    move-object v0, p0

    move v1, p1

    move v2, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Lo/ΐ$if;

    invoke-direct {v6}, Lo/ΐ$if;-><init>()V

    move-object v7, p2

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v7}, Lo/ΐ;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lo/ΐ$ˋ;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3

    .line 91
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 92
    if-nez p2, :cond_0

    instance-of v0, p1, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 93
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/Future;

    move-object v1, v0

    .line 94
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    .line 98
    iget-object v0, p0, Lo/ΐ;->jj:Lo/ΐ$ˋ;

    invoke-virtual {v0, v2}, Lo/ΐ$ˋ;->ˊ(Ljava/lang/Throwable;)V

    .line 101
    goto :goto_0

    .line 99
    :catch_1
    move-exception v2

    .line 100
    iget-object v0, p0, Lo/ΐ;->jj:Lo/ΐ$ˋ;

    invoke-virtual {v0, v2}, Lo/ΐ$ˋ;->ˊ(Ljava/lang/Throwable;)V

    .line 104
    :cond_0
    :goto_0
    return-void
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/lang/Runnable;TT;)Ljava/util/concurrent/RunnableFuture<TT;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lo/ΐ$ˊ;

    iget-object v1, p0, Lo/ΐ;->ji:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lo/ΐ$ˊ;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V

    return-object v0
.end method
