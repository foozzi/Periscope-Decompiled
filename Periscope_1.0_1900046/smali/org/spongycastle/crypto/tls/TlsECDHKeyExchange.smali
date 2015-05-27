.class public Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;
.super Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.source ""


# instance fields
.field protected aSF:[I

.field protected aSG:[S

.field protected aSH:[S

.field protected aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

.field protected aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected aVb:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

.field protected aVi:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

.field protected aVj:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;


# direct methods
.method public constructor <init>(ILjava/util/Vector;[I[S[S)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    .line 36
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 39
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsRSASigner;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    .line 40
    goto :goto_1

    .line 42
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsECDSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsECDSASigner;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    .line 43
    goto :goto_1

    .line 46
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    .line 47
    goto :goto_1

    .line 49
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported key exchange algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :goto_1
    iput p1, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aSP:I

    .line 53
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aSF:[I

    .line 54
    iput-object p4, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aSG:[S

    .line 55
    iput-object p5, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aSH:[S

    .line 56
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public lK()Z
    .locals 1

    .line 120
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aSP:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 127
    :goto_0
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public mQ()V
    .locals 2

    .line 70
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public mR()[B
    .locals 2

    .line 207
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aVb:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aVb:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aVj:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;->ˋ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aVi:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aVj:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aVi:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;)[B

    move-result-object v0

    return-object v0

    .line 217
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public ʽ(Ljava/io/OutputStream;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aVb:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lG()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aSH:[S

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aVj:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ(Ljava/security/SecureRandom;[SLorg/spongycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aVi:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 181
    :cond_0
    return-void
.end method

.method public ˉ(Ljava/io/InputStream;)V
    .locals 3

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aVj:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_0

    .line 194
    return-void

    .line 197
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ٴ(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 199
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aVi:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    .line 201
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aSH:[S

    invoke-static {v0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ([SLorg/spongycastle/crypto/params/ECDomainParameters;[B)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aVj:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 203
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 5

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/Certificate;->ץ(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->hj()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 85
    :try_start_0
    invoke-static {v3}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->ˊ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 87
    :catch_0
    move-exception v4

    .line 89
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 92
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-nez v0, :cond_1

    .line 96
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˊ(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aVj:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    goto :goto_1

    .line 98
    :catch_1
    move-exception v4

    .line 100
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 103
    :goto_1
    const/16 v0, 0x8

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/asn1/x509/Certificate;I)V

    goto :goto_2

    .line 107
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsSigner;->ˎ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 112
    :cond_2
    const/16 v0, 0x80

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 115
    :goto_2
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 116
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 62
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSigner;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 66
    :cond_0
    return-void
.end method

.method public ˋ(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 0

    .line 187
    return-void
.end method

.method public ˋ(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 4

    .line 139
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->lR()[S

    move-result-object v2

    .line 140
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_0

    .line 142
    aget-short v0, v2, v3

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 149
    :sswitch_0
    goto :goto_2

    .line 151
    :goto_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 140
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x40 -> :sswitch_0
        0x41 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public ˋ(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2

    .line 158
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    .line 162
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;->aVb:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    goto :goto_0

    .line 164
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 172
    :goto_0
    return-void
.end method
