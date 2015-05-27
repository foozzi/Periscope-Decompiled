.class public Lorg/spongycastle/crypto/params/CramerShoupParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aFz:Ljava/math/BigInteger;

.field private aPL:Ljava/math/BigInteger;

.field private aPM:Ljava/math/BigInteger;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 23
    instance-of v0, p1, Lorg/spongycastle/crypto/params/DSAParameters;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-object v2, v0

    .line 29
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupParameters;->aFz:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->kr()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupParameters;->aPL:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->ks()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupParameters;->aPM:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupParameters;->aFz:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 33
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->kr()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->ks()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public kr()Ljava/math/BigInteger;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupParameters;->aPL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public ks()Ljava/math/BigInteger;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupParameters;->aPM:Ljava/math/BigInteger;

    return-object v0
.end method
