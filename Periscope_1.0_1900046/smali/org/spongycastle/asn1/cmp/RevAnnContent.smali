.class public Lorg/spongycastle/asn1/cmp/RevAnnContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private adV:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field private adW:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private adX:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private adY:Lorg/spongycastle/asn1/x509/Extensions;

.field private adi:Lorg/spongycastle/asn1/crmf/CertId;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 89
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 91
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->adV:Lorg/spongycastle/asn1/cmp/PKIStatus;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->adi:Lorg/spongycastle/asn1/crmf/CertId;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->adW:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->adX:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->adY:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->adY:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 101
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
