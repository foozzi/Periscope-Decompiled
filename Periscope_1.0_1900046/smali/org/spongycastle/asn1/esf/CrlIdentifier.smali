.class public Lorg/spongycastle/asn1/esf/CrlIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ajY:Lorg/spongycastle/asn1/x500/X500Name;

.field private ajZ:Lorg/spongycastle/asn1/ASN1UTCTime;

.field private aka:Lorg/spongycastle/asn1/ASN1Integer;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 96
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlIdentifier;->ajY:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/X500Name;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 98
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlIdentifier;->ajZ:Lorg/spongycastle/asn1/ASN1UTCTime;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlIdentifier;->aka:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlIdentifier;->aka:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
