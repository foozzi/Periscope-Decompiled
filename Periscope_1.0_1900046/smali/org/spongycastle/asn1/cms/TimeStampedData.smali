.class public Lorg/spongycastle/asn1/cms/TimeStampedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private aga:Lorg/spongycastle/asn1/DERIA5String;

.field private agb:Lorg/spongycastle/asn1/cms/MetaData;

.field private agc:Lorg/spongycastle/asn1/ASN1OctetString;

.field private agd:Lorg/spongycastle/asn1/cms/Evidence;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 108
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 110
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->aga:Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->aga:Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->agb:Lorg/spongycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->agb:Lorg/spongycastle/asn1/cms/MetaData;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->agc:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->agc:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 127
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->agd:Lorg/spongycastle/asn1/cms/Evidence;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 129
    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
