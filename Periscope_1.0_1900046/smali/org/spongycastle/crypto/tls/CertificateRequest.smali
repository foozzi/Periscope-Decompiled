.class public Lorg/spongycastle/crypto/tls/CertificateRequest;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected aSE:Ljava/util/Vector;

.field protected aSW:[S

.field protected aSX:Ljava/util/Vector;


# direct methods
.method public constructor <init>([SLjava/util/Vector;Ljava/util/Vector;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSW:[S

    .line 38
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSE:Ljava/util/Vector;

    .line 39
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSX:Ljava/util/Vector;

    .line 40
    return-void
.end method

.method public static ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateRequest;
    .locals 9

    .line 132
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﾞ(Ljava/io/InputStream;)S

    move-result v1

    .line 133
    new-array v2, v1, [S

    .line 134
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 136
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﾞ(Ljava/io/InputStream;)S

    move-result v0

    aput-short v0, v2, v3

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_0
    const/4 v3, 0x0

    .line 140
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(ZLjava/io/InputStream;)Ljava/util/Vector;

    move-result-object v3

    .line 146
    :cond_1
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 147
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴵ(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 148
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 149
    :goto_1
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_2

    .line 151
    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴵ(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 152
    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐢ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v8

    .line 153
    invoke-static {v8}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 154
    goto :goto_1

    .line 156
    :cond_2
    new-instance v0, Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-direct {v0, v2, v3, v4}, Lorg/spongycastle/crypto/tls/CertificateRequest;-><init>([SLjava/util/Vector;Ljava/util/Vector;)V

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 7

    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSW:[S

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSW:[S

    array-length v0, v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(ILjava/io/OutputStream;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSW:[S

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˋ([SLjava/io/OutputStream;)V

    .line 85
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSE:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSE:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Vector;ZLjava/io/OutputStream;)V

    .line 91
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSX:Ljava/util/Vector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSX:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʻ(ILjava/io/OutputStream;)V

    goto :goto_3

    .line 97
    :cond_4
    new-instance v2, Ljava/util/Vector;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSX:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    .line 99
    const/4 v3, 0x0

    .line 100
    const/4 v4, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSX:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 102
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSX:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x500/X500Name;

    move-object v5, v0

    .line 103
    const-string v0, "DER"

    invoke-virtual {v5, v0}, Lorg/spongycastle/asn1/x500/X500Name;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    .line 104
    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    array-length v0, v6

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 108
    :cond_5
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴻ(I)V

    .line 109
    invoke-static {v3, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʻ(ILjava/io/OutputStream;)V

    .line 111
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 113
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v5, v0

    .line 114
    invoke-static {v5, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ([BLjava/io/OutputStream;)V

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 117
    :cond_6
    :goto_3
    return-void
.end method

.method public lR()[S
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSW:[S

    return-object v0
.end method

.method public lS()Ljava/util/Vector;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->aSE:Ljava/util/Vector;

    return-object v0
.end method
