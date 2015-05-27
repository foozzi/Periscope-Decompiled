.class public Lorg/spongycastle/asn1/esf/CrlOcspRef;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private akb:Lorg/spongycastle/asn1/esf/CrlListID;

.field private akc:Lorg/spongycastle/asn1/esf/OcspListID;

.field private akd:Lorg/spongycastle/asn1/esf/OtherRevRefs;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 91
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->akb:Lorg/spongycastle/asn1/esf/CrlListID;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 94
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->akb:Lorg/spongycastle/asn1/esf/CrlListID;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/esf/CrlListID;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->akc:Lorg/spongycastle/asn1/esf/OcspListID;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_1

    .line 98
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->akc:Lorg/spongycastle/asn1/esf/OcspListID;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/esf/OcspListID;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->akd:Lorg/spongycastle/asn1/esf/OtherRevRefs;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_2

    .line 102
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->akd:Lorg/spongycastle/asn1/esf/OtherRevRefs;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/esf/OtherRevRefs;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 104
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
