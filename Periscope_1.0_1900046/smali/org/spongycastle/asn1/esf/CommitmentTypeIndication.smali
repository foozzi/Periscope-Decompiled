.class public Lorg/spongycastle/asn1/esf/CommitmentTypeIndication;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ajT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private ajU:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 72
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 74
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeIndication;->ajT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeIndication;->ajU:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeIndication;->ajU:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 81
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
