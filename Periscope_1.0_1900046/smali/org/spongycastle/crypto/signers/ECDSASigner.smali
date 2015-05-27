.class public Lorg/spongycastle/crypto/signers/ECDSASigner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DSA;
.implements Lorg/spongycastle/math/ec/ECConstants;


# instance fields
.field private aFa:Ljava/security/SecureRandom;

.field private final aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

.field private aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/signers/DSAKCalculator;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    .line 46
    return-void
.end method


# virtual methods
.method protected jS()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .line 190
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method protected ˊ(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 5

    .line 177
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 178
    array-length v0, p2

    mul-int/lit8 v3, v0, 0x8

    .line 180
    new-instance v4, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v4, v0, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 181
    if-ge v2, v3, :cond_0

    .line 183
    sub-int v0, v3, v2

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 185
    :cond_0
    return-object v4
.end method

.method protected ˊ(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 1

    .line 195
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

    .line 52
    const/4 v1, 0x0

    .line 54
    if-eqz p1, :cond_1

    .line 56
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    .line 60
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 61
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v1

    .line 62
    goto :goto_0

    .line 65
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 70
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 73
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v0}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->lA()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/signers/ECDSASigner;->ˊ(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aFa:Ljava/security/SecureRandom;

    .line 74
    return-void
.end method

.method public ˊ([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 11

    .line 138
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v2

    .line 140
    invoke-virtual {p0, v2, p1}, Lorg/spongycastle/crypto/signers/ECDSASigner;->ˊ(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v3

    .line 143
    sget-object v0, Lorg/spongycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 145
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 149
    :cond_1
    sget-object v0, Lorg/spongycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 151
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_3
    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 156
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 157
    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 159
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 162
    invoke-static {v7, v5, v8, v6}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 165
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_4
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 172
    invoke-virtual {v10, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ᵎ([B)[Ljava/math/BigInteger;
    .locals 11

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v3

    .line 89
    invoke-virtual {p0, v3, p1}, Lorg/spongycastle/crypto/signers/ECDSASigner;->ˊ(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v4

    .line 90
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v5

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v0}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->lA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v0, v3, v5, p1}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aFa:Ljava/security/SecureRandom;

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->ˎ(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    .line 103
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/ECDSASigner;->jS()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v8

    .line 111
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->aSb:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v0}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->lB()Ljava/math/BigInteger;

    move-result-object v9

    .line 113
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-interface {v8, v0, v9}, Lorg/spongycastle/math/ec/ECMultiplier;->ˋ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    .line 116
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 118
    sget-object v0, Lorg/spongycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 122
    sget-object v0, Lorg/spongycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    return-object v0
.end method
