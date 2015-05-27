.class public Lorg/spongycastle/crypto/digests/ShortenedDigest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;


# instance fields
.field private aGF:Lorg/spongycastle/crypto/ExtendedDigest;

.field private length:I


# virtual methods
.method public doFinal([BI)I
    .locals 3

    .line 62
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->aGF:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->iJ()I

    move-result v0

    new-array v2, v0, [B

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->aGF:Lorg/spongycastle/crypto/ExtendedDigest;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/ExtendedDigest;->doFinal([BI)I

    .line 66
    iget v0, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->length:I

    const/4 v1, 0x0

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v0, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->length:I

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->aGF:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/ExtendedDigest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->length:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iJ()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->length:I

    return v0
.end method

.method public iM()I
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->aGF:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->iM()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->aGF:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->reset()V

    .line 74
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->aGF:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/ExtendedDigest;->update(B)V

    .line 53
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->aGF:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/ExtendedDigest;->update([BII)V

    .line 58
    return-void
.end method
