.class public Lorg/spongycastle/asn1/esf/SignerAttribute;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private akT:[Ljava/lang/Object;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 107
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 109
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->akT:[Ljava/lang/Object;

    array-length v0, v0

    if-eq v4, v0, :cond_1

    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->akT:[Ljava/lang/Object;

    aget-object v0, v0, v4

    instance-of v0, v0, [Lorg/spongycastle/asn1/x509/Attribute;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->akT:[Ljava/lang/Object;

    aget-object v2, v2, v4

    check-cast v2, [Lorg/spongycastle/asn1/x509/Attribute;

    check-cast v2, [Lorg/spongycastle/asn1/x509/Attribute;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 117
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->akT:[Ljava/lang/Object;

    aget-object v1, v1, v4

    check-cast v1, Lorg/spongycastle/asn1/x509/AttributeCertificate;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 109
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
