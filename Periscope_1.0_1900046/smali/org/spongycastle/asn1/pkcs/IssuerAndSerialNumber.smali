.class public Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field aeX:Lorg/spongycastle/asn1/x500/X500Name;

.field aqe:Lorg/spongycastle/asn1/ASN1Integer;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 78
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 80
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;->aeX:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;->aqe:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 83
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method