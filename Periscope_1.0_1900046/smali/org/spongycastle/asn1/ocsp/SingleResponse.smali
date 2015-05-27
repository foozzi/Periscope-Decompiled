.class public Lorg/spongycastle/asn1/ocsp/SingleResponse;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private apu:Lorg/spongycastle/asn1/ocsp/CertID;

.field private apv:Lorg/spongycastle/asn1/ocsp/CertStatus;

.field private apw:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private apx:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private apy:Lorg/spongycastle/asn1/x509/Extensions;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 144
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 146
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->apu:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 147
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->apv:Lorg/spongycastle/asn1/ocsp/CertStatus;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 148
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->apw:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 150
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->apx:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->apx:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->apy:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->apy:Lorg/spongycastle/asn1/x509/Extensions;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 160
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
