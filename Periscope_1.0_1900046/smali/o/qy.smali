.class public Lo/qy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final WA:Ljava/lang/String;

.field private WB:J

.field private WC:J

.field private final nI:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/qy;->WA:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lo/qy;->tag:Ljava/lang/String;

    .line 23
    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/qy;->nI:Z

    .line 24
    return-void
.end method

.method private cN()V
    .locals 4

    .line 53
    iget-object v0, p0, Lo/qy;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/qy;->WA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lo/qy;->WC:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method


# virtual methods
.method public declared-synchronized cL()V
    .locals 3

    monitor-enter p0

    .line 30
    :try_start_0
    iget-boolean v0, p0, Lo/qy;->nI:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/qy;->WB:J

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/qy;->WC:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cM()V
    .locals 5

    monitor-enter p0

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lo/qy;->nI:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 40
    :cond_0
    iget-wide v0, p0, Lo/qy;->WC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    .line 41
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/qy;->WB:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/qy;->WC:J

    .line 42
    invoke-direct {p0}, Lo/qy;->cN()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
