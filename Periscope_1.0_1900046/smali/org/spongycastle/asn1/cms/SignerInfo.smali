.class public Lorg/spongycastle/asn1/cms/SignerInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private afQ:Lorg/spongycastle/asn1/cms/SignerIdentifier;

.field private afR:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private afS:Lorg/spongycastle/asn1/ASN1Set;

.field private afT:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private afU:Lorg/spongycastle/asn1/ASN1OctetString;

.field private afV:Lorg/spongycastle/asn1/ASN1Set;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 261
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 263
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 264
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->afQ:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 265
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->afR:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 267
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->afS:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->afS:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->afT:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 273
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->afU:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 275
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->afV:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 277
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->afV:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 280
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
