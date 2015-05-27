.class public final Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# instance fields
.field private final aNe:[B

.field private final aNf:Z

.field private final aQr:[B

.field private final aQu:I


# virtual methods
.method public kR()[B
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->aQr:[B

    return-object v0
.end method

.method public kU()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->aQu:I

    return v0
.end method

.method public kV()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->aNf:Z

    return v0
.end method

.method public kW()[B
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->aNe:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method
