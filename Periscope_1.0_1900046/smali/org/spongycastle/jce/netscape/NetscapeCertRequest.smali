.class public Lorg/spongycastle/jce/netscape/NetscapeCertRequest;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field baA:Ljava/security/PublicKey;

.field bax:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field bay:[B

.field baz:Ljava/lang/String;


# direct methods
.method private oU()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 260
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 262
    const/4 v3, 0x0

    .line 266
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->baA:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 267
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 269
    new-instance v4, Lorg/spongycastle/asn1/ASN1InputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 272
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 277
    goto :goto_0

    .line 274
    :catch_0
    move-exception v4

    .line 276
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :goto_0
    return-object v3
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 283
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 284
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 288
    :try_start_0
    invoke-direct {p0}, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->oU()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    goto :goto_0

    .line 290
    :catch_0
    move-exception v4

    .line 295
    :goto_0
    new-instance v0, Lorg/spongycastle/asn1/DERIA5String;

    iget-object v1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->baz:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 297
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 298
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->bax:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 299
    new-instance v0, Lorg/spongycastle/asn1/DERBitString;

    iget-object v1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->bay:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 301
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
