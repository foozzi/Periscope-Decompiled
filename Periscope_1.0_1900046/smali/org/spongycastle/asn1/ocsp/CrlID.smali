.class public Lorg/spongycastle/asn1/ocsp/CrlID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aoS:Lorg/spongycastle/asn1/DERIA5String;

.field private aoT:Lorg/spongycastle/asn1/ASN1Integer;

.field private aoU:Lorg/spongycastle/asn1/ASN1GeneralizedTime;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 91
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/CrlID;->aoS:Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/CrlID;->aoS:Lorg/spongycastle/asn1/DERIA5String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/CrlID;->aoT:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/CrlID;->aoT:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/CrlID;->aoU:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_2

    .line 105
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/CrlID;->aoU:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 108
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
