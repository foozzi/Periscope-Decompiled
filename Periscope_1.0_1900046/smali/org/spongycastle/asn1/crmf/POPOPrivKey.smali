.class public Lorg/spongycastle/asn1/crmf/POPOPrivKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private aaC:I

.field private aaF:Lorg/spongycastle/asn1/ASN1Encodable;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 102
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->aaC:I

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
