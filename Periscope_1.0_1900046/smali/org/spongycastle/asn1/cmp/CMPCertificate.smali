.class public Lorg/spongycastle/asn1/cmp/CMPCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private acd:Lorg/spongycastle/asn1/x509/Certificate;

.field private ace:Lorg/spongycastle/asn1/x509/AttributeCertificate;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->ace:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->ace:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->acd:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
