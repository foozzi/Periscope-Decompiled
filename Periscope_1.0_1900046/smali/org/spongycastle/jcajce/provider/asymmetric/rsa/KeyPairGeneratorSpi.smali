.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source ""


# static fields
.field static final aXA:Ljava/math/BigInteger;


# instance fields
.field aNm:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

.field aXB:Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-wide/32 v0, 0x10001

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->aXA:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 33
    const-string v0, "RSA"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->aXB:Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;

    .line 36
    new-instance v0, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->aXA:Ljava/math/BigInteger;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0x800

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->aNm:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    .line 38
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->aXB:Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->aNm:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 39
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    .line 71
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->aXB:Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-object v4, v0

    .line 73
    invoke-virtual {v3}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    move-object v5, v0

    .line 75
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    invoke-direct {v1, v4}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;-><init>(Lorg/spongycastle/crypto/params/RSAKeyParameters;)V

    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;

    invoke-direct {v2, v5}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;)V

    invoke-direct {v0, v1, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3

    .line 45
    new-instance v0, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->aXA:Ljava/math/BigInteger;

    const/16 v2, 0xc

    invoke-direct {v0, v1, p2, p1, v2}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->aNm:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    .line 48
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->aXB:Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->aNm:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 49
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5

    .line 56
    instance-of v0, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter object not a RSAKeyGenParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    move-object v4, v0

    .line 62
    new-instance v0, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v4}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {v0, v1, p2, v2, v3}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->aNm:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    .line 66
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->aXB:Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->aNm:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 67
    return-void
.end method
