.class public Lorg/spongycastle/asn1/x509/PrivateKeyUsagePeriod;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aAu:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private aAv:Lorg/spongycastle/asn1/ASN1GeneralizedTime;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 71
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 73
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/PrivateKeyUsagePeriod;->aAu:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/PrivateKeyUsagePeriod;->aAu:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/PrivateKeyUsagePeriod;->aAv:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/PrivateKeyUsagePeriod;->aAv:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 82
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
