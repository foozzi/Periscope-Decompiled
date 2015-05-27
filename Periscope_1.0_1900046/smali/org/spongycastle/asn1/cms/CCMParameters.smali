.class public Lorg/spongycastle/asn1/cms/CCMParameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aeu:[B

.field private aev:I


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 91
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 93
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/CCMParameters;->aeu:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 95
    iget v0, p0, Lorg/spongycastle/asn1/cms/CCMParameters;->aev:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 97
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget v1, p0, Lorg/spongycastle/asn1/cms/CCMParameters;->aev:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 100
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
