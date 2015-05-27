.class public Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;
.super Ljava/lang/Object;
.source ""


# static fields
.field protected static final baW:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

.field protected static final baX:Ljava/lang/String;

.field protected static final baY:Ljava/lang/String;

.field protected static final baZ:Ljava/lang/String;

.field protected static final bba:Ljava/lang/String;

.field protected static final bbb:Ljava/lang/String;

.field protected static final bbc:Ljava/lang/String;

.field protected static final bbd:Ljava/lang/String;

.field protected static final bbe:Ljava/lang/String;

.field protected static final bbf:Ljava/lang/String;

.field protected static final bbg:Ljava/lang/String;

.field protected static final bbh:Ljava/lang/String;

.field protected static final bbi:Ljava/lang/String;

.field protected static final bbj:Ljava/lang/String;

.field protected static final bbk:Ljava/lang/String;

.field protected static final bbl:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/PKIXCRLUtil;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->baW:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    .line 81
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayX:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->baX:Ljava/lang/String;

    .line 82
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->baY:Ljava/lang/String;

    .line 83
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayY:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->baZ:Ljava/lang/String;

    .line 84
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->bba:Ljava/lang/String;

    .line 85
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->bbb:Ljava/lang/String;

    .line 86
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->bbc:Ljava/lang/String;

    .line 87
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->azd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->bbd:Ljava/lang/String;

    .line 88
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->bbe:Ljava/lang/String;

    .line 89
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->bbf:Ljava/lang/String;

    .line 90
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->aza:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->bbg:Ljava/lang/String;

    .line 91
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->azc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->bbh:Ljava/lang/String;

    .line 92
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayW:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->bbi:Ljava/lang/String;

    .line 93
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayZ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->bbj:Ljava/lang/String;

    .line 97
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->bbk:Ljava/lang/String;

    .line 105
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

    sput-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->bbl:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static ʼ(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .line 294
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static ʽ(Ljava/security/cert/X509Certificate;)Z
    .locals 2

    .line 299
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static ˊ(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    .locals 9

    .line 158
    const/4 v2, 0x0

    .line 159
    const/4 v3, 0x0

    .line 160
    const/4 v4, 0x0

    .line 162
    new-instance v5, Ljava/security/cert/X509CertSelector;

    invoke-direct {v5}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 163
    invoke-static {p0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ﻨ(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 167
    :try_start_0
    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_0

    .line 169
    :catch_0
    move-exception v7

    .line 171
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Cannot set subject search criteria for trust anchor."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 174
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 175
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    .line 177
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    move-object v2, v0

    .line 178
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    goto :goto_3

    .line 186
    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    .line 189
    :cond_2
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 194
    :try_start_1
    new-instance v8, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v6, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    .line 201
    :cond_3
    const/4 v2, 0x0

    .line 207
    :goto_2
    goto :goto_3

    .line 204
    :catch_1
    move-exception v8

    .line 206
    const/4 v2, 0x0

    .line 207
    goto :goto_3

    .line 211
    :cond_4
    const/4 v2, 0x0

    .line 214
    :goto_3
    if-eqz v3, :cond_0

    .line 218
    :try_start_2
    invoke-static {p0, v3, p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 225
    goto/16 :goto_1

    .line 220
    :catch_2
    move-exception v8

    .line 222
    move-object v4, v8

    .line 223
    const/4 v2, 0x0

    .line 224
    const/4 v3, 0x0

    .line 225
    goto/16 :goto_1

    .line 229
    :cond_5
    if-nez v2, :cond_6

    if-eqz v4, :cond_6

    .line 231
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "TrustAnchor found but certificate validation failed."

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 234
    :cond_6
    return-object v2
.end method

.method protected static ˊ(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;)Ljava/util/Collection;
    .locals 6

    .line 1373
    new-instance v2, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 1374
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1377
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1383
    goto :goto_0

    .line 1379
    :catch_0
    move-exception v4

    .line 1381
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Subject criteria for certificate selector to find issuer certificate could not be set."

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1389
    :goto_0
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1392
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->tl()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1393
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->tk()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1395
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1400
    goto :goto_1

    .line 1397
    :catch_1
    move-exception v5

    .line 1399
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Issuer certificate cannot be searched."

    invoke-direct {v0, v1, v5}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1402
    :goto_1
    const/4 v5, 0x0

    .line 1403
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    .line 1408
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1410
    :cond_0
    return-object v3
.end method

.method protected static ˊ(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 7

    .line 759
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 760
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 762
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 766
    instance-of v0, v4, Lorg/spongycastle/x509/X509Store;

    if-eqz v0, :cond_0

    .line 768
    move-object v0, v4

    check-cast v0, Lorg/spongycastle/x509/X509Store;

    move-object v5, v0

    .line 771
    :try_start_0
    invoke-virtual {v5, p0}, Lorg/spongycastle/x509/X509Store;->ˋ(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/spongycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    goto :goto_1

    .line 773
    :catch_0
    move-exception v6

    .line 775
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Problem while picking certificates from X.509 store."

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 779
    :cond_0
    :goto_1
    goto :goto_0

    .line 780
    :cond_1
    return-object v2
.end method

.method protected static ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 7

    .line 716
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 717
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 719
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 723
    instance-of v0, v4, Lorg/spongycastle/x509/X509Store;

    if-eqz v0, :cond_0

    .line 725
    move-object v0, v4

    check-cast v0, Lorg/spongycastle/x509/X509Store;

    move-object v5, v0

    .line 728
    :try_start_0
    invoke-virtual {v5, p0}, Lorg/spongycastle/x509/X509Store;->ˋ(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/spongycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    goto :goto_1

    .line 730
    :catch_0
    move-exception v6

    .line 732
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Problem while picking certificates from X.509 store."

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 735
    :goto_1
    goto :goto_2

    .line 738
    :cond_0
    move-object v0, v4

    check-cast v0, Ljava/security/cert/CertStore;

    move-object v5, v0

    .line 742
    :try_start_1
    invoke-virtual {v5, p0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 749
    goto :goto_2

    .line 744
    :catch_1
    move-exception v6

    .line 746
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Problem while picking certificates from certificate store."

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 751
    :goto_2
    goto :goto_0

    .line 752
    :cond_1
    return-object v2
.end method

.method protected static ˊ(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;
    .locals 1

    .line 282
    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 284
    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 289
    :cond_0
    return-object v0
.end method

.method protected static ˊ(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;
    .locals 4

    .line 1234
    invoke-virtual {p0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tj()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1237
    if-gtz p2, :cond_0

    .line 1239
    invoke-static {p0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 1244
    :cond_0
    add-int/lit8 v0, p2, -0x1

    if-nez v0, :cond_3

    .line 1246
    const/4 v2, 0x0

    .line 1249
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    sget-object v1, Lorg/spongycastle/asn1/isismtt/ISISMTTObjectIdentifiers;->amo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    .line 1250
    if-eqz v3, :cond_1

    .line 1252
    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->ᵥ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1264
    :cond_1
    goto :goto_0

    .line 1255
    :catch_0
    move-exception v3

    .line 1257
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Date of cert gen extension could not be read."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1260
    :catch_1
    move-exception v3

    .line 1262
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Date of cert gen extension could not be read."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1265
    :goto_0
    if-eqz v2, :cond_2

    .line 1269
    :try_start_1
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    return-object v0

    .line 1271
    :catch_2
    move-exception v3

    .line 1273
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Date from date of cert gen extension could not be parsed."

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1278
    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 1283
    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 1290
    :cond_4
    invoke-static {p0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected static ˊ(Ljava/util/Date;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .locals 9

    .line 1077
    new-instance v2, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 1082
    :try_start_0
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˋ(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    goto :goto_0

    .line 1085
    :catch_0
    move-exception v3

    .line 1087
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Cannot extract issuer from CRL."

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1090
    :goto_0
    const/4 v3, 0x0

    .line 1093
    :try_start_1
    sget-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->bbk:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 1095
    if-eqz v4, :cond_0

    .line 1097
    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eI()Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 1104
    :cond_0
    goto :goto_1

    .line 1100
    :catch_1
    move-exception v4

    .line 1102
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "CRL number extension could not be extracted from CRL."

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1107
    :goto_1
    const/4 v4, 0x0

    .line 1110
    :try_start_2
    sget-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->bbe:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 1117
    goto :goto_2

    .line 1112
    :catch_2
    move-exception v5

    .line 1114
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Issuing distribution point extension value could not be read."

    invoke-direct {v0, v1, v5}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1121
    :goto_2
    if-nez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 1124
    invoke-virtual {v2, v4}, Lorg/spongycastle/x509/X509CRLStoreSelector;->ᑋ([B)V

    .line 1125
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->Ӏ(Z)V

    .line 1128
    invoke-virtual {v2, v3}, Lorg/spongycastle/x509/X509CRLStoreSelector;->ᵔ(Ljava/math/BigInteger;)V

    .line 1131
    sget-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->baW:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {v0, v2, p1, p0}, Lorg/spongycastle/jce/provider/PKIXCRLUtil;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v5

    .line 1133
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1135
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1137
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    move-object v8, v0

    .line 1139
    invoke-static {v8}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˎ(Ljava/security/cert/X509CRL;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1141
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1143
    :cond_2
    goto :goto_4

    .line 1145
    :cond_3
    return-object v6
.end method

.method protected static ˊ(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;
    .locals 7

    .line 1178
    new-instance v4, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v4}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 1181
    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1182
    instance-of v0, p1, Lorg/spongycastle/x509/X509AttributeCertificate;

    if-eqz v0, :cond_0

    .line 1184
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertificate;

    invoke-interface {v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->ty()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1189
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ﻨ(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1191
    :goto_0
    invoke-static {p0, v5, v4, p3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    goto :goto_1

    .line 1193
    :catch_0
    move-exception v5

    .line 1195
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Could not get issuer information from distribution point."

    invoke-direct {v0, v1, v5}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1198
    :goto_1
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1

    .line 1200
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    goto :goto_2

    .line 1202
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/x509/X509AttributeCertificate;

    if-eqz v0, :cond_2

    .line 1204
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertificate;

    invoke-virtual {v4, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->ˊ(Lorg/spongycastle/x509/X509AttributeCertificate;)V

    .line 1208
    :cond_2
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->ײ(Z)V

    .line 1210
    sget-object v0, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->baW:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {v0, v4, p3, p2}, Lorg/spongycastle/jce/provider/PKIXCRLUtil;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v5

    .line 1212
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1214
    instance-of v0, p1, Lorg/spongycastle/x509/X509AttributeCertificate;

    if-eqz v0, :cond_3

    .line 1216
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertificate;

    move-object v6, v0

    .line 1218
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No CRLs found for issuer \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Lorg/spongycastle/x509/X509AttributeCertificate;->ty()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1222
    :cond_3
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    .line 1224
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No CRLs found for issuer \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_4
    return-object v5
.end method

.method protected static ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 315
    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 316
    if-nez v1, :cond_0

    .line 318
    const/4 v0, 0x0

    return-object v0

    .line 321
    :cond_0
    invoke-static {p1, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˎ(Ljava/lang/String;[B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method protected static ˊ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 3

    .line 412
    invoke-virtual {p2}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object v1, v0

    .line 414
    if-nez p0, :cond_0

    .line 416
    const/4 v0, 0x0

    return-object v0

    .line 419
    :cond_0
    if-nez v1, :cond_2

    .line 421
    const/4 v2, 0x0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_1

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    aput-object v0, p1, v2

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 430
    :cond_2
    invoke-virtual {v1, p2}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->ˋ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 431
    invoke-static {p1, p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ([Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 433
    return-object p0
.end method

.method protected static ˊ(Ljava/lang/String;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 6

    .line 655
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 659
    const-string v0, "ldap://"

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 666
    const/4 v3, 0x0

    .line 667
    const/4 v4, 0x0

    .line 668
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 670
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ldap://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ldap://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 680
    :goto_0
    new-instance v0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    invoke-direct {v0, v4, v3}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->oK()Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    move-result-object v5

    .line 682
    const-string v0, "CERTIFICATE/LDAP"

    const-string v1, "SC"

    invoke-static {v0, v5, v1}, Lorg/spongycastle/x509/X509Store;->ˊ(Ljava/lang/String;Lorg/spongycastle/x509/X509StoreParameters;Ljava/lang/String;)Lorg/spongycastle/x509/X509Store;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->ˊ(Lorg/spongycastle/util/Store;)V

    .line 684
    const-string v0, "CRL/LDAP"

    const-string v1, "SC"

    invoke-static {v0, v5, v1}, Lorg/spongycastle/x509/X509Store;->ˊ(Ljava/lang/String;Lorg/spongycastle/x509/X509StoreParameters;Ljava/lang/String;)Lorg/spongycastle/x509/X509Store;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->ˊ(Lorg/spongycastle/util/Store;)V

    .line 686
    const-string v0, "ATTRIBUTECERTIFICATE/LDAP"

    const-string v1, "SC"

    invoke-static {v0, v5, v1}, Lorg/spongycastle/x509/X509Store;->ˊ(Ljava/lang/String;Lorg/spongycastle/x509/X509StoreParameters;Ljava/lang/String;)Lorg/spongycastle/x509/X509Store;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->ˊ(Lorg/spongycastle/util/Store;)V

    .line 688
    const-string v0, "CERTIFICATEPAIR/LDAP"

    const-string v1, "SC"

    invoke-static {v0, v5, v1}, Lorg/spongycastle/x509/X509Store;->ˊ(Ljava/lang/String;Lorg/spongycastle/x509/X509StoreParameters;Ljava/lang/String;)Lorg/spongycastle/x509/X509Store;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->ˊ(Lorg/spongycastle/util/Store;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :cond_1
    goto :goto_1

    .line 692
    :catch_0
    move-exception v3

    .line 695
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception adding X.509 stores."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_2
    :goto_1
    return-void
.end method

.method protected static ˊ(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0

    .line 1417
    if-nez p2, :cond_0

    .line 1419
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    goto :goto_0

    .line 1423
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 1425
    :goto_0
    return-void
.end method

.method protected static ˊ(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 5

    .line 244
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 247
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 251
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 255
    invoke-static {v4, p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/lang/String;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 257
    :cond_0
    goto :goto_0

    .line 259
    :cond_1
    return-void
.end method

.method protected static ˊ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V
    .locals 8

    .line 973
    const/4 v4, 0x0

    .line 978
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/jce/provider/X509CRLObject;->ˊ(Ljava/security/cert/X509CRL;)Z
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 983
    goto :goto_0

    .line 980
    :catch_0
    move-exception v6

    .line 982
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Failed check for indirect CRL."

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 985
    :goto_0
    if-eqz v5, :cond_3

    .line 987
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ｨ(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v4

    .line 989
    if-nez v4, :cond_0

    .line 991
    return-void

    .line 994
    :cond_0
    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 996
    if-nez v6, :cond_1

    .line 998
    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˋ(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 1001
    :cond_1
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ﻨ(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1003
    return-void

    .line 1005
    :cond_2
    goto :goto_1

    .line 1006
    :cond_3
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ﻨ(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˋ(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1008
    return-void

    .line 1012
    :cond_4
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ｨ(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v4

    .line 1014
    if-nez v4, :cond_5

    .line 1016
    return-void

    .line 1020
    :cond_5
    :goto_1
    const/4 v6, 0x0

    .line 1021
    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1025
    :try_start_1
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extension;->ayP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Enumerated;->ᵛ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Enumerated;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1035
    goto :goto_2

    .line 1030
    :catch_1
    move-exception v7

    .line 1032
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Reason code CRL entry extension could not be decoded."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1040
    :cond_6
    :goto_2
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Enumerated;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Enumerated;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Enumerated;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Enumerated;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 1049
    :cond_7
    if-eqz v6, :cond_8

    .line 1051
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Enumerated;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Lorg/spongycastle/jce/provider/CertStatus;->כּ(I)V

    goto :goto_3

    .line 1056
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/spongycastle/jce/provider/CertStatus;->כּ(I)V

    .line 1058
    :goto_3
    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/spongycastle/jce/provider/CertStatus;->ˊ(Ljava/util/Date;)V

    .line 1060
    :cond_9
    return-void
.end method

.method protected static ˊ(Lorg/spongycastle/asn1/x509/CRLDistPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 8

    .line 787
    if-eqz p0, :cond_2

    .line 789
    const/4 v2, 0x0

    .line 792
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->hb()[Lorg/spongycastle/asn1/x509/DistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 798
    goto :goto_0

    .line 794
    :catch_0
    move-exception v3

    .line 796
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Distribution points could not be read."

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 799
    :goto_0
    const/4 v3, 0x0

    :goto_1
    array-length v0, v2

    if-ge v3, v0, :cond_2

    .line 801
    aget-object v0, v2, v3

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->ht()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v4

    .line 803
    if-eqz v4, :cond_1

    .line 805
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 807
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/DistributionPointName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->＿(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 810
    const/4 v6, 0x0

    :goto_2
    array-length v0, v5

    if-ge v6, v0, :cond_1

    .line 812
    aget-object v0, v5, v6

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 814
    aget-object v0, v5, v6

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERIA5String;->ˀ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v7

    .line 816
    invoke-static {v7, p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/lang/String;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 810
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 799
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 825
    :cond_2
    return-void
.end method

.method protected static ˊ(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 6

    .line 853
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->hv()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 857
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->hv()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 859
    const/4 v4, 0x0

    :goto_0
    array-length v0, v3

    if-ge v4, v0, :cond_1

    .line 861
    aget-object v0, v3, v4

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 865
    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    aget-object v1, v3, v4

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    goto :goto_1

    .line 868
    :catch_0
    move-exception v5

    .line 870
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v0, v1, v5}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 859
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 876
    :cond_1
    goto :goto_3

    .line 883
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->ht()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    if-nez v0, :cond_3

    .line 885
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "CRL issuer is omitted from distribution point but no distributionPoint field present."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 891
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 938
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 939
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 943
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 949
    goto :goto_4

    .line 945
    :catch_1
    move-exception v4

    .line 947
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Cannot decode CRL issuer information."

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 951
    :cond_5
    return-void
.end method

.method private static ˊ([Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V
    .locals 3

    .line 441
    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getDepth()I

    move-result v0

    aget-object v0, p0, v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    .line 446
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object v2, v0

    .line 449
    invoke-static {p0, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ([Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 450
    goto :goto_0

    .line 452
    :cond_0
    return-void
.end method

.method protected static ˊ(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z
    .locals 14

    .line 461
    add-int/lit8 v0, p0, -0x1

    aget-object v8, p1, v0

    .line 463
    const/4 v9, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 465
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object v10, v0

    .line 466
    invoke-virtual {v10}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v11

    .line 468
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 471
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, p0

    move-object v3, v12

    move-object v4, v10

    move-object/from16 v5, p3

    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move-object v13, v0

    .line 480
    invoke-virtual {v10, v13}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->ˊ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 481
    aget-object v0, p1, p0

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    const/4 v0, 0x1

    return v0

    .line 463
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 487
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected static ˋ(Ljava/util/List;I)Ljava/security/PublicKey;
    .locals 13

    .line 1318
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    move-object v4, v0

    .line 1319
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 1320
    instance-of v0, v5, Ljava/security/interfaces/DSAPublicKey;

    if-nez v0, :cond_0

    .line 1322
    return-object v5

    .line 1324
    :cond_0
    move-object v0, v5

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v6, v0

    .line 1325
    invoke-interface {v6}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1327
    return-object v6

    .line 1329
    :cond_1
    add-int/lit8 v7, p1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 1331
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v8, v0

    .line 1332
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 1333
    instance-of v0, v5, Ljava/security/interfaces/DSAPublicKey;

    if-nez v0, :cond_2

    .line 1335
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "DSA parameters cannot be inherited from previous certificate."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :cond_2
    move-object v0, v5

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v9, v0

    .line 1339
    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1341
    goto :goto_1

    .line 1343
    :cond_3
    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v10

    .line 1344
    new-instance v11, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v6}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v10}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v10}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v10}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v11, v0, v1, v2, v3}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1348
    const-string v0, "DSA"

    const-string v1, "SC"

    :try_start_0
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v12

    .line 1349
    invoke-virtual {v12, v11}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1351
    :catch_0
    move-exception v12

    .line 1353
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1329
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1356
    :cond_4
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "DSA parameters cannot be inherited from previous certificate."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static ˋ(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .line 345
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static ˋ(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V
    .locals 13

    .line 496
    add-int/lit8 v0, p0, -0x1

    aget-object v8, p1, v0

    .line 498
    const/4 v9, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 500
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object v10, v0

    .line 502
    const-string v0, "2.5.29.32.0"

    invoke-virtual {v10}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 505
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, p0

    move-object v3, v11

    move-object v4, v10

    move-object/from16 v5, p3

    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move-object v12, v0

    .line 514
    invoke-virtual {v10, v12}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->ˊ(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 515
    aget-object v0, p1, p0

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    return-void

    .line 498
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 519
    :cond_1
    return-void
.end method

.method protected static ˋ(Ljava/util/Set;)Z
    .locals 1

    .line 649
    if-eqz p0, :cond_0

    const-string v0, "2.5.29.32.0"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static ˎ(Ljava/lang/String;[B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 331
    :try_start_0
    new-instance v3, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v3, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 332
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    move-object v4, v0

    .line 334
    new-instance v3, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 335
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 337
    :catch_0
    move-exception v3

    .line 339
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception processing extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static ˎ(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 4

    .line 354
    :try_start_0
    new-instance v2, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 356
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->ן(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 358
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->fX()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 360
    :catch_0
    move-exception v2

    .line 362
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Subject public key cannot be decoded."

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static ˎ(Ljava/security/cert/X509CRL;)Z
    .locals 2

    .line 1150
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 1152
    if-nez v1, :cond_0

    .line 1154
    const/4 v0, 0x0

    return v0

    .line 1157
    :cond_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->bbf:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static final ˏ(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .locals 7

    .line 376
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 378
    if-nez p0, :cond_0

    .line 380
    return-object v2

    .line 383
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 384
    new-instance v4, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v4, v3}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 386
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v5

    .line 388
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :try_start_0
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 394
    new-instance v0, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    goto :goto_1

    .line 396
    :catch_0
    move-exception v6

    .line 398
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy qualifier info cannot be decoded."

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 401
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    .line 404
    :cond_1
    return-object v2
.end method

.method protected static ﻨ(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;
    .locals 2

    .line 270
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 272
    move-object v0, p0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0

    .line 276
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertificate;

    invoke-interface {v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->ty()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method private static ｨ(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1

    .line 956
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 958
    move-object v0, p0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 962
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertificate;

    invoke-interface {v0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
