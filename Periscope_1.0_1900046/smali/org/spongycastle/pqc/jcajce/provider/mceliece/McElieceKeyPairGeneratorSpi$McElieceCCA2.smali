.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;
.super Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McElieceCCA2"
.end annotation


# instance fields
.field biB:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    const-string v0, "McElieceCCA-2"

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    .line 82
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;->biB:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    move-object v4, v0

    .line 84
    invoke-virtual {v3}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    move-object v5, v0

    .line 86
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;

    invoke-direct {v1, v5}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;-><init>(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    new-instance v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;

    invoke-direct {v2, v4}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;-><init>(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    invoke-direct {v0, v1, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2

    .line 68
    new-instance v0, Lorg/spongycastle/pqc/jcajce/spec/McElieceCCA2ParameterSpec;

    invoke-direct {v0}, Lorg/spongycastle/pqc/jcajce/spec/McElieceCCA2ParameterSpec;-><init>()V

    .line 73
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 78
    :goto_0
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 6

    .line 58
    new-instance v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;->biB:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    .line 59
    invoke-super {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 60
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;

    move-object v4, v0

    .line 62
    new-instance v5, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    new-instance v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->getM()I

    move-result v2

    invoke-virtual {v4}, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->rj()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;-><init>(II)V

    invoke-direct {v5, v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V

    .line 63
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;->biB:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 64
    return-void
.end method
