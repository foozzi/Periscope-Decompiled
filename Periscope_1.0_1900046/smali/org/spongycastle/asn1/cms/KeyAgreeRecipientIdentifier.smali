.class public Lorg/spongycastle/asn1/cms/KeyAgreeRecipientIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private aff:Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;

.field private afg:Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientIdentifier;->aff:Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientIdentifier;->aff:Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientIdentifier;->afg:Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
