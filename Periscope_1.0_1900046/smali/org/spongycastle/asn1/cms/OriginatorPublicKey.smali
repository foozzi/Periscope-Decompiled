.class public Lorg/spongycastle/asn1/cms/OriginatorPublicKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private afs:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private aft:Lorg/spongycastle/asn1/DERBitString;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 107
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/OriginatorPublicKey;->afs:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 110
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/OriginatorPublicKey;->aft:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 112
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
