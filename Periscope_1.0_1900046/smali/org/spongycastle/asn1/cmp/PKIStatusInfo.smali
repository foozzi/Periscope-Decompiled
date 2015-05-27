.class public Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field adP:Lorg/spongycastle/asn1/ASN1Integer;

.field adQ:Lorg/spongycastle/asn1/cmp/PKIFreeText;

.field adR:Lorg/spongycastle/asn1/DERBitString;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 149
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 151
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->adP:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 153
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->adQ:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->adQ:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->adR:Lorg/spongycastle/asn1/DERBitString;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->adR:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 163
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
