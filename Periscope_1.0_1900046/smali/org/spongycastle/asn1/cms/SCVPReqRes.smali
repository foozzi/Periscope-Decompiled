.class public Lorg/spongycastle/asn1/cms/SCVPReqRes;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private final afE:Lorg/spongycastle/asn1/cms/ContentInfo;

.field private final afF:Lorg/spongycastle/asn1/cms/ContentInfo;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 97
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;->afE:Lorg/spongycastle/asn1/cms/ContentInfo;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;->afE:Lorg/spongycastle/asn1/cms/ContentInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;->afF:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 106
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
