.class public Lorg/spongycastle/asn1/cmp/CertOrEncCert;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private acJ:Lorg/spongycastle/asn1/cmp/CMPCertificate;

.field private acK:Lorg/spongycastle/asn1/crmf/EncryptedValue;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 89
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;->acJ:Lorg/spongycastle/asn1/cmp/CMPCertificate;

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;->acJ:Lorg/spongycastle/asn1/cmp/CMPCertificate;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;->acK:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
