.class public Lorg/spongycastle/crypto/generators/DESKeyGenerator;
.super Lorg/spongycastle/crypto/CipherKeyGenerator;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/spongycastle/crypto/CipherKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public iI()[B
    .locals 2

    .line 36
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/DESKeyGenerator;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 42
    invoke-static {v1}, Lorg/spongycastle/crypto/params/DESParameters;->ı([B)V

    .line 44
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/params/DESParameters;->ⁱ([BI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    return-object v1
.end method

.method public ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/CipherKeyGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 22
    iget v0, p0, Lorg/spongycastle/crypto/generators/DESKeyGenerator;->aFb:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/generators/DESKeyGenerator;->aFb:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 24
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/generators/DESKeyGenerator;->aFb:I

    goto :goto_0

    .line 26
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/generators/DESKeyGenerator;->aFb:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DES key must be 64 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_2
    :goto_0
    return-void
.end method
