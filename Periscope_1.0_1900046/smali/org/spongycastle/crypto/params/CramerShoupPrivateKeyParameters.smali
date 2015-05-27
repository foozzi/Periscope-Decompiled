.class public Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;
.super Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;
.source ""


# instance fields
.field private aPN:Ljava/math/BigInteger;

.field private aPO:Ljava/math/BigInteger;

.field private aPP:Ljava/math/BigInteger;

.field private aPQ:Ljava/math/BigInteger;

.field private aPR:Ljava/math/BigInteger;

.field private aPS:Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/CramerShoupParameters;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 11
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;-><init>(ZLorg/spongycastle/crypto/params/CramerShoupParameters;)V

    .line 13
    iput-object p2, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPN:Ljava/math/BigInteger;

    .line 14
    iput-object p3, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPO:Ljava/math/BigInteger;

    .line 15
    iput-object p4, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPP:Ljava/math/BigInteger;

    .line 16
    iput-object p5, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPQ:Ljava/math/BigInteger;

    .line 17
    iput-object p6, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPR:Ljava/math/BigInteger;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 53
    instance-of v0, p1, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;

    move-object v2, v0

    .line 59
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->kt()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPN:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->ku()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->kv()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPP:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->kw()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPQ:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->kx()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPR:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPN:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPO:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPP:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPQ:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPR:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-super {p0}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public kt()Ljava/math/BigInteger;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPN:Ljava/math/BigInteger;

    return-object v0
.end method

.method public ku()Ljava/math/BigInteger;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPO:Ljava/math/BigInteger;

    return-object v0
.end method

.method public kv()Ljava/math/BigInteger;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public kw()Ljava/math/BigInteger;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public kx()Ljava/math/BigInteger;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPR:Ljava/math/BigInteger;

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->aPS:Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    .line 42
    return-void
.end method
