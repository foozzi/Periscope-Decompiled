.class public Lorg/spongycastle/asn1/ess/ESSCertID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private acR:Lorg/spongycastle/asn1/ASN1OctetString;

.field private akZ:Lorg/spongycastle/asn1/x509/IssuerSerial;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 84
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/ESSCertID;->acR:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 88
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/ESSCertID;->akZ:Lorg/spongycastle/asn1/x509/IssuerSerial;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/ESSCertID;->akZ:Lorg/spongycastle/asn1/x509/IssuerSerial;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 93
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
