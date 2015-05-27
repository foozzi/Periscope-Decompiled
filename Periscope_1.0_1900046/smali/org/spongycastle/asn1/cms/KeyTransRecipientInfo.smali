.class public Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private afd:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private afe:Lorg/spongycastle/asn1/ASN1OctetString;

.field private afk:Lorg/spongycastle/asn1/cms/RecipientIdentifier;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 118
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 120
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 121
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->afk:Lorg/spongycastle/asn1/cms/RecipientIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 122
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->afd:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 123
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->afe:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
