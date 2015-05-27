.class public Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;
.super Lorg/spongycastle/crypto/generators/DESKeyGenerator;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/DESKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public iI()[B
    .locals 3

    .line 44
    iget v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->aFb:I

    new-array v2, v0, [B

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 50
    invoke-static {v2}, Lorg/spongycastle/crypto/params/DESedeParameters;->ı([B)V

    .line 52
    array-length v0, v2

    const/4 v1, 0x0

    invoke-static {v2, v1, v0}, Lorg/spongycastle/crypto/params/DESedeParameters;->ᵢ([BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    return-object v2
.end method

.method public ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 2

    .line 21
    invoke-virtual {p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->aFa:Ljava/security/SecureRandom;

    .line 22
    invoke-virtual {p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->aFb:I

    .line 24
    iget v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->aFb:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->aFb:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 26
    :cond_0
    const/16 v0, 0x18

    iput v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->aFb:I

    goto :goto_0

    .line 28
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->aFb:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 30
    const/16 v0, 0x10

    iput v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->aFb:I

    goto :goto_0

    .line 32
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->aFb:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->aFb:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DESede key must be 192 or 128 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_3
    :goto_0
    return-void
.end method
