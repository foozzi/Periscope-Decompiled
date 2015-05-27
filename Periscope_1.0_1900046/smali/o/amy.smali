.class final Lo/amy;
.super Lo/ane;
.source ""


# instance fields
.field private final bNC:Ljava/util/Date;

.field private final bND:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Lo/ane;-><init>()V

    .line 16
    if-nez p1, :cond_0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null start"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    iput-object p1, p0, Lo/amy;->bNC:Ljava/util/Date;

    .line 20
    if-nez p2, :cond_1

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null end"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    iput-object p2, p0, Lo/amy;->bND:Ljava/util/Date;

    .line 24
    return-void
.end method


# virtual methods
.method public BO()Ljava/util/Date;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/amy;->bNC:Ljava/util/Date;

    return-object v0
.end method

.method public BP()Ljava/util/Date;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/amy;->bND:Ljava/util/Date;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 46
    if-ne p1, p0, :cond_0

    .line 47
    const/4 v0, 0x1

    return v0

    .line 49
    :cond_0
    instance-of v0, p1, Lo/ane;

    if-eqz v0, :cond_2

    .line 50
    move-object v0, p1

    check-cast v0, Lo/ane;

    move-object v2, v0

    .line 51
    iget-object v0, p0, Lo/amy;->bNC:Ljava/util/Date;

    invoke-virtual {v2}, Lo/ane;->BO()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/amy;->bND:Ljava/util/Date;

    invoke-virtual {v2}, Lo/ane;->BP()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 54
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 59
    const/4 v1, 0x1

    .line 60
    const v1, 0xf4243

    .line 61
    iget-object v0, p0, Lo/amy;->bNC:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 62
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 63
    iget-object v0, p0, Lo/amy;->bND:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 64
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/amy;->bNC:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/amy;->bND:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
