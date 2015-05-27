.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;
.super Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;
.source ""


# instance fields
.field private bji:Z

.field private bjj:Z

.field private bjk:I

.field private bjl:[I


# direct methods
.method private sA()Z
    .locals 5

    .line 533
    const/4 v4, 0x0

    .line 535
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biY:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 536
    const/4 v3, 0x0

    .line 537
    .line 539
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 540
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sk()V

    .line 541
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biY:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ه(I)V

    .line 542
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ه(I)V

    .line 543
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    const/4 v4, 0x1

    .line 546
    return v4
.end method

.method private sy()Z
    .locals 6

    .line 449
    const/4 v5, 0x0

    .line 450
    const/4 v4, 0x0

    .line 452
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biY:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 453
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ه(I)V

    .line 454
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biY:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ه(I)V

    .line 455
    const/4 v3, 0x1

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biY:I

    if-ge v3, v0, :cond_1

    if-nez v5, :cond_1

    .line 457
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ه(I)V

    .line 458
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sl()Z

    move-result v5

    .line 459
    add-int/lit8 v4, v4, 0x1

    .line 460
    if-eqz v5, :cond_0

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->bji:Z

    .line 463
    iput v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->bjk:I

    .line 464
    return v5

    .line 466
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ډ(I)V

    .line 467
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sl()Z

    move-result v5

    .line 455
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 470
    :cond_1
    return v5
.end method

.method private sz()Z
    .locals 8

    .line 484
    const/4 v7, 0x0

    .line 485
    const/4 v6, 0x0

    .line 487
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biY:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 488
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ه(I)V

    .line 489
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biY:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ه(I)V

    .line 490
    const/4 v3, 0x1

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biY:I

    add-int/lit8 v0, v0, -0x3

    if-gt v3, v0, :cond_7

    if-nez v7, :cond_7

    .line 492
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ه(I)V

    .line 493
    add-int/lit8 v4, v3, 0x1

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biY:I

    add-int/lit8 v0, v0, -0x2

    if-gt v4, v0, :cond_6

    if-nez v7, :cond_6

    .line 495
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ه(I)V

    .line 496
    add-int/lit8 v5, v4, 0x1

    :goto_2
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biY:I

    add-int/lit8 v0, v0, -0x1

    if-gt v5, v0, :cond_5

    if-nez v7, :cond_5

    .line 498
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ه(I)V

    .line 499
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biY:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    :goto_3
    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_4

    :cond_1
    const/4 v1, 0x0

    :goto_4
    or-int/2addr v0, v1

    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_5

    :cond_2
    const/4 v1, 0x0

    :goto_5
    or-int/2addr v0, v1

    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_6

    :cond_3
    const/4 v1, 0x0

    :goto_6
    or-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 502
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sl()Z

    move-result v7

    .line 503
    add-int/lit8 v6, v6, 0x1

    .line 504
    if-eqz v7, :cond_4

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->bjj:Z

    .line 507
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->bjl:[I

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 508
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->bjl:[I

    const/4 v1, 0x1

    aput v4, v0, v1

    .line 509
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->bjl:[I

    const/4 v1, 0x2

    aput v5, v0, v1

    .line 510
    return v7

    .line 513
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ډ(I)V

    .line 496
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 515
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ډ(I)V

    .line 493
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 517
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ډ(I)V

    .line 490
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 520
    :cond_7
    return v7
.end method


# virtual methods
.method protected su()V
    .locals 1

    .line 411
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->sy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    return-void

    .line 415
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->sz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    return-void

    .line 419
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->sA()Z

    .line 420
    return-void
.end method
