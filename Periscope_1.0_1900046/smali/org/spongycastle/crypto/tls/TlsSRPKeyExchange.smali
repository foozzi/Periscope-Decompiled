.class public Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;
.super Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.source ""


# instance fields
.field protected aFN:Ljava/math/BigInteger;

.field protected aFe:[B

.field protected aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

.field protected aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected aVP:[B

.field protected aVQ:[B

.field protected aVR:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;


# virtual methods
.method public lK()Z
    .locals 1

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public mQ()V
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 75
    :cond_0
    return-void
.end method

.method public mR()[B
    .locals 3

    .line 190
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aVR:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aFN:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->ˊ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/BigIntegers;->ᵎ(Ljava/math/BigInteger;)[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 192
    :catch_0
    move-exception v2

    .line 194
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public ʽ(Ljava/io/OutputStream;)V
    .locals 5

    .line 181
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aVR:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aVQ:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aVP:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aFe:[B

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->ˊ([B[B[B)Ljava/math/BigInteger;

    move-result-object v4

    .line 182
    invoke-static {v4}, Lorg/spongycastle/util/BigIntegers;->ᵎ(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ([BLjava/io/OutputStream;)V

    .line 183
    return-void
.end method

.method public ˈ(Ljava/io/InputStream;)V
    .locals 13

    .line 117
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lH()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v3

    .line 119
    const/4 v4, 0x0

    .line 120
    move-object v5, p1

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    .line 124
    new-instance v4, Lorg/spongycastle/crypto/tls/SignerInputBuffer;

    invoke-direct {v4}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;-><init>()V

    .line 125
    new-instance v5, Lorg/spongycastle/util/io/TeeInputStream;

    invoke-direct {v5, p1, v4}, Lorg/spongycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 128
    :cond_0
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴵ(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 129
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴵ(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 130
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->ٴ(Ljava/io/InputStream;)[B

    move-result-object v8

    .line 131
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴵ(Ljava/io/InputStream;)[B

    move-result-object v9

    .line 133
    if-eqz v4, :cond_1

    .line 135
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->ˋ(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object v10

    .line 137
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/DigitallySigned;->mm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v11

    .line 138
    invoke-virtual {v4, v11}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;->ˊ(Lorg/spongycastle/crypto/Signer;)V

    .line 139
    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v0

    invoke-interface {v11, v0}, Lorg/spongycastle/crypto/Signer;->ᵔ([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 145
    :cond_1
    new-instance v10, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v10, v0, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 146
    new-instance v11, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v11, v0, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 151
    iput-object v8, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aVQ:[B

    .line 159
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {v10, v0}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aFN:Ljava/math/BigInteger;
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 161
    :catch_0
    move-exception v12

    .line 163
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 166
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aVR:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsContext;->lG()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v10, v11, v1, v2}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    .line 167
    return-void
.end method

.method protected ˊ(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 4

    .line 200
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsSigner;->ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;

    move-result-object v3

    .line 201
    iget-object v0, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUz:[B

    iget-object v1, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUz:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-interface {v3, v0, v2, v1}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 202
    iget-object v0, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUA:[B

    iget-object v1, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUA:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-interface {v3, v0, v2, v1}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 203
    return-object v3
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 5

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 83
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/Certificate;->ץ(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->hj()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 93
    :try_start_0
    invoke-static {v3}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->ˊ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 95
    :catch_0
    move-exception v4

    .line 97
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 100
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsSigner;->ˎ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 105
    :cond_2
    const/16 v0, 0x80

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 107
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 108
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSigner;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 67
    :cond_0
    return-void
.end method

.method public ˋ(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 2

    .line 171
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public ˋ(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2

    .line 176
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
