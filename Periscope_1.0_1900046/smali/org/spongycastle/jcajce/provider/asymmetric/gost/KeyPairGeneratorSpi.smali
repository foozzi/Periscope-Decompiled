.class public Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source ""


# instance fields
.field aFa:Ljava/security/SecureRandom;

.field aFb:I

.field aJn:Z

.field aMQ:Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

.field aXj:Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;

.field aXk:Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    const-string v0, "GOST3410"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aXj:Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;

    .line 24
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aFb:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aJn:Z

    .line 31
    return-void
.end method

.method private ˊ(Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6

    .line 45
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->oO()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v5

    .line 47
    new-instance v0, Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/GOST3410Parameters;

    invoke-virtual {v5}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v5}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p2, v1}, Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/GOST3410Parameters;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aMQ:Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

    .line 49
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aXj:Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aMQ:Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aJn:Z

    .line 52
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aXk:Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    .line 53
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 7

    .line 70
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aJn:Z

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahh:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->ˊ(Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;Ljava/security/SecureRandom;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aXj:Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;->iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;

    move-object v5, v0

    .line 77
    invoke-virtual {v4}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;

    move-object v6, v0

    .line 79
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aXk:Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    invoke-direct {v1, v5, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;-><init>(Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;)V

    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aXk:Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    invoke-direct {v2, v6, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;-><init>(Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;)V

    invoke-direct {v0, v1, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 37
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aFb:I

    .line 38
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 39
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    .line 60
    instance-of v0, p1, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter object not a GOST3410ParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->ˊ(Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;Ljava/security/SecureRandom;)V

    .line 66
    return-void
.end method
