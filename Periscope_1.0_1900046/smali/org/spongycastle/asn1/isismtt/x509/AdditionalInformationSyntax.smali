.class public Lorg/spongycastle/asn1/isismtt/x509/AdditionalInformationSyntax;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private amI:Lorg/spongycastle/asn1/x500/DirectoryString;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/AdditionalInformationSyntax;->amI:Lorg/spongycastle/asn1/x500/DirectoryString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/DirectoryString;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
