.class public Lorg/spongycastle/crypto/signers/ECGOST3410Signer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DSA;


# instance fields
.field aFa:Ljava/security/SecureRandom;

.field aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected jS()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .line 158
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 33
    if-eqz p1, :cond_1

    .line 35
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 37
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 39
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->aFa:Ljava/security/SecureRandom;

    .line 40
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->aFa:Ljava/security/SecureRandom;

    .line 45
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 50
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 52
    :goto_0
    return-void
.end method

.method public ˊ([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 12

    .line 114
    array-length v0, p1

    new-array v2, v0, [B

    .line 115
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-eq v3, v0, :cond_0

    .line 117
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    aput-byte v0, v2, v3

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v3, v0, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v4

    .line 124
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 126
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_2
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 132
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_4
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 137
    invoke-virtual {p3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 138
    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 140
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 141
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 143
    invoke-static {v8, v6, v9, v7}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    .line 146
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_5
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 153
    invoke-virtual {v11, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ᵎ([B)[Ljava/math/BigInteger;
    .locals 12

    .line 64
    array-length v0, p1

    new-array v2, v0, [B

    .line 65
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-eq v3, v0, :cond_0

    .line 67
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    aput-byte v0, v2, v3

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v3, v0, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    .line 73
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v5

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v6

    .line 78
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->jS()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v9

    .line 87
    :cond_1
    new-instance v10, Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->aFa:Ljava/security/SecureRandom;

    invoke-direct {v10, v0, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 89
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-interface {v9, v0, v10}, Lorg/spongycastle/math/ec/ECMultiplier;->ˋ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    .line 93
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 95
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 99
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    return-object v0
.end method
