.class public Lorg/spongycastle/crypto/engines/RSABlindingEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private aEW:Z

.field private aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

.field private aLl:Lorg/spongycastle/crypto/params/RSAKeyParameters;

.field private aLm:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    return-void
.end method

.method private ˏ(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    .line 116
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aLm:Ljava/math/BigInteger;

    .line 117
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aLl:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aLl:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 118
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aLl:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 120
    return-object v2
.end method

.method private ᐝ(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    .line 129
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aLl:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 130
    move-object v2, p1

    .line 131
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aLm:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 132
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 133
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 135
    return-object v2
.end method


# virtual methods
.method public iB()I
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->iB()I

    move-result v0

    return v0
.end method

.method public iC()I
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->iC()I

    move-result v0

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 40
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v3, v0

    .line 44
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/RSABlindingParameters;

    move-object v2, v0

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/RSABlindingParameters;

    move-object v2, v0

    .line 51
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/RSABlindingParameters;->lj()Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 53
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aEW:Z

    .line 54
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/RSABlindingParameters;->lj()Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aLl:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 55
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/RSABlindingParameters;->lk()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aLm:Ljava/math/BigInteger;

    .line 56
    return-void
.end method

.method public ˑ([BII)[B
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->ᵎ([BII)Ljava/math/BigInteger;

    move-result-object v1

    .line 98
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aEW:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->ˏ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->ᐝ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 107
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->ʻ(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method
