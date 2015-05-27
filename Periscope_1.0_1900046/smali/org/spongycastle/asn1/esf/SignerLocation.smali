.class public Lorg/spongycastle/asn1/esf/SignerLocation;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private akU:Lorg/spongycastle/asn1/DERUTF8String;

.field private akV:Lorg/spongycastle/asn1/DERUTF8String;

.field private akW:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 143
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 145
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->akU:Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->akU:Lorg/spongycastle/asn1/DERUTF8String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->akV:Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->akV:Lorg/spongycastle/asn1/DERUTF8String;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 155
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->akW:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 157
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->akW:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 160
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
