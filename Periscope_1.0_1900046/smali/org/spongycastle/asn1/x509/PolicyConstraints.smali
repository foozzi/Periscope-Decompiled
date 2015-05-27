.class public Lorg/spongycastle/asn1/x509/PolicyConstraints;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aAn:Ljava/math/BigInteger;

.field private aAo:Ljava/math/BigInteger;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 92
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/PolicyConstraints;->aAn:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/PolicyConstraints;->aAn:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/PolicyConstraints;->aAo:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/PolicyConstraints;->aAo:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 104
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
