.class public Lorg/spongycastle/asn1/eac/CertificateBody;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aiN:Lorg/spongycastle/asn1/DERApplicationSpecific;

.field private aiO:Lorg/spongycastle/asn1/DERApplicationSpecific;

.field private aiP:Lorg/spongycastle/asn1/eac/PublicKeyDataObject;

.field private aiQ:Lorg/spongycastle/asn1/DERApplicationSpecific;

.field private aiR:Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

.field private aiS:Lorg/spongycastle/asn1/DERApplicationSpecific;

.field private aiT:Lorg/spongycastle/asn1/DERApplicationSpecific;

.field private aiU:I


# direct methods
.method private fs()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 182
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 184
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->aiN:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 185
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->aiO:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 186
    new-instance v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->aiP:Lorg/spongycastle/asn1/eac/PublicKeyDataObject;

    const/4 v2, 0x0

    const/16 v3, 0x49

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 187
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->aiQ:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 188
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->aiR:Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 189
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->aiS:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 190
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->aiT:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 191
    new-instance v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v1, 0x4e

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method private ft()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 265
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 267
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->aiN:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 268
    new-instance v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->aiP:Lorg/spongycastle/asn1/eac/PublicKeyDataObject;

    const/4 v2, 0x0

    const/16 v3, 0x49

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 269
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->aiQ:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 270
    new-instance v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v1, 0x4e

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 282
    :try_start_0
    iget v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->aiU:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 284
    invoke-direct {p0}, Lorg/spongycastle/asn1/eac/CertificateBody;->fs()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->aiU:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 288
    invoke-direct {p0}, Lorg/spongycastle/asn1/eac/CertificateBody;->ft()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 294
    :cond_1
    goto :goto_0

    .line 291
    :catch_0
    move-exception v2

    .line 293
    const/4 v0, 0x0

    return-object v0

    .line 295
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
