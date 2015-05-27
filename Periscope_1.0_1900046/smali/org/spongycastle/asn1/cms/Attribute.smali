.class public Lorg/spongycastle/asn1/cms/Attribute;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aeh:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private aei:Lorg/spongycastle/asn1/ASN1Set;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 103
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 105
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/Attribute;->aeh:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 106
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/Attribute;->aei:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 108
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
