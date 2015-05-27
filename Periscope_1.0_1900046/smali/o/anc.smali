.class final Lo/anc;
.super Lo/ani;
.source ""


# instance fields
.field private final bNI:I

.field private final bNJ:I

.field private final bpm:J


# direct methods
.method constructor <init>(JII)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/ani;-><init>()V

    .line 17
    iput-wide p1, p0, Lo/anc;->bpm:J

    .line 18
    iput p3, p0, Lo/anc;->bNI:I

    .line 19
    iput p4, p0, Lo/anc;->bNJ:I

    .line 20
    return-void
.end method


# virtual methods
.method public BX()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lo/anc;->bpm:J

    return-wide v0
.end method

.method public BY()I
    .locals 1

    .line 29
    iget v0, p0, Lo/anc;->bNI:I

    return v0
.end method

.method public BZ()I
    .locals 1

    .line 34
    iget v0, p0, Lo/anc;->bNJ:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 48
    if-ne p1, p0, :cond_0

    .line 49
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_0
    instance-of v0, p1, Lo/ani;

    if-eqz v0, :cond_2

    .line 52
    move-object v0, p1

    check-cast v0, Lo/ani;

    move-object v4, v0

    .line 53
    iget-wide v0, p0, Lo/anc;->bpm:J

    invoke-virtual {v4}, Lo/ani;->BX()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lo/anc;->bNI:I

    invoke-virtual {v4}, Lo/ani;->BY()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/anc;->bNJ:I

    invoke-virtual {v4}, Lo/ani;->BZ()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 57
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 62
    const/4 v4, 0x1

    .line 63
    const v4, 0xf4243

    .line 64
    iget-wide v0, p0, Lo/anc;->bpm:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, p0, Lo/anc;->bpm:J

    xor-long/2addr v0, v2

    const-wide/32 v2, 0xf4243

    xor-long/2addr v0, v2

    long-to-int v4, v0

    .line 65
    const v0, 0xf4243

    mul-int/2addr v4, v0

    .line 66
    iget v0, p0, Lo/anc;->bNI:I

    xor-int/2addr v4, v0

    .line 67
    const v0, 0xf4243

    mul-int/2addr v4, v0

    .line 68
    iget v0, p0, Lo/anc;->bNJ:I

    xor-int/2addr v4, v0

    .line 69
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Meta{watchedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lo/anc;->bpm:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "numWatched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/anc;->bNI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lostBeforeEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/anc;->bNJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
