.class public Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source ""


# instance fields
.field aFa:Ljava/security/SecureRandom;

.field aFb:I

.field aJn:Z

.field aMG:I

.field aMN:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

.field aXf:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    const-string v0, "ElGamal"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v0, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aXf:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    .line 25
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aFb:I

    .line 26
    const/16 v0, 0x14

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aMG:I

    .line 27
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aJn:Z

    .line 33
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 9

    .line 72
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aJn:Z

    if-nez v0, :cond_1

    .line 74
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aFb:I

    invoke-interface {v0, v1}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->ךּ(I)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v6

    .line 76
    if-eqz v6, :cond_0

    .line 78
    new-instance v0, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    new-instance v2, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aMN:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    goto :goto_0

    .line 82
    :cond_0
    new-instance v7, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;

    invoke-direct {v7}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;-><init>()V

    .line 84
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aFb:I

    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aMG:I

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v7, v0, v1, v2}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->ˊ(IILjava/security/SecureRandom;)V

    .line 85
    new-instance v0, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->jT()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aMN:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    .line 88
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aXf:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aMN:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aJn:Z

    .line 92
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aXf:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v6

    .line 93
    invoke-virtual {v6}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    move-object v7, v0

    .line 94
    invoke-virtual {v6}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    move-object v8, v0

    .line 96
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;

    invoke-direct {v1, v7}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;-><init>(Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;)V

    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;

    invoke-direct {v2, v8}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;-><init>(Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;)V

    invoke-direct {v0, v1, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 39
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aFb:I

    .line 40
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 41
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6

    .line 48
    instance-of v0, p1, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter object not a DHParameterSpec or an ElGamalParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    if-eqz v0, :cond_1

    .line 55
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    move-object v5, v0

    .line 57
    new-instance v0, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v5}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p2, v1}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aMN:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    move-object v5, v0

    .line 63
    new-instance v0, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, p2, v1}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aMN:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    .line 66
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aXf:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aMN:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->aJn:Z

    .line 68
    return-void
.end method
