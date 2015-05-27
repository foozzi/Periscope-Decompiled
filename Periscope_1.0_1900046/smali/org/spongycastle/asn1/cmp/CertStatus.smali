.class public Lorg/spongycastle/asn1/cmp/CertStatus;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private acN:Lorg/spongycastle/asn1/ASN1Integer;

.field private acR:Lorg/spongycastle/asn1/ASN1OctetString;

.field private acS:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 90
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertStatus;->acR:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertStatus;->acN:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertStatus;->acS:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertStatus;->acS:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 100
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
