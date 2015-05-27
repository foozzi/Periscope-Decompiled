.class final Lo/anb;
.super Lo/anh;
.source ""


# instance fields
.field private final bNG:Lo/anh$if;

.field private final bNH:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/anh$if;Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Lo/anh;-><init>()V

    .line 15
    if-nez p1, :cond_0

    .line 16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lo/anb;->bNG:Lo/anh$if;

    .line 19
    iput-object p2, p0, Lo/anb;->bNH:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public BV()Lo/anh$if;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/anb;->bNG:Lo/anh$if;

    return-object v0
.end method

.method public BW()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/anb;->bNH:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 44
    if-ne p1, p0, :cond_0

    .line 45
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_0
    instance-of v0, p1, Lo/anh;

    if-eqz v0, :cond_3

    .line 48
    move-object v0, p1

    check-cast v0, Lo/anh;

    move-object v2, v0

    .line 49
    iget-object v0, p0, Lo/anb;->bNG:Lo/anh$if;

    invoke-virtual {v2}, Lo/anh;->BV()Lo/anh$if;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/anh$if;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/anb;->bNH:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lo/anh;->BW()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/anb;->bNH:Ljava/lang/String;

    invoke-virtual {v2}, Lo/anh;->BW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 52
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 57
    const/4 v1, 0x1

    .line 58
    const v1, 0xf4243

    .line 59
    iget-object v0, p0, Lo/anb;->bNG:Lo/anh$if;

    invoke-virtual {v0}, Lo/anh$if;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 60
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 61
    iget-object v0, p0, Lo/anb;->bNH:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/anb;->bNH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v1, v0

    .line 62
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeedItem{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anb;->bNG:Lo/anh$if;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anb;->bNH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
