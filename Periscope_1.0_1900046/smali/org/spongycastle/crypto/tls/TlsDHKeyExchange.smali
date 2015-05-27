.class public Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;
.super Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.source ""


# static fields
.field protected static final ONE:Ljava/math/BigInteger;

.field protected static final aKc:Ljava/math/BigInteger;


# instance fields
.field protected aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

.field protected aUY:Lorg/spongycastle/crypto/params/DHParameters;

.field protected aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected aVa:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

.field protected aVb:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

.field protected aVc:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

.field protected aVd:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

.field protected aVe:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->ONE:Ljava/math/BigInteger;

    .line 23
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aKc:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    .line 40
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 44
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    .line 45
    goto :goto_1

    .line 47
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsRSASigner;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    .line 48
    goto :goto_1

    .line 50
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsDSSSigner;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    .line 51
    goto :goto_1

    .line 53
    :goto_0
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported key exchange algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :goto_1
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aUY:Lorg/spongycastle/crypto/params/DHParameters;

    .line 57
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public lK()Z
    .locals 1

    .line 123
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aSP:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 128
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 130
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public mQ()V
    .locals 2

    .line 72
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public mR()[B
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aVb:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aVb:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aVa:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;->ˋ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aVd:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aVe:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aVd:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˊ(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)[B

    move-result-object v0

    return-object v0

    .line 201
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aVc:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aVa:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aVc:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˊ(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)[B

    move-result-object v0

    return-object v0

    .line 206
    :cond_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public ʽ(Ljava/io/OutputStream;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aVb:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lG()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aVa:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˊ(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aVc:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 186
    :cond_0
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 5

    .line 78
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/Certificate;->ץ(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->hj()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 88
    :try_start_0
    invoke-static {v3}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->ˊ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 90
    :catch_0
    move-exception v4

    .line 92
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 95
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-nez v0, :cond_1

    .line 99
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˊ(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aVa:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    goto :goto_1

    .line 101
    :catch_1
    move-exception v4

    .line 103
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 106
    :goto_1
    const/16 v0, 0x8

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/asn1/x509/Certificate;I)V

    goto :goto_2

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aUZ:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsSigner;->ˎ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 115
    :cond_2
    const/16 v0, 0x80

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 118
    :goto_2
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 119
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aUX:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSigner;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 67
    :cond_0
    return-void
.end method

.method public ˋ(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 4

    .line 137
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->lR()[S

    move-result-object v2

    .line 138
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_0

    .line 140
    aget-short v0, v2, v3

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 147
    :sswitch_0
    goto :goto_2

    .line 149
    :goto_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 138
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public ˋ(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2

    .line 157
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    .line 161
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->aVb:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    goto :goto_0

    .line 163
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 171
    :goto_0
    return-void
.end method
