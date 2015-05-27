.class final Lo/amz;
.super Lo/anf;
.source ""


# instance fields
.field private final bou:I

.field private final bov:I

.field private final bow:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/anf;-><init>()V

    .line 17
    iput p1, p0, Lo/amz;->bou:I

    .line 18
    iput p2, p0, Lo/amz;->bov:I

    .line 19
    iput p3, p0, Lo/amz;->bow:I

    .line 20
    return-void
.end method


# virtual methods
.method public BQ()I
    .locals 1

    .line 24
    iget v0, p0, Lo/amz;->bou:I

    return v0
.end method

.method public BR()I
    .locals 1

    .line 29
    iget v0, p0, Lo/amz;->bov:I

    return v0
.end method

.method public BS()I
    .locals 1

    .line 34
    iget v0, p0, Lo/amz;->bow:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 48
    if-ne p1, p0, :cond_0

    .line 49
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_0
    instance-of v0, p1, Lo/anf;

    if-eqz v0, :cond_2

    .line 52
    move-object v0, p1

    check-cast v0, Lo/anf;

    move-object v2, v0

    .line 53
    iget v0, p0, Lo/amz;->bou:I

    invoke-virtual {v2}, Lo/anf;->BQ()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/amz;->bov:I

    invoke-virtual {v2}, Lo/anf;->BR()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/amz;->bow:I

    invoke-virtual {v2}, Lo/anf;->BS()I

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
    .locals 2

    .line 62
    const/4 v1, 0x1

    .line 63
    const v1, 0xf4243

    .line 64
    iget v0, p0, Lo/amz;->bou:I

    xor-int/2addr v1, v0

    .line 65
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 66
    iget v0, p0, Lo/amz;->bov:I

    xor-int/2addr v1, v0

    .line 67
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 68
    iget v0, p0, Lo/amz;->bow:I

    xor-int/2addr v1, v0

    .line 69
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastViewerMeta{numWebWatched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/amz;->bou:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "numReplayWatched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/amz;->bov:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "numLiveWatched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/amz;->bow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
