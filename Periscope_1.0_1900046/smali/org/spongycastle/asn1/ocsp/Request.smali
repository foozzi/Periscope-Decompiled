.class public Lorg/spongycastle/asn1/ocsp/Request;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field aph:Lorg/spongycastle/asn1/ocsp/CertID;

.field api:Lorg/spongycastle/asn1/x509/Extensions;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 80
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 82
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/Request;->aph:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/Request;->api:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/Request;->api:Lorg/spongycastle/asn1/x509/Extensions;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 89
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method