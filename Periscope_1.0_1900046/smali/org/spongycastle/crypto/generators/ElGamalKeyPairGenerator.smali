.class public Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private aMN:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 9

    .line 33
    sget-object v4, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->aMF:Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;

    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->aMN:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;->kI()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v5

    .line 35
    new-instance v6, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getL()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v6, v0, v1, v3, v2}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->aMN:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->ˊ(Lorg/spongycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    .line 38
    invoke-virtual {v4, v6, v7}, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->ˊ(Lorg/spongycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 40
    new-instance v0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v1, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-direct {v1, v8, v5}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    new-instance v2, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-direct {v2, v7, v5}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    .line 28
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->aMN:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    .line 29
    return-void
.end method
