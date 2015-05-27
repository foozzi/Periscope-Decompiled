.class public Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private afD:Lorg/spongycastle/asn1/ASN1OctetString;

.field private afa:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private afb:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 155
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 157
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->afD:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 159
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->afa:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->afa:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->afb:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->afb:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 169
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
