.class public Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Signer;


# instance fields
.field private aSa:Z

.field private final ber:Lorg/spongycastle/crypto/Digest;

.field private final bes:Lorg/spongycastle/pqc/crypto/MessageSigner;


# virtual methods
.method public iP()[B
    .locals 3

    .line 66
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->aSa:Z

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RainbowDigestSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->ber:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v2, v0, [B

    .line 72
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->ber:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 74
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->bes:Lorg/spongycastle/pqc/crypto/MessageSigner;

    invoke-interface {v0, v2}, Lorg/spongycastle/pqc/crypto/MessageSigner;->ᕑ([B)[B

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->ber:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 111
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->ber:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 101
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->ber:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 106
    return-void
.end method

.method public verify([B)Z
    .locals 3

    .line 86
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->aSa:Z

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RainbowDigestSigner not initialised for verification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->ber:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v2, v0, [B

    .line 92
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->ber:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 94
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->bes:Lorg/spongycastle/pqc/crypto/MessageSigner;

    invoke-interface {v0, v2, p1}, Lorg/spongycastle/pqc/crypto/MessageSigner;->ᴵ([B[B)Z

    move-result v0

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 30
    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->aSa:Z

    .line 33
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-object v2, v0

    goto :goto_0

    .line 39
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-object v2, v0

    .line 42
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Signing Requires Private Key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Verification Requires Public Key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->reset()V

    .line 54
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->bes:Lorg/spongycastle/pqc/crypto/MessageSigner;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/pqc/crypto/MessageSigner;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 55
    return-void
.end method

.method public ᵔ([B)Z
    .locals 1

    .line 115
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->verify([B)Z

    move-result v0

    return v0
.end method
