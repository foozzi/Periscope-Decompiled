.class public Lorg/spongycastle/asn1/cms/EnvelopedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aeU:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

.field private aeV:Lorg/spongycastle/asn1/ASN1Set;

.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private ael:Lorg/spongycastle/asn1/cms/OriginatorInfo;

.field private aem:Lorg/spongycastle/asn1/ASN1Set;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 167
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 169
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 171
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->ael:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->ael:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->aem:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 177
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->aeU:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 179
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->aeV:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 181
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->aeV:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 184
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
