.class public Lorg/spongycastle/asn1/ess/OtherCertID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private akZ:Lorg/spongycastle/asn1/x509/IssuerSerial;

.field private alc:Lorg/spongycastle/asn1/ASN1Encodable;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 126
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 128
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->alc:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 130
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->akZ:Lorg/spongycastle/asn1/x509/IssuerSerial;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->akZ:Lorg/spongycastle/asn1/x509/IssuerSerial;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 135
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
