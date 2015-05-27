.class public Lorg/spongycastle/util/io/pem/PemHeader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method private ˡ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 62
    if-ne p1, p2, :cond_0

    .line 64
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 69
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private Ї(Ljava/lang/String;)I
    .locals 1

    .line 52
    if-nez p1, :cond_0

    .line 54
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 40
    instance-of v0, p1, Lorg/spongycastle/util/io/pem/PemHeader;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    return v0

    .line 45
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/util/io/pem/PemHeader;

    move-object v2, v0

    .line 47
    if-eq v2, p0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    iget-object v1, v2, Lorg/spongycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/util/io/pem/PemHeader;->ˡ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    iget-object v1, v2, Lorg/spongycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/util/io/pem/PemHeader;->ˡ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/spongycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/spongycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 35
    iget-object v0, p0, Lorg/spongycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/spongycastle/util/io/pem/PemHeader;->Ї(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/spongycastle/util/io/pem/PemHeader;->Ї(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
