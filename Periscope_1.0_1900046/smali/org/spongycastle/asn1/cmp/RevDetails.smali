.class public Lorg/spongycastle/asn1/cmp/RevDetails;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private adZ:Lorg/spongycastle/asn1/crmf/CertTemplate;

.field private aea:Lorg/spongycastle/asn1/x509/Extensions;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 89
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 91
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->adZ:Lorg/spongycastle/asn1/crmf/CertTemplate;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->aea:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->aea:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 98
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
