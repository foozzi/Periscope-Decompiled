.class public Lorg/spongycastle/asn1/eac/ECDSAPublicKey;
.super Lorg/spongycastle/asn1/eac/PublicKeyDataObject;
.source ""


# instance fields
.field private ajA:Ljava/math/BigInteger;

.field private ajB:Ljava/math/BigInteger;

.field private ajC:[B

.field private ajD:Ljava/math/BigInteger;

.field private ajE:[B

.field private ajF:Ljava/math/BigInteger;

.field private ajG:I

.field private ajy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private ajz:Ljava/math/BigInteger;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 338
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ˊ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Z)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fA()Ljava/math/BigInteger;
    .locals 2

    .line 285
    iget v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajG:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajB:Ljava/math/BigInteger;

    return-object v0

    .line 291
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public fu()[B
    .locals 2

    .line 130
    iget v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajG:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajC:[B

    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public fv()Ljava/math/BigInteger;
    .locals 2

    .line 156
    iget v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajG:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajF:Ljava/math/BigInteger;

    return-object v0

    .line 162
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public fw()Ljava/math/BigInteger;
    .locals 2

    .line 182
    iget v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajG:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajA:Ljava/math/BigInteger;

    return-object v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public fx()Ljava/math/BigInteger;
    .locals 2

    .line 208
    iget v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajG:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajD:Ljava/math/BigInteger;

    return-object v0

    .line 214
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public fy()Ljava/math/BigInteger;
    .locals 2

    .line 234
    iget v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajG:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajz:Ljava/math/BigInteger;

    return-object v0

    .line 240
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public fz()[B
    .locals 2

    .line 259
    iget v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajG:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->ajE:[B

    return-object v0

    .line 265
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Z)Lorg/spongycastle/asn1/ASN1EncodableVector;
    .locals 5

    .line 316
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 317
    invoke-virtual {v4, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 319
    if-nez p2, :cond_0

    .line 321
    new-instance v0, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->fy()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 322
    new-instance v0, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->fw()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 323
    new-instance v0, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->fA()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 324
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->fu()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 325
    new-instance v0, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->fx()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 327
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->fz()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 328
    if-nez p2, :cond_1

    .line 330
    new-instance v0, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;->fv()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 333
    :cond_1
    return-object v4
.end method
