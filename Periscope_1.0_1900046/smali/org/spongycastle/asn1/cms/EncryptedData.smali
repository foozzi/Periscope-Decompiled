.class public Lorg/spongycastle/asn1/cms/EncryptedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aeU:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

.field private aeV:Lorg/spongycastle/asn1/ASN1Set;

.field private aek:Lorg/spongycastle/asn1/ASN1Integer;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 100
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->aeU:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->aeV:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lorg/spongycastle/asn1/BERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->aeV:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 109
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
