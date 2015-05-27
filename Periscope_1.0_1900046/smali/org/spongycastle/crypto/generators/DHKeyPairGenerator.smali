.class public Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private aME:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 7

    .line 32
    sget-object v3, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->aMF:Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;

    .line 33
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;->aME:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v4

    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;->aME:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->ˊ(Lorg/spongycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    .line 36
    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->ˊ(Lorg/spongycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 38
    new-instance v0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v1, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-direct {v1, v6, v4}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    new-instance v2, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-direct {v2, v5, v4}, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    .line 27
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;->aME:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    .line 28
    return-void
.end method
