.class public Lorg/spongycastle/asn1/ess/ContentHints;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aew:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private akX:Lorg/spongycastle/asn1/DERUTF8String;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 83
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/ContentHints;->akX:Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/ContentHints;->akX:Lorg/spongycastle/asn1/DERUTF8String;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/ContentHints;->aew:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 92
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
