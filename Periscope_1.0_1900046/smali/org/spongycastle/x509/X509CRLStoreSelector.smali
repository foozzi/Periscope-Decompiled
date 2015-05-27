.class public Lorg/spongycastle/x509/X509CRLStoreSelector;
.super Ljava/security/cert/X509CRLSelector;
.source ""

# interfaces
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field private bkL:Z

.field private bkM:Z

.field private bkN:Ljava/math/BigInteger;

.field private bkO:[B

.field private bkP:Z

.field private bkQ:Lorg/spongycastle/x509/X509AttributeCertificate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkL:Z

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkM:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkN:Ljava/math/BigInteger;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkO:[B

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkP:Z

    return-void
.end method

.method public static ˊ(Ljava/security/cert/X509CRLSelector;)Lorg/spongycastle/x509/X509CRLStoreSelector;
    .locals 4

    .line 205
    if-nez p0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot create from null selector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    new-instance v2, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 211
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 212
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    .line 215
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setIssuerNames(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_0

    .line 217
    :catch_0
    move-exception v3

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :goto_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setIssuers(Ljava/util/Collection;)V

    .line 223
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    .line 224
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 225
    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 230
    invoke-static {p0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->ˊ(Ljava/security/cert/X509CRLSelector;)Lorg/spongycastle/x509/X509CRLStoreSelector;

    move-result-object v1

    .line 231
    iget-boolean v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkL:Z

    iput-boolean v0, v1, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkL:Z

    .line 232
    iget-boolean v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkM:Z

    iput-boolean v0, v1, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkM:Z

    .line 233
    iget-object v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkN:Ljava/math/BigInteger;

    iput-object v0, v1, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkN:Ljava/math/BigInteger;

    .line 234
    iget-object v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkQ:Lorg/spongycastle/x509/X509AttributeCertificate;

    iput-object v0, v1, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkQ:Lorg/spongycastle/x509/X509AttributeCertificate;

    .line 235
    iget-boolean v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkP:Z

    iput-boolean v0, v1, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkP:Z

    .line 236
    iget-object v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkO:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, v1, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkO:[B

    .line 237
    return-object v1
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 1

    .line 165
    invoke-virtual {p0, p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->ɨ(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public tA()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkL:Z

    return v0
.end method

.method public tB()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkM:Z

    return v0
.end method

.method public tz()Lorg/spongycastle/x509/X509AttributeCertificate;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkQ:Lorg/spongycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public ɨ(Ljava/lang/Object;)Z
    .locals 5

    .line 94
    instance-of v0, p1, Ljava/security/cert/X509CRL;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRL;

    move-object v2, v0

    .line 99
    const/4 v3, 0x0

    .line 102
    :try_start_0
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 104
    if-eqz v4, :cond_1

    .line 106
    invoke-static {v4}, Lorg/spongycastle/x509/extension/X509ExtensionUtil;->ᑦ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 113
    :cond_1
    goto :goto_0

    .line 110
    :catch_0
    move-exception v4

    .line 112
    const/4 v0, 0x0

    return v0

    .line 114
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->tA()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    if-nez v3, :cond_2

    .line 118
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->tB()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    if-eqz v3, :cond_3

    .line 125
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_3
    if-eqz v3, :cond_4

    .line 131
    iget-object v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkN:Ljava/math/BigInteger;

    if-eqz v0, :cond_4

    .line 133
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Integer;->eI()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkN:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 135
    const/4 v0, 0x0

    return v0

    .line 139
    :cond_4
    iget-boolean v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkP:Z

    if-eqz v0, :cond_6

    .line 141
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 144
    iget-object v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkO:[B

    if-nez v0, :cond_5

    .line 146
    if-eqz v4, :cond_6

    .line 148
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkO:[B

    invoke-static {v4, v0}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    .line 155
    const/4 v0, 0x0

    return v0

    .line 160
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRL;

    invoke-super {p0, v0}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    return v0
.end method

.method public ˊ(Lorg/spongycastle/x509/X509AttributeCertificate;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkQ:Lorg/spongycastle/x509/X509AttributeCertificate;

    .line 79
    return-void
.end method

.method public Ӏ(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkP:Z

    .line 63
    return-void
.end method

.method public ײ(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkM:Z

    .line 263
    return-void
.end method

.method public ᑋ([B)V
    .locals 1

    .line 328
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkO:[B

    .line 329
    return-void
.end method

.method public ᵔ(Ljava/math/BigInteger;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lorg/spongycastle/x509/X509CRLStoreSelector;->bkN:Ljava/math/BigInteger;

    .line 289
    return-void
.end method
