.class public Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ajI:Ljava/math/BigInteger;

.field private asR:Ljava/math/BigInteger;

.field private asS:Ljava/math/BigInteger;

.field private asT:Ljava/math/BigInteger;

.field private asU:Ljava/math/BigInteger;

.field private asV:Ljava/math/BigInteger;

.field private asW:Ljava/math/BigInteger;

.field private asX:Ljava/math/BigInteger;

.field private asY:Lorg/spongycastle/asn1/ASN1Sequence;

.field private version:I


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 170
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 172
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget v1, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->version:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 173
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 174
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 175
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 176
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->ge()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 177
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->gf()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 178
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->gg()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 179
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->gh()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 180
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->gi()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 182
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->asY:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->asY:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 187
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public ge()Ljava/math/BigInteger;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->asT:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->ajI:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->asS:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->asR:Ljava/math/BigInteger;

    return-object v0
.end method

.method public gf()Ljava/math/BigInteger;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->asU:Ljava/math/BigInteger;

    return-object v0
.end method

.method public gg()Ljava/math/BigInteger;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->asV:Ljava/math/BigInteger;

    return-object v0
.end method

.method public gh()Ljava/math/BigInteger;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->asW:Ljava/math/BigInteger;

    return-object v0
.end method

.method public gi()Ljava/math/BigInteger;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->asX:Ljava/math/BigInteger;

    return-object v0
.end method
