.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bjg:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

.field private size:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 253
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    if-nez v0, :cond_1

    .line 255
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 258
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-object v2, v0

    .line 260
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->qs()I

    move-result v0

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->qs()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 262
    const/4 v0, 0x0

    return v0

    .line 265
    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v3, v0, :cond_4

    .line 267
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->bjg:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v3

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->bjg:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    const/4 v0, 0x0

    return v0

    .line 265
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 280
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->qs()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->bjg:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final qs()I
    .locals 3

    .line 141
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 143
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->bjg:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    return v2

    .line 141
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, -0x1

    return v0
.end method
