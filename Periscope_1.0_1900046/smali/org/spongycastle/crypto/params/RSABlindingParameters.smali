.class public Lorg/spongycastle/crypto/params/RSABlindingParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aLm:Ljava/math/BigInteger;

.field private aQF:Lorg/spongycastle/crypto/params/RSAKeyParameters;


# virtual methods
.method public lj()Lorg/spongycastle/crypto/params/RSAKeyParameters;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSABlindingParameters;->aQF:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    return-object v0
.end method

.method public lk()Ljava/math/BigInteger;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSABlindingParameters;->aLm:Ljava/math/BigInteger;

    return-object v0
.end method
