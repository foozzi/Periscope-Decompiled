.class public Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParameterGeneratorSpi;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source ""


# instance fields
.field protected aFa:Ljava/security/SecureRandom;

.field protected aFb:I

.field private avO:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    .line 19
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParameterGeneratorSpi;->aFb:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParameterGeneratorSpi;->avO:I

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 8

    .line 49
    new-instance v4, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;

    invoke-direct {v4}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;-><init>()V

    .line 51
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParameterGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 53
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParameterGeneratorSpi;->aFb:I

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParameterGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    const/16 v2, 0x14

    invoke-virtual {v4, v0, v2, v1}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->ˊ(IILjava/security/SecureRandom;)V

    goto :goto_0

    .line 57
    :cond_0
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParameterGeneratorSpi;->aFb:I

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x14

    invoke-virtual {v4, v0, v2, v1}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->ˊ(IILjava/security/SecureRandom;)V

    .line 60
    :goto_0
    invoke-virtual {v4}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->jT()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v5

    .line 66
    const-string v0, "ElGamal"

    const-string v1, "SC"

    :try_start_0
    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v6

    .line 67
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParameterGeneratorSpi;->avO:I

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v6, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 69
    :catch_0
    move-exception v7

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :goto_1
    return-object v6
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParameterGeneratorSpi;->aFb:I

    .line 28
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParameterGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 29
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3

    .line 36
    instance-of v0, p1, Ljavax/crypto/spec/DHGenParameterSpec;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "DH parameter generator requires a DHGenParameterSpec for initialisation"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DHGenParameterSpec;

    move-object v2, v0

    .line 42
    invoke-virtual {v2}, Ljavax/crypto/spec/DHGenParameterSpec;->getPrimeSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParameterGeneratorSpi;->aFb:I

    .line 43
    invoke-virtual {v2}, Ljavax/crypto/spec/DHGenParameterSpec;->getExponentSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParameterGeneratorSpi;->avO:I

    .line 44
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParameterGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 45
    return-void
.end method
