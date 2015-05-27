.class public Lorg/spongycastle/asn1/cmp/CertResponse;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private acN:Lorg/spongycastle/asn1/ASN1Integer;

.field private acO:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

.field private acP:Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

.field private acQ:Lorg/spongycastle/asn1/ASN1OctetString;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 122
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 124
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->acN:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->acO:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 127
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->acP:Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->acP:Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->acQ:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->acQ:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 137
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
