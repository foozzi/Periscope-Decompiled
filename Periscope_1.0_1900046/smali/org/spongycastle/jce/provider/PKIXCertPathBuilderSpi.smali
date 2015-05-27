.class public Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source ""


# instance fields
.field private bbs:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 10

    .line 44
    instance-of v0, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    if-nez v0, :cond_0

    .line 47
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

    .line 53
    :cond_0
    const/4 v3, 0x0

    .line 54
    instance-of v0, p1, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v0, :cond_1

    .line 56
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    move-object v3, v0

    goto :goto_0

    .line 60
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/security/cert/PKIXBuilderParameters;

    invoke-static {v0}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->ˎ(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    move-object v3, v0

    .line 66
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {v3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->tn()Lorg/spongycastle/util/Selector;

    move-result-object v8

    .line 72
    instance-of v0, v8, Lorg/spongycastle/x509/X509CertStoreSelector;

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TargetConstraints must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/spongycastle/x509/X509CertStoreSelector;

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

    .line 82
    :cond_2
    move-object v0, v8

    :try_start_0
    check-cast v0, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-virtual {v3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->tl()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v4

    .line 83
    move-object v0, v8

    check-cast v0, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-virtual {v3}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_1

    .line 85
    :catch_0
    move-exception v9

    .line 87
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;

    const-string v1, "Error finding target certificate."

    invoke-direct {v0, v1, v9}, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 91
    :goto_1
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    const-string v1, "No certificate found matching targetContraints."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_3
    const/4 v9, 0x0

    .line 101
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 102
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v9, :cond_4

    .line 104
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v7, v0

    .line 105
    invoke-virtual {p0, v7, v3, v6}, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->ˊ(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v9

    goto :goto_2

    .line 108
    :cond_4
    if-nez v9, :cond_6

    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->bbs:Ljava/lang/Exception;

    if-eqz v0, :cond_6

    .line 110
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->bbs:Ljava/lang/Exception;

    instance-of v0, v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    if-eqz v0, :cond_5

    .line 112
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->bbs:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->bbs:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 114
    :cond_5
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    const-string v1, "Possible certificate chain could not be validated."

    iget-object v2, p0, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->bbs:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 119
    :cond_6
    if-nez v9, :cond_7

    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->bbs:Ljava/lang/Exception;

    if-nez v0, :cond_7

    .line 121
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    const-string v1, "Unable to find certificate chain."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_7
    return-object v9
.end method

.method protected ˊ(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .locals 10

    .line 136
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    invoke-virtual {p2}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->th()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_1
    invoke-virtual {p2}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 149
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_2
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const/4 v6, 0x0

    .line 163
    const-string v0, "X.509"

    const-string v1, "SC"

    :try_start_0
    invoke-static {v0, v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 164
    const-string v0, "PKIX"

    const-string v1, "SC"

    invoke-static {v0, v1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 170
    goto :goto_0

    .line 166
    :catch_0
    move-exception v7

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception creating support classes."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    if-eqz v0, :cond_3

    .line 180
    const/4 v7, 0x0

    .line 181
    const/4 v8, 0x0

    .line 184
    :try_start_2
    invoke-virtual {v4, p3}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v7

    .line 191
    goto :goto_1

    .line 186
    :catch_1
    move-exception v9

    .line 188
    :try_start_3
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Certification path could not be constructed from certificate list."

    invoke-direct {v0, v1, v9}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_5

    .line 195
    :goto_1
    :try_start_4
    invoke-virtual {v5, v7, p2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_5

    move-object v8, v0

    .line 202
    goto :goto_2

    .line 198
    :catch_2
    move-exception v9

    .line 200
    :try_start_5
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Certification path could not be validated."

    invoke-direct {v0, v1, v9}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 204
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

    .line 214
    :cond_3
    :try_start_6
    invoke-static {p1, p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    :try_end_6
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 222
    goto :goto_3

    .line 217
    :catch_3
    move-exception v7

    .line 219
    :try_start_7
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "No additiontal X.509 stores can be added from certificate locations."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 223
    :goto_3
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V
    :try_end_7
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_5

    .line 228
    :try_start_8
    invoke-static {p1, p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->ˊ(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_8
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_4

    .line 235
    goto :goto_4

    .line 230
    :catch_4
    move-exception v8

    .line 232
    :try_start_9
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v0, v1, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 236
    :goto_4
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "No issuer certificate for certificate in certification path found."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_4
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 243
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v6, :cond_5

    .line 245
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v9, v0

    .line 246
    invoke-virtual {p0, v9, p2, p3}, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->ˊ(Ljava/security/cert/X509Certificate;Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_9
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_5

    move-result-object v0

    move-object v6, v0

    .line 247
    goto :goto_5

    .line 253
    :cond_5
    goto :goto_6

    .line 250
    :catch_5
    move-exception v7

    .line 252
    iput-object v7, p0, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->bbs:Ljava/lang/Exception;

    .line 254
    :goto_6
    if-nez v6, :cond_6

    .line 256
    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    :cond_6
    return-object v6
.end method
