.class public Lorg/spongycastle/asn1/x509/DisplayText;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field ayC:Lorg/spongycastle/asn1/ASN1String;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/DisplayText;->ayC:Lorg/spongycastle/asn1/ASN1String;

    check-cast v0, Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method
