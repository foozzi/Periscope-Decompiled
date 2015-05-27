.class public Lorg/spongycastle/asn1/esf/SPUserNotice;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private akK:Lorg/spongycastle/asn1/x509/NoticeReference;

.field private akL:Lorg/spongycastle/asn1/x509/DisplayText;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 85
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 87
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->akK:Lorg/spongycastle/asn1/x509/NoticeReference;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->akK:Lorg/spongycastle/asn1/x509/NoticeReference;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->akL:Lorg/spongycastle/asn1/x509/DisplayText;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->akL:Lorg/spongycastle/asn1/x509/DisplayText;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 97
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
