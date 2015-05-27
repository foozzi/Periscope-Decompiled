.class final Lo/ox;
.super Landroid/os/Handler;
.source ""


# instance fields
.field private final TH:Lo/pa;

.field private final TI:Lo/ot;

.field private final Uj:I

.field private Uk:Z


# direct methods
.method constructor <init>(Lo/ot;Landroid/os/Looper;I)V
    .locals 1

    .line 31
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    iput-object p1, p0, Lo/ox;->TI:Lo/ot;

    .line 33
    iput p3, p0, Lo/ox;->Uj:I

    .line 34
    new-instance v0, Lo/pa;

    invoke-direct {v0}, Lo/pa;-><init>()V

    iput-object v0, p0, Lo/ox;->TH:Lo/pa;

    .line 35
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 52
    const/4 v2, 0x0

    .line 54
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 56
    :goto_0
    iget-object v0, p0, Lo/ox;->TH:Lo/pa;

    invoke-virtual {v0}, Lo/pa;->bZ()Lo/oz;

    move-result-object v5

    .line 57
    if-nez v5, :cond_1

    .line 58
    move-object v6, p0

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    iget-object v0, p0, Lo/ox;->TH:Lo/pa;

    invoke-virtual {v0}, Lo/pa;->bZ()Lo/oz;

    move-result-object v5

    .line 61
    if-nez v5, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ox;->Uk:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    monitor-exit v6

    .line 78
    iput-boolean v2, p0, Lo/ox;->Uk:Z

    return-void

    .line 65
    :cond_0
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v6

    :try_start_2
    throw v7

    .line 67
    :cond_1
    :goto_1
    iget-object v0, p0, Lo/ox;->TI:Lo/ot;

    invoke-virtual {v0, v5}, Lo/ot;->ˊ(Lo/oz;)V

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v6, v0, v3

    .line 69
    iget v0, p0, Lo/ox;->Uj:I

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_3

    .line 70
    invoke-virtual {p0}, Lo/ox;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ox;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    new-instance v0, Lo/ow;

    const-string v1, "Could not send handler message"

    invoke-direct {v0, v1}, Lo/ow;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    :cond_2
    const/4 v2, 0x1

    .line 78
    iput-boolean v2, p0, Lo/ox;->Uk:Z

    return-void

    .line 76
    :cond_3
    goto :goto_0

    .line 78
    :catchall_1
    move-exception v8

    iput-boolean v2, p0, Lo/ox;->Uk:Z

    throw v8
.end method

.method ˊ(Lo/pe;Ljava/lang/Object;)V
    .locals 5

    .line 38
    invoke-static {p1, p2}, Lo/oz;->ˎ(Lo/pe;Ljava/lang/Object;)Lo/oz;

    move-result-object v2

    .line 39
    move-object v3, p0

    monitor-enter v3

    .line 40
    :try_start_0
    iget-object v0, p0, Lo/ox;->TH:Lo/pa;

    invoke-virtual {v0, v2}, Lo/pa;->ˎ(Lo/oz;)V

    .line 41
    iget-boolean v0, p0, Lo/ox;->Uk:Z

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ox;->Uk:Z

    .line 43
    invoke-virtual {p0}, Lo/ox;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ox;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lo/ow;

    const-string v1, "Could not send handler message"

    invoke-direct {v0, v1}, Lo/ow;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 48
    :goto_0
    return-void
.end method
