.class public Lorg/spongycastle/asn1/cms/KEKIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aeZ:Lorg/spongycastle/asn1/ASN1OctetString;

.field private afa:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private afb:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 135
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 137
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KEKIdentifier;->aeZ:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 139
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KEKIdentifier;->afa:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KEKIdentifier;->afa:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KEKIdentifier;->afb:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KEKIdentifier;->afb:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
