.class public Lorg/spongycastle/asn1/cmp/CertRepMessage;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private acL:Lorg/spongycastle/asn1/ASN1Sequence;

.field private acM:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 112
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 114
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertRepMessage;->acL:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertRepMessage;->acL:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertRepMessage;->acM:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 121
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
