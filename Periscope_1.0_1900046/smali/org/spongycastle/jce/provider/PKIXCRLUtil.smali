.class public Lorg/spongycastle/jce/provider/PKIXCRLUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 8

    .line 107
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 108
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v4, 0x0

    .line 113
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 117
    instance-of v0, v5, Lorg/spongycastle/x509/X509Store;

    if-eqz v0, :cond_0

    .line 119
    move-object v0, v5

    check-cast v0, Lorg/spongycastle/x509/X509Store;

    move-object v6, v0

    .line 123
    :try_start_0
    invoke-virtual {v6, p1}, Lorg/spongycastle/x509/X509Store;->ˋ(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/spongycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v4, 0x1

    .line 130
    goto :goto_1

    .line 126
    :catch_0
    move-exception v7

    .line 128
    new-instance v3, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v0, "Exception searching in X.509 CRL store."

    invoke-direct {v3, v0, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    :goto_1
    goto :goto_2

    .line 134
    :cond_0
    move-object v0, v5

    check-cast v0, Ljava/security/cert/CertStore;

    move-object v6, v0

    .line 138
    :try_start_1
    invoke-virtual {v6, p1}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    const/4 v4, 0x1

    .line 145
    goto :goto_2

    .line 141
    :catch_1
    move-exception v7

    .line 143
    new-instance v3, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v0, "Exception searching in X.509 CRL store."

    invoke-direct {v3, v0, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    :goto_2
    goto :goto_0

    .line 148
    :cond_1
    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    .line 150
    throw v3

    .line 152
    :cond_2
    return-object v1
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;)Ljava/util/Set;
    .locals 8

    .line 25
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 30
    :try_start_0
    invoke-virtual {p2}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tk()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/jce/provider/PKIXCRLUtil;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 31
    invoke-virtual {p2}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->tl()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/jce/provider/PKIXCRLUtil;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-virtual {p2}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/jce/provider/PKIXCRLUtil;->ˊ(Lorg/spongycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 34
    :catch_0
    move-exception v3

    .line 36
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v1, "Exception obtaining complete CRLs."

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 39
    :goto_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 40
    move-object v4, p3

    .line 42
    invoke-virtual {p2}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p2}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v4

    .line 48
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    move-object v6, v0

    .line 52
    invoke-virtual {v6}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 56
    if-eqz v7, :cond_1

    .line 58
    invoke-virtual {v6}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 65
    :cond_1
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_2
    :goto_2
    goto :goto_1

    .line 70
    :cond_3
    return-object v3
.end method
