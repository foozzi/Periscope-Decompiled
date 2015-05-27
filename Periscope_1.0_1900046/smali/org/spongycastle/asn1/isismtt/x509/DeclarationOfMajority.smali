.class public Lorg/spongycastle/asn1/isismtt/x509/DeclarationOfMajority;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private amN:Lorg/spongycastle/asn1/ASN1TaggedObject;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/DeclarationOfMajority;->amN:Lorg/spongycastle/asn1/ASN1TaggedObject;

    return-object v0
.end method
