.class public Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;
.super Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;
.source ""


# instance fields
.field private aDC:Ljava/math/BigInteger;

.field private aPT:Ljava/math/BigInteger;

.field private aPU:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/CramerShoupParameters;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;-><init>(ZLorg/spongycastle/crypto/params/CramerShoupParameters;)V

    .line 12
    iput-object p2, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->aPT:Ljava/math/BigInteger;

    .line 13
    iput-object p3, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->aPU:Ljava/math/BigInteger;

    .line 14
    iput-object p4, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->aDC:Ljava/math/BigInteger;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 34
    instance-of v0, p1, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    move-object v2, v0

    .line 40
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->ky()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->aPT:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->aPU:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->ix()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->aDC:Ljava/math/BigInteger;

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

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->aPT:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->aPU:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->aDC:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-super {p0}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public ix()Ljava/math/BigInteger;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->aDC:Ljava/math/BigInteger;

    return-object v0
.end method

.method public ky()Ljava/math/BigInteger;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->aPT:Ljava/math/BigInteger;

    return-object v0
.end method

.method public kz()Ljava/math/BigInteger;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->aPU:Ljava/math/BigInteger;

    return-object v0
.end method
