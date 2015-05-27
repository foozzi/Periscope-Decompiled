.class final Lo/and;
.super Lo/ank;
.source ""


# instance fields
.field private final bnh:Ljava/lang/String;

.field private final bug:Z

.field private final nD:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lo/ank;-><init>()V

    .line 17
    if-nez p1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null broadcastId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Lo/and;->bnh:Ljava/lang/String;

    .line 21
    if-nez p2, :cond_1

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null userId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    iput-object p2, p0, Lo/and;->nD:Ljava/lang/String;

    .line 25
    iput-boolean p3, p0, Lo/and;->bug:Z

    .line 26
    return-void
.end method


# virtual methods
.method Ca()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/and;->bnh:Ljava/lang/String;

    return-object v0
.end method

.method Cb()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/and;->nD:Ljava/lang/String;

    return-object v0
.end method

.method Cc()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lo/and;->bug:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 54
    if-ne p1, p0, :cond_0

    .line 55
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_0
    instance-of v0, p1, Lo/ank;

    if-eqz v0, :cond_2

    .line 58
    move-object v0, p1

    check-cast v0, Lo/ank;

    move-object v2, v0

    .line 59
    iget-object v0, p0, Lo/and;->bnh:Ljava/lang/String;

    invoke-virtual {v2}, Lo/ank;->Ca()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/and;->nD:Ljava/lang/String;

    invoke-virtual {v2}, Lo/ank;->Cb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/and;->bug:Z

    invoke-virtual {v2}, Lo/ank;->Cc()Z

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 63
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 68
    const/4 v1, 0x1

    .line 69
    const v1, 0xf4243

    .line 70
    iget-object v0, p0, Lo/and;->bnh:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 71
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 72
    iget-object v0, p0, Lo/and;->nD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 73
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 74
    iget-boolean v0, p0, Lo/and;->bug:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    xor-int/2addr v1, v0

    .line 75
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParticipantKey{broadcastId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/and;->bnh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/and;->nD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "replay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lo/and;->bug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
