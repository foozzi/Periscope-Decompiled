.class public Lorg/spongycastle/asn1/cms/CompressedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aeO:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private aeP:Lorg/spongycastle/asn1/cms/ContentInfo;

.field private aek:Lorg/spongycastle/asn1/ASN1Integer;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 109
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/CompressedData;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/CompressedData;->aeO:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/CompressedData;->aeP:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
