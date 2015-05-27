.class public Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;
.super Lorg/spongycastle/crypto/KeyGenerationParameters;
.source ""


# instance fields
.field private aKQ:Z

.field private aMG:I

.field private aQz:I


# virtual methods
.method public kD()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;->aMG:I

    return v0
.end method

.method public lc()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;->aQz:I

    return v0
.end method

.method public ld()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;->aKQ:Z

    return v0
.end method
