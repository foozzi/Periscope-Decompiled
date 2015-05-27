.class public Lorg/spongycastle/asn1/crmf/PKMACValue;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private agK:Lorg/spongycastle/asn1/DERBitString;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 97
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/PKMACValue;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 100
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/PKMACValue;->agK:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 102
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
