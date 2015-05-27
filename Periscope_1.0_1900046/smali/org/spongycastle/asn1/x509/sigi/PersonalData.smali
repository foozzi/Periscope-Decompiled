.class public Lorg/spongycastle/asn1/x509/sigi/PersonalData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aCC:Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

.field private aCD:Ljava/math/BigInteger;

.field private aCE:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private aCF:Lorg/spongycastle/asn1/x500/DirectoryString;

.field private aCG:Ljava/lang/String;

.field private aCH:Lorg/spongycastle/asn1/x500/DirectoryString;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 189
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 190
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->aCC:Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 191
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->aCD:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->aCD:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->aCE:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->aCE:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 199
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->aCF:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz v0, :cond_2

    .line 201
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->aCF:Lorg/spongycastle/asn1/x500/DirectoryString;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 203
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->aCG:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 205
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DERPrintableString;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->aCG:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 207
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->aCH:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz v0, :cond_4

    .line 209
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->aCH:Lorg/spongycastle/asn1/x500/DirectoryString;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 211
    :cond_4
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
