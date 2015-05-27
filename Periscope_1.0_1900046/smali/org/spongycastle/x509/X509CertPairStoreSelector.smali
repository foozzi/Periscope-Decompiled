.class public Lorg/spongycastle/x509/X509CertPairStoreSelector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field private bkR:Lorg/spongycastle/x509/X509CertStoreSelector;

.field private bkS:Lorg/spongycastle/x509/X509CertStoreSelector;

.field private bkT:Lorg/spongycastle/x509/X509CertificatePair;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 74
    new-instance v1, Lorg/spongycastle/x509/X509CertPairStoreSelector;

    invoke-direct {v1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;-><init>()V

    .line 76
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkT:Lorg/spongycastle/x509/X509CertificatePair;

    iput-object v0, v1, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkT:Lorg/spongycastle/x509/X509CertificatePair;

    .line 78
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkR:Lorg/spongycastle/x509/X509CertStoreSelector;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkR:Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-virtual {v0}, Lorg/spongycastle/x509/X509CertStoreSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-virtual {v1, v0}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->ˋ(Lorg/spongycastle/x509/X509CertStoreSelector;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkS:Lorg/spongycastle/x509/X509CertStoreSelector;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkS:Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-virtual {v0}, Lorg/spongycastle/x509/X509CertStoreSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-virtual {v1, v0}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->ˎ(Lorg/spongycastle/x509/X509CertStoreSelector;)V

    .line 90
    :cond_1
    return-object v1
.end method

.method public tC()Lorg/spongycastle/x509/X509CertificatePair;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkT:Lorg/spongycastle/x509/X509CertificatePair;

    return-object v0
.end method

.method public tD()Lorg/spongycastle/x509/X509CertStoreSelector;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkR:Lorg/spongycastle/x509/X509CertStoreSelector;

    return-object v0
.end method

.method public ɨ(Ljava/lang/Object;)Z
    .locals 3

    .line 105
    instance-of v0, p1, Lorg/spongycastle/x509/X509CertificatePair;

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_0
    move-object v0, p1

    :try_start_0
    check-cast v0, Lorg/spongycastle/x509/X509CertificatePair;

    move-object v2, v0

    .line 111
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkR:Lorg/spongycastle/x509/X509CertStoreSelector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkR:Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-virtual {v2}, Lorg/spongycastle/x509/X509CertificatePair;->tE()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->ɨ(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 114
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkS:Lorg/spongycastle/x509/X509CertStoreSelector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkS:Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-virtual {v2}, Lorg/spongycastle/x509/X509CertificatePair;->tF()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->ɨ(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 120
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkT:Lorg/spongycastle/x509/X509CertificatePair;

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkT:Lorg/spongycastle/x509/X509CertificatePair;

    invoke-virtual {v0, p1}, Lorg/spongycastle/x509/X509CertificatePair;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    return v0

    .line 128
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 130
    :catch_0
    move-exception v2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public ˋ(Lorg/spongycastle/x509/X509CertStoreSelector;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkR:Lorg/spongycastle/x509/X509CertStoreSelector;

    .line 55
    return-void
.end method

.method public ˎ(Lorg/spongycastle/x509/X509CertStoreSelector;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->bkS:Lorg/spongycastle/x509/X509CertStoreSelector;

    .line 64
    return-void
.end method
