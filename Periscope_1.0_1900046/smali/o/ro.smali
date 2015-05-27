.class public Lo/ro;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ro$if;
    }
.end annotation


# static fields
.field private static final WD:I

.field private static final WE:I

.field private static final WF:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lo/ro;->WD:I

    .line 20
    sget v0, Lo/ro;->WD:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lo/ro;->WE:I

    .line 21
    sget v0, Lo/ro;->WD:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lo/ro;->WF:I

    return-void
.end method

.method constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lo/rf;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::Ljava/lang/Runnable;:Lo/re;:Lo/rp;:Lo/rm;>(IIJLjava/util/concurrent/TimeUnit;Lo/rf<TT;>;Ljava/util/concurrent/ThreadFactory;)V"
        }
    .end annotation

    .line 31
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 33
    invoke-virtual {p0}, Lo/ro;->prestartAllCoreThreads()I

    .line 34
    return-void
.end method

.method public static cX()Lo/ro;
    .locals 2

    .line 64
    sget v0, Lo/ro;->WE:I

    sget v1, Lo/ro;->WF:I

    invoke-static {v0, v1}, Lo/ro;->ᖮ(II)Lo/ro;

    move-result-object v0

    return-object v0
.end method

.method public static ᖮ(II)Lo/ro;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::Ljava/lang/Runnable;:Lo/re;:Lo/rp;:Lo/rm;>(II)Lo/ro;"
        }
    .end annotation

    .line 44
    new-instance v0, Lo/ro;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Lo/rf;

    invoke-direct {v6}, Lo/rf;-><init>()V

    new-instance v7, Lo/ro$if;

    const/16 v1, 0xa

    invoke-direct {v7, v1}, Lo/ro$if;-><init>(I)V

    move v1, p0

    move v2, p1

    const-wide/16 v3, 0x1

    invoke-direct/range {v0 .. v7}, Lo/ro;-><init>(IIJLjava/util/concurrent/TimeUnit;Lo/rf;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2

    .line 89
    move-object v0, p1

    check-cast v0, Lo/rp;

    move-object v1, v0

    .line 90
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lo/rp;->ᔊ(Z)V

    .line 91
    invoke-interface {v1, p2}, Lo/rp;->ᐝ(Ljava/lang/Throwable;)V

    .line 93
    invoke-virtual {p0}, Lo/ro;->cY()Lo/rf;

    move-result-object v0

    invoke-virtual {v0}, Lo/rf;->cU()V

    .line 95
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method

.method public cY()Lo/rf;
    .locals 1

    .line 101
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    check-cast v0, Lo/rf;

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 79
    invoke-static {p1}, Lo/rn;->ᒡ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 82
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/ro;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 84
    :goto_0
    return-void
.end method

.method public synthetic getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lo/ro;->cY()Lo/rf;

    move-result-object v0

    return-object v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/lang/Runnable;TT;)Ljava/util/concurrent/RunnableFuture<TT;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Lo/rl;

    invoke-direct {v0, p1, p2}, Lo/rl;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/util/concurrent/Callable<TT;>;)Ljava/util/concurrent/RunnableFuture<TT;>;"
        }
    .end annotation

    .line 74
    new-instance v0, Lo/rl;

    invoke-direct {v0, p1}, Lo/rl;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
