.class public Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private agN:Lorg/spongycastle/asn1/DERBitString;

.field private ahU:Lorg/spongycastle/asn1/ASN1Sequence;

.field private aoO:Lorg/spongycastle/asn1/ocsp/ResponseData;

.field private aoP:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 100
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->aoO:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->aoP:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->agN:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 105
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->ahU:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->ahU:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 110
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
