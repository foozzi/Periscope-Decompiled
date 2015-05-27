.class public Lorg/spongycastle/crypto/signers/GOST3410Signer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DSA;


# instance fields
.field aFa:Ljava/security/SecureRandom;

.field aSe:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 28
    if-eqz p1, :cond_1

    .line 30
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 34
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->aFa:Ljava/security/SecureRandom;

    .line 35
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->aSe:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

    .line 36
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->aFa:Ljava/security/SecureRandom;

    .line 40
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->aSe:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

    goto :goto_0

    .line 45
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->aSe:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

    .line 47
    :goto_0
    return-void
.end method

.method public ˊ([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 11

    .line 99
    array-length v0, p1

    new-array v3, v0, [B

    .line 100
    const/4 v4, 0x0

    :goto_0
    array-length v0, v3

    if-eq v4, v0, :cond_0

    .line 102
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v4

    aget-byte v0, p1, v0

    aput-byte v0, v3, v4

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    :cond_0
    new-instance v4, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v4, v0, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 106
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->aSe:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/GOST3410KeyParameters;->kJ()Lorg/spongycastle/crypto/params/GOST3410Parameters;

    move-result-object v5

    .line 107
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 109
    invoke-virtual {v6, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 111
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_2
    invoke-virtual {v6, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 116
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_4
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "2"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 121
    invoke-virtual {p3, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 122
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 124
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 125
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->aSe:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 127
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 129
    invoke-virtual {v10, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ᵎ([B)[Ljava/math/BigInteger;
    .locals 9

    .line 59
    array-length v0, p1

    new-array v2, v0, [B

    .line 60
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-eq v3, v0, :cond_0

    .line 62
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    aput-byte v0, v2, v3

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v3, v0, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 66
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->aSe:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/GOST3410KeyParameters;->kJ()Lorg/spongycastle/crypto/params/GOST3410Parameters;

    move-result-object v4

    .line 71
    :cond_1
    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->aFa:Ljava/security/SecureRandom;

    invoke-direct {v5, v0, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 73
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    .line 75
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 77
    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->aSe:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

    check-cast v1, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 81
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/math/BigInteger;

    .line 83
    const/4 v0, 0x0

    aput-object v6, v8, v0

    .line 84
    const/4 v0, 0x1

    aput-object v7, v8, v0

    .line 86
    return-object v8
.end method
