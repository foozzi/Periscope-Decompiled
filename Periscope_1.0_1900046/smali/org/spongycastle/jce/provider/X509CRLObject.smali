.class public Lorg/spongycastle/jce/provider/X509CRLObject;
.super Ljava/security/cert/X509CRL;
.source ""


# instance fields
.field private aYj:Lorg/spongycastle/asn1/x509/CertificateList;

.field private aYk:Ljava/lang/String;

.field private aYl:[B

.field private aYm:Z

.field private awi:I

.field private ayx:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/CertificateList;)V
    .locals 4

    .line 84
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->ayx:Z

    .line 85
    iput-object p1, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    .line 89
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/CertificateList;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/X509SignatureUtil;->ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYk:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/CertificateList;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/CertificateList;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYl:[B

    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYl:[B

    .line 100
    :goto_0
    invoke-static {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->ˊ(Ljava/security/cert/X509CRL;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYm:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_1

    .line 102
    :catch_0
    move-exception v3

    .line 104
    new-instance v0, Ljava/security/cert/CRLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CRL contents invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :goto_1
    return-void
.end method

.method private nK()Ljava/util/Set;
    .locals 8

    .line 278
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 279
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->hn()Ljava/util/Enumeration;

    move-result-object v3

    .line 281
    const/4 v4, 0x0

    .line 282
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    move-object v5, v0

    .line 285
    new-instance v6, Lorg/spongycastle/jce/provider/X509CRLEntryObject;

    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYm:Z

    invoke-direct {v6, v5, v0, v4}, Lorg/spongycastle/jce/provider/X509CRLEntryObject;-><init>(Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;ZLorg/spongycastle/asn1/x500/X500Name;)V

    .line 286
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYm:Z

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/x509/Extension;->ayU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v7

    .line 291
    if-eqz v7, :cond_0

    .line 293
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/Extension;->hz()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->＿(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v4

    .line 296
    :cond_0
    goto :goto_0

    .line 298
    :cond_1
    return-object v2
.end method

.method static ˊ(Ljava/security/cert/X509CRL;)Z
    .locals 3

    .line 70
    :try_start_0
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 71
    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ɹ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->hH()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 74
    :catch_0
    move-exception v2

    .line 76
    new-instance v0, Lorg/spongycastle/jce/provider/ExtCRLException;

    const-string v1, "Exception reading IssuingDistributionPoint"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/provider/ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private ﺑ(Z)Ljava/util/Set;
    .locals 7

    .line 129
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 131
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->hm()Lorg/spongycastle/asn1/x509/TBSCertList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v2

    .line 133
    if-eqz v2, :cond_2

    .line 135
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 136
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Extensions;->hA()Ljava/util/Enumeration;

    move-result-object v4

    .line 138
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v5, v0

    .line 141
    invoke-virtual {v2, v5}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v6

    .line 143
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 145
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    goto :goto_0

    .line 149
    :cond_1
    return-object v3

    .line 153
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 582
    if-ne p0, p1, :cond_0

    .line 584
    const/4 v0, 0x1

    return v0

    .line 587
    :cond_0
    instance-of v0, p1, Ljava/security/cert/X509CRL;

    if-nez v0, :cond_1

    .line 589
    const/4 v0, 0x0

    return v0

    .line 592
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/jce/provider/X509CRLObject;

    if-eqz v0, :cond_3

    .line 594
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/provider/X509CRLObject;

    move-object v2, v0

    .line 596
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->ayx:Z

    if-eqz v0, :cond_2

    .line 598
    iget-boolean v3, v2, Lorg/spongycastle/jce/provider/X509CRLObject;->ayx:Z

    .line 599
    if-eqz v3, :cond_2

    .line 601
    iget v0, v2, Lorg/spongycastle/jce/provider/X509CRLObject;->awi:I

    iget v1, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->awi:I

    if-eq v0, v1, :cond_2

    .line 603
    const/4 v0, 0x0

    return v0

    .line 608
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    iget-object v1, v2, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/CertificateList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 611
    :cond_3
    invoke-super {p0, p1}, Ljava/security/cert/X509CRL;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509CRLObject;->ﺑ(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3

    .line 195
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/CertificateList;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 197
    :catch_0
    move-exception v2

    .line 199
    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6

    .line 168
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->hm()Lorg/spongycastle/asn1/x509/TBSCertList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v3

    .line 170
    if-eqz v3, :cond_0

    .line 172
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v4

    .line 174
    if-eqz v4, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 180
    :catch_0
    move-exception v5

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 2

    .line 246
    new-instance v0, Lorg/spongycastle/jce/X509Principal;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/CertificateList;->hf()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x500/X500Name;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/X509Principal;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    .line 253
    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/CertificateList;->hf()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 255
    :catch_0
    move-exception v2

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t encode issuer DN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->hp()Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->hp()Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 273
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509CRLObject;->ﺑ(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 6

    .line 303
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->hn()Ljava/util/Enumeration;

    move-result-object v2

    .line 305
    const/4 v3, 0x0

    .line 306
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    move-object v4, v0

    .line 310
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->hY()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Lorg/spongycastle/jce/provider/X509CRLEntryObject;

    iget-boolean v1, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYm:Z

    invoke-direct {v0, v4, v1, v3}, Lorg/spongycastle/jce/provider/X509CRLEntryObject;-><init>(Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;ZLorg/spongycastle/asn1/x500/X500Name;)V

    return-object v0

    .line 315
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYm:Z

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/x509/Extension;->ayU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v5

    .line 319
    if-eqz v5, :cond_1

    .line 321
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/Extension;->hz()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->＿(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v3

    .line 324
    :cond_1
    goto :goto_0

    .line 326
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .locals 2

    .line 331
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->nK()Ljava/util/Set;

    move-result-object v1

    .line 333
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYk:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 5

    .line 371
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYl:[B

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYl:[B

    array-length v0, v0

    new-array v4, v0, [B

    .line 375
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYl:[B

    array-length v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    return-object v4

    .line 380
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->hl()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertList()[B
    .locals 3

    .line 346
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->hm()Lorg/spongycastle/asn1/x509/TBSCertList;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/TBSCertList;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 348
    :catch_0
    move-exception v2

    .line 350
    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->ho()Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->he()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 2

    .line 114
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 116
    if-nez v1, :cond_0

    .line 118
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbe:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbf:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 616
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->ayx:Z

    if-nez v0, :cond_0

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->ayx:Z

    .line 619
    invoke-super {p0}, Ljava/security/cert/X509CRL;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->awi:I

    .line 622
    :cond_0
    iget v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->awi:I

    return v0
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 8

    .line 520
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X.509"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "X.509 CRL used with non X.509 Cert"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->hn()Ljava/util/Enumeration;

    move-result-object v2

    .line 527
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->hf()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v3

    .line 529
    if-eqz v2, :cond_5

    .line 531
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    .line 533
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 535
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->ר(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v5

    .line 537
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYm:Z

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/x509/Extension;->ayU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v6

    .line 541
    if-eqz v6, :cond_1

    .line 543
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Extension;->hz()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->＿(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v3

    .line 547
    :cond_1
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->hY()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2

    .line 553
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v6

    goto :goto_1

    .line 559
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Certificate;->ⅰ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->hf()Lorg/spongycastle/asn1/x500/X500Name;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 564
    goto :goto_1

    .line 561
    :catch_0
    move-exception v7

    .line 563
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot process certificate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :goto_1
    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 569
    const/4 v0, 0x0

    return v0

    .line 572
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 574
    :cond_4
    goto/16 :goto_0

    .line 577
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 390
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 391
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 393
    const-string v0, "              Version: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const-string v0, "             IssuerDN: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const-string v0, "          This update: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->getThisUpdate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    const-string v0, "          Next update: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->getNextUpdate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    const-string v0, "  Signature Algorithm: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->getSignature()[B

    move-result-object v6

    .line 406
    const-string v0, "            Signature: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-static {v6, v2, v3}, Lorg/spongycastle/util/encoders/Hex;->ᑊ([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    const/16 v7, 0x14

    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_1

    .line 410
    array-length v0, v6

    add-int/lit8 v0, v0, -0x14

    if-ge v7, v0, :cond_0

    .line 412
    const-string v0, "                       "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x14

    invoke-static {v6, v7, v2}, Lorg/spongycastle/util/encoders/Hex;->ᑊ([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 417
    :cond_0
    const-string v0, "                       "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    array-length v2, v6

    sub-int/2addr v2, v7

    invoke-static {v6, v7, v2}, Lorg/spongycastle/util/encoders/Hex;->ᑊ([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    :goto_1
    add-int/lit8 v7, v7, 0x14

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->hm()Lorg/spongycastle/asn1/x509/TBSCertList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v7

    .line 424
    if-eqz v7, :cond_9

    .line 426
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/Extensions;->hA()Ljava/util/Enumeration;

    move-result-object v8

    .line 428
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    const-string v0, "           Extensions: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 435
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v9, v0

    .line 436
    invoke-virtual {v7, v9}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v10

    .line 438
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 440
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/Extension;->hy()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v11

    .line 441
    new-instance v12, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v12, v11}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 442
    const-string v0, "                       critical("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    :try_start_0
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    new-instance v0, Lorg/spongycastle/asn1/x509/CRLNumber;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->eI()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 453
    :cond_3
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Base CRL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/asn1/x509/CRLNumber;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->eI()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 461
    :cond_4
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 464
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ɹ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 467
    :cond_5
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayW:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 470
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->ⁿ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLDistPoint;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 473
    :cond_6
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->azc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 475
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->ⁿ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLDistPoint;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 480
    :cond_7
    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    const-string v0, " value = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/util/ASN1Dump;->ᑉ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_3
    goto :goto_4

    .line 486
    :catch_0
    move-exception v13

    .line 488
    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    const-string v0, " value = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "*****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    :goto_4
    goto :goto_5

    .line 494
    :cond_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    :goto_5
    goto/16 :goto_2

    .line 498
    :cond_9
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->getRevokedCertificates()Ljava/util/Set;

    move-result-object v8

    .line 499
    if-eqz v8, :cond_a

    .line 501
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 502
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 504
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 505
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 508
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1

    .line 207
    const-string v0, "SC"

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/jce/provider/X509CRLObject;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 3

    .line 214
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509CRLObject;->aYj:Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/CertificateList;->hm()Lorg/spongycastle/asn1/x509/TBSCertList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/TBSCertList;->hX()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Signature algorithm on CertificateList does not match TBSCertList."

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    if-eqz p2, :cond_1

    .line 223
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 230
    :goto_0
    invoke-virtual {v2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 231
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->getTBSCertList()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/Signature;->update([B)V

    .line 233
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CRLObject;->getSignature()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "CRL does not verify with supplied public key."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_2
    return-void
.end method
