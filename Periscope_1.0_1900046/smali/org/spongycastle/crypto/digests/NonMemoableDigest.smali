.class public Lorg/spongycastle/crypto/digests/NonMemoableDigest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;


# instance fields
.field private aGF:Lorg/spongycastle/crypto/ExtendedDigest;


# virtual methods
.method public doFinal([BI)I
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->aGF:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/ExtendedDigest;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->aGF:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->iG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iJ()I
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->aGF:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->iJ()I

    move-result v0

    return v0
.end method

.method public iM()I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->aGF:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->iM()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->aGF:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->reset()V

    .line 58
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->aGF:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/ExtendedDigest;->update(B)V

    .line 43
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->aGF:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/ExtendedDigest;->update([BII)V

    .line 48
    return-void
.end method
