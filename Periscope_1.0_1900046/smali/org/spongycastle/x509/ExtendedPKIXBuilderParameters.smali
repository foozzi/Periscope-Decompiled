.class public Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;
.super Lorg/spongycastle/x509/ExtendedPKIXParameters;
.source ""


# instance fields
.field private bko:I

.field private bkp:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lorg/spongycastle/util/Selector;)V
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V

    .line 24
    const/4 v0, 0x5

    iput v0, p0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->bko:I

    .line 26
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->bkp:Ljava/util/Set;

    .line 87
    invoke-virtual {p0, p2}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->ˎ(Lorg/spongycastle/util/Selector;)V

    .line 88
    return-void
.end method

.method public static ˎ(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;
    .locals 4

    .line 197
    :try_start_0
    new-instance v2, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CertSelector;

    invoke-static {v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->ˏ(Ljava/security/cert/X509CertSelector;)Lorg/spongycastle/x509/X509CertStoreSelector;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lorg/spongycastle/util/Selector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 202
    :catch_0
    move-exception v3

    .line 205
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :goto_0
    invoke-virtual {v2, p0}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->ˋ(Ljava/security/cert/PKIXParameters;)V

    .line 208
    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 166
    const/4 v2, 0x0

    .line 169
    :try_start_0
    new-instance v2, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {p0}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->tn()Lorg/spongycastle/util/Selector;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lorg/spongycastle/util/Selector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_0

    .line 172
    :catch_0
    move-exception v3

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :goto_0
    invoke-virtual {v2, p0}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->ˋ(Ljava/security/cert/PKIXParameters;)V

    .line 178
    return-object v2
.end method

.method public getMaxPathLength()I
    .locals 1

    .line 132
    iget v0, p0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->bko:I

    return v0
.end method

.method public th()Ljava/util/Set;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->bkp:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected ˋ(Ljava/security/cert/PKIXParameters;)V
    .locals 3

    .line 144
    invoke-super {p0, p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->ˋ(Ljava/security/cert/PKIXParameters;)V

    .line 145
    instance-of v0, p1, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v0, :cond_0

    .line 147
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    move-object v2, v0

    .line 148
    iget v0, v2, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->bko:I

    iput v0, p0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->bko:I

    .line 149
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, v2, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->bkp:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->bkp:Ljava/util/Set;

    .line 151
    :cond_0
    instance-of v0, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v0, :cond_1

    .line 153
    move-object v0, p1

    check-cast v0, Ljava/security/cert/PKIXBuilderParameters;

    move-object v2, v0

    .line 154
    invoke-virtual {v2}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->bko:I

    .line 156
    :cond_1
    return-void
.end method
