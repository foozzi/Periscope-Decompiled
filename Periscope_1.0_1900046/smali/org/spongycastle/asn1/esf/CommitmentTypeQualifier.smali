.class public Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ajV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private ajW:Lorg/spongycastle/asn1/ASN1Encodable;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 99
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 100
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->ajV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 101
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->ajW:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->ajW:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 106
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
