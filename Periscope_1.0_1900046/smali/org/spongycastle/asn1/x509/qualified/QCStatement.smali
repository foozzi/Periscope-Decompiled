.class public Lorg/spongycastle/asn1/x509/qualified/QCStatement;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/x509/qualified/ETSIQCObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/qualified/RFC3739QCObjectIdentifiers;


# instance fields
.field aCt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field aCu:Lorg/spongycastle/asn1/ASN1Encodable;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 85
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->aCt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 88
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->aCu:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->aCu:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 93
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
