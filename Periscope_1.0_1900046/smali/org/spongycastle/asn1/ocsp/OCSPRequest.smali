.class public Lorg/spongycastle/asn1/ocsp/OCSPRequest;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field apd:Lorg/spongycastle/asn1/ocsp/TBSRequest;

.field ape:Lorg/spongycastle/asn1/ocsp/Signature;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 79
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->apd:Lorg/spongycastle/asn1/ocsp/TBSRequest;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 83
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->ape:Lorg/spongycastle/asn1/ocsp/Signature;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->ape:Lorg/spongycastle/asn1/ocsp/Signature;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 88
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
