.class public Lorg/spongycastle/asn1/esf/CrlValidatedID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ake:Lorg/spongycastle/asn1/esf/OtherHash;

.field private akf:Lorg/spongycastle/asn1/esf/CrlIdentifier;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 74
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlValidatedID;->ake:Lorg/spongycastle/asn1/esf/OtherHash;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/esf/OtherHash;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlValidatedID;->akf:Lorg/spongycastle/asn1/esf/CrlIdentifier;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlValidatedID;->akf:Lorg/spongycastle/asn1/esf/CrlIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/esf/CrlIdentifier;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 80
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
