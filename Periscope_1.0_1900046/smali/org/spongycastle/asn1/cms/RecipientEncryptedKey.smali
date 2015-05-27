.class public Lorg/spongycastle/asn1/cms/RecipientEncryptedKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private afB:Lorg/spongycastle/asn1/cms/KeyAgreeRecipientIdentifier;

.field private afe:Lorg/spongycastle/asn1/ASN1OctetString;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 102
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientEncryptedKey;->afB:Lorg/spongycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 105
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientEncryptedKey;->afe:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 107
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
