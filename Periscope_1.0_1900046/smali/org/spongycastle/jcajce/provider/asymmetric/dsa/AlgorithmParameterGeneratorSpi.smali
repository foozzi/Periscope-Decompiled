.class public Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source ""


# instance fields
.field protected aFa:Ljava/security/SecureRandom;

.field protected aFb:I

.field protected aWC:Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    .line 20
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aFb:I

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 9

    .line 58
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aFb:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    .line 60
    new-instance v5, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v5}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    goto :goto_0

    .line 64
    :cond_0
    new-instance v5, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v5, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 67
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 72
    :cond_1
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aFb:I

    const/16 v1, 0x400

    if-ne v0, v1, :cond_2

    .line 74
    new-instance v0, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    const/16 v2, 0x400

    const/16 v3, 0xa0

    const/16 v4, 0x50

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aWC:Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;

    .line 75
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aWC:Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;

    invoke-virtual {v5, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ˊ(Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_1

    .line 77
    :cond_2
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aFb:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_3

    .line 79
    new-instance v0, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;

    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aFb:I

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    const/16 v3, 0x100

    const/16 v4, 0x50

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aWC:Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;

    .line 80
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aWC:Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;

    invoke-virtual {v5, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ˊ(Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_1

    .line 84
    :cond_3
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aFb:I

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    const/16 v2, 0x14

    invoke-virtual {v5, v0, v2, v1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ˊ(IILjava/security/SecureRandom;)V

    .line 87
    :goto_1
    invoke-virtual {v5}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->jP()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v6

    .line 93
    const-string v0, "DSA"

    const-string v1, "SC"

    :try_start_0
    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v7

    .line 94
    new-instance v0, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v7, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_2

    .line 96
    :catch_0
    move-exception v8

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :goto_2
    return-object v7
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 2

    .line 27
    const/16 v0, 0x200

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc00

    if-le p1, v0, :cond_1

    .line 29
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "strength must be from 512 - 3072"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    const/16 v0, 0x400

    if-gt p1, v0, :cond_2

    rem-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_2

    .line 34
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "strength must be a multiple of 64 below 1024 bits."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_2
    const/16 v0, 0x400

    if-le p1, v0, :cond_3

    rem-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_3

    .line 39
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "strength must be a multiple of 1024 above 1024 bits."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_3
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aFb:I

    .line 43
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 44
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    .line 51
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No supported AlgorithmParameterSpec for DSA parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
