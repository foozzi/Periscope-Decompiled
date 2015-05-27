.class Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/prng/EntropySource;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aQO:I

.field final synthetic aQP:Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;


# virtual methods
.method public lr()[B
    .locals 3

    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->aQP:Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;

    invoke-static {v0}, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;->ˊ(Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;)Ljava/security/SecureRandom;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->aQO:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method public ls()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->aQO:I

    return v0
.end method
