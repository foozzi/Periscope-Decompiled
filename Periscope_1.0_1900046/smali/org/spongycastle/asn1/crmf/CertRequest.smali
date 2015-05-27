.class public Lorg/spongycastle/asn1/crmf/CertRequest;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private acN:Lorg/spongycastle/asn1/ASN1Integer;

.field private ags:Lorg/spongycastle/asn1/crmf/CertTemplate;

.field private agt:Lorg/spongycastle/asn1/crmf/Controls;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 85
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 87
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->acN:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 88
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->ags:Lorg/spongycastle/asn1/crmf/CertTemplate;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 90
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->agt:Lorg/spongycastle/asn1/crmf/Controls;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->agt:Lorg/spongycastle/asn1/crmf/Controls;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 95
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
