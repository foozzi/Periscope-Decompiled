.class public Lorg/spongycastle/asn1/icao/CscaMasterList;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private alS:[Lorg/spongycastle/asn1/x509/Certificate;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 101
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 105
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 106
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->alS:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->alS:[Lorg/spongycastle/asn1/x509/Certificate;

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 112
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
