.class public Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ads:Lorg/spongycastle/asn1/x509/GeneralName;

.field private agO:Lorg/spongycastle/asn1/crmf/PKMACValue;

.field private agP:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 119
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 121
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;->ads:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;->ads:Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;->agO:Lorg/spongycastle/asn1/crmf/PKMACValue;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 130
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;->agP:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 132
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
