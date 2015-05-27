.class public Lorg/spongycastle/x509/AttributeCertificateHolder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field final aye:Lorg/spongycastle/asn1/x509/Holder;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/Holder;->İ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Holder;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    .line 58
    return-void
.end method

.method private ˊ(Lorg/spongycastle/jce/X509Principal;Lorg/spongycastle/asn1/x509/GeneralNames;)Z
    .locals 6

    .line 209
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 211
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-eq v3, v0, :cond_2

    .line 213
    aget-object v4, v2, v3

    .line 215
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 219
    :try_start_0
    new-instance v0, Lorg/spongycastle/jce/X509Principal;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/X509Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x1

    return v0

    .line 227
    :cond_0
    goto :goto_1

    .line 225
    :catch_0
    move-exception v5

    .line 211
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private ˊ([Lorg/spongycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;
    .locals 5

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    const/4 v3, 0x0

    :goto_0
    array-length v0, p1

    if-eq v3, v0, :cond_1

    .line 240
    aget-object v0, p1, v3

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 244
    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    aget-object v1, p1, v3

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_1

    .line 247
    :catch_0
    move-exception v4

    .line 249
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "badly formed Name object"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Lorg/spongycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;
    .locals 4

    .line 259
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralNames;->hB()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->ˊ([Lorg/spongycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;

    move-result-object v1

    .line 260
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    const/4 v3, 0x0

    :goto_0
    array-length v0, v1

    if-eq v3, v0, :cond_1

    .line 264
    aget-object v0, v1, v3

    instance-of v0, v0, Ljava/security/Principal;

    if-eqz v0, :cond_0

    .line 266
    aget-object v0, v1, v3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/Principal;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Principal;

    check-cast v0, [Ljava/security/Principal;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 324
    new-instance v0, Lorg/spongycastle/x509/AttributeCertificateHolder;

    iget-object v1, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Holder;->eJ()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/AttributeCertificateHolder;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 391
    if-ne p1, p0, :cond_0

    .line 393
    const/4 v0, 0x1

    return v0

    .line 396
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/x509/AttributeCertificateHolder;

    if-nez v0, :cond_1

    .line 398
    const/4 v0, 0x0

    return v0

    .line 401
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-object v2, v0

    .line 403
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    iget-object v1, v2, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/Holder;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->hO()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fO()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDigestedObjectType()I
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->hM()Lorg/spongycastle/asn1/ASN1Enumerated;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Enumerated;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 154
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getEntityNames()[Ljava/security/Principal;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getEntityName()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getEntityName()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->ˊ(Lorg/spongycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    return-object v0

    .line 287
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIssuer()[Ljava/security/Principal;
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/IssuerSerial;->hD()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->ˊ(Lorg/spongycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    return-object v0

    .line 302
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectDigest()[B
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->hP()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOtherObjectTypeID()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->hN()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 199
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/IssuerSerial;->hE()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 319
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 5

    .line 330
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x0

    return v0

    .line 335
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0

    .line 339
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/IssuerSerial;->hE()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lorg/spongycastle/jce/PrincipalUtil;->ᐝ(Ljava/security/cert/X509Certificate;)Lorg/spongycastle/jce/X509Principal;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/IssuerSerial;->hD()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/x509/AttributeCertificateHolder;->ˊ(Lorg/spongycastle/jce/X509Principal;Lorg/spongycastle/asn1/x509/GeneralNames;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 345
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getEntityName()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 347
    invoke-static {v2}, Lorg/spongycastle/jce/PrincipalUtil;->ʻ(Ljava/security/cert/X509Certificate;)Lorg/spongycastle/jce/X509Principal;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Holder;->getEntityName()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/x509/AttributeCertificateHolder;->ˊ(Lorg/spongycastle/jce/X509Principal;Lorg/spongycastle/asn1/x509/GeneralNames;)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    const/4 v0, 0x1

    return v0

    .line 353
    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateHolder;->aye:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    if-eqz v0, :cond_4

    .line 355
    const/4 v3, 0x0

    .line 358
    :try_start_3
    invoke-virtual {p0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SC"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    .line 364
    goto :goto_1

    .line 361
    :catch_0
    move-exception v4

    .line 363
    const/4 v0, 0x0

    return v0

    .line 365
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getDigestedObjectType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 369
    :sswitch_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 370
    goto :goto_2

    .line 372
    :sswitch_1
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 375
    :goto_2
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getObjectDigest()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-nez v0, :cond_4

    .line 377
    const/4 v0, 0x0

    return v0

    .line 384
    :cond_4
    goto :goto_3

    .line 381
    :catch_1
    move-exception v3

    .line 383
    const/4 v0, 0x0

    return v0

    .line 386
    :goto_3
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public ɨ(Ljava/lang/Object;)Z
    .locals 1

    .line 413
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x0

    return v0

    .line 418
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {p0, v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    return v0
.end method
