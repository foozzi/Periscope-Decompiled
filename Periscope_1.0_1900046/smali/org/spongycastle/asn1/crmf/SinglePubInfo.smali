.class public Lorg/spongycastle/asn1/crmf/SinglePubInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private agQ:Lorg/spongycastle/asn1/ASN1Integer;

.field private agR:Lorg/spongycastle/asn1/x509/GeneralName;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 61
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 63
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/SinglePubInfo;->agQ:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 65
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/SinglePubInfo;->agR:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/SinglePubInfo;->agR:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 70
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method