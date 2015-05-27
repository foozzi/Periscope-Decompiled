.class public Lorg/spongycastle/asn1/esf/RevocationValues;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private akH:Lorg/spongycastle/asn1/ASN1Sequence;

.field private akI:Lorg/spongycastle/asn1/ASN1Sequence;

.field private akJ:Lorg/spongycastle/asn1/esf/OtherRevVals;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 136
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 137
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/RevocationValues;->akH:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 139
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/esf/RevocationValues;->akH:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/RevocationValues;->akI:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_1

    .line 143
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/esf/RevocationValues;->akI:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 145
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/RevocationValues;->akJ:Lorg/spongycastle/asn1/esf/OtherRevVals;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_2

    .line 147
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/esf/RevocationValues;->akJ:Lorg/spongycastle/asn1/esf/OtherRevVals;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/esf/OtherRevVals;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
