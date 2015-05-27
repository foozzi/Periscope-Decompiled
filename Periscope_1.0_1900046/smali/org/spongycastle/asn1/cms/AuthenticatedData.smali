.class public Lorg/spongycastle/asn1/cms/AuthenticatedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private ael:Lorg/spongycastle/asn1/cms/OriginatorInfo;

.field private aem:Lorg/spongycastle/asn1/ASN1Set;

.field private aeo:Lorg/spongycastle/asn1/ASN1Set;

.field private aep:Lorg/spongycastle/asn1/ASN1OctetString;

.field private aeq:Lorg/spongycastle/asn1/ASN1Set;

.field private aer:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private aes:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private aet:Lorg/spongycastle/asn1/cms/ContentInfo;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 226
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 228
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 230
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->ael:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->ael:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->aem:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 236
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->aer:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 238
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->aes:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_1

    .line 240
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->aes:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 243
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->aet:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 245
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->aeo:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_2

    .line 247
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->aeo:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 250
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->aep:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 252
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->aeq:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_3

    .line 254
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->aeq:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 257
    :cond_3
    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
