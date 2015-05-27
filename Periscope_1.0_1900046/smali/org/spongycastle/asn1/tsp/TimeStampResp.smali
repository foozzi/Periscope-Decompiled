.class public Lorg/spongycastle/asn1/tsp/TimeStampResp;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field acZ:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

.field aiq:Lorg/spongycastle/asn1/cms/ContentInfo;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 74
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->acZ:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 77
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->aiq:Lorg/spongycastle/asn1/cms/ContentInfo;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->aiq:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 82
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
