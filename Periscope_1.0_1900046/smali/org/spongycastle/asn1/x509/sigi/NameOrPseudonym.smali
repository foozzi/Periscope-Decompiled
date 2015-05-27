.class public Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private aCA:Lorg/spongycastle/asn1/x500/DirectoryString;

.field private aCB:Lorg/spongycastle/asn1/ASN1Sequence;

.field private aCz:Lorg/spongycastle/asn1/x500/DirectoryString;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;->aCz:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;->aCz:Lorg/spongycastle/asn1/x500/DirectoryString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/DirectoryString;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 184
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;->aCA:Lorg/spongycastle/asn1/x500/DirectoryString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 185
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;->aCB:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 186
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
