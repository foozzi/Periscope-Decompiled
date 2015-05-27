.class public Lorg/spongycastle/crypto/signers/DSASigner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DSA;


# instance fields
.field private aFa:Ljava/security/SecureRandom;

.field private final aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

.field private aSc:Lorg/spongycastle/crypto/params/DSAKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/signers/DSAKCalculator;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    .line 42
    return-void
.end method

.method private ˊ(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 4

    .line 150
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    if-lt v0, v1, :cond_0

    .line 152
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0

    .line 156
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v3, v0, [B

    .line 158
    array-length v0, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method


# virtual methods
.method protected ˊ(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 1

    .line 166
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    :goto_0
    return-object v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 48
    const/4 v1, 0x0

    .line 50
    if-eqz p1, :cond_1

    .line 52
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    .line 56
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSc:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    .line 57
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v1

    .line 58
    goto :goto_0

    .line 61
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSc:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    goto :goto_0

    .line 66
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSc:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    .line 69
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v0}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->lA()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/signers/DSASigner;->ˊ(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aFa:Ljava/security/SecureRandom;

    .line 70
    return-void
.end method

.method public ˊ([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 9

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSc:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DSAKeyParameters;->kB()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/signers/DSASigner;->ˊ(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v3

    .line 123
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 125
    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_1
    invoke-virtual {v4, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 132
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_3
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 137
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 138
    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 140
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 141
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSc:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 143
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 145
    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ᵎ([B)[Ljava/math/BigInteger;
    .locals 9

    .line 82
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSc:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DSAKeyParameters;->kB()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/signers/DSASigner;->ˊ(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v4

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v0}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->lA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSc:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    check-cast v2, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aFa:Ljava/security/SecureRandom;

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->ˎ(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    .line 94
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v0}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->lB()Ljava/math/BigInteger;

    move-result-object v5

    .line 96
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 98
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/DSASigner;->aSc:Lorg/spongycastle/crypto/params/DSAKeyParameters;

    check-cast v1, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 101
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 103
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/math/BigInteger;

    .line 105
    const/4 v0, 0x0

    aput-object v6, v8, v0

    .line 106
    const/4 v0, 0x1

    aput-object v7, v8, v0

    .line 108
    return-object v8
.end method
