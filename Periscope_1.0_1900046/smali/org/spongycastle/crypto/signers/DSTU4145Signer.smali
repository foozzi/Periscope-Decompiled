.class public Lorg/spongycastle/crypto/signers/DSTU4145Signer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DSA;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private aFa:Ljava/security/SecureRandom;

.field private aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ˊ(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECFieldElement;)Ljava/math/BigInteger;
    .locals 3

    .line 159
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->ˎ(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static ˋ(Lorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 153
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->ۥ([B)[B

    move-result-object v2

    .line 154
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->ˎ(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method private static ˎ(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 1

    .line 164
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 166
    sget-object v0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 168
    :cond_0
    return-object p0
.end method

.method private static ˏ(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 3

    .line 148
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    return-object v0
.end method


# virtual methods
.method protected jS()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .line 140
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 37
    if-eqz p1, :cond_1

    .line 39
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 43
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->aFa:Ljava/security/SecureRandom;

    .line 44
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->aFa:Ljava/security/SecureRandom;

    .line 51
    :goto_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_1

    .line 55
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 58
    :goto_1
    return-void
.end method

.method public ˊ([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 8

    .line 105
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gtz v0, :cond_1

    .line 107
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v3

    .line 113
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {p3, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 115
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 118
    :cond_3
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 120
    invoke-static {v4, p1}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->ˋ(Lorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 121
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    sget-object v0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECCurve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 126
    :cond_4
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v0, p3, v1, p2}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 129
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_5
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 135
    invoke-static {v3, v7}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->ˊ(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECFieldElement;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ᵎ([B)[Ljava/math/BigInteger;
    .locals 13

    .line 62
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 66
    invoke-static {v3, p1}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->ˋ(Lorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 67
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECCurve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 72
    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v5

    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v11

    .line 78
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->jS()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v12

    .line 86
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->aFa:Ljava/security/SecureRandom;

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->ˏ(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 87
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-interface {v12, v0, v6}, Lorg/spongycastle/math/ec/ECMultiplier;->ˋ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 89
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {v4, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 92
    invoke-static {v5, v10}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->ˊ(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECFieldElement;)Ljava/math/BigInteger;

    move-result-object v7

    .line 94
    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 98
    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    return-object v0
.end method
