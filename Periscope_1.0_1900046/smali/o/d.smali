.class public Lo/d;
.super Ljava/lang/Object;


# instance fields
.field private final FQ:J

.field private final FR:I

.field private final FS:Lo/ﹴ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe74<Ljava/lang/Long;Ljava/lang/Long;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lo/d;->FQ:J

    const/16 v0, 0xa

    iput v0, p0, Lo/d;->FR:I

    new-instance v0, Lo/ﹴ;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lo/ﹴ;-><init>(I)V

    iput-object v0, p0, Lo/d;->FS:Lo/ﹴ;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lo/d;->FQ:J

    iput p1, p0, Lo/d;->FR:I

    new-instance v0, Lo/ﹴ;

    invoke-direct {v0}, Lo/ﹴ;-><init>()V

    iput-object v0, p0, Lo/d;->FS:Lo/ﹴ;

    return-void
.end method

.method private ˏ(JJ)V
    .locals 3

    iget-object v0, p0, Lo/d;->FS:Lo/ﹴ;

    invoke-virtual {v0}, Lo/ﹴ;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v0, p0, Lo/d;->FS:Lo/ﹴ;

    invoke-virtual {v0, v2}, Lo/ﹴ;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p3, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/d;->FS:Lo/ﹴ;

    invoke-virtual {v0, v2}, Lo/ﹴ;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public ˊ(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lo/d;->FQ:J

    move-object v7, p0

    monitor-enter v7

    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/d;->FS:Lo/ﹴ;

    invoke-virtual {v0}, Lo/ﹴ;->size()I

    move-result v0

    iget v1, p0, Lo/d;->FR:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v5, v6, v3, v4}, Lo/d;->ˏ(JJ)V

    const-wide/16 v0, 0x2

    div-long/2addr v5, v0

    const-string v0, "PassiveTimedConnectionMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The max capacity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/d;->FR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not enough. Current durationThreshold is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/d;->FS:Lo/ﹴ;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/ﹴ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception v8

    monitor-exit v7

    throw v8
.end method

.method public ˮ(J)Z
    .locals 4

    move-object v2, p0

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lo/d;->FS:Lo/ﹴ;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ﹴ;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method
