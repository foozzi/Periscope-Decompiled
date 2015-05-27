.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McEliece;
.super Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McEliece"
.end annotation


# instance fields
.field biA:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    const-string v0, "McEliece"

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;-><init>(Ljava/lang/String;)V

    .line 108
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    .line 137
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McEliece;->biA:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v3

    .line 138
    invoke-virtual {v3}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    move-object v4, v0

    .line 139
    invoke-virtual {v3}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    move-object v5, v0

    .line 141
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;

    invoke-direct {v1, v5}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;-><init>(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V

    new-instance v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    invoke-direct {v2, v4}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;-><init>(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;)V

    invoke-direct {v0, v1, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2

    .line 123
    new-instance v0, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;

    invoke-direct {v0}, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;-><init>()V

    .line 128
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McEliece;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 133
    :goto_0
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 6

    .line 113
    new-instance v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McEliece;->biA:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;

    .line 114
    invoke-super {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 115
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;

    move-object v4, v0

    .line 117
    new-instance v5, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    new-instance v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->getM()I

    move-result v2

    invoke-virtual {v4}, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->rj()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(II)V

    invoke-direct {v5, v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V

    .line 118
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McEliece;->biA:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;

    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 119
    return-void
.end method
