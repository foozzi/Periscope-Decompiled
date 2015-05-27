.class public Lorg/spongycastle/asn1/x509/NoticeReference;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aAi:Lorg/spongycastle/asn1/x509/DisplayText;

.field private aAj:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 165
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 166
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/NoticeReference;->aAi:Lorg/spongycastle/asn1/x509/DisplayText;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 167
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/NoticeReference;->aAj:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 168
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
