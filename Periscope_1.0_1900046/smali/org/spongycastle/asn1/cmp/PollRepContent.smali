.class public Lorg/spongycastle/asn1/cmp/PollRepContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private adS:[Lorg/spongycastle/asn1/ASN1Integer;

.field private adT:[Lorg/spongycastle/asn1/ASN1Integer;

.field private adU:[Lorg/spongycastle/asn1/cmp/PKIFreeText;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 100
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 102
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->adS:[Lorg/spongycastle/asn1/ASN1Integer;

    array-length v0, v0

    if-eq v2, v0, :cond_1

    .line 104
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 106
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->adS:[Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->adT:[Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->adU:[Lorg/spongycastle/asn1/cmp/PKIFreeText;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->adU:[Lorg/spongycastle/asn1/cmp/PKIFreeText;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 114
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
