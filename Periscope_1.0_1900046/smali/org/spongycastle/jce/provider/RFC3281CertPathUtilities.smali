.class Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bbJ:Ljava/lang/String;

.field private static final bbK:Ljava/lang/String;

.field private static final bbL:Ljava/lang/String;

.field private static final bbi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->bbJ:Ljava/lang/String;

    .line 52
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->bbK:Ljava/lang/String;

    .line 55
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->bbi:Ljava/lang/String;

    .line 58
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBG:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->bbL:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static ˊ(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 4

    .line 370
    const/4 v2, 0x0

    .line 373
    const-string v0, "PKIX"

    const-string v1, "SC"

    :try_start_0
    invoke-static {v0, v1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 384
    goto :goto_0

    .line 375
    :catch_0
    move-exception v3

    .line 377
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Support class could not be created."

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 380
    :catch_1
    move-exception v3

    .line 382
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Support class could not be created."

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 387
    :goto_0
    :try_start_1
    invoke-virtual {v2, p0, p1}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    return-object v0

    .line 389
    :catch_2
    move-exception v3

    .line 391
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Certification path for issuer certificate of attribute certificate could not be validated."

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 395
    :catch_3
    move-exception v3

    .line 398
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static ˊ(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    .locals 17

    .line 573
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    return-void

    .line 577
    :cond_0
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 578
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 580
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Validation time is in future."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v6, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;

    move-result-object v7

    .line 593
    const/4 v8, 0x0

    .line 594
    const/4 v9, 0x0

    .line 595
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 599
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p5 .. p5}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/jce/provider/ReasonsMask;->oY()Z

    move-result v0

    if-nez v0, :cond_6

    .line 603
    :try_start_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    move-object v11, v0

    .line 606
    move-object/from16 v0, p0

    invoke-static {v11, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/X509CRL;Lorg/spongycastle/asn1/x509/DistributionPoint;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v12

    .line 615
    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Lorg/spongycastle/jce/provider/ReasonsMask;->ˎ(Lorg/spongycastle/jce/provider/ReasonsMask;)Z
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 617
    goto :goto_0

    .line 621
    :cond_2
    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;

    move-result-object v13

    .line 624
    invoke-static {v11, v13}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v14

    .line 626
    const/4 v15, 0x0

    .line 628
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->ti()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 631
    move-object/from16 v0, p2

    invoke-static {v6, v0, v11}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/util/Date;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v16

    .line 635
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v15

    .line 652
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tj()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 659
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/x509/X509AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v11}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 662
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "No valid CRL for current time found."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˋ(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 670
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 673
    move-object/from16 v0, p2

    invoke-static {v15, v11, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 676
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    invoke-static {v0, v15, v1, v2, v3}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˊ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 680
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-static {v0, v11, v1, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ˋ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 684
    invoke-virtual/range {p5 .. p5}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 686
    move-object/from16 v0, p5

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/CertStatus;->כּ(I)V

    .line 690
    :cond_5
    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Lorg/spongycastle/jce/provider/ReasonsMask;->ˊ(Lorg/spongycastle/jce/provider/ReasonsMask;)V
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 691
    const/4 v8, 0x1

    .line 696
    goto/16 :goto_0

    .line 693
    :catch_0
    move-exception v11

    .line 695
    move-object v9, v11

    .line 696
    goto/16 :goto_0

    .line 698
    :cond_6
    if-nez v8, :cond_7

    .line 700
    throw v9

    .line 702
    :cond_7
    return-void
.end method

.method protected static ˊ(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 5

    .line 69
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    .line 74
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->bbJ:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->bbJ:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/TargetInformation;->า(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TargetInformation;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    goto :goto_0

    .line 81
    :catch_0
    move-exception v4

    .line 83
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Target information extension could not be read."

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 86
    :catch_1
    move-exception v4

    .line 88
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Target information extension could not be read."

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 92
    :cond_0
    :goto_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->bbJ:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p3}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tr()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 94
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/PKIXAttrCertChecker;

    invoke-virtual {v0, p0, p1, p2, v3}, Lorg/spongycastle/x509/PKIXAttrCertChecker;->ˊ(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Ljava/util/Collection;)V

    goto :goto_1

    .line 99
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute certificate contains unsupported critical extensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    return-void
.end method

.method protected static ˊ(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 5

    .line 284
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tq()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 285
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 288
    invoke-interface {p0, v4}, Lorg/spongycastle/x509/X509AttributeCertificate;->ڊ(Ljava/lang/String;)[Lorg/spongycastle/x509/X509Attribute;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute certificate contains prohibited attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tp()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 296
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 299
    invoke-interface {p0, v4}, Lorg/spongycastle/x509/X509AttributeCertificate;->ڊ(Ljava/lang/String;)[Lorg/spongycastle/x509/X509Attribute;

    move-result-object v0

    if-nez v0, :cond_2

    .line 301
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute certificate does not contain necessary attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_2
    goto :goto_1

    .line 306
    :cond_3
    return-void
.end method

.method protected static ˊ(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)V
    .locals 16

    .line 126
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 129
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->bbK:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_7

    .line 131
    const/4 v8, 0x0

    .line 134
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->bbi:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->ⁿ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 142
    goto :goto_0

    .line 137
    :catch_0
    move-exception v9

    .line 139
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "CRL distribution point extension could not be read."

    invoke-direct {v0, v1, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 145
    :goto_0
    move-object/from16 v0, p1

    :try_start_1
    invoke-static {v8, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/asn1/x509/CRLDistPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    goto :goto_1

    .line 149
    :catch_1
    move-exception v9

    .line 151
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v0, v1, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 155
    :goto_1
    new-instance v9, Lorg/spongycastle/jce/provider/CertStatus;

    invoke-direct {v9}, Lorg/spongycastle/jce/provider/CertStatus;-><init>()V

    .line 156
    new-instance v10, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-direct {v10}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>()V

    .line 158
    const/4 v11, 0x0

    .line 159
    const/4 v12, 0x0

    .line 161
    if-eqz v8, :cond_1

    .line 163
    const/4 v13, 0x0

    .line 166
    :try_start_2
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->hb()[Lorg/spongycastle/asn1/x509/DistributionPoint;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v13

    .line 172
    goto :goto_2

    .line 168
    :catch_2
    move-exception v14

    .line 170
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Distribution points could not be read."

    invoke-direct {v0, v1, v14}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 175
    :goto_2
    const/4 v14, 0x0

    .line 177
    :goto_3
    :try_start_3
    array-length v0, v13

    if-ge v14, v0, :cond_0

    invoke-virtual {v9}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-virtual {v10}, Lorg/spongycastle/jce/provider/ReasonsMask;->oY()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-object v15, v0

    .line 181
    aget-object v0, v13, v14

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v9

    move-object v6, v10

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v7}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->ˊ(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 184
    const/4 v12, 0x1

    .line 177
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 191
    :cond_0
    goto :goto_4

    .line 187
    :catch_3
    move-exception v14

    .line 189
    new-instance v11, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v0, "No valid CRL for distribution point found."

    invoke-direct {v11, v0, v14}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    :cond_1
    :goto_4
    invoke-virtual {v9}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    invoke-virtual {v10}, Lorg/spongycastle/jce/provider/ReasonsMask;->oY()Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    const/4 v13, 0x0

    .line 214
    :try_start_4
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-interface/range {p0 .. p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->ty()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v13

    .line 224
    goto :goto_5

    .line 219
    :catch_4
    move-exception v14

    .line 221
    :try_start_5
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v0, v1, v14}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 225
    :goto_5
    new-instance v14, Lorg/spongycastle/asn1/x509/DistributionPoint;

    new-instance v0, Lorg/spongycastle/asn1/x509/DistributionPointName;

    new-instance v1, Lorg/spongycastle/asn1/x509/GeneralNames;

    new-instance v2, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v13}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>(Lorg/spongycastle/asn1/x509/GeneralName;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/x509/DistributionPointName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v14, v0, v1, v2}, Lorg/spongycastle/asn1/x509/DistributionPoint;-><init>(Lorg/spongycastle/asn1/x509/DistributionPointName;Lorg/spongycastle/asn1/x509/ReasonFlags;Lorg/spongycastle/asn1/x509/GeneralNames;)V

    .line 229
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-object v15, v0

    .line 231
    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v9

    move-object v6, v10

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v7}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->ˊ(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 233
    const/4 v12, 0x1

    .line 239
    goto :goto_6

    .line 235
    :catch_5
    move-exception v13

    .line 237
    new-instance v11, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v0, "No valid CRL for distribution point found."

    invoke-direct {v11, v0, v13}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :cond_2
    :goto_6
    if-nez v12, :cond_3

    .line 244
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "No valid CRL found."

    invoke-direct {v0, v1, v11}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 247
    :cond_3
    invoke-virtual {v9}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute certificate revocation after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lorg/spongycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbl:[Ljava/lang/String;

    invoke-virtual {v9}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 254
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v0, v13}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_4
    invoke-virtual {v10}, Lorg/spongycastle/jce/provider/ReasonsMask;->oY()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v9}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    .line 259
    const/16 v0, 0xc

    invoke-virtual {v9, v0}, Lorg/spongycastle/jce/provider/CertStatus;->כּ(I)V

    .line 261
    :cond_5
    invoke-virtual {v9}, Lorg/spongycastle/jce/provider/CertStatus;->oV()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    .line 263
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Attribute certificate status could not be determined."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_6
    goto :goto_7

    .line 270
    :cond_7
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->bbi:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->bbL:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_9

    .line 273
    :cond_8
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "No rev avail extension is set, but also an AC revocation pointer."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_9
    :goto_7
    return-void
.end method

.method protected static ˋ(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 6

    .line 331
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->to()Ljava/util/Set;

    move-result-object v2

    .line 332
    const/4 v3, 0x0

    .line 333
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    move-object v5, v0

    .line 336
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    const-string v1, "RFC2253"

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    :cond_0
    const/4 v3, 0x1

    .line 342
    :cond_1
    goto :goto_0

    .line 343
    :cond_2
    if-nez v3, :cond_3

    .line 345
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Attribute certificate issuer is not directly trusted."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_3
    return-void
.end method

.method protected static ˋ(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 3

    .line 313
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    goto :goto_0

    .line 316
    :catch_0
    move-exception v2

    .line 318
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Attribute certificate is not valid."

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 321
    :catch_1
    move-exception v2

    .line 323
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Attribute certificate is not valid."

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 326
    :goto_0
    return-void
.end method

.method protected static ˎ(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/security/cert/CertPath;
    .locals 10

    .line 423
    const/4 v2, 0x0

    .line 425
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 426
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->tv()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    new-instance v4, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v4}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 429
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->tv()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 430
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->tv()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v5

    .line 431
    const/4 v6, 0x0

    :goto_0
    array-length v0, v5

    if-ge v6, v0, :cond_1

    .line 435
    :try_start_0
    aget-object v0, v5, v6

    instance-of v0, v0, Ljavax/security/auth/x500/X500Principal;

    if-eqz v0, :cond_0

    .line 437
    aget-object v0, v5, v6

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/spongycastle/x509/X509CertStoreSelector;->setIssuer([B)V

    .line 440
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tl()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 453
    goto :goto_1

    .line 443
    :catch_0
    move-exception v7

    .line 445
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Public key certificate for attribute certificate cannot be searched."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 449
    :catch_1
    move-exception v7

    .line 451
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Unable to encode X500 principal."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 431
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 455
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Public key certificate specified in base certificate ID for attribute certificate cannot be found."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_2
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->tv()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 463
    new-instance v4, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v4}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 464
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->tv()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v5

    .line 465
    const/4 v6, 0x0

    :goto_2
    array-length v0, v5

    if-ge v6, v0, :cond_4

    .line 469
    :try_start_1
    aget-object v0, v5, v6

    instance-of v0, v0, Ljavax/security/auth/x500/X500Principal;

    if-eqz v0, :cond_3

    .line 471
    aget-object v0, v5, v6

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/spongycastle/x509/X509CertStoreSelector;->setIssuer([B)V

    .line 474
    :cond_3
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tl()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 487
    goto :goto_3

    .line 477
    :catch_2
    move-exception v7

    .line 479
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Public key certificate for attribute certificate cannot be searched."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 483
    :catch_3
    move-exception v7

    .line 485
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Unable to encode X500 principal."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 465
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 489
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 491
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Public key certificate specified in entity name for attribute certificate cannot be found."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_5
    invoke-static {p1}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->ˎ(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    move-object v4, v0

    .line 498
    const/4 v5, 0x0

    .line 499
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 501
    new-instance v7, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v7}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 502
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v7, v0}, Lorg/spongycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 503
    invoke-virtual {v4, v7}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->ˎ(Lorg/spongycastle/util/Selector;)V

    .line 504
    const/4 v8, 0x0

    .line 507
    const-string v0, "PKIX"

    const-string v1, "SC"

    :try_start_2
    invoke-static {v0, v1}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
    :try_end_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v8

    .line 518
    goto :goto_5

    .line 509
    :catch_4
    move-exception v9

    .line 511
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Support class could not be created."

    invoke-direct {v0, v1, v9}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 514
    :catch_5
    move-exception v9

    .line 516
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Support class could not be created."

    invoke-direct {v0, v1, v9}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 521
    :goto_5
    :try_start_3
    invoke-static {v4}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->ˎ(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v0

    move-object v2, v0

    .line 534
    goto :goto_6

    .line 524
    :catch_6
    move-exception v9

    .line 526
    new-instance v5, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v0, "Certification path for public key certificate of attribute certificate could not be build."

    invoke-direct {v5, v0, v9}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 534
    goto :goto_6

    .line 530
    :catch_7
    move-exception v9

    .line 533
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v9}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :goto_6
    goto/16 :goto_4

    .line 536
    :cond_6
    if-eqz v5, :cond_7

    .line 538
    throw v5

    .line 540
    :cond_7
    invoke-interface {v2}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method protected static ˎ(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 2

    .line 353
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Attribute certificate issuer public key cannot be used to validate digital signatures."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 361
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Attribute certificate issuer is also a public key certificate issuer."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    return-void
.end method
