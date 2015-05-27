.class public Lorg/spongycastle/asn1/esf/SignaturePolicyId;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private akP:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

.field private akQ:Lorg/spongycastle/asn1/esf/SigPolicyQualifiers;

.field private akg:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 92
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignaturePolicyId;->akg:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignaturePolicyId;->akP:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignaturePolicyId;->akQ:Lorg/spongycastle/asn1/esf/SigPolicyQualifiers;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignaturePolicyId;->akQ:Lorg/spongycastle/asn1/esf/SigPolicyQualifiers;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 101
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
