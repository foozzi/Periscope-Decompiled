.class public Lorg/spongycastle/crypto/engines/RSABlindedEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private aFa:Ljava/security/SecureRandom;

.field private aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

.field private aLl:Lorg/spongycastle/crypto/params/RSAKeyParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    return-void
.end method


# virtual methods
.method public iB()I
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->iB()I

    move-result v0

    return v0
.end method

.method public iC()I
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->iC()I

    move-result v0

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 38
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 42
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aLl:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 43
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aFa:Ljava/security/SecureRandom;

    .line 44
    goto :goto_0

    .line 47
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aLl:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 48
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aFa:Ljava/security/SecureRandom;

    .line 50
    :goto_0
    return-void
.end method

.method public ˑ([BII)[B
    .locals 12

    .line 90
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aLl:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSA engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->ᵎ([BII)Ljava/math/BigInteger;

    move-result-object v3

    .line 98
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aLl:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    instance-of v0, v0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aLl:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    move-object v5, v0

    .line 102
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v6

    .line 103
    if-eqz v6, :cond_1

    .line 105
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v7

    .line 106
    sget-object v0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aFa:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/BigIntegers;->ˏ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v8

    .line 108
    invoke-virtual {v8, v6, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 109
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, v9}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->ʼ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 111
    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 112
    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 113
    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, v3}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->ʼ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 118
    :goto_0
    goto :goto_1

    .line 121
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, v3}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->ʼ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 124
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;->aLk:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, v4}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->ʻ(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method
