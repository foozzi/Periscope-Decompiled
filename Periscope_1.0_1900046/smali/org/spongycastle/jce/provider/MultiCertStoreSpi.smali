.class public Lorg/spongycastle/jce/provider/MultiCertStoreSpi;
.super Ljava/security/cert/CertStoreSpi;
.source ""


# instance fields
.field private bbr:Lorg/spongycastle/jce/MultiCertStoreParameters;


# virtual methods
.method public engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 6

    .line 64
    iget-object v0, p0, Lorg/spongycastle/jce/provider/MultiCertStoreSpi;->bbr:Lorg/spongycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/MultiCertStoreParameters;->nZ()Z

    move-result v1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/jce/provider/MultiCertStoreSpi;->bbr:Lorg/spongycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/MultiCertStoreParameters;->nY()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 66
    if-eqz v1, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 68
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertStore;

    move-object v4, v0

    .line 71
    invoke-virtual {v4, p1}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v5

    .line 73
    if-eqz v1, :cond_1

    .line 75
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 77
    :cond_1
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    return-object v5

    .line 81
    :cond_2
    :goto_1
    goto :goto_0

    .line 83
    :cond_3
    return-object v3
.end method

.method public engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 6

    .line 39
    iget-object v0, p0, Lorg/spongycastle/jce/provider/MultiCertStoreSpi;->bbr:Lorg/spongycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/MultiCertStoreParameters;->nZ()Z

    move-result v1

    .line 40
    iget-object v0, p0, Lorg/spongycastle/jce/provider/MultiCertStoreSpi;->bbr:Lorg/spongycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/MultiCertStoreParameters;->nY()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 41
    if-eqz v1, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 43
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertStore;

    move-object v4, v0

    .line 46
    invoke-virtual {v4, p1}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v5

    .line 48
    if-eqz v1, :cond_1

    .line 50
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 52
    :cond_1
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    return-object v5

    .line 56
    :cond_2
    :goto_1
    goto :goto_0

    .line 58
    :cond_3
    return-object v3
.end method
