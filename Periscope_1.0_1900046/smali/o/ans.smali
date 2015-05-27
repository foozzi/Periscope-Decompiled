.class final Lo/ans;
.super Lo/anv;
.source ""


# instance fields
.field private final bNV:Ljava/lang/String;

.field private final bnl:I

.field private final bpx:Ljava/lang/String;

.field private final bpy:Ljava/lang/String;

.field private final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 20
    invoke-direct {p0}, Lo/anv;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lo/ans;->id:Ljava/lang/String;

    .line 25
    if-nez p2, :cond_1

    .line 26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null profileImage"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    iput-object p2, p0, Lo/ans;->bNV:Ljava/lang/String;

    .line 29
    if-nez p3, :cond_2

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null displayName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_2
    iput-object p3, p0, Lo/ans;->bpy:Ljava/lang/String;

    .line 33
    if-nez p4, :cond_3

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null username"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_3
    iput-object p4, p0, Lo/ans;->bpx:Ljava/lang/String;

    .line 37
    iput p5, p0, Lo/ans;->bnl:I

    .line 38
    return-void
.end method


# virtual methods
.method public Cl()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/ans;->bpx:Ljava/lang/String;

    return-object v0
.end method

.method public Cv()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/ans;->bNV:Ljava/lang/String;

    return-object v0
.end method

.method public Cw()I
    .locals 1

    .line 62
    iget v0, p0, Lo/ans;->bnl:I

    return v0
.end method

.method public displayName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/ans;->bpy:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 78
    if-ne p1, p0, :cond_0

    .line 79
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_0
    instance-of v0, p1, Lo/anv;

    if-eqz v0, :cond_2

    .line 82
    move-object v0, p1

    check-cast v0, Lo/anv;

    move-object v2, v0

    .line 83
    iget-object v0, p0, Lo/ans;->id:Ljava/lang/String;

    invoke-virtual {v2}, Lo/anv;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ans;->bNV:Ljava/lang/String;

    invoke-virtual {v2}, Lo/anv;->Cv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ans;->bpy:Ljava/lang/String;

    invoke-virtual {v2}, Lo/anv;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ans;->bpx:Ljava/lang/String;

    invoke-virtual {v2}, Lo/anv;->Cl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lo/ans;->bnl:I

    invoke-virtual {v2}, Lo/anv;->Cw()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 89
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 94
    const/4 v1, 0x1

    .line 95
    const v1, 0xf4243

    .line 96
    iget-object v0, p0, Lo/ans;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 97
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 98
    iget-object v0, p0, Lo/ans;->bNV:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 99
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 100
    iget-object v0, p0, Lo/ans;->bpy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 101
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 102
    iget-object v0, p0, Lo/ans;->bpx:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 103
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 104
    iget v0, p0, Lo/ans;->bnl:I

    xor-int/2addr v1, v0

    .line 105
    return v1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/ans;->id:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrimUser{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ans;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "profileImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ans;->bNV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ans;->bpy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ans;->bpx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "participantIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ans;->bnl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
