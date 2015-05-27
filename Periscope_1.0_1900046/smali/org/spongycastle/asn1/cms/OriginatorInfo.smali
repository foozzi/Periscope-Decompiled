.class public Lorg/spongycastle/asn1/cms/OriginatorInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private afq:Lorg/spongycastle/asn1/ASN1Set;

.field private afr:Lorg/spongycastle/asn1/ASN1Set;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 145
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 147
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/OriginatorInfo;->afq:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/OriginatorInfo;->afq:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/OriginatorInfo;->afr:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 154
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/OriginatorInfo;->afr:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 157
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
