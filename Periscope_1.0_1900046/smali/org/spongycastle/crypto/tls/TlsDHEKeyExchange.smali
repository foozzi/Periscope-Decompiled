.class public Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;
.super Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;
.source ""


# instance fields
.field protected aUW:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;-><init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aUW:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 20
    return-void
.end method


# virtual methods
.method public lL()[B
    .locals 10

    .line 38
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aUY:Lorg/spongycastle/crypto/params/DHParameters;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 43
    :cond_0
    new-instance v3, Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-direct {v3}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;-><init>()V

    .line 45
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lG()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aUY:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-static {v0, v1, v3}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˋ(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aVd:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aUW:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->lO()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v4

    .line 57
    if-nez v4, :cond_1

    .line 59
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 62
    :cond_1
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mK()S

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    goto :goto_0

    .line 66
    :cond_2
    const/4 v4, 0x0

    .line 67
    new-instance v5, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v5}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>()V

    .line 70
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lH()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v6

    .line 71
    iget-object v0, v6, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUz:[B

    iget-object v1, v6, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUz:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-interface {v5, v0, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 72
    iget-object v0, v6, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUA:[B

    iget-object v1, v6, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUA:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-interface {v5, v0, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 73
    invoke-virtual {v3, v5}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->ˎ(Lorg/spongycastle/crypto/Digest;)V

    .line 75
    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v7, v0, [B

    .line 76
    const/4 v0, 0x0

    invoke-interface {v5, v7, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aUW:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v0, v7}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->ﯨ([B)[B

    move-result-object v8

    .line 80
    new-instance v9, Lorg/spongycastle/crypto/tls/DigitallySigned;

    invoke-direct {v9, v4, v8}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 81
    invoke-virtual {v9, v3}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 83
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public ˈ(Ljava/io/InputStream;)V
    .locals 8

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lH()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v2

    .line 91
    new-instance v3, Lorg/spongycastle/crypto/tls/SignerInputBuffer;

    invoke-direct {v3}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;-><init>()V

    .line 92
    new-instance v4, Lorg/spongycastle/util/io/TeeInputStream;

    invoke-direct {v4, p1, v3}, Lorg/spongycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 94
    invoke-static {v4}, Lorg/spongycastle/crypto/tls/ServerDHParams;->ـ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerDHParams;

    move-result-object v5

    .line 96
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->ˋ(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object v6

    .line 98
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/DigitallySigned;->mm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v7

    .line 99
    invoke-virtual {v3, v7}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;->ˊ(Lorg/spongycastle/crypto/Signer;)V

    .line 100
    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/spongycastle/crypto/Signer;->ᵔ([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 105
    :cond_0
    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ServerDHParams;->mH()Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˊ(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aVa:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 106
    return-void
.end method

.method protected ˊ(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 4

    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsSigner;->ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;

    move-result-object v3

    .line 111
    iget-object v0, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUz:[B

    iget-object v1, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUz:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-interface {v3, v0, v2, v1}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 112
    iget-object v0, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUA:[B

    iget-object v1, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUA:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-interface {v3, v0, v2, v1}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 113
    return-object v3
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2

    .line 25
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 30
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->lX()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 32
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->aUW:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 33
    return-void
.end method
