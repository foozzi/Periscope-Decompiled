.class public final Lo/qn;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static final ˊ(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-static {p0, p1, v1, v2, v0}, Lo/qn;->ˊ(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 71
    return-void
.end method

.method public static final ˊ(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 11

    .line 75
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v5, Lo/qq;

    move-object v6, p0

    move-object v7, p1

    move-wide v8, p2

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lo/qq;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashlytics Shutdown Hook for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 95
    return-void
.end method

.method public static Ӏ(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 25
    invoke-static {p0}, Lo/qn;->ᑉ(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 26
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 27
    invoke-static {p0, v1}, Lo/qn;->ˊ(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 28
    return-object v1
.end method

.method public static ײ(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 41
    invoke-static {p0}, Lo/qn;->ᑉ(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 44
    invoke-static {p0, v1}, Lo/qn;->ˊ(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 45
    return-object v1
.end method

.method public static final ᑉ(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 3

    .line 49
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x1

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 51
    new-instance v0, Lo/qo;

    invoke-direct {v0, p0, v2}, Lo/qo;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v0
.end method
