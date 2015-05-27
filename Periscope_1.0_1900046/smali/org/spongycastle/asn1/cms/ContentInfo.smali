.class public Lorg/spongycastle/asn1/cms/ContentInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/cms/CMSObjectIdentifiers;


# instance fields
.field private aeQ:Lorg/spongycastle/asn1/ASN1Encodable;

.field private aew:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 119
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 121
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/ContentInfo;->aew:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 123
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/ContentInfo;->aeQ:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lorg/spongycastle/asn1/BERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/ContentInfo;->aeQ:Lorg/spongycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 128
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
