.class public Lorg/spongycastle/asn1/isismtt/x509/MonetaryLimit;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field amO:Lorg/spongycastle/asn1/DERPrintableString;

.field amP:Lorg/spongycastle/asn1/ASN1Integer;

.field amQ:Lorg/spongycastle/asn1/ASN1Integer;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 120
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 121
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/MonetaryLimit;->amO:Lorg/spongycastle/asn1/DERPrintableString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 122
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/MonetaryLimit;->amP:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 123
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/MonetaryLimit;->amQ:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
