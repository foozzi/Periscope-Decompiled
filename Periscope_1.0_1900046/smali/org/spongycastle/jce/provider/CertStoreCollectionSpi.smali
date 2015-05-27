.class public Lorg/spongycastle/jce/provider/CertStoreCollectionSpi;
.super Ljava/security/cert/CertStoreSpi;
.source ""


# instance fields
.field private bbo:Ljava/security/cert/CollectionCertStoreParameters;


# virtual methods
.method public engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 4

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v0, p0, Lorg/spongycastle/jce/provider/CertStoreCollectionSpi;->bbo:Ljava/security/cert/CollectionCertStoreParameters;

    invoke-virtual {v0}, Ljava/security/cert/CollectionCertStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 77
    if-nez p1, :cond_1

    .line 79
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 83
    instance-of v0, v3, Ljava/security/cert/CRL;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    goto :goto_0

    .line 91
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 95
    instance-of v0, v3, Ljava/security/cert/CRL;

    if-eqz v0, :cond_2

    move-object v0, v3

    check-cast v0, Ljava/security/cert/CRL;

    invoke-interface {p1, v0}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_2
    goto :goto_1

    .line 102
    :cond_3
    return-object v1
.end method

.method public engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 4

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v0, p0, Lorg/spongycastle/jce/provider/CertStoreCollectionSpi;->bbo:Ljava/security/cert/CollectionCertStoreParameters;

    invoke-virtual {v0}, Ljava/security/cert/CollectionCertStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 41
    if-nez p1, :cond_1

    .line 43
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 47
    instance-of v0, v3, Ljava/security/cert/Certificate;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    goto :goto_0

    .line 55
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 59
    instance-of v0, v3, Ljava/security/cert/Certificate;

    if-eqz v0, :cond_2

    move-object v0, v3

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-interface {p1, v0}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_2
    goto :goto_1

    .line 66
    :cond_3
    return-object v1
.end method
