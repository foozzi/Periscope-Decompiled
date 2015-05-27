.class public Lorg/spongycastle/crypto/tls/CertificateStatus;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected aSY:S

.field protected aSZ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(SLjava/lang/Object;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1, p2}, Lorg/spongycastle/crypto/tls/CertificateStatus;->ˊ(SLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'response\' is not an instance of the correct type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/CertificateStatus;->aSY:S

    .line 23
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/CertificateStatus;->aSZ:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method protected static ˊ(SLjava/lang/Object;)Z
    .locals 2

    .line 97
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 100
    :sswitch_0
    instance-of v0, p1, Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    return v0

    .line 102
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'statusType\' is an unsupported value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ˍ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateStatus;
    .locals 5

    .line 77
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﾞ(Ljava/io/InputStream;)S

    move-result v2

    .line 80
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 84
    :sswitch_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᵎ(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 85
    invoke-static {v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐢ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->৲(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    move-result-object v3

    .line 86
    goto :goto_1

    .line 89
    :goto_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 92
    :goto_1
    new-instance v0, Lorg/spongycastle/crypto/tls/CertificateStatus;

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/crypto/tls/CertificateStatus;-><init>(SLjava/lang/Object;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3

    .line 54
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/CertificateStatus;->aSY:S

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLjava/io/OutputStream;)V

    .line 56
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/CertificateStatus;->aSY:S

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 59
    :sswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateStatus;->aSZ:Ljava/lang/Object;

    check-cast v0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    .line 60
    invoke-static {v2, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˏ([BLjava/io/OutputStream;)V

    .line 61
    goto :goto_1

    .line 63
    :goto_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 65
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method
