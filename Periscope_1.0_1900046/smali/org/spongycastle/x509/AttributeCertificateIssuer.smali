.class public Lorg/spongycastle/x509/AttributeCertificateIssuer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field final bkn:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/AttCertIssuer;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AttCertIssuer;->gN()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->bkn:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 39
    return-void
.end method

.method private tg()[Ljava/lang/Object;
    .locals 7

    .line 56
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->bkn:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/spongycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->bkn:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/x509/V2Form;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/V2Form;->ih()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v2

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->bkn:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/x509/GeneralNames;

    move-object v2, v0

    .line 65
    :goto_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    array-length v0, v3

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    const/4 v5, 0x0

    :goto_1
    array-length v0, v3

    if-eq v5, v0, :cond_2

    .line 71
    aget-object v0, v3, v5

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 75
    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    aget-object v1, v3, v5

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_2

    .line 78
    :catch_0
    move-exception v6

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "badly formed Name object"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 85
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Ljavax/security/auth/x500/X500Principal;Lorg/spongycastle/asn1/x509/GeneralNames;)Z
    .locals 6

    .line 112
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 114
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-eq v3, v0, :cond_2

    .line 116
    aget-object v4, v2, v3

    .line 118
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 122
    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v0, p1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_0
    goto :goto_1

    .line 127
    :catch_0
    move-exception v5

    .line 114
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 138
    new-instance v0, Lorg/spongycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->bkn:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/AttCertIssuer;->ᓫ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/AttributeCertificateIssuer;-><init>(Lorg/spongycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 179
    if-ne p1, p0, :cond_0

    .line 181
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/x509/AttributeCertificateIssuer;

    if-nez v0, :cond_1

    .line 186
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-object v2, v0

    .line 191
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->bkn:Lorg/spongycastle/asn1/ASN1Encodable;

    iget-object v1, v2, Lorg/spongycastle/x509/AttributeCertificateIssuer;->bkn:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .locals 4

    .line 96
    invoke-direct {p0}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->tg()[Ljava/lang/Object;

    move-result-object v1

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    const/4 v3, 0x0

    :goto_0
    array-length v0, v1

    if-eq v3, v0, :cond_1

    .line 101
    aget-object v0, v1, v3

    instance-of v0, v0, Ljava/security/Principal;

    if-eqz v0, :cond_0

    .line 103
    aget-object v0, v1, v3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/Principal;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Principal;

    check-cast v0, [Ljava/security/Principal;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->bkn:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 5

    .line 143
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0

    .line 150
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->bkn:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/spongycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->bkn:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/x509/V2Form;

    move-object v3, v0

    .line 153
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/IssuerSerial;->hE()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/IssuerSerial;->hD()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->ˊ(Ljavax/security/auth/x500/X500Principal;Lorg/spongycastle/asn1/x509/GeneralNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 159
    :cond_2
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/V2Form;->ih()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v4

    .line 160
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->ˊ(Ljavax/security/auth/x500/X500Principal;Lorg/spongycastle/asn1/x509/GeneralNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_3
    goto :goto_1

    .line 167
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->bkn:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/x509/GeneralNames;

    move-object v3, v0

    .line 168
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->ˊ(Ljavax/security/auth/x500/X500Principal;Lorg/spongycastle/asn1/x509/GeneralNames;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    const/4 v0, 0x1

    return v0

    .line 174
    :cond_5
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public ɨ(Ljava/lang/Object;)Z
    .locals 1

    .line 201
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    return v0

    .line 206
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    return v0
.end method
