.class public Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;
.implements Lorg/spongycastle/math/ec/ECConstants;


# instance fields
.field aFa:Ljava/security/SecureRandom;

.field aMM:Lorg/spongycastle/crypto/params/ECDomainParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 9

    .line 45
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->aMM:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    .line 47
    ushr-int/lit8 v6, v5, 0x2

    .line 52
    :cond_0
    :goto_0
    new-instance v7, Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->aFa:Ljava/security/SecureRandom;

    invoke-direct {v7, v5, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 54
    sget-object v0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->aKc:Ljava/math/BigInteger;

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 56
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {v7}, Lorg/spongycastle/math/ec/WNafUtil;->ᐨ(Ljava/math/BigInteger;)I

    move-result v0

    if-ge v0, v6, :cond_2

    .line 67
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->jS()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->aMM:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Lorg/spongycastle/math/ec/ECMultiplier;->ˋ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 75
    new-instance v0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->aMM:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v1, v8, v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    new-instance v2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->aMM:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v2, v7, v3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method protected jS()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .line 82
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 2

    .line 28
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    move-object v1, v0

    .line 30
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->aFa:Ljava/security/SecureRandom;

    .line 31
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;->kF()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->aMM:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 33
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->aFa:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->aFa:Ljava/security/SecureRandom;

    .line 37
    :cond_0
    return-void
.end method
