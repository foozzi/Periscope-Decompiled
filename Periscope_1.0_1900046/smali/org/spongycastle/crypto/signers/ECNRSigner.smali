.class public Lorg/spongycastle/crypto/signers/ECNRSigner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DSA;


# instance fields
.field private aFa:Ljava/security/SecureRandom;

.field private aSa:Z

.field private aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 34
    iput-boolean p1, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->aSa:Z

    .line 36
    if-eqz p1, :cond_1

    .line 38
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 42
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->aFa:Ljava/security/SecureRandom;

    .line 43
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 44
    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->aFa:Ljava/security/SecureRandom;

    .line 48
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 53
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 55
    :goto_0
    return-void
.end method

.method public ˊ([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 12

    .line 141
    iget-boolean v0, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->aSa:Z

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not initialised for verifying"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-object v2, v0

    .line 147
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 150
    new-instance v5, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v5, v0, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 151
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    .line 153
    if-le v6, v4, :cond_1

    .line 155
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input too large for ECNR key."

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 161
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_3
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p3, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 167
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_5
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 173
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 175
    invoke-static {v7, p3, v8, p2}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 178
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 180
    const/4 v0, 0x0

    return v0

    .line 183
    :cond_6
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v10

    .line 184
    invoke-virtual {p2, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 186
    invoke-virtual {v11, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ᵎ([B)[Ljava/math/BigInteger;
    .locals 14

    .line 70
    iget-boolean v0, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->aSa:Z

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not initialised for signing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 78
    new-instance v5, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v5, v0, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 79
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->aSd:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-object v7, v0

    .line 83
    if-le v6, v4, :cond_1

    .line 85
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input too large for ECNR key."

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    const/4 v8, 0x0

    .line 89
    const/4 v9, 0x0

    .line 96
    :cond_2
    new-instance v11, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v11}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    .line 98
    new-instance v0, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->aFa:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v11, v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 100
    invoke-virtual {v11}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v10

    .line 103
    invoke-virtual {v10}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-object v12, v0

    .line 104
    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v13

    .line 106
    invoke-virtual {v13, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 108
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v11

    .line 112
    invoke-virtual {v10}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v12

    .line 113
    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 115
    const/4 v0, 0x2

    new-array v13, v0, [Ljava/math/BigInteger;

    .line 116
    const/4 v0, 0x0

    aput-object v8, v13, v0

    .line 117
    const/4 v0, 0x1

    aput-object v9, v13, v0

    .line 119
    return-object v13
.end method
