.class public Lorg/spongycastle/x509/X509CertificatePair;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bkU:Ljava/security/cert/X509Certificate;

.field private bkV:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/CertificatePair;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/CertificatePair;->hq()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lorg/spongycastle/jce/provider/X509CertificateObject;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/CertificatePair;->hq()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/X509CertificateObject;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    iput-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->bkU:Ljava/security/cert/X509Certificate;

    .line 52
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/CertificatePair;->hr()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Lorg/spongycastle/jce/provider/X509CertificateObject;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/CertificatePair;->hr()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/X509CertificateObject;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    iput-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->bkV:Ljava/security/cert/X509Certificate;

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 117
    if-nez p1, :cond_0

    .line 119
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/x509/X509CertificatePair;

    if-nez v0, :cond_1

    .line 123
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/x509/X509CertificatePair;

    move-object v2, v0

    .line 126
    const/4 v3, 0x1

    .line 127
    const/4 v4, 0x1

    .line 128
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->bkU:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->bkU:Ljava/security/cert/X509Certificate;

    iget-object v1, v2, Lorg/spongycastle/x509/X509CertificatePair;->bkU:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, v2, Lorg/spongycastle/x509/X509CertificatePair;->bkU:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_3

    .line 136
    const/4 v4, 0x0

    .line 139
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->bkV:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->bkV:Ljava/security/cert/X509Certificate;

    iget-object v1, v2, Lorg/spongycastle/x509/X509CertificatePair;->bkV:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 145
    :cond_4
    iget-object v0, v2, Lorg/spongycastle/x509/X509CertificatePair;->bkV:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_5

    .line 147
    const/4 v3, 0x0

    .line 150
    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 155
    const/4 v1, -0x1

    .line 156
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->bkU:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->bkU:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v0

    xor-int/lit8 v1, v0, -0x1

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->bkV:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1

    .line 162
    mul-int/lit8 v1, v1, 0x11

    .line 163
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->bkV:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 165
    :cond_1
    return v1
.end method

.method public tE()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->bkU:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public tF()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->bkV:Ljava/security/cert/X509Certificate;

    return-object v0
.end method
