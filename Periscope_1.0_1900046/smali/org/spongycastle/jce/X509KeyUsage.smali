.class public Lorg/spongycastle/jce/X509KeyUsage;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aZM:I


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyUsage;

    iget v1, p0, Lorg/spongycastle/jce/X509KeyUsage;->aZM:I

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyUsage;-><init>(I)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/KeyUsage;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
