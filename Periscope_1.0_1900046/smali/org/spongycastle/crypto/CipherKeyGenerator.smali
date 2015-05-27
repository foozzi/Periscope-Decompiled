.class public Lorg/spongycastle/crypto/CipherKeyGenerator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public aFa:Ljava/security/SecureRandom;

.field public aFb:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iI()[B
    .locals 2

    .line 32
    iget v0, p0, Lorg/spongycastle/crypto/CipherKeyGenerator;->aFb:I

    new-array v1, v0, [B

    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/CipherKeyGenerator;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 36
    return-object v1
.end method

.method public ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 2

    .line 21
    invoke-virtual {p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/CipherKeyGenerator;->aFa:Ljava/security/SecureRandom;

    .line 22
    invoke-virtual {p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/CipherKeyGenerator;->aFb:I

    .line 23
    return-void
.end method
