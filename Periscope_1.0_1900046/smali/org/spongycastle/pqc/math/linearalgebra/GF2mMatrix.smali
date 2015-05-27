.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;
.super Lorg/spongycastle/pqc/math/linearalgebra/Matrix;
.source ""


# instance fields
.field protected bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field protected biL:[[I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 319
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;

    if-nez v0, :cond_1

    .line 321
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 324
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;

    move-object v2, v0

    .line 326
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->bjp:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ne v0, v1, :cond_2

    iget v0, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-eq v0, v1, :cond_3

    .line 330
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 333
    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->bjp:I

    if-ge v3, v0, :cond_6

    .line 335
    const/4 v4, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v4, v0, :cond_5

    .line 337
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->biL:[[I

    aget-object v0, v0, v3

    aget v0, v0, v4

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->biL:[[I

    aget-object v1, v1, v3

    aget v1, v1, v4

    if-eq v0, v1, :cond_4

    .line 339
    const/4 v0, 0x0

    return v0

    .line 335
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 333
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 344
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 349
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->bjp:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    add-int v2, v0, v1

    .line 350
    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->bjp:I

    if-ge v3, v0, :cond_1

    .line 352
    const/4 v4, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v4, v0, :cond_0

    .line 354
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->biL:[[I

    aget-object v1, v1, v3

    aget v1, v1, v4

    add-int v2, v0, v1

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 350
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->bjp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Matrix over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->bjp:I

    if-ge v4, v0, :cond_1

    .line 367
    const/4 v5, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v5, v0, :cond_0

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->biL:[[I

    aget-object v2, v2, v4

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->แ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 367
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 374
    :cond_1
    return-object v3
.end method
