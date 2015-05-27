.class public Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source ""


# instance fields
.field aFa:Ljava/security/SecureRandom;

.field aFb:I

.field aJn:Z

.field biF:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

.field biG:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    const-string v0, "Rainbow"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->biG:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;

    .line 21
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->aFb:I

    .line 22
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->aJn:Z

    .line 28
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 7

    .line 57
    iget-boolean v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->aJn:Z

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    new-instance v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;

    new-instance v3, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;

    invoke-direct {v3}, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;-><init>()V

    invoke-virtual {v3}, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->qC()[I

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;-><init>([I)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->biF:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    .line 61
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->biG:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->biF:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->aJn:Z

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->biG:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    move-object v5, v0

    .line 67
    invoke-virtual {v4}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    move-object v6, v0

    .line 69
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    invoke-direct {v1, v5}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;)V

    new-instance v2, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    invoke-direct {v2, v6}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;-><init>(Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;)V

    invoke-direct {v0, v1, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 34
    iput p1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->aFb:I

    .line 35
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 36
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4

    .line 43
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter object not a RainbowParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;

    move-object v3, v0

    .line 49
    new-instance v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->qC()[I

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;-><init>([I)V

    invoke-direct {v0, p2, v1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->biF:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    .line 51
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->biG:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->biF:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;->aJn:Z

    .line 53
    return-void
.end method
