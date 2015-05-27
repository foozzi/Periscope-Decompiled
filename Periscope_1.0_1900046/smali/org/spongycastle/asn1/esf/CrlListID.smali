.class public Lorg/spongycastle/asn1/esf/CrlListID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aed:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 64
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CrlListID;->aed:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
