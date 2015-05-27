.class public final Lorg/spongycastle/crypto/params/KDFCounterParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# instance fields
.field private aQr:[B

.field private aQs:[B

.field private aQt:[B

.field private aQu:I


# virtual methods
.method public kR()[B
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->aQr:[B

    return-object v0
.end method

.method public kS()[B
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->aQs:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method

.method public kT()[B
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->aQt:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method

.method public kU()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->aQu:I

    return v0
.end method
