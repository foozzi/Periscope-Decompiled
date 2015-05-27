.class public Lorg/spongycastle/asn1/pkcs/PBEParameter;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field adk:Lorg/spongycastle/asn1/ASN1OctetString;

.field aqi:Lorg/spongycastle/asn1/ASN1Integer;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 66
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 68
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBEParameter;->adk:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 69
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBEParameter;->aqi:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 71
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
