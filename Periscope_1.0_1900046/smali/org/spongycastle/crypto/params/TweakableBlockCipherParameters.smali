.class public Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private final aOS:Lorg/spongycastle/crypto/params/KeyParameter;

.field private final aQK:[B


# virtual methods
.method public ko()Lorg/spongycastle/crypto/params/KeyParameter;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;->aOS:Lorg/spongycastle/crypto/params/KeyParameter;

    return-object v0
.end method

.method public lq()[B
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;->aQK:[B

    return-object v0
.end method
