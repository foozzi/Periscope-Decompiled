.class public Lorg/spongycastle/asn1/cms/AuthEnvelopedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private ael:Lorg/spongycastle/asn1/cms/OriginatorInfo;

.field private aem:Lorg/spongycastle/asn1/ASN1Set;

.field private aen:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

.field private aeo:Lorg/spongycastle/asn1/ASN1Set;

.field private aep:Lorg/spongycastle/asn1/ASN1OctetString;

.field private aeq:Lorg/spongycastle/asn1/ASN1Set;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 218
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 220
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 222
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->ael:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->ael:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->aem:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 228
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->aen:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 231
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->aeo:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 235
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->aeo:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 238
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->aep:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 241
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->aeq:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_2

    .line 243
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->aeq:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 246
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
