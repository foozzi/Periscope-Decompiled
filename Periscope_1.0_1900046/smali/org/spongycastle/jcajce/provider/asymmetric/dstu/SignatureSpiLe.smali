.class public Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpiLe;
.super Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineSign()[B
    .locals 4

    .line 27
    invoke-super {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->engineSign()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v2

    .line 28
    invoke-virtual {p0, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpiLe;->ᒻ([B)V

    .line 31
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DEROctetString;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 33
    :catch_0
    move-exception v3

    .line 35
    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineVerify([B)Z
    .locals 4

    .line 43
    const/4 v2, 0x0

    .line 47
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1OctetString;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 52
    goto :goto_0

    .line 49
    :catch_0
    move-exception v3

    .line 51
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "error decoding signature bytes."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :goto_0
    invoke-virtual {p0, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpiLe;->ᒻ([B)V

    .line 58
    :try_start_1
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v0

    invoke-super {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->engineVerify([B)Z
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    return v0

    .line 60
    :catch_1
    move-exception v3

    .line 62
    throw v3

    .line 64
    :catch_2
    move-exception v3

    .line 66
    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ᒻ([B)V
    .locals 4

    .line 16
    const/4 v3, 0x0

    :goto_0
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_0

    .line 18
    aget-byte v2, p1, v3

    .line 19
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    aput-byte v0, p1, v3

    .line 20
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v3

    aput-byte v2, p1, v0

    .line 16
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method
