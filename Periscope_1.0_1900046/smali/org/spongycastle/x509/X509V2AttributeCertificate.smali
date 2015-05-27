.class public Lorg/spongycastle/x509/X509V2AttributeCertificate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/x509/X509AttributeCertificate;


# instance fields
.field private blc:Lorg/spongycastle/asn1/x509/AttributeCertificate;

.field private bld:Ljava/util/Date;

.field private ble:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 67
    invoke-static {p1}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->ᐠ(Ljava/io/InputStream;)Lorg/spongycastle/asn1/x509/AttributeCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/X509V2AttributeCertificate;-><init>(Lorg/spongycastle/asn1/x509/AttributeCertificate;)V

    .line 68
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/x509/AttributeCertificate;)V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/spongycastle/x509/X509V2AttributeCertificate;->blc:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    .line 85
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->gR()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->gV()Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;->gP()Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificate;->ble:Ljava/util/Date;

    .line 86
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->gR()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->gV()Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttCertValidityPeriod;->gO()Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificate;->bld:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 88
    :catch_0
    move-exception v2

    .line 90
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid data structure in certificate!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :goto_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 74
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/X509V2AttributeCertificate;-><init>(Ljava/io/InputStream;)V

    .line 75
    return-void
.end method

.method private static ᐠ(Ljava/io/InputStream;)Lorg/spongycastle/asn1/x509/AttributeCertificate;
    .locals 4

    .line 51
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->ᕝ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttributeCertificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 53
    :catch_0
    move-exception v3

    .line 55
    throw v3

    .line 57
    :catch_1
    move-exception v3

    .line 59
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception decoding certificate structure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ﺑ(Z)Ljava/util/Set;
    .locals 6

    .line 235
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificate;->blc:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->gR()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_2

    .line 239
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 240
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Extensions;->hA()Ljava/util/Enumeration;

    move-result-object v3

    .line 242
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v4, v0

    .line 245
    invoke-virtual {v1, v4}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v5

    .line 247
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 249
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_0
    goto :goto_0

    .line 253
    :cond_1
    return-object v2

    .line 256
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public checkValidity(Ljava/util/Date;)V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 314
    if-ne p1, p0, :cond_0

    .line 316
    const/4 v0, 0x1

    return v0

    .line 319
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/x509/X509AttributeCertificate;

    if-nez v0, :cond_1

    .line 321
    const/4 v0, 0x0

    return v0

    .line 324
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertificate;

    move-object v1, v0

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v2

    .line 329
    invoke-interface {v1}, Lorg/spongycastle/x509/X509AttributeCertificate;->getEncoded()[B

    move-result-object v3

    .line 331
    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 333
    :catch_0
    move-exception v2

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 266
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->ﺑ(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificate;->blc:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6

    .line 210
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificate;->blc:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->gR()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v3

    .line 212
    if-eqz v3, :cond_0

    .line 214
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v4

    .line 216
    if-eqz v4, :cond_0

    .line 220
    :try_start_0
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 222
    :catch_0
    move-exception v5

    .line 224
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->ﺑ(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificate;->ble:Ljava/util/Date;

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificate;->bld:Ljava/util/Date;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificate;->blc:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->gR()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->gU()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 2

    .line 271
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 273
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 345
    :catch_0
    move-exception v1

    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public tv()Lorg/spongycastle/x509/AttributeCertificateHolder;
    .locals 2

    .line 106
    new-instance v0, Lorg/spongycastle/x509/AttributeCertificateHolder;

    iget-object v1, p0, Lorg/spongycastle/x509/X509V2AttributeCertificate;->blc:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->gR()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->gS()Lorg/spongycastle/asn1/x509/Holder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Holder;->eJ()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/AttributeCertificateHolder;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public ty()Lorg/spongycastle/x509/AttributeCertificateIssuer;
    .locals 2

    .line 111
    new-instance v0, Lorg/spongycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lorg/spongycastle/x509/X509V2AttributeCertificate;->blc:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->gR()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->gT()Lorg/spongycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/AttributeCertificateIssuer;-><init>(Lorg/spongycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public ڊ(Ljava/lang/String;)[Lorg/spongycastle/x509/X509Attribute;
    .locals 5

    .line 291
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificate;->blc:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->gR()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->gW()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 294
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v3, v0, :cond_1

    .line 296
    new-instance v4, Lorg/spongycastle/x509/X509Attribute;

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/spongycastle/x509/X509Attribute;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 297
    invoke-virtual {v4}, Lorg/spongycastle/x509/X509Attribute;->ts()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 303
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 305
    const/4 v0, 0x0

    return-object v0

    .line 308
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/x509/X509Attribute;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/spongycastle/x509/X509Attribute;

    check-cast v0, [Lorg/spongycastle/x509/X509Attribute;

    return-object v0
.end method
