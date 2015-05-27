.class public Lorg/spongycastle/asn1/ocsp/Signature;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field agN:Lorg/spongycastle/asn1/DERBitString;

.field ahU:Lorg/spongycastle/asn1/ASN1Sequence;

.field aoP:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 99
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 101
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/Signature;->aoP:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/Signature;->agN:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/Signature;->ahU:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/Signature;->ahU:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 109
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
