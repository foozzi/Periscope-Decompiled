.class public abstract Lorg/spongycastle/crypto/tls/TlsDSASigner;
.super Lorg/spongycastle/crypto/tls/AbstractTlsSigner;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsSigner;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract mS()S
.end method

.method protected abstract ʻ(S)Lorg/spongycastle/crypto/DSA;
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;
    .locals 2

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    return-object v0
.end method

.method protected ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 5

    .line 69
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDSASigner;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 75
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mK()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mL()S

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->mS()S

    move-result v1

    if-eq v0, v1, :cond_3

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 81
    :cond_3
    if-nez p1, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mK()S

    move-result v2

    .line 82
    :goto_1
    if-eqz p2, :cond_5

    new-instance v3, Lorg/spongycastle/crypto/digests/NullDigest;

    invoke-direct {v3}, Lorg/spongycastle/crypto/digests/NullDigest;-><init>()V

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v3

    .line 84
    :goto_2
    new-instance v4, Lorg/spongycastle/crypto/signers/DSADigestSigner;

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->ʻ(S)Lorg/spongycastle/crypto/DSA;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lorg/spongycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/crypto/Digest;)V

    .line 85
    invoke-virtual {p0, p3, p4}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->ˋ(ZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    invoke-interface {v4, p3, v0}, Lorg/spongycastle/crypto/Signer;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 86
    return-object v4
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[BLorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)Z
    .locals 3

    .line 38
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v2

    .line 39
    if-nez p1, :cond_0

    .line 42
    const/16 v0, 0x10

    const/16 v1, 0x14

    invoke-interface {v2, p4, v0, v1}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    goto :goto_0

    .line 46
    :cond_0
    array-length v0, p4

    const/4 v1, 0x0

    invoke-interface {v2, p4, v1, v0}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 48
    :goto_0
    invoke-interface {v2, p2}, Lorg/spongycastle/crypto/Signer;->ᵔ([B)Z

    move-result v0

    return v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)[B
    .locals 4

    .line 20
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDSASigner;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsContext;->lG()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v3

    .line 22
    if-nez p1, :cond_0

    .line 25
    const/16 v0, 0x10

    const/16 v1, 0x14

    invoke-interface {v3, p3, v0, v1}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    goto :goto_0

    .line 29
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    invoke-interface {v3, p3, v1, v0}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 31
    :goto_0
    invoke-interface {v3}, Lorg/spongycastle/crypto/Signer;->iP()[B

    move-result-object v0

    return-object v0
.end method

.method protected ˋ(ZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/CipherParameters;
    .locals 0

    .line 63
    return-object p2
.end method
