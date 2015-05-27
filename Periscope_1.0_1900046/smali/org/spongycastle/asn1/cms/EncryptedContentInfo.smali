.class public Lorg/spongycastle/asn1/cms/EncryptedContentInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aeS:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private aeT:Lorg/spongycastle/asn1/ASN1OctetString;

.field private aew:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 108
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 110
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->aew:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->aeS:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->aeT:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lorg/spongycastle/asn1/BERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->aeT:Lorg/spongycastle/asn1/ASN1OctetString;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 118
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
