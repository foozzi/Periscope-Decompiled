.class public Lorg/spongycastle/asn1/pkcs/SignerInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private afR:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private afS:Lorg/spongycastle/asn1/ASN1Set;

.field private afT:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private afU:Lorg/spongycastle/asn1/ASN1OctetString;

.field private afV:Lorg/spongycastle/asn1/ASN1Set;

.field private atg:Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 157
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 159
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 160
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->atg:Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->afR:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 163
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->afS:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->afS:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->afT:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 169
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->afU:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 171
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->afV:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->afV:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 176
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
