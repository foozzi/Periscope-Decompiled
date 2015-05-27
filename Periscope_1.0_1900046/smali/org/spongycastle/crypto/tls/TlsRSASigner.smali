.class public Lorg/spongycastle/crypto/tls/TlsRSASigner;
.super Lorg/spongycastle/crypto/tls/AbstractTlsSigner;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsSigner;-><init>()V

    return-void
.end method


# virtual methods
.method protected nh()Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .locals 2

    .line 110
    new-instance v0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v1, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;
    .locals 2

    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/spongycastle/crypto/tls/TlsRSASigner;->ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    return-object v0
.end method

.method protected ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 4

    .line 57
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsRSASigner;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 62
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mL()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 68
    :cond_2
    if-eqz p2, :cond_3

    .line 70
    new-instance v2, Lorg/spongycastle/crypto/digests/NullDigest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/NullDigest;-><init>()V

    goto :goto_1

    .line 72
    :cond_3
    if-nez p1, :cond_4

    .line 74
    new-instance v2, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v2}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>()V

    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mK()S

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    .line 82
    :goto_1
    if-eqz p1, :cond_5

    .line 88
    new-instance v3, Lorg/spongycastle/crypto/signers/RSADigestSigner;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mK()S

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ι(S)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lorg/spongycastle/crypto/signers/RSADigestSigner;-><init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_2

    .line 96
    :cond_5
    new-instance v3, Lorg/spongycastle/crypto/signers/GenericSigner;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsRSASigner;->nh()Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/spongycastle/crypto/signers/GenericSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;)V

    .line 98
    :goto_2
    invoke-interface {v3, p3, p4}, Lorg/spongycastle/crypto/Signer;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 99
    return-object v3
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[BLorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)Z
    .locals 3

    .line 34
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/spongycastle/crypto/tls/TlsRSASigner;->ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v2

    .line 35
    array-length v0, p4

    const/4 v1, 0x0

    invoke-interface {v2, p4, v1, v0}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 36
    invoke-interface {v2, p2}, Lorg/spongycastle/crypto/Signer;->ᵔ([B)Z

    move-result v0

    return v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)[B
    .locals 4

    .line 24
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsRSASigner;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsContext;->lG()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsRSASigner;->ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v3

    .line 26
    array-length v0, p3

    const/4 v1, 0x0

    invoke-interface {v3, p3, v1, v0}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 27
    invoke-interface {v3}, Lorg/spongycastle/crypto/Signer;->iP()[B

    move-result-object v0

    return-object v0
.end method

.method public ˎ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z
    .locals 1

    .line 51
    instance-of v0, p1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
