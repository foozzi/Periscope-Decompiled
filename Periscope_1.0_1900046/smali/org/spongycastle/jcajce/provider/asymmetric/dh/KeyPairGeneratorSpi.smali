.class public Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source ""


# static fields
.field private static NW:Ljava/util/Hashtable;

.field private static lock:Ljava/lang/Object;


# instance fields
.field aFa:Ljava/security/SecureRandom;

.field aFb:I

.field aJn:Z

.field aME:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

.field aMG:I

.field aWB:Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->NW:Ljava/util/Hashtable;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    const-string v0, "DH"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v0, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aWB:Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    .line 29
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aFb:I

    .line 30
    const/16 v0, 0x14

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aMG:I

    .line 31
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aJn:Z

    .line 37
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 12

    .line 66
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aJn:Z

    if-nez v0, :cond_3

    .line 68
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aFb:I

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 70
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->NW:Ljava/util/Hashtable;

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->NW:Ljava/util/Hashtable;

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aME:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    goto/16 :goto_1

    .line 76
    :cond_0
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aFb:I

    invoke-interface {v0, v1}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->ךּ(I)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v8

    .line 78
    if-eqz v8, :cond_1

    .line 80
    new-instance v0, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    new-instance v2, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v8}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aME:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    goto :goto_1

    .line 84
    :cond_1
    sget-object v9, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 88
    :try_start_0
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->NW:Ljava/util/Hashtable;

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->NW:Ljava/util/Hashtable;

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aME:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    goto :goto_0

    .line 95
    :cond_2
    new-instance v10, Lorg/spongycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v10}, Lorg/spongycastle/crypto/generators/DHParametersGenerator;-><init>()V

    .line 97
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aFb:I

    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aMG:I

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v10, v0, v1, v2}, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->ˊ(IILjava/security/SecureRandom;)V

    .line 99
    new-instance v0, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/generators/DHParametersGenerator;->jO()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aME:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    .line 101
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->NW:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aME:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v11

    monitor-exit v9

    throw v11

    .line 107
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aWB:Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aME:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aJn:Z

    .line 112
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aWB:Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v7

    .line 113
    invoke-virtual {v7}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-object v8, v0

    .line 114
    invoke-virtual {v7}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    move-object v9, v0

    .line 116
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    invoke-direct {v1, v8}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)V

    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    invoke-direct {v2, v9}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)V

    invoke-direct {v0, v1, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 43
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aFb:I

    .line 44
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 45
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7

    .line 52
    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter object not a DHParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    move-object v6, v0

    .line 58
    new-instance v0, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, p2, v1}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aME:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    .line 60
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aWB:Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aME:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->aJn:Z

    .line 62
    return-void
.end method
