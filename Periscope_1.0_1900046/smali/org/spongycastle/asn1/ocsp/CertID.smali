.class public Lorg/spongycastle/asn1/ocsp/CertID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field aeY:Lorg/spongycastle/asn1/ASN1Integer;

.field akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field aoQ:Lorg/spongycastle/asn1/ASN1OctetString;

.field aoR:Lorg/spongycastle/asn1/ASN1OctetString;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 96
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 98
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/CertID;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/CertID;->aoQ:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 100
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/CertID;->aoR:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 101
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/CertID;->aeY:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
