.class public Lorg/spongycastle/x509/ExtendedPKIXParameters;
.super Ljava/security/cert/PKIXParameters;
.source ""


# instance fields
.field private bkq:Ljava/util/List;

.field private bkr:Lorg/spongycastle/util/Selector;

.field private bks:Z

.field private bkt:Ljava/util/List;

.field private bku:Ljava/util/Set;

.field private bkv:Ljava/util/Set;

.field private bkw:Ljava/util/Set;

.field private bkx:Ljava/util/Set;

.field private bky:I

.field private bkz:Z


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bky:I

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkz:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkq:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkt:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bku:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkv:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkw:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkx:Ljava/util/Set;

    .line 66
    return-void
.end method

.method public static ˎ(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .locals 4

    .line 80
    :try_start_0
    new-instance v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 82
    :catch_0
    move-exception v3

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :goto_0
    invoke-virtual {v2, p0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->ˋ(Ljava/security/cert/PKIXParameters;)V

    .line 88
    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 343
    :try_start_0
    new-instance v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {p0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_0

    .line 345
    :catch_0
    move-exception v3

    .line 348
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :goto_0
    invoke-virtual {v2, p0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->ˋ(Ljava/security/cert/PKIXParameters;)V

    .line 351
    return-object v2
.end method

.method public setCertStores(Ljava/util/List;)V
    .locals 2

    .line 204
    if-eqz p1, :cond_0

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertStore;

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method public setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .locals 1

    .line 457
    invoke-super {p0, p1}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 458
    if-eqz p1, :cond_0

    .line 460
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CertSelector;

    invoke-static {v0}, Lorg/spongycastle/x509/X509CertStoreSelector;->ˏ(Ljava/security/cert/X509CertSelector;)Lorg/spongycastle/x509/X509CertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkr:Lorg/spongycastle/util/Selector;

    goto :goto_0

    .line 465
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkr:Lorg/spongycastle/util/Selector;

    .line 467
    :goto_0
    return-void
.end method

.method public ti()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkz:Z

    return v0
.end method

.method public tj()I
    .locals 1

    .line 193
    iget v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bky:I

    return v0
.end method

.method public tk()Ljava/util/List;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkt:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public tl()Ljava/util/List;
    .locals 2

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkq:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public tm()Z
    .locals 1

    .line 362
    iget-boolean v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bks:Z

    return v0
.end method

.method public tn()Lorg/spongycastle/util/Selector;
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkr:Lorg/spongycastle/util/Selector;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkr:Lorg/spongycastle/util/Selector;

    invoke-interface {v0}, Lorg/spongycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/util/Selector;

    return-object v0

    .line 403
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public to()Ljava/util/Set;
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bku:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public tp()Ljava/util/Set;
    .locals 1

    .line 528
    iget-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkv:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public tq()Ljava/util/Set;
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkw:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public tr()Ljava/util/Set;
    .locals 1

    .line 617
    iget-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkx:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/util/Store;)V
    .locals 1

    .line 284
    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    return-void
.end method

.method protected ˋ(Ljava/security/cert/PKIXParameters;)V
    .locals 3

    .line 100
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setDate(Ljava/util/Date;)V

    .line 101
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    .line 102
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setCertStores(Ljava/util/List;)V

    .line 103
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setAnyPolicyInhibited(Z)V

    .line 104
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setExplicitPolicyRequired(Z)V

    .line 105
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setPolicyMappingInhibited(Z)V

    .line 106
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setRevocationEnabled(Z)V

    .line 107
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setInitialPolicies(Ljava/util/Set;)V

    .line 108
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setPolicyQualifiersRejected(Z)V

    .line 109
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setSigProvider(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 113
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setTrustAnchors(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :goto_0
    instance-of v0, p1, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    if-eqz v0, :cond_1

    .line 122
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-object v2, v0

    .line 123
    iget v0, v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bky:I

    iput v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bky:I

    .line 124
    iget-boolean v0, v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkz:Z

    iput-boolean v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkz:Z

    .line 125
    iget-boolean v0, v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bks:Z

    iput-boolean v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bks:Z

    .line 126
    iget-object v0, v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkr:Lorg/spongycastle/util/Selector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkr:Lorg/spongycastle/util/Selector;

    invoke-interface {v0}, Lorg/spongycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/util/Selector;

    :goto_1
    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkr:Lorg/spongycastle/util/Selector;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkq:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkq:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkt:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkt:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bku:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bku:Ljava/util/Set;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkw:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkw:Ljava/util/Set;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkv:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkv:Ljava/util/Set;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, v2, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkx:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkx:Ljava/util/Set;

    .line 135
    :cond_1
    return-void
.end method

.method public ˎ(Lorg/spongycastle/util/Selector;)V
    .locals 1

    .line 428
    if-eqz p1, :cond_0

    .line 430
    invoke-interface {p1}, Lorg/spongycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/util/Selector;

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkr:Lorg/spongycastle/util/Selector;

    goto :goto_0

    .line 434
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXParameters;->bkr:Lorg/spongycastle/util/Selector;

    .line 436
    :goto_0
    return-void
.end method
