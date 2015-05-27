.class public Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;
.super Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.source ""


# instance fields
.field protected aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected aVA:[B

.field protected aVy:Lorg/spongycastle/crypto/params/RSAKeyParameters;

.field protected aVz:Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1

    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aVy:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aVz:Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    .line 32
    return-void
.end method


# virtual methods
.method public mQ()V
    .locals 2

    .line 37
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public mR()[B
    .locals 3

    .line 139
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aVA:[B

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 144
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aVA:[B

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aVA:[B

    .line 146
    return-object v2
.end method

.method public ʽ(Ljava/io/OutputStream;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aVy:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-static {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsRSAUtils;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/params/RSAKeyParameters;Ljava/io/OutputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aVA:[B

    .line 117
    return-void
.end method

.method public ˉ(Ljava/io/InputStream;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p1}, Lorg/spongycastle/util/io/Streams;->ۥ(Ljava/io/InputStream;)[B

    move-result-object v1

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴵ(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 133
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aVz:Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;->ᵥ([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aVA:[B

    .line 134
    return-void
.end method

.method protected ˊ(Lorg/spongycastle/crypto/params/RSAKeyParameters;)Lorg/spongycastle/crypto/params/RSAKeyParameters;
    .locals 2

    .line 184
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 189
    :cond_0
    return-object p1
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 5

    .line 56
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/Certificate;->ץ(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->hj()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 66
    :try_start_0
    invoke-static {v3}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->ˊ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 68
    :catch_0
    move-exception v4

    .line 70
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 74
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 79
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->ˊ(Lorg/spongycastle/crypto/params/RSAKeyParameters;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aVy:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 81
    const/16 v0, 0x20

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 83
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 84
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2

    .line 43
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 48
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->lX()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 50
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;->aVz:Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    .line 51
    return-void
.end method

.method public ˋ(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 4

    .line 89
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->lR()[S

    move-result-object v2

    .line 90
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_0

    .line 92
    aget-short v0, v2, v3

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 97
    :sswitch_0
    goto :goto_2

    .line 99
    :goto_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 90
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public ˋ(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2

    .line 107
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 111
    :cond_0
    return-void
.end method
