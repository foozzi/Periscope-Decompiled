.class public Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source ""


# instance fields
.field public aZp:Ljava/lang/String;

.field public aZq:I

.field public aZr:Lorg/spongycastle/crypto/CipherKeyGenerator;

.field public aZs:Z

.field protected ahI:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZs:Z

    .line 30
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZp:Ljava/lang/String;

    .line 31
    iput p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZq:I

    iput p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->ahI:I

    .line 32
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZr:Lorg/spongycastle/crypto/CipherKeyGenerator;

    .line 33
    return-void
.end method


# virtual methods
.method public engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 4

    .line 74
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZs:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZr:Lorg/spongycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lorg/spongycastle/crypto/KeyGenerationParameters;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iget v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZq:I

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/CipherKeyGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZs:Z

    .line 80
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZr:Lorg/spongycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/CipherKeyGenerator;->iI()[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZp:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public engineInit(ILjava/security/SecureRandom;)V
    .locals 3

    .line 59
    if-nez p2, :cond_0

    .line 61
    :try_start_0
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZr:Lorg/spongycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lorg/spongycastle/crypto/KeyGenerationParameters;

    invoke-direct {v1, p2, p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/CipherKeyGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZs:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 66
    :catch_0
    move-exception v2

    .line 68
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :goto_0
    return-void
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 3

    .line 46
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZr:Lorg/spongycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lorg/spongycastle/crypto/KeyGenerationParameters;

    iget v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZq:I

    invoke-direct {v1, p1, v2}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/CipherKeyGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->aZs:Z

    .line 51
    :cond_0
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    .line 40
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Not Implemented"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
