.class public Lorg/spongycastle/asn1/DERT61UTF8String;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# instance fields
.field private aas:[B


# virtual methods
.method ex()Z
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/spongycastle/asn1/DERT61UTF8String;->aas:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERT61UTF8String;->aas:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/DERT61UTF8String;->aas:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->і([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/spongycastle/asn1/DERT61UTF8String;->aas:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERT61UTF8String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/DERT61UTF8String;->aas:[B

    const/16 v1, 0x14

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    .line 127
    return-void
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 2

    .line 142
    instance-of v0, p1, Lorg/spongycastle/asn1/DERT61UTF8String;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/DERT61UTF8String;->aas:[B

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/asn1/DERT61UTF8String;

    iget-object v1, v1, Lorg/spongycastle/asn1/DERT61UTF8String;->aas:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method
