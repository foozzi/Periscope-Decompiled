.class public Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private aMQ:Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 11

    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;->aMQ:Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;->kJ()Lorg/spongycastle/crypto/params/GOST3410Parameters;

    move-result-object v8

    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;->aMQ:Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v9

    .line 37
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    .line 38
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    .line 39
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getA()Ljava/math/BigInteger;

    move-result-object v5

    .line 41
    const/16 v10, 0x40

    .line 44
    :cond_0
    :goto_0
    new-instance v6, Ljava/math/BigInteger;

    const/16 v0, 0x100

    invoke-direct {v6, v0, v9}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 46
    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 48
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v6}, Lorg/spongycastle/math/ec/WNafUtil;->ᐨ(Ljava/math/BigInteger;)I

    move-result v0

    if-ge v0, v10, :cond_2

    .line 59
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v5, v6, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 70
    new-instance v0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v1, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;

    invoke-direct {v1, v7, v8}, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/GOST3410Parameters;)V

    new-instance v2, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;

    invoke-direct {v2, v6, v8}, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/GOST3410Parameters;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    .line 28
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;->aMQ:Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

    .line 29
    return-void
.end method
