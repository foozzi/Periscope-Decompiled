.class public Lorg/spongycastle/asn1/cms/Evidence;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private aeW:Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 73
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/Evidence;->aeW:Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/Evidence;->aeW:Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
