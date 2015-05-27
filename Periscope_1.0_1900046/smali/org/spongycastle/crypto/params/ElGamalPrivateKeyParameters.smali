.class public Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;
.super Lorg/spongycastle/crypto/params/ElGamalKeyParameters;
.source ""


# instance fields
.field private aFO:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;-><init>(ZLorg/spongycastle/crypto/params/ElGamalParameters;)V

    .line 16
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;->aFO:Ljava/math/BigInteger;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 27
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    return v0

    .line 32
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    move-object v2, v0

    .line 34
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;->aFO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_1
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;->aFO:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method
