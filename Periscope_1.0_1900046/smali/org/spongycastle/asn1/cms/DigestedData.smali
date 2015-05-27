.class public Lorg/spongycastle/asn1/cms/DigestedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aeP:Lorg/spongycastle/asn1/cms/ContentInfo;

.field private aeR:Lorg/spongycastle/asn1/ASN1OctetString;

.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private aes:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 114
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 116
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/DigestedData;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/DigestedData;->aes:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 118
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/DigestedData;->aeP:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 119
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/DigestedData;->aeR:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 121
    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
