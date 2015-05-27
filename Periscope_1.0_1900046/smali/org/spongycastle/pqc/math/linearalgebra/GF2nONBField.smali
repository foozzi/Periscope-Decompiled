.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;
.super Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;
.source ""


# instance fields
.field private bjd:I

.field private bjf:I

.field private mLength:I


# virtual methods
.method protected su()V
    .locals 7

    .line 299
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->bjf:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 301
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->biY:I

    add-int/lit8 v1, v1, 0x1

    const-string v2, "ALL"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    goto :goto_1

    .line 303
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->bjf:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 306
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->biY:I

    add-int/lit8 v0, v0, 0x1

    const-string v1, "ONE"

    invoke-direct {v3, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 308
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->biY:I

    add-int/lit8 v0, v0, 0x1

    const-string v1, "X"

    invoke-direct {v4, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 309
    invoke-virtual {v4, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 313
    const/4 v6, 0x1

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->biY:I

    if-ge v6, v0, :cond_1

    .line 316
    move-object v5, v3

    .line 318
    move-object v3, v4

    .line 320
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sp()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    .line 321
    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 313
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 323
    :cond_1
    iput-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 325
    :cond_2
    :goto_1
    return-void
.end method

.method sw()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    return v0
.end method

.method sx()I
    .locals 1

    .line 163
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->bjd:I

    return v0
.end method
