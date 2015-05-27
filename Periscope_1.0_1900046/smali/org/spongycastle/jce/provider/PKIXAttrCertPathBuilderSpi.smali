.class public Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source ""


# instance fields
.field private bbs:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method

.method private ˊ(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .locals 10

    .line 171
    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_0
    invoke-virtual {p3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->th()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_1
    invoke-virtual {p3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 184
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_2
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    const/4 v6, 0x0

    .line 198
    const-string v0, "X.509"

    const-string v1, "SC"

    :try_start_0
    invoke-static {v0, v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 199
    const-string v0, "RFC3281"

    const-string v1, "SC"

    invoke-static {v0, v1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 206
    goto :goto_0

    .line 201
    :catch_0
    move-exception v7

    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception creating support classes."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    if-eqz v0, :cond_3

    .line 218
    :try_start_2
    invoke-virtual {v4, p4}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v7

    .line 225
    goto :goto_1

    .line 220
    :catch_1
    move-exception v9

    .line 222
    :try_start_3
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Certification path could not be constructed from certificate list."

    invoke-direct {v0, v1, v9}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_5

    .line 229
    :goto_1
    :try_start_4
    invoke-virtual {v5, v7, p3}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_5

    move-object v8, v0

    .line 237
    goto :goto_2

    .line 232
    :catch_2
    move-exception v9

    .line 234
    :try_start_5
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Certification path could not be validated."

    invoke-direct {v0, v1, v9}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 239
    :goto_2
    new-instance v0, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {v8}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v1

    invoke-virtual {v8}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v2

    invoke-virtual {v8}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v0, v7, v1, v2, v3}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_5

    return-object v0

    .line 249
    :cond_3
    :try_start_6
    invoke-static {p2, p3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    :try_end_6
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 256
    goto :goto_3

    .line 251
    :catch_3
    move-exception v7

    .line 253
    :try_start_7
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "No additional X.509 stores can be added from certificate locations."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 257
    :goto_3
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V
    :try_end_7
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_5

    .line 262
    :try_start_8
    invoke-static {p2, p3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_8
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_4

    .line 269
    goto :goto_4

    .line 264
    :catch_4
    move-exception v8

    .line 266
    :try_start_9
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v0, v1, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 270
    :goto_4
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "No issuer certificate for certificate in certification path found."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_4
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 277
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v6, :cond_6

    .line 279
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v9, v0

    .line 282
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    goto :goto_5

    .line 287
    :cond_5
    invoke-direct {p0, p1, v9, p3, p4}, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->ˊ(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_9
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_5

    move-result-object v0

    move-object v6, v0

    .line 288
    goto :goto_5

    .line 295
    :cond_6
    goto :goto_6

    .line 291
    :catch_5
    move-exception v7

    .line 293
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "No valid certification path could be build."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->bbs:Ljava/lang/Exception;

    .line 296
    :goto_6
    if-nez v6, :cond_7

    .line 298
    invoke-interface {p4, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 300
    :cond_7
    return-object v6
.end method


# virtual methods
.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 15

    .line 47
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/cert/PKIXBuilderParameters;

    if-nez v0, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v0, :cond_1

    .line 60
    move-object/from16 v0, p1

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    move-object v3, v0

    goto :goto_0

    .line 64
    :cond_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/security/cert/PKIXBuilderParameters;

    invoke-static {v0}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->ˎ(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    move-object v3, v0

    .line 70
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {v3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->tn()Lorg/spongycastle/util/Selector;

    move-result-object v8

    .line 76
    instance-of v0, v8, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TargetConstraints must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    move-object v0, v8

    :try_start_0
    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-virtual {v3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->tl()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 91
    goto :goto_1

    .line 88
    :catch_0
    move-exception v9

    .line 90
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;

    const-string v1, "Error finding target attribute certificate."

    invoke-direct {v0, v1, v9}, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 93
    :goto_1
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    const-string v1, "No attribute certificate found matching targetContraints."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3
    const/4 v9, 0x0

    .line 102
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 103
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v9, :cond_8

    .line 105
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertificate;

    move-object v7, v0

    .line 107
    new-instance v10, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v10}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 108
    invoke-interface {v7}, Lorg/spongycastle/x509/X509AttributeCertificate;->ty()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v11

    .line 109
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 110
    const/4 v13, 0x0

    :goto_3
    array-length v0, v11

    if-ge v13, v0, :cond_5

    .line 114
    :try_start_1
    aget-object v0, v11, v13

    instance-of v0, v0, Ljavax/security/auth/x500/X500Principal;

    if-eqz v0, :cond_4

    .line 116
    aget-object v0, v11, v13

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSubject([B)V

    .line 118
    :cond_4
    invoke-virtual {v3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->tl()Ljava/util/List;

    move-result-object v0

    invoke-static {v10, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 119
    invoke-virtual {v3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v10, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 132
    goto :goto_4

    .line 121
    :catch_1
    move-exception v14

    .line 123
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;

    const-string v1, "Public key certificate for attribute certificate cannot be searched."

    invoke-direct {v0, v1, v14}, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 127
    :catch_2
    move-exception v14

    .line 129
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;

    const-string v1, "cannot encode X500Principal."

    invoke-direct {v0, v1, v14}, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 110
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 134
    :cond_5
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    const-string v1, "Public key certificate for attribute certificate cannot be found."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_6
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 140
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v9, :cond_7

    .line 142
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v7, v0, v3, v6}, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->ˊ(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v9

    goto :goto_5

    .line 144
    :cond_7
    goto/16 :goto_2

    .line 146
    :cond_8
    if-nez v9, :cond_9

    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->bbs:Ljava/lang/Exception;

    if-eqz v0, :cond_9

    .line 148
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;

    const-string v1, "Possible certificate chain could not be validated."

    iget-object v2, p0, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->bbs:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 153
    :cond_9
    if-nez v9, :cond_a

    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->bbs:Ljava/lang/Exception;

    if-nez v0, :cond_a

    .line 155
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    const-string v1, "Unable to find certificate chain."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_a
    return-object v9
.end method
