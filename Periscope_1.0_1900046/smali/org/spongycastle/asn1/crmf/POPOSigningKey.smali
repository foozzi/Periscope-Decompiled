.class public Lorg/spongycastle/asn1/crmf/POPOSigningKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private agL:Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;

.field private agM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private agN:Lorg/spongycastle/asn1/DERBitString;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 115
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->agL:Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->agL:Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->agM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 123
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->agN:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
