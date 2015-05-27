.class public Lorg/spongycastle/asn1/esf/OcspResponsesID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private akx:Lorg/spongycastle/asn1/esf/OcspIdentifier;

.field private aky:Lorg/spongycastle/asn1/esf/OtherHash;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 75
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OcspResponsesID;->akx:Lorg/spongycastle/asn1/esf/OcspIdentifier;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 77
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OcspResponsesID;->aky:Lorg/spongycastle/asn1/esf/OtherHash;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OcspResponsesID;->aky:Lorg/spongycastle/asn1/esf/OtherHash;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 81
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
