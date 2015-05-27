.class public Lorg/spongycastle/asn1/cms/MetaData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private afl:Lorg/spongycastle/asn1/ASN1Boolean;

.field private afm:Lorg/spongycastle/asn1/DERUTF8String;

.field private afn:Lorg/spongycastle/asn1/DERIA5String;

.field private afo:Lorg/spongycastle/asn1/cms/Attributes;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 94
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->afl:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 98
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->afm:Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->afm:Lorg/spongycastle/asn1/DERUTF8String;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->afn:Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->afn:Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 108
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->afo:Lorg/spongycastle/asn1/cms/Attributes;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->afo:Lorg/spongycastle/asn1/cms/Attributes;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 113
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
