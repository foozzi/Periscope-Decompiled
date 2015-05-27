.class Lo/ᒃ$ˊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᒃ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mStrokeWidth:F

.field private ډ:F

.field private final แ:Landroid/graphics/drawable/Drawable$Callback;

.field private final Ꮁ:Landroid/graphics/RectF;

.field private final Ꮣ:Landroid/graphics/Paint;

.field private ᒦ:F

.field private ᒨ:F

.field private ᒫ:F

.field private ᖟ:[I

.field private ᘇ:I

.field private ᙇ:F

.field private ᴧ:F

.field private ᴮ:F

.field private ᴳ:Z

.field private ᴼ:Landroid/graphics/Path;

.field private ᵍ:F

.field private ᵐ:D

.field private ᵚ:I

.field private ᵝ:I

.field private ᵦ:I

.field private final ẋ:Landroid/graphics/Paint;

.field private ẍ:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 2

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/ᒃ$ˊ;->Ꮁ:Landroid/graphics/RectF;

    .line 399
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/ᒃ$ˊ;->mPaint:Landroid/graphics/Paint;

    .line 400
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/ᒃ$ˊ;->Ꮣ:Landroid/graphics/Paint;

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒃ$ˊ;->ᒦ:F

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒃ$ˊ;->ᒨ:F

    .line 406
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒃ$ˊ;->ډ:F

    .line 407
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lo/ᒃ$ˊ;->mStrokeWidth:F

    .line 408
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lo/ᒃ$ˊ;->ᒫ:F

    .line 425
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/ᒃ$ˊ;->ẋ:Landroid/graphics/Paint;

    .line 429
    iput-object p1, p0, Lo/ᒃ$ˊ;->แ:Landroid/graphics/drawable/Drawable$Callback;

    .line 431
    iget-object v0, p0, Lo/ᒃ$ˊ;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 432
    iget-object v0, p0, Lo/ᒃ$ˊ;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 433
    iget-object v0, p0, Lo/ᒃ$ˊ;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 435
    iget-object v0, p0, Lo/ᒃ$ˊ;->Ꮣ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 436
    iget-object v0, p0, Lo/ᒃ$ˊ;->Ꮣ:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 437
    return-void
.end method

.method private invalidateSelf()V
    .locals 2

    .line 691
    iget-object v0, p0, Lo/ᒃ$ˊ;->แ:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    return-void
.end method

.method private ˊ(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 7

    .line 480
    iget-boolean v0, p0, Lo/ᒃ$ˊ;->ᴳ:Z

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lo/ᒃ$ˊ;->ᴼ:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/ᒃ$ˊ;->ᴼ:Landroid/graphics/Path;

    .line 483
    iget-object v0, p0, Lo/ᒃ$ˊ;->ᴼ:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    .line 485
    :cond_0
    iget-object v0, p0, Lo/ᒃ$ˊ;->ᴼ:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 490
    :goto_0
    iget v0, p0, Lo/ᒃ$ˊ;->ᒫ:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lo/ᒃ$ˊ;->ᵍ:F

    mul-float v4, v0, v1

    .line 491
    iget-wide v0, p0, Lo/ᒃ$ˊ;->ᵐ:D

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v5, v0

    .line 492
    iget-wide v0, p0, Lo/ᒃ$ˊ;->ᵐ:D

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v6, v0

    .line 498
    iget-object v0, p0, Lo/ᒃ$ˊ;->ᴼ:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 499
    iget-object v0, p0, Lo/ᒃ$ˊ;->ᴼ:Landroid/graphics/Path;

    iget v1, p0, Lo/ᒃ$ˊ;->ᵚ:I

    int-to-float v1, v1

    iget v2, p0, Lo/ᒃ$ˊ;->ᵍ:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 500
    iget-object v0, p0, Lo/ᒃ$ˊ;->ᴼ:Landroid/graphics/Path;

    iget v1, p0, Lo/ᒃ$ˊ;->ᵚ:I

    int-to-float v1, v1

    iget v2, p0, Lo/ᒃ$ˊ;->ᵍ:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lo/ᒃ$ˊ;->ᵝ:I

    int-to-float v2, v2

    iget v3, p0, Lo/ᒃ$ˊ;->ᵍ:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 502
    iget-object v0, p0, Lo/ᒃ$ˊ;->ᴼ:Landroid/graphics/Path;

    sub-float v1, v5, v4

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->offset(FF)V

    .line 503
    iget-object v0, p0, Lo/ᒃ$ˊ;->ᴼ:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 505
    iget-object v0, p0, Lo/ᒃ$ˊ;->Ꮣ:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/ᒃ$ˊ;->ᖟ:[I

    iget v2, p0, Lo/ᒃ$ˊ;->ᘇ:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 506
    add-float v0, p2, p3

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 508
    iget-object v0, p0, Lo/ᒃ$ˊ;->ᴼ:Landroid/graphics/Path;

    iget-object v1, p0, Lo/ᒃ$ˊ;->Ꮣ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 510
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10

    .line 458
    iget-object v6, p0, Lo/ᒃ$ˊ;->Ꮁ:Landroid/graphics/RectF;

    .line 459
    invoke-virtual {v6, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 460
    iget v0, p0, Lo/ᒃ$ˊ;->ᒫ:F

    iget v1, p0, Lo/ᒃ$ˊ;->ᒫ:F

    invoke-virtual {v6, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 462
    iget v0, p0, Lo/ᒃ$ˊ;->ᒦ:F

    iget v1, p0, Lo/ᒃ$ˊ;->ډ:F

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v7, v0, v1

    .line 463
    iget v0, p0, Lo/ᒃ$ˊ;->ᒨ:F

    iget v1, p0, Lo/ᒃ$ˊ;->ډ:F

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v8, v0, v1

    .line 464
    sub-float v9, v8, v7

    .line 466
    iget-object v0, p0, Lo/ᒃ$ˊ;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/ᒃ$ˊ;->ᖟ:[I

    iget v2, p0, Lo/ᒃ$ˊ;->ᘇ:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 467
    move-object v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v9

    iget-object v5, p0, Lo/ᒃ$ˊ;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 469
    invoke-direct {p0, p1, v7, v9, p2}, Lo/ᒃ$ˊ;->ˊ(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 471
    iget v0, p0, Lo/ᒃ$ˊ;->ᵦ:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    .line 472
    iget-object v0, p0, Lo/ᒃ$ˊ;->ẋ:Landroid/graphics/Paint;

    iget v1, p0, Lo/ᒃ$ˊ;->ẍ:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 473
    iget-object v0, p0, Lo/ᒃ$ˊ;->ẋ:Landroid/graphics/Paint;

    iget v1, p0, Lo/ᒃ$ˊ;->ᵦ:I

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 474
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lo/ᒃ$ˊ;->ẋ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 477
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 555
    iget v0, p0, Lo/ᒃ$ˊ;->ᵦ:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 569
    iget v0, p0, Lo/ᒃ$ˊ;->mStrokeWidth:F

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 548
    iput p1, p0, Lo/ᒃ$ˊ;->ᵦ:I

    .line 549
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 440
    iput p1, p0, Lo/ᒃ$ˊ;->ẍ:I

    .line 441
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 540
    iget-object v0, p0, Lo/ᒃ$ˊ;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 541
    invoke-direct {p0}, Lo/ᒃ$ˊ;->invalidateSelf()V

    .line 542
    return-void
.end method

.method public setColors([I)V
    .locals 1

    .line 518
    iput-object p1, p0, Lo/ᒃ$ˊ;->ᖟ:[I

    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ᒃ$ˊ;->ˮ(I)V

    .line 521
    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 604
    iput p1, p0, Lo/ᒃ$ˊ;->ډ:F

    .line 605
    invoke-direct {p0}, Lo/ᒃ$ˊ;->invalidateSelf()V

    .line 606
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 562
    iput p1, p0, Lo/ᒃ$ˊ;->mStrokeWidth:F

    .line 563
    iget-object v0, p0, Lo/ᒃ$ˊ;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 564
    invoke-direct {p0}, Lo/ᒃ$ˊ;->invalidateSelf()V

    .line 565
    return-void
.end method

.method public ɩ()V
    .locals 2

    .line 536
    iget v0, p0, Lo/ᒃ$ˊ;->ᘇ:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lo/ᒃ$ˊ;->ᖟ:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lo/ᒃ$ˊ;->ᘇ:I

    .line 537
    return-void
.end method

.method public ʵ()F
    .locals 1

    .line 580
    iget v0, p0, Lo/ᒃ$ˊ;->ᒦ:F

    return v0
.end method

.method public ʸ()F
    .locals 1

    .line 584
    iget v0, p0, Lo/ᒃ$ˊ;->ᙇ:F

    return v0
.end method

.method public ʼ(II)V
    .locals 6

    .line 614
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v4, v0

    .line 616
    iget-wide v0, p0, Lo/ᒃ$ˊ;->ᵐ:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_1

    .line 617
    :cond_0
    iget v0, p0, Lo/ᒃ$ˊ;->mStrokeWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v5, v0

    goto :goto_0

    .line 619
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v4, v0

    float-to-double v0, v0

    iget-wide v2, p0, Lo/ᒃ$ˊ;->ᵐ:D

    sub-double/2addr v0, v2

    double-to-float v5, v0

    .line 621
    :goto_0
    iput v5, p0, Lo/ᒃ$ˊ;->ᒫ:F

    .line 622
    return-void
.end method

.method public ʾ(Z)V
    .locals 1

    .line 645
    iget-boolean v0, p0, Lo/ᒃ$ˊ;->ᴳ:Z

    if-eq v0, p1, :cond_0

    .line 646
    iput-boolean p1, p0, Lo/ᒃ$ˊ;->ᴳ:Z

    .line 647
    invoke-direct {p0}, Lo/ᒃ$ˊ;->invalidateSelf()V

    .line 649
    :cond_0
    return-void
.end method

.method public ʿ(F)V
    .locals 0

    .line 574
    iput p1, p0, Lo/ᒃ$ˊ;->ᒦ:F

    .line 575
    invoke-direct {p0}, Lo/ᒃ$ˊ;->invalidateSelf()V

    .line 576
    return-void
.end method

.method public ˀ()F
    .locals 1

    .line 588
    iget v0, p0, Lo/ᒃ$ˊ;->ᴧ:F

    return v0
.end method

.method public ˁ()F
    .locals 1

    .line 599
    iget v0, p0, Lo/ᒃ$ˊ;->ᒨ:F

    return v0
.end method

.method public ˈ(F)V
    .locals 0

    .line 593
    iput p1, p0, Lo/ᒃ$ˊ;->ᒨ:F

    .line 594
    invoke-direct {p0}, Lo/ᒃ$ˊ;->invalidateSelf()V

    .line 595
    return-void
.end method

.method public ˊ(D)V
    .locals 0

    .line 634
    iput-wide p1, p0, Lo/ᒃ$ˊ;->ᵐ:D

    .line 635
    return-void
.end method

.method public ˢ()D
    .locals 2

    .line 638
    iget-wide v0, p0, Lo/ᒃ$ˊ;->ᵐ:D

    return-wide v0
.end method

.method public ˤ()F
    .locals 1

    .line 665
    iget v0, p0, Lo/ᒃ$ˊ;->ᴮ:F

    return v0
.end method

.method public ˮ(I)V
    .locals 0

    .line 528
    iput p1, p0, Lo/ᒃ$ˊ;->ᘇ:I

    .line 529
    return-void
.end method

.method public ι()V
    .locals 1

    .line 673
    iget v0, p0, Lo/ᒃ$ˊ;->ᒦ:F

    iput v0, p0, Lo/ᒃ$ˊ;->ᙇ:F

    .line 674
    iget v0, p0, Lo/ᒃ$ˊ;->ᒨ:F

    iput v0, p0, Lo/ᒃ$ˊ;->ᴧ:F

    .line 675
    iget v0, p0, Lo/ᒃ$ˊ;->ډ:F

    iput v0, p0, Lo/ᒃ$ˊ;->ᴮ:F

    .line 676
    return-void
.end method

.method public ৲()V
    .locals 1

    .line 682
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒃ$ˊ;->ᙇ:F

    .line 683
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒃ$ˊ;->ᴧ:F

    .line 684
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒃ$ˊ;->ᴮ:F

    .line 685
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ᒃ$ˊ;->ʿ(F)V

    .line 686
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ᒃ$ˊ;->ˈ(F)V

    .line 687
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ᒃ$ˊ;->setRotation(F)V

    .line 688
    return-void
.end method

.method public ι(F)V
    .locals 1

    .line 655
    iget v0, p0, Lo/ᒃ$ˊ;->ᵍ:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 656
    iput p1, p0, Lo/ᒃ$ˊ;->ᵍ:F

    .line 657
    invoke-direct {p0}, Lo/ᒃ$ˊ;->invalidateSelf()V

    .line 659
    :cond_0
    return-void
.end method

.method public ι(FF)V
    .locals 1

    .line 450
    float-to-int v0, p1

    iput v0, p0, Lo/ᒃ$ˊ;->ᵚ:I

    .line 451
    float-to-int v0, p2

    iput v0, p0, Lo/ᒃ$ˊ;->ᵝ:I

    .line 452
    return-void
.end method
