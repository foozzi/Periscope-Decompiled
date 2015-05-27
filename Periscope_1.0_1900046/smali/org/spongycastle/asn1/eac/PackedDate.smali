.class public Lorg/spongycastle/asn1/eac/PackedDate;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aam:[B


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 98
    instance-of v0, p1, Lorg/spongycastle/asn1/eac/PackedDate;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/eac/PackedDate;

    move-object v2, v0

    .line 105
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/PackedDate;->aam:[B

    iget-object v1, v2, Lorg/spongycastle/asn1/eac/PackedDate;->aam:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/PackedDate;->aam:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 110
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/PackedDate;->aam:[B

    array-length v0, v0

    new-array v2, v0, [C

    .line 112
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-eq v3, v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/PackedDate;->aam:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    aput-char v0, v2, v3

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
