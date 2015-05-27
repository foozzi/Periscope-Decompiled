.class Lo/ν;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private rf:J

.field private rh:J

.field private started:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ˑ(J)J
    .locals 4

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sub-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lo/ν;->started:Z

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ν;->started:Z

    .line 46
    iget-wide v0, p0, Lo/ν;->rf:J

    invoke-direct {p0, v0, v1}, Lo/ν;->ˑ(J)J

    move-result-wide v0

    iput-wide v0, p0, Lo/ν;->rh:J

    .line 48
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lo/ν;->started:Z

    if-eqz v0, :cond_0

    .line 55
    iget-wide v0, p0, Lo/ν;->rh:J

    invoke-direct {p0, v0, v1}, Lo/ν;->ˑ(J)J

    move-result-wide v0

    iput-wide v0, p0, Lo/ν;->rf:J

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ν;->started:Z

    .line 58
    :cond_0
    return-void
.end method

.method public ƒ()J
    .locals 2

    .line 72
    iget-boolean v0, p0, Lo/ν;->started:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lo/ν;->rh:J

    invoke-direct {p0, v0, v1}, Lo/ν;->ˑ(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lo/ν;->rf:J

    :goto_0
    return-wide v0
.end method

.method public ˍ(J)V
    .locals 2

    .line 64
    iput-wide p1, p0, Lo/ν;->rf:J

    .line 65
    invoke-direct {p0, p1, p2}, Lo/ν;->ˑ(J)J

    move-result-wide v0

    iput-wide v0, p0, Lo/ν;->rh:J

    .line 66
    return-void
.end method
