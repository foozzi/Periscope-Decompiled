.class public Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private agH:Lorg/spongycastle/asn1/ASN1Integer;

.field private agI:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 74
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;->agH:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 77
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;->agI:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 79
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
