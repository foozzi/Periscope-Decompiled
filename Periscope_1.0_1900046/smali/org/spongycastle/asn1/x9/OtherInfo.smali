.class public Lorg/spongycastle/asn1/x9/OtherInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aCV:Lorg/spongycastle/asn1/x9/KeySpecificInfo;

.field private aCW:Lorg/spongycastle/asn1/ASN1OctetString;

.field private aCX:Lorg/spongycastle/asn1/ASN1OctetString;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 83
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->aCV:Lorg/spongycastle/asn1/x9/KeySpecificInfo;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 87
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->aCW:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->aCW:Lorg/spongycastle/asn1/ASN1OctetString;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 92
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->aCX:Lorg/spongycastle/asn1/ASN1OctetString;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 94
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
