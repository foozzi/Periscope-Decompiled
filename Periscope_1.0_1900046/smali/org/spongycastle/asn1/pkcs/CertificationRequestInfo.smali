.class public Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field aej:Lorg/spongycastle/asn1/ASN1Set;

.field aek:Lorg/spongycastle/asn1/ASN1Integer;

.field apZ:Lorg/spongycastle/asn1/x500/X500Name;

.field aqa:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 151
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 153
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 154
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->apZ:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 155
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->aqa:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 157
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->aej:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->aej:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 162
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
