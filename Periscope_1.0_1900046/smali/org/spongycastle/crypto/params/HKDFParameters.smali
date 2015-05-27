.class public Lorg/spongycastle/crypto/params/HKDFParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# instance fields
.field private final aMT:[B

.field private final aQl:[B

.field private final aQm:Z

.field private final aqg:[B


# virtual methods
.method public getSalt()[B
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->aqg:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method

.method public kK()[B
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->aQl:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method

.method public kL()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->aQm:Z

    return v0
.end method

.method public kM()[B
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->aMT:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method
