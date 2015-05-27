.class public Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final baW:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

.field public static final baX:Ljava/lang/String;

.field public static final baY:Ljava/lang/String;

.field public static final baZ:Ljava/lang/String;

.field public static final bba:Ljava/lang/String;

.field public static final bbb:Ljava/lang/String;

.field public static final bbc:Ljava/lang/String;

.field public static final bbd:Ljava/lang/String;

.field public static final bbe:Ljava/lang/String;

.field public static final bbf:Ljava/lang/String;

.field public static final bbg:Ljava/lang/String;

.field public static final bbh:Ljava/lang/String;

.field public static final bbi:Ljava/lang/String;

.field public static final bbj:Ljava/lang/String;

.field public static final bbk:Ljava/lang/String;

.field protected static final bbl:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/PKIXCRLUtil;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baW:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    .line 380
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBz:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baX:Ljava/lang/String;

    .line 382
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baZ:Ljava/lang/String;

    .line 384
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBF:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbd:Ljava/lang/String;

    .line 386
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbe:Ljava/lang/String;

    .line 388
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbh:Ljava/lang/String;

    .line 390
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbf:Ljava/lang/String;

    .line 392
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbg:Ljava/lang/String;

    .line 394
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBp:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baY:Ljava/lang/String;

    .line 396
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbi:Ljava/lang/String;

    .line 398
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bba:Ljava/lang/String;

    .line 400
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbb:Ljava/lang/String;

    .line 402
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbj:Ljava/lang/String;

    .line 404
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBl:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbc:Ljava/lang/String;

    .line 406
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbk:Ljava/lang/String;

    .line 2280
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "unspecified"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "keyCompromise"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "cACompromise"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "affiliationChanged"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "superseded"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "cessationOfOperation"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "certificateHold"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "unknown"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "removeFromCRL"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "privilegeWithdrawn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "aACompromise"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbl:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static ʻ(Ljava/security/cert/CertPath;II)I
    .locals 3

    .line 2216
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2217
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0

    .line 2221
    invoke-static {v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ʽ(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2226
    if-eqz p2, :cond_0

    .line 2228
    add-int/lit8 v0, p2, -0x1

    return v0

    .line 2231
    :cond_0
    return p2
.end method

.method protected static ʼ(Ljava/security/cert/CertPath;II)I
    .locals 3

    .line 2239
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2240
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0

    .line 2244
    invoke-static {v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ʽ(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2249
    if-eqz p2, :cond_0

    .line 2251
    add-int/lit8 v0, p2, -0x1

    return v0

    .line 2254
    :cond_0
    return p2
.end method

.method protected static ʽ(Ljava/security/cert/CertPath;II)I
    .locals 3

    .line 2262
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2263
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0

    .line 2267
    invoke-static {v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ʽ(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2272
    if-eqz p2, :cond_0

    .line 2274
    add-int/lit8 v0, p2, -0x1

    return v0

    .line 2277
    :cond_0
    return p2
.end method

.method protected static ˊ(ILjava/security/cert/X509Certificate;)I
    .locals 1

    .line 2301
    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ʽ(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2303
    add-int/lit8 p0, p0, -0x1

    .line 2305
    :cond_0
    return p0
.end method

.method protected static ˊ(Ljava/security/cert/CertPath;II)I
    .locals 8

    .line 1539
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 1540
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .line 1544
    const/4 v4, 0x0

    .line 1547
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbg:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1554
    goto :goto_0

    .line 1550
    :catch_0
    move-exception v5

    .line 1552
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy constraints extension cannot be decoded."

    invoke-direct {v0, v1, v5, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1558
    :goto_0
    if-eqz v4, :cond_2

    .line 1560
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v6

    .line 1562
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1567
    :try_start_1
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v7

    .line 1568
    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    if-nez v0, :cond_1

    .line 1570
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lorg/spongycastle/asn1/ASN1Integer;->ˋ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 1571
    if-ge v5, p2, :cond_0

    .line 1573
    return v5

    .line 1575
    :cond_0
    goto :goto_2

    .line 1582
    :cond_1
    goto :goto_1

    .line 1578
    :catch_1
    move-exception v7

    .line 1580
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v0, v1, v7, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1585
    :cond_2
    :goto_2
    return p2
.end method

.method protected static ˊ(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .locals 6

    .line 574
    const/4 v2, 0x0

    .line 575
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    move-object v4, v0

    .line 580
    :try_start_0
    invoke-virtual {p0, v4}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    return-object v4

    .line 583
    :catch_0
    move-exception v5

    .line 585
    move-object v2, v5

    .line 587
    goto :goto_0

    .line 588
    :cond_0
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Cannot verify CRL."

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static ˊ(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .locals 6

    .line 596
    const/4 v2, 0x0

    .line 598
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    move-object v4, v0

    .line 603
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    return-object v4

    .line 606
    :catch_0
    move-exception v5

    .line 608
    move-object v2, v5

    .line 610
    goto :goto_0

    .line 612
    :cond_0
    if-eqz v2, :cond_1

    .line 614
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Cannot verify delta CRL."

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 616
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static ˊ(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;
    .locals 12

    .line 448
    new-instance v2, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 451
    :try_start_0
    invoke-static {p0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˋ(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    .line 452
    invoke-virtual {v2, v3}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    goto :goto_0

    .line 454
    :catch_0
    move-exception v3

    .line 456
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 464
    :goto_0
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tl()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v3

    .line 465
    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tk()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 466
    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 471
    goto :goto_1

    .line 468
    :catch_1
    move-exception v4

    .line 470
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Issuer certificate for CRL cannot be searched."

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 473
    :goto_1
    invoke-interface {v3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 477
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 478
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 480
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v7, v0

    .line 488
    invoke-virtual {v7, p2}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-interface {v6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    goto :goto_2

    .line 496
    :cond_0
    const-string v0, "PKIX"

    const-string v1, "SC"

    :try_start_2
    invoke-static {v0, v1}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v8

    .line 497
    new-instance v2, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 498
    invoke-virtual {v2, v7}, Lorg/spongycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 499
    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-object v9, v0

    .line 500
    invoke-virtual {v9, v2}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 501
    invoke-static {v9}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->ˎ(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    move-object v10, v0

    .line 512
    move-object/from16 v0, p5

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V

    goto :goto_3

    .line 518
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 520
    :goto_3
    invoke-virtual {v8, v10}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v11

    .line 521
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    const/4 v0, 0x0

    invoke-static {v11, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˋ(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 535
    goto :goto_4

    .line 524
    :catch_2
    move-exception v8

    .line 526
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Internal error."

    invoke-direct {v0, v1, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 528
    :catch_3
    move-exception v8

    .line 530
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Public key of issuer certificate of CRL could not be retrieved."

    invoke-direct {v0, v1, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 532
    :catch_4
    move-exception v8

    .line 534
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :goto_4
    goto/16 :goto_2

    .line 538
    :cond_2
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 540
    const/4 v8, 0x0

    .line 541
    const/4 v9, 0x0

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    .line 543
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v10, v0

    .line 544
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v11

    .line 546
    if-eqz v11, :cond_4

    array-length v0, v11

    const/4 v1, 0x7

    if-lt v0, v1, :cond_3

    const/4 v0, 0x6

    aget-boolean v0, v11, v0

    if-nez v0, :cond_4

    .line 548
    :cond_3
    new-instance v8, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v0, "Issuer certificate key usage extension does not permit CRL signing."

    invoke-direct {v8, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 553
    :cond_4
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 557
    :cond_5
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v8, :cond_6

    .line 559
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Cannot find a valid issuer certificate."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_6
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v8, :cond_7

    .line 563
    throw v8

    .line 566
    :cond_7
    return-object v7
.end method

.method protected static ˊ(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 27

    .line 1258
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v8

    .line 1259
    move/from16 v0, p1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v9, v0

    .line 1260
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .line 1262
    sub-int v11, v10, p1

    .line 1267
    const/4 v12, 0x0

    .line 1270
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baX:Ljava/lang/String;

    invoke-static {v9, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1277
    goto :goto_0

    .line 1273
    :catch_0
    move-exception v13

    .line 1275
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Could not read certificate policies extension from certificate."

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v13, v2, v3}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1278
    :goto_0
    if-eqz v12, :cond_14

    if-eqz p3, :cond_14

    .line 1283
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v13

    .line 1284
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1286
    :goto_1
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1288
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/PolicyInformation;->ז(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v15

    .line 1289
    invoke-virtual {v15}, Lorg/spongycastle/asn1/x509/PolicyInformation;->hQ()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v16

    .line 1291
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1293
    const-string v0, "2.5.29.32.0"

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1295
    const/16 v17, 0x0

    .line 1298
    :try_start_1
    invoke-virtual {v15}, Lorg/spongycastle/asn1/x509/PolicyInformation;->hR()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˏ(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 1304
    goto :goto_2

    .line 1300
    :catch_1
    move-exception v18

    .line 1302
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy qualifier info set could not be build."

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1306
    :goto_2
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v11, v0, v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v18

    .line 1308
    if-nez v18, :cond_0

    .line 1310
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v11, v0, v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˋ(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    .line 1313
    :cond_0
    goto :goto_1

    .line 1315
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "2.5.29.32.0"

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1317
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1318
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 1322
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1323
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 1325
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1327
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 1329
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1331
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1333
    :cond_4
    goto :goto_3

    .line 1334
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1335
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1341
    :goto_4
    if-gtz p5, :cond_6

    if-ge v11, v10, :cond_f

    invoke-static {v9}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ʽ(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1343
    :cond_6
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v13

    .line 1345
    :goto_5
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1347
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/PolicyInformation;->ז(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v15

    .line 1349
    const-string v0, "2.5.29.32.0"

    invoke-virtual {v15}, Lorg/spongycastle/asn1/x509/PolicyInformation;->hQ()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1351
    invoke-virtual {v15}, Lorg/spongycastle/asn1/x509/PolicyInformation;->hR()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˏ(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v16

    .line 1352
    add-int/lit8 v0, v11, -0x1

    aget-object v17, p4, v0

    .line 1354
    const/16 v18, 0x0

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v18

    if-ge v1, v0, :cond_d

    .line 1356
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v19, v0

    .line 1358
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 1359
    :cond_7
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1361
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .line 1364
    move-object/from16 v0, v21

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1366
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v0

    goto :goto_8

    .line 1368
    :cond_8
    move-object/from16 v0, v21

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_7

    .line 1370
    move-object/from16 v0, v21

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v22

    .line 1377
    :goto_8
    const/16 v23, 0x0

    .line 1378
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v24

    .line 1380
    :goto_9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1382
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v25, v0

    .line 1384
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1386
    const/16 v23, 0x1

    .line 1388
    :cond_9
    goto :goto_9

    .line 1390
    :cond_a
    if-nez v23, :cond_b

    .line 1392
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 1393
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1395
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v11

    move-object/from16 v3, v25

    move-object/from16 v4, v19

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move-object/from16 v26, v0

    .line 1397
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->ˊ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 1398
    aget-object v0, p4, v11

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    :cond_b
    goto/16 :goto_7

    .line 1354
    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 1402
    :cond_d
    goto :goto_a

    .line 1404
    :cond_e
    goto/16 :goto_5

    .line 1407
    :cond_f
    :goto_a
    move-object/from16 v15, p3

    .line 1411
    add-int/lit8 v16, v11, -0x1

    :goto_b
    if-ltz v16, :cond_12

    .line 1413
    aget-object v17, p4, v16

    .line 1415
    const/16 v18, 0x0

    :goto_c
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v18

    if-ge v1, v0, :cond_11

    .line 1417
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v19, v0

    .line 1418
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1420
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v15

    .line 1422
    if-nez v15, :cond_10

    .line 1424
    goto :goto_d

    .line 1415
    :cond_10
    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    .line 1411
    :cond_11
    :goto_d
    add-int/lit8 v16, v16, -0x1

    goto :goto_b

    .line 1433
    :cond_12
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v16

    .line 1435
    if-eqz v16, :cond_13

    .line 1437
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baX:Ljava/lang/String;

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 1439
    aget-object v18, p4, v11

    .line 1440
    const/16 v19, 0x0

    :goto_e
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v19

    if-ge v1, v0, :cond_13

    .line 1442
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v20, v0

    .line 1443
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->ʺ(Z)V

    .line 1440
    add-int/lit8 v19, v19, 0x1

    goto :goto_e

    .line 1446
    :cond_13
    return-object v15

    .line 1448
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static ˊ(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 6

    .line 1128
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 1129
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .line 1133
    const/4 v4, 0x0

    .line 1136
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baX:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1143
    goto :goto_0

    .line 1139
    :catch_0
    move-exception v5

    .line 1141
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Could not read certificate policies extension from certificate."

    invoke-direct {v0, v1, v5, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1144
    :goto_0
    if-nez v4, :cond_0

    .line 1146
    const/4 p2, 0x0

    .line 1148
    :cond_0
    return-object p2
.end method

.method protected static ˊ(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 28

    .line 868
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v8

    .line 869
    move/from16 v0, p1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v9, v0

    .line 870
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .line 872
    sub-int v11, v10, p1

    .line 875
    const/4 v12, 0x0

    .line 878
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baZ:Ljava/lang/String;

    invoke-static {v9, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 885
    goto :goto_0

    .line 881
    :catch_0
    move-exception v13

    .line 883
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy mappings extension could not be decoded."

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v13, v2, v3}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 886
    :goto_0
    move-object/from16 v13, p3

    .line 887
    if-eqz v12, :cond_e

    .line 889
    move-object v14, v12

    .line 890
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 891
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 893
    const/16 v17, 0x0

    :goto_1
    invoke-virtual {v14}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    move/from16 v1, v17

    if-ge v1, v0, :cond_1

    .line 895
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v18, v0

    .line 896
    move-object/from16 v0, v18

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v19

    .line 897
    move-object/from16 v0, v18

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v20

    .line 900
    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 903
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 904
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 909
    :cond_0
    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    move-object/from16 v21, v0

    .line 910
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 893
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 914
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 915
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 917
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    .line 922
    if-lez p4, :cond_9

    .line 924
    const/16 v19, 0x0

    .line 925
    aget-object v0, p2, v11

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 926
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 928
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v21, v0

    .line 929
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 931
    const/16 v19, 0x1

    .line 932
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->bbF:Ljava/util/Set;

    .line 933
    goto :goto_5

    .line 935
    :cond_2
    goto :goto_4

    .line 937
    :cond_3
    :goto_5
    if-nez v19, :cond_8

    .line 939
    aget-object v0, p2, v11

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 940
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 942
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v21, v0

    .line 943
    const-string v0, "2.5.29.32.0"

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 945
    const/16 v22, 0x0

    .line 946
    const/16 v23, 0x0

    .line 949
    :try_start_1
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baX:Ljava/lang/String;

    invoke-static {v9, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v23, v0

    .line 956
    goto :goto_7

    .line 952
    :catch_1
    move-exception v24

    .line 954
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Certificate policies extension could not be decoded."

    move-object/from16 v2, v24

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 957
    :goto_7
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v24

    .line 958
    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 960
    const/16 v25, 0x0

    .line 963
    :try_start_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/PolicyInformation;->ז(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v25

    .line 969
    goto :goto_9

    .line 965
    :catch_2
    move-exception v26

    .line 967
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Policy information could not be decoded."

    move-object/from16 v2, v26

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 970
    :goto_9
    const-string v0, "2.5.29.32.0"

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/asn1/x509/PolicyInformation;->hQ()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 974
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/asn1/x509/PolicyInformation;->hR()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˏ(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v22

    .line 983
    goto :goto_a

    .line 977
    :catch_3
    move-exception v26

    .line 980
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy qualifier info set could not be decoded."

    move-object/from16 v2, v26

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 986
    :cond_4
    goto :goto_8

    .line 987
    :cond_5
    :goto_a
    const/16 v25, 0x0

    .line 988
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 990
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baX:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    .line 994
    :cond_6
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v26, v0

    .line 995
    const-string v0, "2.5.29.32.0"

    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 997
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v11

    move-object/from16 v3, v18

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move-object/from16 v4, v26

    move-object/from16 v5, v22

    move-object/from16 v6, v18

    move/from16 v7, v25

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move-object/from16 v27, v0

    .line 999
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->ˊ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 1000
    aget-object v0, p2, v11

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    goto :goto_b

    .line 1004
    :cond_7
    goto/16 :goto_6

    .line 1010
    :cond_8
    :goto_b
    goto/16 :goto_10

    .line 1011
    :cond_9
    if-gtz p4, :cond_d

    .line 1013
    aget-object v0, p2, v11

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 1014
    :goto_c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1016
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v20, v0

    .line 1017
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1019
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v21, v0

    .line 1020
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->ˋ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 1021
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    .line 1022
    add-int/lit8 v22, v11, -0x1

    :goto_d
    if-ltz v22, :cond_c

    .line 1024
    aget-object v23, p2, v22

    .line 1025
    const/16 v24, 0x0

    :goto_e
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v24

    if-ge v1, v0, :cond_b

    .line 1027
    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v25, v0

    .line 1028
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1030
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v13, v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v13

    .line 1032
    if-nez v13, :cond_a

    .line 1034
    goto :goto_f

    .line 1025
    :cond_a
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 1022
    :cond_b
    :goto_f
    add-int/lit8 v22, v22, -0x1

    goto :goto_d

    .line 1040
    :cond_c
    goto/16 :goto_c

    .line 1042
    :cond_d
    :goto_10
    goto/16 :goto_3

    .line 1044
    :cond_e
    return-object v13
.end method

.method protected static ˊ(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 13

    .line 2402
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 2411
    if-nez p5, :cond_1

    .line 2413
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2415
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Explicit policy requested but none available."

    const/4 v2, 0x0

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, p0, v3}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2418
    :cond_0
    const/4 v5, 0x0

    goto/16 :goto_c

    .line 2420
    :cond_1
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˋ(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2423
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2425
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2427
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Explicit policy requested but none available."

    const/4 v2, 0x0

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, p0, v3}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2432
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2434
    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p4

    array-length v0, v0

    if-ge v7, v0, :cond_5

    .line 2436
    aget-object v8, p4, v7

    .line 2438
    const/4 v9, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 2440
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object v10, v0

    .line 2442
    const-string v0, "2.5.29.32.0"

    invoke-virtual {v10}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2444
    invoke-virtual {v10}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v11

    .line 2445
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2447
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2438
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2434
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2453
    :cond_5
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2454
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2456
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object v8, v0

    .line 2457
    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 2459
    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2465
    goto :goto_3

    .line 2466
    :cond_6
    if-eqz p5, :cond_9

    .line 2468
    add-int/lit8 v8, v4, -0x1

    :goto_4
    if-ltz v8, :cond_9

    .line 2470
    aget-object v9, p4, v8

    .line 2472
    const/4 v10, 0x0

    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_8

    .line 2474
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object v11, v0

    .line 2475
    invoke-virtual {v11}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2477
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1, v11}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2472
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2468
    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 2486
    :cond_9
    move-object/from16 v5, p5

    goto/16 :goto_c

    .line 2503
    :cond_a
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2505
    const/4 v7, 0x0

    :goto_6
    move-object/from16 v0, p4

    array-length v0, v0

    if-ge v7, v0, :cond_e

    .line 2507
    aget-object v8, p4, v7

    .line 2509
    const/4 v9, 0x0

    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_d

    .line 2511
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object v10, v0

    .line 2513
    const-string v0, "2.5.29.32.0"

    invoke-virtual {v10}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2515
    invoke-virtual {v10}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v11

    .line 2516
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2518
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object v12, v0

    .line 2519
    const-string v0, "2.5.29.32.0"

    invoke-virtual {v12}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2521
    invoke-interface {v6, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2523
    :cond_b
    goto :goto_8

    .line 2509
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 2505
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 2531
    :cond_e
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2532
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2534
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object v8, v0

    .line 2535
    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 2537
    invoke-interface {p2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2539
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1, v8}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2541
    :cond_f
    goto :goto_9

    .line 2546
    :cond_10
    if-eqz p5, :cond_13

    .line 2548
    add-int/lit8 v8, v4, -0x1

    :goto_a
    if-ltz v8, :cond_13

    .line 2550
    aget-object v9, p4, v8

    .line 2552
    const/4 v10, 0x0

    :goto_b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_12

    .line 2554
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object v11, v0

    .line 2555
    invoke-virtual {v11}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2557
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1, v11}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2552
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 2548
    :cond_12
    add-int/lit8 v8, v8, -0x1

    goto :goto_a

    .line 2564
    :cond_13
    move-object/from16 v5, p5

    .line 2566
    :goto_c
    return-object v5
.end method

.method protected static ˊ(Ljava/security/cert/X509CRL;Lorg/spongycastle/asn1/x509/DistributionPoint;)Lorg/spongycastle/jce/provider/ReasonsMask;
    .locals 5

    .line 351
    const/4 v3, 0x0

    .line 354
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbe:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ɹ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 360
    goto :goto_0

    .line 357
    :catch_0
    move-exception v4

    .line 359
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Issuing distribution point extension could not be decoded."

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 362
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->hJ()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->hu()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->hu()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    new-instance v1, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->hJ()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;->ˋ(Lorg/spongycastle/jce/provider/ReasonsMask;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v0

    return-object v0

    .line 367
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->hJ()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->hu()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_2

    .line 369
    sget-object v0, Lorg/spongycastle/jce/provider/ReasonsMask;->bbN:Lorg/spongycastle/jce/provider/ReasonsMask;

    return-object v0

    .line 372
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->hu()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/spongycastle/jce/provider/ReasonsMask;->bbN:Lorg/spongycastle/jce/provider/ReasonsMask;

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->hu()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    :goto_1
    if-nez v3, :cond_4

    sget-object v1, Lorg/spongycastle/jce/provider/ReasonsMask;->bbN:Lorg/spongycastle/jce/provider/ReasonsMask;

    goto :goto_2

    :cond_4
    new-instance v1, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->hJ()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    :goto_2
    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;->ˋ(Lorg/spongycastle/jce/provider/ReasonsMask;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v0

    return-object v0
.end method

.method protected static ˊ(Ljava/security/cert/CertPath;I)V
    .locals 11

    .line 1052
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    .line 1053
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    .line 1058
    const/4 v5, 0x0

    .line 1061
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baZ:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1068
    goto :goto_0

    .line 1064
    :catch_0
    move-exception v6

    .line 1066
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy mappings extension could not be decoded."

    invoke-direct {v0, v1, v6, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1069
    :goto_0
    if-eqz v5, :cond_2

    .line 1071
    move-object v6, v5

    .line 1073
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 1075
    const/4 v8, 0x0

    .line 1076
    const/4 v9, 0x0

    .line 1079
    :try_start_1
    invoke-virtual {v6, v7}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v10

    .line 1081
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    .line 1082
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 1088
    goto :goto_2

    .line 1084
    :catch_1
    move-exception v10

    .line 1086
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy mappings extension contents could not be decoded."

    invoke-direct {v0, v1, v10, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1090
    :goto_2
    const-string v0, "2.5.29.32.0"

    invoke-virtual {v8}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "IssuerDomainPolicy is anyPolicy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1096
    :cond_0
    const-string v0, "2.5.29.32.0"

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1099
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "SubjectDomainPolicy is anyPolicy,"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1073
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1103
    :cond_2
    return-void
.end method

.method protected static ˊ(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .locals 7

    .line 2368
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    .line 2369
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    .line 2371
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2372
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2376
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v0, v4, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2382
    goto :goto_0

    .line 2378
    :catch_0
    move-exception v6

    .line 2380
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Additional certificate path checker failed."

    invoke-direct {v0, v1, v6, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2385
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2387
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate has unsupported critical extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2390
    :cond_1
    return-void
.end method

.method protected static ˊ(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .locals 7

    .line 2185
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    .line 2186
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    .line 2192
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2193
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2197
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v0, v4, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2202
    goto :goto_0

    .line 2199
    :catch_0
    move-exception v6

    .line 2201
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v6}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2204
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2206
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate has unsupported critical extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2209
    :cond_1
    return-void
.end method

.method protected static ˊ(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 18

    .line 1157
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1158
    move/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    .line 1159
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 1161
    sub-int v8, v7, p1

    .line 1165
    invoke-static {v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ʽ(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-lt v8, v7, :cond_2

    .line 1167
    :cond_0
    invoke-static {v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ʼ(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    .line 1168
    new-instance v10, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {v9}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 1173
    :try_start_0
    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1179
    goto :goto_0

    .line 1175
    :catch_0
    move-exception v12

    .line 1177
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Exception extracting subject name when checking subtrees."

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v12, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1183
    :goto_0
    move-object/from16 v0, p2

    :try_start_1
    invoke-virtual {v0, v11}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ᐝ(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 1184
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʻ(Lorg/spongycastle/asn1/ASN1Sequence;)V
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1190
    goto :goto_1

    .line 1186
    :catch_1
    move-exception v12

    .line 1188
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Subtree check for certificate subject failed."

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v12, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1192
    :goto_1
    const/4 v12, 0x0

    .line 1195
    :try_start_2
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bba:Ljava/lang/String;

    invoke-static {v6, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->＿(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v12

    .line 1202
    goto :goto_2

    .line 1198
    :catch_2
    move-exception v13

    .line 1200
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Subject alternative name extension could not be decoded."

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v13, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1203
    :goto_2
    new-instance v0, Lorg/spongycastle/asn1/x509/X509Name;

    invoke-direct {v0, v11}, Lorg/spongycastle/asn1/x509/X509Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awR:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/X509Name;->ʽ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/Vector;

    move-result-object v13

    .line 1204
    invoke-virtual {v13}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1206
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 1207
    new-instance v16, Lorg/spongycastle/asn1/x509/GeneralName;

    move-object/from16 v0, v16

    const/4 v1, 0x1

    invoke-direct {v0, v1, v15}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 1210
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    :try_start_3
    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Lorg/spongycastle/asn1/x509/GeneralName;)V

    .line 1211
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˋ(Lorg/spongycastle/asn1/x509/GeneralName;)V
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1217
    goto :goto_4

    .line 1213
    :catch_3
    move-exception v17

    .line 1215
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Subtree check for certificate subject alternative email failed."

    move-object/from16 v2, v17

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1218
    :goto_4
    goto :goto_3

    .line 1219
    :cond_1
    if-eqz v12, :cond_2

    .line 1221
    const/4 v14, 0x0

    .line 1224
    :try_start_4
    invoke-virtual {v12}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v14

    .line 1230
    goto :goto_5

    .line 1226
    :catch_4
    move-exception v15

    .line 1228
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Subject alternative name contents could not be decoded."

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v15, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1231
    :goto_5
    const/4 v15, 0x0

    :goto_6
    array-length v0, v14

    if-ge v15, v0, :cond_2

    .line 1236
    :try_start_5
    aget-object v0, v14, v15

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Lorg/spongycastle/asn1/x509/GeneralName;)V

    .line 1237
    aget-object v0, v14, v15

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˋ(Lorg/spongycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1243
    goto :goto_7

    .line 1239
    :catch_5
    move-exception v16

    .line 1241
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Subtree check for certificate subject alternative name failed."

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1231
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1247
    :cond_2
    return-void
.end method

.method protected static ˊ(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;I)V
    .locals 3

    .line 1115
    if-gtz p3, :cond_0

    if-nez p2, :cond_0

    .line 1117
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "No valid policy tree found when one expected."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1120
    :cond_0
    return-void
.end method

.method protected static ˊ(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V
    .locals 10

    .line 1461
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v6

    .line 1462
    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v7, v0

    .line 1466
    if-nez p4, :cond_0

    .line 1472
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, p3, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    goto :goto_0

    .line 1475
    :catch_0
    move-exception v8

    .line 1477
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Could not validate certificate signature."

    invoke-direct {v0, v1, v8, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1485
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p1, p0, p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1499
    goto :goto_1

    .line 1488
    :catch_1
    move-exception v8

    .line 1490
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not validate certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1492
    :catch_2
    move-exception v8

    .line 1494
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not validate certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1496
    :catch_3
    move-exception v8

    .line 1498
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Could not validate time of certificate."

    invoke-direct {v0, v1, v8, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1504
    :goto_1
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1508
    move-object v0, p1

    move-object v1, v7

    :try_start_2
    invoke-static {p1, p0, p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v2

    move-object/from16 v3, p6

    move-object v4, p3

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    :try_end_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1519
    goto :goto_2

    .line 1511
    :catch_4
    move-exception v8

    .line 1513
    move-object v9, v8

    .line 1514
    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_1

    .line 1516
    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    .line 1518
    :cond_1
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1525
    :cond_2
    :goto_2
    invoke-static {v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ﻨ(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1527
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IssuerName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ﻨ(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not match SubjectName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") of signing certificate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1531
    :cond_3
    return-void
.end method

.method protected static ˊ(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 8

    .line 733
    if-nez p0, :cond_0

    .line 735
    return-void

    .line 737
    :cond_0
    const/4 v2, 0x0

    .line 740
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbe:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ɹ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 746
    goto :goto_0

    .line 743
    :catch_0
    move-exception v3

    .line 745
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Issuing distribution point extension could not be decoded."

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 748
    :goto_0
    invoke-virtual {p2}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->ti()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 751
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 753
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_1
    const/4 v3, 0x0

    .line 760
    :try_start_1
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbe:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ɹ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 767
    goto :goto_1

    .line 763
    :catch_1
    move-exception v4

    .line 765
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 769
    :goto_1
    const/4 v4, 0x0

    .line 770
    if-nez v2, :cond_2

    .line 772
    if-nez v3, :cond_3

    .line 774
    const/4 v4, 0x1

    goto :goto_2

    .line 779
    :cond_2
    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 781
    const/4 v4, 0x1

    .line 784
    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 786
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_4
    const/4 v5, 0x0

    .line 794
    :try_start_2
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbj:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 801
    goto :goto_3

    .line 797
    :catch_2
    move-exception v6

    .line 799
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 803
    :goto_3
    const/4 v6, 0x0

    .line 806
    :try_start_3
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbj:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    .line 813
    goto :goto_4

    .line 809
    :catch_3
    move-exception v7

    .line 811
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 815
    :goto_4
    if-nez v5, :cond_5

    .line 817
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "CRL authority key identifier is null."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_5
    if-nez v6, :cond_6

    .line 822
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Delta CRL authority key identifier is null."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_6
    invoke-virtual {v5, v6}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 827
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_7
    return-void
.end method

.method protected static ˊ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 1

    .line 841
    invoke-virtual {p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->ti()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 843
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 845
    :cond_0
    return-void
.end method

.method protected static ˊ(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 11

    .line 103
    const/4 v3, 0x0

    .line 106
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbe:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ɹ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 112
    goto :goto_0

    .line 109
    :catch_0
    move-exception v4

    .line 111
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Issuing distribution point extension could not be decoded."

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 115
    :goto_0
    if-eqz v3, :cond_12

    .line 117
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ht()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 120
    invoke-static {v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ɹ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ht()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v4

    .line 121
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/DistributionPointName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->＿(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v6

    .line 126
    const/4 v7, 0x0

    :goto_1
    array-length v0, v6

    if-ge v7, v0, :cond_0

    .line 128
    aget-object v0, v6, v7

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 131
    :cond_0
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 133
    new-instance v6, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 136
    :try_start_1
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˋ(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v7

    .line 139
    :goto_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 147
    :cond_1
    goto :goto_3

    .line 144
    :catch_1
    move-exception v7

    .line 146
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Could not read CRL issuer."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 148
    :goto_3
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/DistributionPointName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v6}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/X509Name;->ᙆ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x509/X509Name;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_2
    const/4 v6, 0x0

    .line 154
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->ht()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 156
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->ht()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v4

    .line 157
    const/4 v7, 0x0

    .line 158
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v0

    if-nez v0, :cond_3

    .line 160
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/DistributionPointName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->＿(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v7

    .line 162
    :cond_3
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 164
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->hv()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->hv()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v7

    goto :goto_4

    .line 170
    :cond_4
    const/4 v0, 0x1

    new-array v7, v0, [Lorg/spongycastle/asn1/x509/GeneralName;

    .line 173
    :try_start_2
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    new-instance v1, Lorg/spongycastle/asn1/x509/X509Name;

    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ﻨ(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x509/X509Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x509/X509Name;)V

    const/4 v1, 0x0

    aput-object v0, v7, v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 180
    goto :goto_4

    .line 177
    :catch_2
    move-exception v8

    .line 179
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Could not read certificate issuer."

    invoke-direct {v0, v1, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 182
    :goto_4
    const/4 v8, 0x0

    :goto_5
    array-length v0, v7

    if-ge v8, v0, :cond_6

    .line 184
    aget-object v0, v7, v8

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v9

    .line 185
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v10, v0

    .line 186
    :goto_6
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v10, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_6

    .line 190
    :cond_5
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/DistributionPointName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 191
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    new-instance v1, Lorg/spongycastle/asn1/x509/X509Name;

    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v10}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x509/X509Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x509/X509Name;)V

    aput-object v0, v7, v8

    .line 182
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 194
    :cond_6
    if-eqz v7, :cond_8

    .line 196
    const/4 v8, 0x0

    :goto_7
    array-length v0, v7

    if-ge v8, v0, :cond_8

    .line 198
    aget-object v0, v7, v8

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    const/4 v6, 0x1

    .line 201
    goto :goto_8

    .line 196
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 205
    :cond_8
    :goto_8
    if-nez v6, :cond_9

    .line 207
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_9
    goto :goto_b

    .line 216
    :cond_a
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->hv()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-nez v0, :cond_b

    .line 218
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_b
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->hv()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v7

    .line 222
    const/4 v8, 0x0

    :goto_9
    array-length v0, v7

    if-ge v8, v0, :cond_d

    .line 224
    aget-object v0, v7, v8

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 226
    const/4 v6, 0x1

    .line 227
    goto :goto_a

    .line 222
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 230
    :cond_d
    :goto_a
    if-nez v6, :cond_e

    .line 232
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_e
    :goto_b
    const/4 v4, 0x0

    .line 240
    move-object v0, p1

    :try_start_3
    check-cast v0, Ljava/security/cert/X509Extension;

    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baY:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->ᵤ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    .line 246
    goto :goto_c

    .line 243
    :catch_3
    move-exception v5

    .line 245
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Basic constraints extension could not be decoded."

    invoke-direct {v0, v1, v5}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 248
    :goto_c
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_11

    .line 251
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->hF()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/BasicConstraints;->gZ()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 253
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "CA Cert CRL only contains user certificates."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_f
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->hG()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/BasicConstraints;->gZ()Z

    move-result v0

    if-nez v0, :cond_11

    .line 259
    :cond_10
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "End CRL only contains CA certificates."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_11
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->hI()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 266
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_12
    return-void
.end method

.method private static ˊ(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    .locals 17

    .line 1738
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1739
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1741
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Validation time is in future."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1752
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v6, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;

    move-result-object v7

    .line 1753
    const/4 v8, 0x0

    .line 1754
    const/4 v9, 0x0

    .line 1755
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1757
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p7 .. p7}, Lorg/spongycastle/jce/provider/ReasonsMask;->oY()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1761
    :try_start_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    move-object v11, v0

    .line 1764
    move-object/from16 v0, p0

    invoke-static {v11, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/X509CRL;Lorg/spongycastle/asn1/x509/DistributionPoint;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v12

    .line 1772
    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Lorg/spongycastle/jce/provider/ReasonsMask;->ˎ(Lorg/spongycastle/jce/provider/ReasonsMask;)Z
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 1774
    goto :goto_0

    .line 1778
    :cond_1
    move-object v0, v11

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move-object/from16 v5, p8

    :try_start_1
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;

    move-result-object v13

    .line 1781
    invoke-static {v11, v13}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v14

    .line 1783
    const/4 v15, 0x0

    .line 1785
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->ti()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1788
    move-object/from16 v0, p1

    invoke-static {v6, v0, v11}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/util/Date;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v16

    .line 1791
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v15

    .line 1807
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tj()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 1814
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v11}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 1816
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "No valid CRL for current time found."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1820
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˋ(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1823
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1826
    move-object/from16 v0, p1

    invoke-static {v15, v11, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 1829
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    invoke-static {v0, v15, v1, v2, v3}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 1832
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-static {v0, v11, v1, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˋ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 1835
    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 1837
    move-object/from16 v0, p6

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/CertStatus;->כּ(I)V

    .line 1841
    :cond_4
    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Lorg/spongycastle/jce/provider/ReasonsMask;->ˊ(Lorg/spongycastle/jce/provider/ReasonsMask;)V

    .line 1843
    invoke-virtual {v11}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v16

    .line 1844
    if-eqz v16, :cond_5

    .line 1846
    new-instance v0, Ljava/util/HashSet;

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v16, v0

    .line 1847
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1848
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1850
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1852
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "CRL contains unsupported critical extensions."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1856
    :cond_5
    if-eqz v15, :cond_6

    .line 1858
    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v16

    .line 1859
    if-eqz v16, :cond_6

    .line 1861
    new-instance v0, Ljava/util/HashSet;

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v16, v0

    .line 1862
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1863
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1864
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1866
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Delta CRL contains unsupported critical extension."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1871
    :cond_6
    const/4 v8, 0x1

    .line 1876
    goto/16 :goto_0

    .line 1873
    :catch_0
    move-exception v11

    .line 1875
    move-object v9, v11

    .line 1876
    goto/16 :goto_0

    .line 1878
    :cond_7
    if-nez v8, :cond_8

    .line 1880
    throw v9

    .line 1882
    :cond_8
    return-void
.end method

.method protected static ˊ(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    .locals 18

    .line 1906
    const/4 v9, 0x0

    .line 1907
    const/4 v10, 0x0

    .line 1910
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbi:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->ⁿ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1916
    goto :goto_0

    .line 1913
    :catch_0
    move-exception v11

    .line 1915
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "CRL distribution point extension could not be read."

    invoke-direct {v0, v1, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1919
    :goto_0
    move-object/from16 v0, p0

    :try_start_1
    invoke-static {v10, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/asn1/x509/CRLDistPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1925
    goto :goto_1

    .line 1921
    :catch_1
    move-exception v11

    .line 1923
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v0, v1, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1926
    :goto_1
    new-instance v11, Lorg/spongycastle/jce/provider/CertStatus;

    invoke-direct {v11}, Lorg/spongycastle/jce/provider/CertStatus;-><init>()V

    .line 1927
    new-instance v12, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-direct {v12}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>()V

    .line 1929
    const/4 v13, 0x0

    .line 1931
    if-eqz v10, :cond_0

    .line 1933
    const/4 v14, 0x0

    .line 1936
    :try_start_2
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->hb()[Lorg/spongycastle/asn1/x509/DistributionPoint;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v14

    .line 1941
    goto :goto_2

    .line 1938
    :catch_2
    move-exception v15

    .line 1940
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Distribution points could not be read."

    invoke-direct {v0, v1, v15}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1942
    :goto_2
    if-eqz v14, :cond_0

    .line 1944
    const/4 v15, 0x0

    :goto_3
    array-length v0, v14

    if-ge v15, v0, :cond_0

    invoke-virtual {v11}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-virtual {v12}, Lorg/spongycastle/jce/provider/ReasonsMask;->oY()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1946
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-object/from16 v16, v0

    .line 1949
    :try_start_3
    aget-object v0, v14, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v11

    move-object v7, v12

    move-object/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1950
    const/4 v13, 0x1

    .line 1955
    goto :goto_4

    .line 1952
    :catch_3
    move-exception v17

    .line 1954
    move-object/from16 v9, v17

    .line 1944
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1966
    :cond_0
    invoke-virtual {v11}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    invoke-virtual {v12}, Lorg/spongycastle/jce/provider/ReasonsMask;->oY()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1975
    const/4 v14, 0x0

    .line 1978
    :try_start_4
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-static/range {p1 .. p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ﻨ(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v14

    .line 1984
    goto :goto_5

    .line 1981
    :catch_4
    move-exception v15

    .line 1983
    :try_start_5
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v0, v1, v15}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1985
    :goto_5
    new-instance v15, Lorg/spongycastle/asn1/x509/DistributionPoint;

    new-instance v0, Lorg/spongycastle/asn1/x509/DistributionPointName;

    new-instance v1, Lorg/spongycastle/asn1/x509/GeneralNames;

    new-instance v2, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v14}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>(Lorg/spongycastle/asn1/x509/GeneralName;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/x509/DistributionPointName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v15, v0, v1, v2}, Lorg/spongycastle/asn1/x509/DistributionPoint;-><init>(Lorg/spongycastle/asn1/x509/DistributionPointName;Lorg/spongycastle/asn1/x509/ReasonFlags;Lorg/spongycastle/asn1/x509/GeneralNames;)V

    .line 1987
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-object/from16 v16, v0

    .line 1988
    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v11

    move-object v7, v12

    move-object/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1990
    const/4 v13, 0x1

    .line 1995
    goto :goto_6

    .line 1992
    :catch_5
    move-exception v14

    .line 1994
    move-object v9, v14

    .line 1998
    :cond_1
    :goto_6
    if-nez v13, :cond_3

    .line 2000
    instance-of v0, v9, Lorg/spongycastle/jce/provider/AnnotatedException;

    if-eqz v0, :cond_2

    .line 2002
    throw v9

    .line 2005
    :cond_2
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "No valid CRL found."

    invoke-direct {v0, v1, v9}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2007
    :cond_3
    invoke-virtual {v11}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    .line 2009
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2010
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate revocation after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Lorg/spongycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbl:[Ljava/lang/String;

    invoke-virtual {v11}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2013
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    invoke-direct {v0, v15}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2015
    :cond_4
    invoke-virtual {v12}, Lorg/spongycastle/jce/provider/ReasonsMask;->oY()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v11}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    .line 2017
    const/16 v0, 0xc

    invoke-virtual {v11, v0}, Lorg/spongycastle/jce/provider/CertStatus;->כּ(I)V

    .line 2019
    :cond_5
    invoke-virtual {v11}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    .line 2021
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Certificate status could not be determined."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2023
    :cond_6
    return-void
.end method

.method protected static ˋ(Ljava/security/cert/CertPath;II)I
    .locals 8

    .line 1594
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 1595
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .line 1599
    const/4 v4, 0x0

    .line 1602
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbg:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1609
    goto :goto_0

    .line 1605
    :catch_0
    move-exception v5

    .line 1607
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy constraints extension cannot be decoded."

    invoke-direct {v0, v1, v5, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1613
    :goto_0
    if-eqz v4, :cond_2

    .line 1615
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v6

    .line 1617
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1621
    :try_start_1
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v7

    .line 1622
    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1624
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lorg/spongycastle/asn1/ASN1Integer;->ˋ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 1625
    if-ge v5, p2, :cond_0

    .line 1627
    return v5

    .line 1629
    :cond_0
    goto :goto_2

    .line 1636
    :cond_1
    goto :goto_1

    .line 1632
    :catch_1
    move-exception v7

    .line 1634
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v0, v1, v7, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1639
    :cond_2
    :goto_2
    return p2
.end method

.method protected static ˋ(Ljava/security/cert/CertPath;I)V
    .locals 6

    .line 2065
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2066
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .line 2070
    const/4 v4, 0x0

    .line 2073
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baY:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->ᵤ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2080
    goto :goto_0

    .line 2076
    :catch_0
    move-exception v5

    .line 2078
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Basic constraints extension cannot be decoded."

    invoke-direct {v0, v1, v5, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2081
    :goto_0
    if-eqz v4, :cond_0

    .line 2083
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/BasicConstraints;->gZ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2085
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Not a CA certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2090
    :cond_0
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2092
    :cond_1
    return-void
.end method

.method protected static ˋ(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 9

    .line 1648
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 1649
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .line 1653
    const/4 v4, 0x0

    .line 1656
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbb:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v5

    .line 1658
    if-eqz v5, :cond_0

    .line 1660
    invoke-static {v5}, Lorg/spongycastle/asn1/x509/NameConstraints;->ϊ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/NameConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1667
    :cond_0
    goto :goto_0

    .line 1663
    :catch_0
    move-exception v5

    .line 1665
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Name constraints extension could not be decoded."

    invoke-direct {v0, v1, v5, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1668
    :goto_0
    if-eqz v4, :cond_2

    .line 1674
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/NameConstraints;->hK()[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v5

    .line 1675
    if-eqz v5, :cond_1

    .line 1679
    :try_start_1
    invoke-virtual {p2, v5}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ([Lorg/spongycastle/asn1/x509/GeneralSubtree;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1685
    goto :goto_1

    .line 1681
    :catch_1
    move-exception v6

    .line 1683
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v0, v1, v6, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1691
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/NameConstraints;->hL()[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v6

    .line 1692
    if-eqz v6, :cond_2

    .line 1694
    const/4 v7, 0x0

    :goto_2
    array-length v0, v6

    if-eq v7, v0, :cond_2

    .line 1697
    :try_start_2
    aget-object v0, v6, v7

    invoke-virtual {p2, v0}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Lorg/spongycastle/asn1/x509/GeneralSubtree;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1703
    goto :goto_3

    .line 1699
    :catch_2
    move-exception v8

    .line 1701
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v0, v1, v8, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1694
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1706
    :cond_2
    return-void
.end method

.method protected static ˋ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V
    .locals 2

    .line 854
    invoke-virtual {p3}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 856
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 858
    :cond_0
    return-void
.end method

.method protected static ˋ(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 9

    .line 290
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbe:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 291
    const/4 v3, 0x0

    .line 292
    if-eqz v2, :cond_0

    .line 294
    invoke-static {v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ɹ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->hH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const/4 v3, 0x1

    .line 299
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˋ(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    .line 301
    const/4 v5, 0x0

    .line 302
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->hv()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 304
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->hv()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v6

    .line 305
    const/4 v7, 0x0

    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_3

    .line 307
    aget-object v0, v6, v7

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 311
    :try_start_0
    aget-object v0, v6, v7

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v4}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    const/4 v5, 0x1

    .line 320
    :cond_1
    goto :goto_1

    .line 316
    :catch_0
    move-exception v8

    .line 318
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v0, v1, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 305
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 323
    :cond_3
    if-eqz v5, :cond_4

    if-nez v3, :cond_4

    .line 325
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_4
    if-nez v5, :cond_5

    .line 329
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_5
    goto :goto_2

    .line 334
    :cond_6
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˋ(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ﻨ(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 337
    const/4 v5, 0x1

    .line 340
    :cond_7
    :goto_2
    if-nez v5, :cond_8

    .line 342
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_8
    return-void
.end method

.method protected static ˎ(Ljava/security/cert/CertPath;II)I
    .locals 6

    .line 2031
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2032
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .line 2036
    const/4 v4, 0x0

    .line 2039
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbd:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2046
    goto :goto_0

    .line 2042
    :catch_0
    move-exception v5

    .line 2044
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v0, v1, v5, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2048
    :goto_0
    if-eqz v4, :cond_0

    .line 2050
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 2052
    if-ge v5, p2, :cond_0

    .line 2054
    return v5

    .line 2057
    :cond_0
    return p2
.end method

.method protected static ˎ(Ljava/security/cert/CertPath;I)V
    .locals 6

    .line 2162
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    .line 2163
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    .line 2168
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v5

    .line 2170
    if-eqz v5, :cond_0

    const/4 v0, 0x5

    aget-boolean v0, v5, v0

    if-nez v0, :cond_0

    .line 2172
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Issuer certificate keyusage extension is critical and does not permit key signing."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2176
    :cond_0
    return-void
.end method

.method protected static ˏ(Ljava/security/cert/CertPath;II)I
    .locals 5

    .line 2100
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    .line 2101
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    .line 2105
    invoke-static {v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ʽ(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2107
    if-gtz p2, :cond_0

    .line 2109
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Max path length not greater than zero"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2112
    :cond_0
    add-int/lit8 v0, p2, -0x1

    return v0

    .line 2114
    :cond_1
    return p2
.end method

.method protected static ͺ(Ljava/security/cert/CertPath;II)I
    .locals 9

    .line 2314
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2315
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .line 2320
    const/4 v5, 0x0

    .line 2323
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbg:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2329
    goto :goto_0

    .line 2326
    :catch_0
    move-exception v6

    .line 2328
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy constraints could not be decoded."

    invoke-direct {v0, v1, v6, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2330
    :goto_0
    if-eqz v5, :cond_1

    .line 2332
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v6

    .line 2334
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2336
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-object v7, v0

    .line 2337
    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    .line 2342
    :sswitch_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v7, v0}, Lorg/spongycastle/asn1/ASN1Integer;->ˋ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 2349
    goto :goto_2

    .line 2344
    :catch_1
    move-exception v8

    .line 2346
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy constraints requireExplicitPolicy field could not be decoded."

    invoke-direct {v0, v1, v8, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2350
    :goto_2
    if-nez v4, :cond_0

    .line 2352
    const/4 v0, 0x0

    return v0

    .line 2356
    :cond_0
    :goto_3
    goto :goto_1

    .line 2358
    :cond_1
    return p2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected static ᐝ(Ljava/security/cert/CertPath;II)I
    .locals 7

    .line 2123
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2124
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .line 2129
    const/4 v4, 0x0

    .line 2132
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->baY:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->ᵤ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2139
    goto :goto_0

    .line 2135
    :catch_0
    move-exception v5

    .line 2137
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Basic constraints extension cannot be decoded."

    invoke-direct {v0, v1, v5, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2140
    :goto_0
    if-eqz v4, :cond_0

    .line 2142
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/BasicConstraints;->ha()Ljava/math/BigInteger;

    move-result-object v5

    .line 2144
    if-eqz v5, :cond_0

    .line 2146
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 2148
    if-ge v6, p2, :cond_0

    .line 2150
    return v6

    .line 2154
    :cond_0
    return p2
.end method
