.class public Lorg/spongycastle/asn1/esf/OtherHash;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private akA:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

.field private akz:Lorg/spongycastle/asn1/ASN1OctetString;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->akA:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->akz:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->akA:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
