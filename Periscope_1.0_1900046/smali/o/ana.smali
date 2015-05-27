.class final Lo/ana;
.super Lo/ang;
.source ""


# instance fields
.field private final bNE:J

.field private final bNF:I


# direct methods
.method constructor <init>(JI)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/ang;-><init>()V

    .line 15
    iput-wide p1, p0, Lo/ana;->bNE:J

    .line 16
    iput p3, p0, Lo/ana;->bNF:I

    .line 17
    return-void
.end method


# virtual methods
.method public BT()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lo/ana;->bNE:J

    return-wide v0
.end method

.method public BU()I
    .locals 1

    .line 26
    iget v0, p0, Lo/ana;->bNF:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 39
    if-ne p1, p0, :cond_0

    .line 40
    const/4 v0, 0x1

    return v0

    .line 42
    :cond_0
    instance-of v0, p1, Lo/ang;

    if-eqz v0, :cond_2

    .line 43
    move-object v0, p1

    check-cast v0, Lo/ang;

    move-object v4, v0

    .line 44
    iget-wide v0, p0, Lo/ana;->bNE:J

    invoke-virtual {v4}, Lo/ang;->BT()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lo/ana;->bNF:I

    invoke-virtual {v4}, Lo/ang;->BU()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 47
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 52
    const/4 v4, 0x1

    .line 53
    const v4, 0xf4243

    .line 54
    iget-wide v0, p0, Lo/ana;->bNE:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, p0, Lo/ana;->bNE:J

    xor-long/2addr v0, v2

    const-wide/32 v2, 0xf4243

    xor-long/2addr v0, v2

    long-to-int v4, v0

    .line 55
    const v0, 0xf4243

    mul-int/2addr v4, v0

    .line 56
    iget v0, p0, Lo/ana;->bNF:I

    xor-int/2addr v4, v0

    .line 57
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaderKey{itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lo/ana;->bNE:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mergeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ana;->bNF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
