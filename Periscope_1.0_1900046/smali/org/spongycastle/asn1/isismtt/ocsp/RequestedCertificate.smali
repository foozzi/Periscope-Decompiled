.class public Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private amF:Lorg/spongycastle/asn1/x509/Certificate;

.field private amG:[B

.field private amH:[B


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 171
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->amG:[B

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->amG:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->amH:[B

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->amH:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 179
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->amF:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
