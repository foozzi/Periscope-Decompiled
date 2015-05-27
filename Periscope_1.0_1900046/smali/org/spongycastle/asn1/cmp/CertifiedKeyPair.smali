.class public Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private acT:Lorg/spongycastle/asn1/cmp/CertOrEncCert;

.field private acU:Lorg/spongycastle/asn1/crmf/EncryptedValue;

.field private acV:Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 111
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->acT:Lorg/spongycastle/asn1/cmp/CertOrEncCert;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->acU:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->acU:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->acV:Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->acV:Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
