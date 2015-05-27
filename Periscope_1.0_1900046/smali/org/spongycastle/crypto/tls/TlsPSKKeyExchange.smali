.class public Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;
.super Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.source ""


# instance fields
.field protected aUY:Lorg/spongycastle/crypto/params/DHParameters;

.field protected aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected aVA:[B

.field protected aVu:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

.field protected aVv:[B

.field protected aVw:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

.field protected aVx:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

.field protected aVy:Lorg/spongycastle/crypto/params/RSAKeyParameters;

.field protected aVz:Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;


# virtual methods
.method public lK()Z
    .locals 1

    .line 162
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSP:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 166
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 168
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public lL()[B
    .locals 3

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVv:[B

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVv:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->lK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVv:[B

    if-nez v0, :cond_1

    .line 98
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->abo:[B

    invoke-static {v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ([BLjava/io/OutputStream;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVv:[B

    invoke-static {v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ([BLjava/io/OutputStream;)V

    .line 105
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSP:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    .line 107
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aUY:Lorg/spongycastle/crypto/params/DHParameters;

    if-nez v0, :cond_2

    .line 109
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 112
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lG()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aUY:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˋ(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVw:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    goto :goto_1

    .line 115
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSP:I

    .line 120
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public mQ()V
    .locals 2

    .line 65
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSP:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 67
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 69
    :cond_0
    return-void
.end method

.method public mR()[B
    .locals 5

    .line 237
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVu:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->mW()[B

    move-result-object v2

    .line 238
    array-length v0, v2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->ᴠ(I)[B

    move-result-object v3

    .line 240
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    array-length v0, v3

    add-int/lit8 v0, v0, 0x4

    array-length v1, v2

    add-int/2addr v0, v1

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 241
    invoke-static {v3, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ([BLjava/io/OutputStream;)V

    .line 242
    invoke-static {v2, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ([BLjava/io/OutputStream;)V

    .line 243
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public ʽ(Ljava/io/OutputStream;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVv:[B

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVu:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->mU()V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVu:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVv:[B

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->ˁ([B)V

    .line 213
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVu:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->mV()[B

    move-result-object v2

    .line 215
    invoke-static {v2, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ([BLjava/io/OutputStream;)V

    .line 217
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSP:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lG()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVx:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˊ(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVw:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    goto :goto_1

    .line 222
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSP:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    .line 225
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 227
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSP:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    .line 229
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVy:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-static {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsRSAUtils;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/params/RSAKeyParameters;Ljava/io/OutputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVA:[B

    .line 232
    :cond_3
    :goto_1
    return-void
.end method

.method public ˈ(Ljava/io/InputStream;)V
    .locals 3

    .line 175
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴵ(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVv:[B

    .line 177
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSP:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 179
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/ServerDHParams;->ـ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerDHParams;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ServerDHParams;->mH()Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˊ(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVx:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 182
    goto :goto_0

    .line 183
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSP:I

    .line 187
    :goto_0
    return-void
.end method

.method protected ˊ(Lorg/spongycastle/crypto/params/RSAKeyParameters;)Lorg/spongycastle/crypto/params/RSAKeyParameters;
    .locals 2

    .line 278
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 283
    :cond_0
    return-object p1
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 5

    .line 126
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSP:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    .line 128
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 130
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 135
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/Certificate;->ץ(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->hj()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 140
    :try_start_0
    invoke-static {v3}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->ˊ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 142
    :catch_0
    move-exception v4

    .line 144
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 148
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 153
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->ˊ(Lorg/spongycastle/crypto/params/RSAKeyParameters;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVy:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 155
    const/16 v0, 0x20

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 157
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 158
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2

    .line 74
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 79
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->lX()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 81
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVz:Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    .line 82
    return-void
.end method

.method public ˋ(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 2

    .line 192
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public ˋ(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2

    .line 198
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected ᴠ(I)[B
    .locals 2

    .line 248
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSP:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 250
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVw:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVx:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVw:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˊ(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)[B

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 258
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSP:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    .line 261
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 264
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aSP:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    .line 266
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->aVA:[B

    return-object v0

    .line 269
    :cond_3
    new-array v0, p1, [B

    return-object v0
.end method
