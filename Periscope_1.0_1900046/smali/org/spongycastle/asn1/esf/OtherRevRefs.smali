.class public Lorg/spongycastle/asn1/esf/OtherRevRefs;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private akD:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private akE:Lorg/spongycastle/asn1/ASN1Encodable;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 82
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 83
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherRevRefs;->akD:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherRevRefs;->akE:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 85
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method