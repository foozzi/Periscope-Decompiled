.class final Lo/os;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TH:Lo/pa;

.field private final TI:Lo/ot;

.field private volatile TJ:Z


# direct methods
.method constructor <init>(Lo/ot;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lo/os;->TI:Lo/ot;

    .line 34
    new-instance v0, Lo/pa;

    invoke-direct {v0}, Lo/pa;-><init>()V

    iput-object v0, p0, Lo/os;->TH:Lo/pa;

    .line 35
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 53
    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/os;->TH:Lo/pa;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lo/pa;->ῑ(I)Lo/oz;

    move-result-object v3

    .line 54
    if-nez v3, :cond_1

    .line 55
    move-object v4, p0

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    :try_start_1
    iget-object v0, p0, Lo/os;->TH:Lo/pa;

    invoke-virtual {v0}, Lo/pa;->bZ()Lo/oz;

    move-result-object v3

    .line 58
    if-nez v3, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/os;->TJ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit v4

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/os;->TJ:Z

    return-void

    .line 62
    :cond_0
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v4

    :try_start_2
    throw v5

    .line 64
    :cond_1
    :goto_1
    iget-object v0, p0, Lo/os;->TI:Lo/ot;

    invoke-virtual {v0, v3}, Lo/ot;->ˊ(Lo/oz;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v3

    .line 67
    const-string v0, "Event"

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was interruppted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/os;->TJ:Z

    .line 71
    goto :goto_2

    .line 70
    :catchall_1
    move-exception v6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/os;->TJ:Z

    throw v6

    .line 72
    :goto_2
    return-void
.end method

.method public ˊ(Lo/pe;Ljava/lang/Object;)V
    .locals 4

    .line 38
    invoke-static {p1, p2}, Lo/oz;->ˎ(Lo/pe;Ljava/lang/Object;)Lo/oz;

    move-result-object v1

    .line 39
    move-object v2, p0

    monitor-enter v2

    .line 40
    :try_start_0
    iget-object v0, p0, Lo/os;->TH:Lo/pa;

    invoke-virtual {v0, v1}, Lo/pa;->ˎ(Lo/oz;)V

    .line 41
    iget-boolean v0, p0, Lo/os;->TJ:Z

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/os;->TJ:Z

    .line 43
    iget-object v0, p0, Lo/os;->TI:Lo/ot;

    invoke-virtual {v0}, Lo/ot;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 46
    :goto_0
    return-void
.end method
