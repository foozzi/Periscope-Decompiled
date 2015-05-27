.class public Lorg/spongycastle/crypto/signers/GenericSigner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Signer;


# instance fields
.field private final aFH:Lorg/spongycastle/crypto/Digest;

.field private final aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private aSa:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 25
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 26
    return-void
.end method


# virtual methods
.method public iP()[B
    .locals 4

    .line 94
    iget-boolean v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aSa:Z

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GenericSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 102
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v1, v3

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2, v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 135
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 74
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 85
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 40
    iput-boolean p1, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aSa:Z

    .line 43
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 45
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-object v2, v0

    goto :goto_0

    .line 49
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-object v2, v0

    .line 52
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signing requires private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "verification requires public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/GenericSigner;->reset()V

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 65
    return-void
.end method

.method public ᵔ([B)Z
    .locals 5

    .line 112
    iget-boolean v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aSa:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GenericSigner not initialised for verification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 118
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v4

    .line 124
    invoke-static {v4, v3}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 126
    :catch_0
    move-exception v4

    .line 128
    const/4 v0, 0x0

    return v0
.end method
