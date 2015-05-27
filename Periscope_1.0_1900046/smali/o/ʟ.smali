.class public Lo/ʟ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ʟ$if;
    }
.end annotation


# static fields
.field private static final ﭙ:Landroid/view/animation/Interpolator;


# instance fields
.field private ԇ:I

.field private ה:[F

.field private כ:I

.field private ٲ:[F

.field private ٳ:[F

.field private ژ:[F

.field private ں:[I

.field private ܥ:[I

.field private ধ:[I

.field private ઽ:I

.field private ร:I

.field private ใ:F

.field private Ꭲ:F

.field private Ꭸ:I

.field private Ꮠ:I

.field private ᐜ:Lo/ⅼ;

.field private final ᒩ:Lo/ʟ$if;

.field private ᓴ:Landroid/view/VelocityTracker;

.field private ᓶ:Landroid/view/View;

.field private ᓷ:Z

.field private final ᓸ:Landroid/view/ViewGroup;

.field private final ᓹ:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 326
    new-instance v0, Lo/ʰ;

    invoke-direct {v0}, Lo/ʰ;-><init>()V

    sput-object v0, Lo/ʟ;->ﭙ:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ʟ$if;)V
    .locals 4

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lo/ʟ;->ઽ:I

    .line 333
    new-instance v0, Lo/г;

    invoke-direct {v0, p0}, Lo/г;-><init>(Lo/ʟ;)V

    iput-object v0, p0, Lo/ʟ;->ᓹ:Ljava/lang/Runnable;

    .line 374
    if-nez p2, :cond_0

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent view may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    if-nez p3, :cond_1

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_1
    iput-object p2, p0, Lo/ʟ;->ᓸ:Landroid/view/ViewGroup;

    .line 382
    iput-object p3, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    .line 384
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 386
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v0, v3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lo/ʟ;->Ꭸ:I

    .line 388
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lo/ʟ;->כ:I

    .line 389
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lo/ʟ;->ใ:F

    .line 390
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lo/ʟ;->Ꭲ:F

    .line 391
    sget-object v0, Lo/ʟ;->ﭙ:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0}, Lo/ⅼ;->ˊ(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lo/ⅼ;

    move-result-object v0

    iput-object v0, p0, Lo/ʟ;->ᐜ:Lo/ⅼ;

    .line 392
    return-void
.end method

.method private ʾ(FF)V
    .locals 2

    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ʟ;->ᓷ:Z

    .line 767
    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    iget-object v1, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lo/ʟ$if;->ˋ(Landroid/view/View;FF)V

    .line 768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ʟ;->ᓷ:Z

    .line 770
    iget v0, p0, Lo/ʟ;->ԇ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 772
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ʟ;->ᑊ(I)V

    .line 774
    :cond_0
    return-void
.end method

.method private ˉ(II)I
    .locals 3

    .line 1473
    const/4 v2, 0x0

    .line 1475
    iget-object v0, p0, Lo/ʟ;->ᓸ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget v1, p0, Lo/ʟ;->Ꭸ:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    .line 1476
    :cond_0
    iget-object v0, p0, Lo/ʟ;->ᓸ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    iget v1, p0, Lo/ʟ;->Ꭸ:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_1

    or-int/lit8 v2, v2, 0x4

    .line 1477
    :cond_1
    iget-object v0, p0, Lo/ʟ;->ᓸ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    iget v1, p0, Lo/ʟ;->Ꭸ:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_2

    or-int/lit8 v2, v2, 0x2

    .line 1478
    :cond_2
    iget-object v0, p0, Lo/ʟ;->ᓸ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    iget v1, p0, Lo/ʟ;->Ꭸ:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_3

    or-int/lit8 v2, v2, 0x8

    .line 1480
    :cond_3
    return v2
.end method

.method private ˊ(F)F
    .locals 4

    .line 681
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 682
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 683
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private ˊ(Landroid/view/View;IIII)I
    .locals 13

    .line 604
    iget v0, p0, Lo/ʟ;->Ꭲ:F

    float-to-int v0, v0

    iget v1, p0, Lo/ʟ;->ใ:F

    float-to-int v1, v1

    move/from16 v2, p4

    invoke-direct {p0, v2, v0, v1}, Lo/ʟ;->ᐝ(III)I

    move-result p4

    .line 605
    iget v0, p0, Lo/ʟ;->Ꭲ:F

    float-to-int v0, v0

    iget v1, p0, Lo/ʟ;->ใ:F

    float-to-int v1, v1

    move/from16 v2, p5

    invoke-direct {p0, v2, v0, v1}, Lo/ʟ;->ᐝ(III)I

    move-result p5

    .line 606
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 607
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 608
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 609
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 610
    add-int v7, v5, v6

    .line 611
    add-int v8, v3, v4

    .line 613
    if-eqz p4, :cond_0

    int-to-float v0, v5

    int-to-float v1, v7

    div-float v9, v0, v1

    goto :goto_0

    :cond_0
    int-to-float v0, v3

    int-to-float v1, v8

    div-float v9, v0, v1

    .line 615
    :goto_0
    if-eqz p5, :cond_1

    int-to-float v0, v6

    int-to-float v1, v7

    div-float v10, v0, v1

    goto :goto_1

    :cond_1
    int-to-float v0, v4

    int-to-float v1, v8

    div-float v10, v0, v1

    .line 618
    :goto_1
    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    invoke-virtual {v0, p1}, Lo/ʟ$if;->ʳ(Landroid/view/View;)I

    move-result v0

    move/from16 v1, p4

    invoke-direct {p0, p2, v1, v0}, Lo/ʟ;->ˏ(III)I

    move-result v11

    .line 619
    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    invoke-virtual {v0, p1}, Lo/ʟ$if;->ʴ(Landroid/view/View;)I

    move-result v0

    move/from16 v1, p3

    move/from16 v2, p5

    invoke-direct {p0, v1, v2, v0}, Lo/ʟ;->ˏ(III)I

    move-result v12

    .line 621
    int-to-float v0, v11

    mul-float/2addr v0, v9

    int-to-float v1, v12

    mul-float/2addr v1, v10

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static ˊ(Landroid/view/ViewGroup;FLo/ʟ$if;)Lo/ʟ;
    .locals 3

    .line 360
    invoke-static {p0, p2}, Lo/ʟ;->ˊ(Landroid/view/ViewGroup;Lo/ʟ$if;)Lo/ʟ;

    move-result-object v2

    .line 361
    iget v0, v2, Lo/ʟ;->כ:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Lo/ʟ;->כ:I

    .line 362
    return-object v2
.end method

.method public static ˊ(Landroid/view/ViewGroup;Lo/ʟ$if;)Lo/ʟ;
    .locals 2

    .line 347
    new-instance v0, Lo/ʟ;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lo/ʟ;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ʟ$if;)V

    return-object v0
.end method

.method private ˊ(FFI)V
    .locals 3

    .line 835
    invoke-direct {p0, p3}, Lo/ʟ;->ᐣ(I)V

    .line 836
    iget-object v0, p0, Lo/ʟ;->ה:[F

    iget-object v1, p0, Lo/ʟ;->ٳ:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 837
    iget-object v0, p0, Lo/ʟ;->ٲ:[F

    iget-object v1, p0, Lo/ʟ;->ژ:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 838
    iget-object v0, p0, Lo/ʟ;->ں:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lo/ʟ;->ˉ(II)I

    move-result v1

    aput v1, v0, p3

    .line 839
    iget v0, p0, Lo/ʟ;->ร:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lo/ʟ;->ร:I

    .line 840
    return-void
.end method

.method private ˊ(FFII)Z
    .locals 4

    .line 1251
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1252
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1254
    iget-object v0, p0, Lo/ʟ;->ں:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-ne v0, p4, :cond_0

    iget v0, p0, Lo/ʟ;->Ꮠ:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ʟ;->ধ:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_0

    iget-object v0, p0, Lo/ʟ;->ܥ:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_0

    iget v0, p0, Lo/ʟ;->כ:I

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_1

    iget v0, p0, Lo/ʟ;->כ:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_1

    .line 1258
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1260
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    invoke-virtual {v0, p4}, Lo/ʟ$if;->ᵕ(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1261
    iget-object v0, p0, Lo/ʟ;->ধ:[I

    aget v1, v0, p3

    or-int/2addr v1, p4

    aput v1, v0, p3

    .line 1262
    const/4 v0, 0x0

    return v0

    .line 1264
    :cond_2
    iget-object v0, p0, Lo/ʟ;->ܥ:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-nez v0, :cond_3

    iget v0, p0, Lo/ʟ;->כ:I

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ˊ(Landroid/view/View;FF)Z
    .locals 5

    .line 1278
    if-nez p1, :cond_0

    .line 1279
    const/4 v0, 0x0

    return v0

    .line 1281
    :cond_0
    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    invoke-virtual {v0, p1}, Lo/ʟ$if;->ʳ(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1282
    :goto_0
    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    invoke-virtual {v0, p1}, Lo/ʟ$if;->ʴ(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 1284
    :goto_1
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 1285
    mul-float v0, p2, p2

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    iget v1, p0, Lo/ʟ;->כ:I

    iget v2, p0, Lo/ʟ;->כ:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 1286
    :cond_4
    if-eqz v3, :cond_6

    .line 1287
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lo/ʟ;->כ:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return v0

    .line 1288
    :cond_6
    if-eqz v4, :cond_8

    .line 1289
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lo/ʟ;->כ:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1291
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private ˋ(FFI)V
    .locals 3

    .line 1230
    const/4 v2, 0x0

    .line 1231
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lo/ʟ;->ˊ(FFII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    const/4 v2, 0x1

    .line 1234
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, p2, p1, p3, v0}, Lo/ʟ;->ˊ(FFII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1235
    or-int/lit8 v2, v2, 0x4

    .line 1237
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lo/ʟ;->ˊ(FFII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1238
    or-int/lit8 v2, v2, 0x2

    .line 1240
    :cond_2
    const/16 v0, 0x8

    invoke-direct {p0, p2, p1, p3, v0}, Lo/ʟ;->ˊ(FFII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1241
    or-int/lit8 v2, v2, 0x8

    .line 1244
    :cond_3
    if-eqz v2, :cond_4

    .line 1245
    iget-object v0, p0, Lo/ʟ;->ܥ:[I

    aget v1, v0, p3

    or-int/2addr v1, v2

    aput v1, v0, p3

    .line 1246
    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    invoke-virtual {v0, v2, p3}, Lo/ʟ$if;->ˍ(II)V

    .line 1248
    :cond_4
    return-void
.end method

.method private ˋ(IIII)Z
    .locals 11

    .line 584
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 585
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 586
    sub-int v8, p1, v6

    .line 587
    sub-int v9, p2, v7

    .line 589
    if-nez v8, :cond_0

    if-nez v9, :cond_0

    .line 591
    iget-object v0, p0, Lo/ʟ;->ᐜ:Lo/ⅼ;

    invoke-virtual {v0}, Lo/ⅼ;->abortAnimation()V

    .line 592
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ʟ;->ᑊ(I)V

    .line 593
    const/4 v0, 0x0

    return v0

    .line 596
    :cond_0
    move-object v0, p0

    iget-object v1, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    move v2, v8

    move v3, v9

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lo/ʟ;->ˊ(Landroid/view/View;IIII)I

    move-result v10

    .line 597
    iget-object v0, p0, Lo/ʟ;->ᐜ:Lo/ⅼ;

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lo/ⅼ;->startScroll(IIIII)V

    .line 599
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/ʟ;->ᑊ(I)V

    .line 600
    const/4 v0, 0x1

    return v0
.end method

.method private ˎ(FFF)F
    .locals 2

    .line 674
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 675
    cmpg-float v0, v1, p2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 676
    :cond_0
    cmpl-float v0, v1, p3

    if-lez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    neg-float v0, p3

    :goto_0
    return v0

    .line 677
    :cond_2
    return p1
.end method

.method private ˎ(IIII)V
    .locals 12

    .line 1399
    move v6, p1

    .line 1400
    move v7, p2

    .line 1401
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1402
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1403
    if-eqz p3, :cond_0

    .line 1404
    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    iget-object v1, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Lo/ʟ$if;->ˎ(Landroid/view/View;II)I

    move-result v6

    .line 1405
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    sub-int v1, v6, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1407
    :cond_0
    if-eqz p4, :cond_1

    .line 1408
    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    iget-object v1, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    move/from16 v2, p4

    invoke-virtual {v0, v1, p2, v2}, Lo/ʟ$if;->ˏ(Landroid/view/View;II)I

    move-result v7

    .line 1409
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    sub-int v1, v7, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1412
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 1413
    :cond_2
    sub-int v10, v6, v8

    .line 1414
    sub-int v11, v7, v9

    .line 1415
    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    iget-object v1, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    move v2, v6

    move v3, v7

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lo/ʟ$if;->ˋ(Landroid/view/View;IIII)V

    .line 1418
    :cond_3
    return-void
.end method

.method private ˏ(III)I
    .locals 9

    .line 625
    if-nez p1, :cond_0

    .line 626
    const/4 v0, 0x0

    return v0

    .line 629
    :cond_0
    iget-object v0, p0, Lo/ʟ;->ᓸ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 630
    div-int/lit8 v4, v3, 0x2

    .line 631
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 632
    int-to-float v0, v4

    int-to-float v1, v4

    invoke-direct {p0, v5}, Lo/ʟ;->ˊ(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float v6, v0, v1

    .line 636
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 637
    if-lez p2, :cond_1

    .line 638
    int-to-float v0, p2

    div-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v7, v0, 0x4

    goto :goto_0

    .line 640
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    div-float v8, v0, v1

    .line 641
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, v8

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 643
    :goto_0
    const/16 v0, 0x258

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private ᐝ(III)I
    .locals 2

    .line 657
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 658
    if-ge v1, p2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 659
    :cond_0
    if-le v1, p3, :cond_2

    if-lez p1, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    neg-int v0, p3

    :goto_0
    return v0

    .line 660
    :cond_2
    return p1
.end method

.method private ᐝ(Landroid/view/MotionEvent;)V
    .locals 6

    .line 843
    invoke-static {p1}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;)I

    move-result v1

    .line 844
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 845
    invoke-static {p1, v2}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 846
    invoke-static {p1, v2}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 847
    invoke-static {p1, v2}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 848
    iget-object v0, p0, Lo/ʟ;->ٳ:[F

    aput v4, v0, v3

    .line 849
    iget-object v0, p0, Lo/ʟ;->ژ:[F

    aput v5, v0, v3

    .line 844
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 851
    :cond_0
    return-void
.end method

.method private ᐠ(I)V
    .locals 3

    .line 791
    iget-object v0, p0, Lo/ʟ;->ה:[F

    if-nez v0, :cond_0

    .line 792
    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lo/ʟ;->ה:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 795
    iget-object v0, p0, Lo/ʟ;->ٲ:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 796
    iget-object v0, p0, Lo/ʟ;->ٳ:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 797
    iget-object v0, p0, Lo/ʟ;->ژ:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 798
    iget-object v0, p0, Lo/ʟ;->ں:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 799
    iget-object v0, p0, Lo/ʟ;->ܥ:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 800
    iget-object v0, p0, Lo/ʟ;->ধ:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 801
    iget v0, p0, Lo/ʟ;->ร:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lo/ʟ;->ร:I

    .line 802
    return-void
.end method

.method private ᐣ(I)V
    .locals 11

    .line 805
    iget-object v0, p0, Lo/ʟ;->ה:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ʟ;->ה:[F

    array-length v0, v0

    if-gt v0, p1, :cond_2

    .line 806
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v4, v0, [F

    .line 807
    add-int/lit8 v0, p1, 0x1

    new-array v5, v0, [F

    .line 808
    add-int/lit8 v0, p1, 0x1

    new-array v6, v0, [F

    .line 809
    add-int/lit8 v0, p1, 0x1

    new-array v7, v0, [F

    .line 810
    add-int/lit8 v0, p1, 0x1

    new-array v8, v0, [I

    .line 811
    add-int/lit8 v0, p1, 0x1

    new-array v9, v0, [I

    .line 812
    add-int/lit8 v0, p1, 0x1

    new-array v10, v0, [I

    .line 814
    iget-object v0, p0, Lo/ʟ;->ה:[F

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lo/ʟ;->ה:[F

    iget-object v1, p0, Lo/ʟ;->ה:[F

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    iget-object v0, p0, Lo/ʟ;->ٲ:[F

    iget-object v1, p0, Lo/ʟ;->ٲ:[F

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    iget-object v0, p0, Lo/ʟ;->ٳ:[F

    iget-object v1, p0, Lo/ʟ;->ٳ:[F

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    iget-object v0, p0, Lo/ʟ;->ژ:[F

    iget-object v1, p0, Lo/ʟ;->ژ:[F

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 819
    iget-object v0, p0, Lo/ʟ;->ں:[I

    iget-object v1, p0, Lo/ʟ;->ں:[I

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v8, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    iget-object v0, p0, Lo/ʟ;->ܥ:[I

    iget-object v1, p0, Lo/ʟ;->ܥ:[I

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v9, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 821
    iget-object v0, p0, Lo/ʟ;->ধ:[I

    iget-object v1, p0, Lo/ʟ;->ধ:[I

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v10, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    :cond_1
    iput-object v4, p0, Lo/ʟ;->ה:[F

    .line 825
    iput-object v5, p0, Lo/ʟ;->ٲ:[F

    .line 826
    iput-object v6, p0, Lo/ʟ;->ٳ:[F

    .line 827
    iput-object v7, p0, Lo/ʟ;->ژ:[F

    .line 828
    iput-object v8, p0, Lo/ʟ;->ں:[I

    .line 829
    iput-object v9, p0, Lo/ʟ;->ܥ:[I

    .line 830
    iput-object v10, p0, Lo/ʟ;->ধ:[I

    .line 832
    :cond_2
    return-void
.end method

.method private ᕽ()V
    .locals 2

    .line 777
    iget-object v0, p0, Lo/ʟ;->ה:[F

    if-nez v0, :cond_0

    .line 778
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lo/ʟ;->ה:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 781
    iget-object v0, p0, Lo/ʟ;->ٲ:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 782
    iget-object v0, p0, Lo/ʟ;->ٳ:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 783
    iget-object v0, p0, Lo/ʟ;->ژ:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 784
    iget-object v0, p0, Lo/ʟ;->ں:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 785
    iget-object v0, p0, Lo/ʟ;->ܥ:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 786
    iget-object v0, p0, Lo/ʟ;->ধ:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Lo/ʟ;->ร:I

    .line 788
    return-void
.end method

.method private ᘁ()V
    .locals 5

    .line 1388
    iget-object v0, p0, Lo/ʟ;->ᓴ:Landroid/view/VelocityTracker;

    iget v1, p0, Lo/ʟ;->ใ:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1389
    iget-object v0, p0, Lo/ʟ;->ᓴ:Landroid/view/VelocityTracker;

    iget v1, p0, Lo/ʟ;->ઽ:I

    invoke-static {v0, v1}, Lo/ﹻ;->ˊ(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Lo/ʟ;->Ꭲ:F

    iget v2, p0, Lo/ʟ;->ใ:F

    invoke-direct {p0, v0, v1, v2}, Lo/ʟ;->ˎ(FFF)F

    move-result v3

    .line 1392
    iget-object v0, p0, Lo/ʟ;->ᓴ:Landroid/view/VelocityTracker;

    iget v1, p0, Lo/ʟ;->ઽ:I

    invoke-static {v0, v1}, Lo/ﹻ;->ˋ(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Lo/ʟ;->Ꭲ:F

    iget v2, p0, Lo/ʟ;->ใ:F

    invoke-direct {p0, v0, v1, v2}, Lo/ʟ;->ˎ(FFF)F

    move-result v4

    .line 1395
    invoke-direct {p0, v3, v4}, Lo/ʟ;->ʾ(FF)V

    .line 1396
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 498
    const/4 v0, -0x1

    iput v0, p0, Lo/ʟ;->ઽ:I

    .line 499
    invoke-direct {p0}, Lo/ʟ;->ᕽ()V

    .line 501
    iget-object v0, p0, Lo/ʟ;->ᓴ:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lo/ʟ;->ᓴ:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ʟ;->ᓴ:Landroid/view/VelocityTracker;

    .line 505
    :cond_0
    return-void
.end method

.method public ʻ(Landroid/view/MotionEvent;)Z
    .locals 22

    .line 947
    invoke-static/range {p1 .. p1}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;)I

    move-result v3

    .line 948
    invoke-static/range {p1 .. p1}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;)I

    move-result v4

    .line 950
    if-nez v3, :cond_0

    .line 953
    invoke-virtual/range {p0 .. p0}, Lo/ʟ;->cancel()V

    .line 956
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ᓴ:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 957
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ʟ;->ᓴ:Landroid/view/VelocityTracker;

    .line 959
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ᓴ:Landroid/view/VelocityTracker;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 961
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 963
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 964
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 965
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 966
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lo/ʟ;->ˊ(FFI)V

    .line 968
    float-to-int v0, v5

    float-to-int v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Lo/ʟ;->ˈ(II)Landroid/view/View;

    move-result-object v8

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ᓶ:Landroid/view/View;

    if-ne v8, v0, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lo/ʟ;->ԇ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 972
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v7}, Lo/ʟ;->ʻ(Landroid/view/View;I)Z

    .line 975
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ں:[I

    aget v9, v0, v7

    .line 976
    move-object/from16 v0, p0

    iget v0, v0, Lo/ʟ;->Ꮠ:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_d

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    move-object/from16 v1, p0

    iget v1, v1, Lo/ʟ;->Ꮠ:I

    and-int/2addr v1, v9

    invoke-virtual {v0, v1, v7}, Lo/ʟ$if;->ˌ(II)V

    goto/16 :goto_3

    .line 983
    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 984
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 985
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 987
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v5}, Lo/ʟ;->ˊ(FFI)V

    .line 990
    move-object/from16 v0, p0

    iget v0, v0, Lo/ʟ;->ԇ:I

    if-nez v0, :cond_4

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ں:[I

    aget v8, v0, v5

    .line 992
    move-object/from16 v0, p0

    iget v0, v0, Lo/ʟ;->Ꮠ:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_3

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    move-object/from16 v1, p0

    iget v1, v1, Lo/ʟ;->Ꮠ:I

    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v5}, Lo/ʟ$if;->ˌ(II)V

    .line 995
    :cond_3
    goto/16 :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lo/ʟ;->ԇ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 997
    float-to-int v0, v6

    float-to-int v1, v7

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Lo/ʟ;->ˈ(II)Landroid/view/View;

    move-result-object v8

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ᓶ:Landroid/view/View;

    if-ne v8, v0, :cond_5

    .line 999
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5}, Lo/ʟ;->ʻ(Landroid/view/View;I)Z

    .line 1001
    :cond_5
    goto/16 :goto_3

    .line 1006
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ה:[F

    if-eqz v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ٲ:[F

    if-nez v0, :cond_6

    goto/16 :goto_3

    .line 1009
    :cond_6
    invoke-static/range {p1 .. p1}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;)I

    move-result v5

    .line 1010
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_c

    .line 1011
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1012
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 1013
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ה:[F

    aget v0, v0, v7

    sub-float v10, v8, v0

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ٲ:[F

    aget v0, v0, v7

    sub-float v11, v9, v0

    .line 1017
    float-to-int v0, v8

    float-to-int v1, v9

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Lo/ʟ;->ˈ(II)Landroid/view/View;

    move-result-object v12

    .line 1018
    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v11}, Lo/ʟ;->ˊ(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v13, 0x1

    goto :goto_1

    :cond_7
    const/4 v13, 0x0

    .line 1019
    :goto_1
    if-eqz v13, :cond_9

    .line 1025
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 1026
    float-to-int v0, v10

    add-int v15, v14, v0

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    float-to-int v1, v10

    invoke-virtual {v0, v12, v15, v1}, Lo/ʟ$if;->ˎ(Landroid/view/View;II)I

    move-result v16

    .line 1029
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v17

    .line 1030
    float-to-int v0, v11

    add-int v18, v17, v0

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    float-to-int v1, v11

    move/from16 v2, v18

    invoke-virtual {v0, v12, v2, v1}, Lo/ʟ$if;->ˏ(Landroid/view/View;II)I

    move-result v19

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    invoke-virtual {v0, v12}, Lo/ʟ$if;->ʳ(Landroid/view/View;)I

    move-result v20

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    invoke-virtual {v0, v12}, Lo/ʟ$if;->ʴ(Landroid/view/View;)I

    move-result v21

    .line 1036
    if-eqz v20, :cond_8

    if-lez v20, :cond_9

    move/from16 v0, v16

    if-ne v0, v14, :cond_9

    :cond_8
    if-eqz v21, :cond_c

    if-lez v21, :cond_9

    move/from16 v0, v19

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 1039
    goto :goto_2

    .line 1042
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v7}, Lo/ʟ;->ˋ(FFI)V

    .line 1043
    move-object/from16 v0, p0

    iget v0, v0, Lo/ʟ;->ԇ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 1045
    goto :goto_2

    .line 1048
    :cond_a
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v7}, Lo/ʟ;->ʻ(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1049
    goto :goto_2

    .line 1010
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1052
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lo/ʟ;->ᐝ(Landroid/view/MotionEvent;)V

    .line 1053
    goto :goto_3

    .line 1057
    :pswitch_3
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1058
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lo/ʟ;->ᐠ(I)V

    .line 1059
    goto :goto_3

    .line 1064
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lo/ʟ;->cancel()V

    .line 1069
    :cond_d
    :goto_3
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lo/ʟ;->ԇ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method ʻ(Landroid/view/View;I)Z
    .locals 1

    .line 891
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lo/ʟ;->ઽ:I

    if-ne v0, p2, :cond_0

    .line 893
    const/4 v0, 0x1

    return v0

    .line 895
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    invoke-virtual {v0, p1, p2}, Lo/ʟ$if;->ʽ(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    iput p2, p0, Lo/ʟ;->ઽ:I

    .line 897
    invoke-virtual {p0, p1, p2}, Lo/ʟ;->ᐝ(Landroid/view/View;I)V

    .line 898
    const/4 v0, 0x1

    return v0

    .line 900
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ʼ(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1079
    invoke-static {p1}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1080
    invoke-static {p1}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1082
    if-nez v2, :cond_0

    .line 1085
    invoke-virtual {p0}, Lo/ʟ;->cancel()V

    .line 1088
    :cond_0
    iget-object v0, p0, Lo/ʟ;->ᓴ:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 1089
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lo/ʟ;->ᓴ:Landroid/view/VelocityTracker;

    .line 1091
    :cond_1
    iget-object v0, p0, Lo/ʟ;->ᓴ:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1093
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 1095
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1096
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1097
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1098
    float-to-int v0, v4

    float-to-int v1, v5

    invoke-virtual {p0, v0, v1}, Lo/ʟ;->ˈ(II)Landroid/view/View;

    move-result-object v7

    .line 1100
    invoke-direct {p0, v4, v5, v6}, Lo/ʟ;->ˊ(FFI)V

    .line 1105
    invoke-virtual {p0, v7, v6}, Lo/ʟ;->ʻ(Landroid/view/View;I)Z

    .line 1107
    iget-object v0, p0, Lo/ʟ;->ں:[I

    aget v8, v0, v6

    .line 1108
    iget v0, p0, Lo/ʟ;->Ꮠ:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_e

    .line 1109
    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    iget v1, p0, Lo/ʟ;->Ꮠ:I

    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v6}, Lo/ʟ$if;->ˌ(II)V

    goto/16 :goto_5

    .line 1115
    :pswitch_1
    invoke-static {p1, v3}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1116
    invoke-static {p1, v3}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1117
    invoke-static {p1, v3}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1119
    invoke-direct {p0, v5, v6, v4}, Lo/ʟ;->ˊ(FFI)V

    .line 1122
    iget v0, p0, Lo/ʟ;->ԇ:I

    if-nez v0, :cond_3

    .line 1125
    float-to-int v0, v5

    float-to-int v1, v6

    invoke-virtual {p0, v0, v1}, Lo/ʟ;->ˈ(II)Landroid/view/View;

    move-result-object v7

    .line 1126
    invoke-virtual {p0, v7, v4}, Lo/ʟ;->ʻ(Landroid/view/View;I)Z

    .line 1128
    iget-object v0, p0, Lo/ʟ;->ں:[I

    aget v8, v0, v4

    .line 1129
    iget v0, p0, Lo/ʟ;->Ꮠ:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_2

    .line 1130
    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    iget v1, p0, Lo/ʟ;->Ꮠ:I

    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v4}, Lo/ʟ$if;->ˌ(II)V

    .line 1132
    :cond_2
    goto/16 :goto_5

    :cond_3
    float-to-int v0, v5

    float-to-int v1, v6

    invoke-virtual {p0, v0, v1}, Lo/ʟ;->ʿ(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1137
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lo/ʟ;->ʻ(Landroid/view/View;I)Z

    goto/16 :goto_5

    .line 1143
    :pswitch_2
    iget v0, p0, Lo/ʟ;->ԇ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1144
    iget v0, p0, Lo/ʟ;->ઽ:I

    invoke-static {p1, v0}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1145
    invoke-static {p1, v4}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1146
    invoke-static {p1, v4}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1147
    iget-object v0, p0, Lo/ʟ;->ٳ:[F

    iget v1, p0, Lo/ʟ;->ઽ:I

    aget v0, v0, v1

    sub-float v0, v5, v0

    float-to-int v7, v0

    .line 1148
    iget-object v0, p0, Lo/ʟ;->ژ:[F

    iget v1, p0, Lo/ʟ;->ઽ:I

    aget v0, v0, v1

    sub-float v0, v6, v0

    float-to-int v8, v0

    .line 1150
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, v7

    iget-object v1, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v8

    invoke-direct {p0, v0, v1, v7, v8}, Lo/ʟ;->ˎ(IIII)V

    .line 1152
    invoke-direct {p0, p1}, Lo/ʟ;->ᐝ(Landroid/view/MotionEvent;)V

    .line 1153
    goto/16 :goto_5

    .line 1155
    :cond_4
    invoke-static {p1}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;)I

    move-result v4

    .line 1156
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    .line 1157
    invoke-static {p1, v5}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1158
    invoke-static {p1, v5}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1159
    invoke-static {p1, v5}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 1160
    iget-object v0, p0, Lo/ʟ;->ה:[F

    aget v0, v0, v6

    sub-float v9, v7, v0

    .line 1161
    iget-object v0, p0, Lo/ʟ;->ٲ:[F

    aget v0, v0, v6

    sub-float v10, v8, v0

    .line 1163
    invoke-direct {p0, v9, v10, v6}, Lo/ʟ;->ˋ(FFI)V

    .line 1164
    iget v0, p0, Lo/ʟ;->ԇ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1166
    goto :goto_1

    .line 1169
    :cond_5
    float-to-int v0, v7

    float-to-int v1, v8

    invoke-virtual {p0, v0, v1}, Lo/ʟ;->ˈ(II)Landroid/view/View;

    move-result-object v11

    .line 1170
    invoke-direct {p0, v11, v9, v10}, Lo/ʟ;->ˊ(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v11, v6}, Lo/ʟ;->ʻ(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1172
    goto :goto_1

    .line 1156
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1175
    :cond_7
    :goto_1
    invoke-direct {p0, p1}, Lo/ʟ;->ᐝ(Landroid/view/MotionEvent;)V

    .line 1177
    goto/16 :goto_5

    .line 1181
    :pswitch_3
    invoke-static {p1, v3}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1182
    iget v0, p0, Lo/ʟ;->ԇ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget v0, p0, Lo/ʟ;->ઽ:I

    if-ne v4, v0, :cond_b

    .line 1184
    const/4 v5, -0x1

    .line 1185
    invoke-static {p1}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;)I

    move-result v6

    .line 1186
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_a

    .line 1187
    invoke-static {p1, v7}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v8

    .line 1188
    iget v0, p0, Lo/ʟ;->ઽ:I

    if-ne v8, v0, :cond_8

    .line 1190
    goto :goto_3

    .line 1193
    :cond_8
    invoke-static {p1, v7}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 1194
    invoke-static {p1, v7}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1195
    float-to-int v0, v9

    float-to-int v1, v10

    invoke-virtual {p0, v0, v1}, Lo/ʟ;->ˈ(II)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {p0, v0, v8}, Lo/ʟ;->ʻ(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1197
    iget v5, p0, Lo/ʟ;->ઽ:I

    .line 1198
    goto :goto_4

    .line 1186
    :cond_9
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1202
    :cond_a
    :goto_4
    const/4 v0, -0x1

    if-ne v5, v0, :cond_b

    .line 1204
    invoke-direct {p0}, Lo/ʟ;->ᘁ()V

    .line 1207
    :cond_b
    invoke-direct {p0, v4}, Lo/ʟ;->ᐠ(I)V

    .line 1208
    goto :goto_5

    .line 1212
    :pswitch_4
    iget v0, p0, Lo/ʟ;->ԇ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1213
    invoke-direct {p0}, Lo/ʟ;->ᘁ()V

    .line 1215
    :cond_c
    invoke-virtual {p0}, Lo/ʟ;->cancel()V

    .line 1216
    goto :goto_5

    .line 1220
    :pswitch_5
    iget v0, p0, Lo/ʟ;->ԇ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1221
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/ʟ;->ʾ(FF)V

    .line 1223
    :cond_d
    invoke-virtual {p0}, Lo/ʟ;->cancel()V

    .line 1227
    :cond_e
    :goto_5
    :pswitch_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public ʾ(II)Z
    .locals 7

    .line 1334
    invoke-virtual {p0, p2}, Lo/ʟ;->ᐩ(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1335
    const/4 v0, 0x0

    return v0

    .line 1338
    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1339
    :goto_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 1341
    :goto_1
    iget-object v0, p0, Lo/ʟ;->ٳ:[F

    aget v0, v0, p2

    iget-object v1, p0, Lo/ʟ;->ה:[F

    aget v1, v1, p2

    sub-float v5, v0, v1

    .line 1342
    iget-object v0, p0, Lo/ʟ;->ژ:[F

    aget v0, v0, p2

    iget-object v1, p0, Lo/ʟ;->ٲ:[F

    aget v1, v1, p2

    sub-float v6, v0, v1

    .line 1344
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 1345
    mul-float v0, v5, v5

    mul-float v1, v6, v6

    add-float/2addr v0, v1

    iget v1, p0, Lo/ʟ;->כ:I

    iget v2, p0, Lo/ʟ;->כ:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 1346
    :cond_4
    if-eqz v3, :cond_6

    .line 1347
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lo/ʟ;->כ:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return v0

    .line 1348
    :cond_6
    if-eqz v4, :cond_8

    .line 1349
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lo/ʟ;->כ:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1351
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public ʿ(II)Z
    .locals 1

    .line 1430
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lo/ʟ;->ˋ(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public ʿ(Z)Z
    .locals 11

    .line 722
    iget v0, p0, Lo/ʟ;->ԇ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 723
    iget-object v0, p0, Lo/ʟ;->ᐜ:Lo/ⅼ;

    invoke-virtual {v0}, Lo/ⅼ;->computeScrollOffset()Z

    move-result v6

    .line 724
    iget-object v0, p0, Lo/ʟ;->ᐜ:Lo/ⅼ;

    invoke-virtual {v0}, Lo/ⅼ;->getCurrX()I

    move-result v7

    .line 725
    iget-object v0, p0, Lo/ʟ;->ᐜ:Lo/ⅼ;

    invoke-virtual {v0}, Lo/ⅼ;->getCurrY()I

    move-result v8

    .line 726
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v9, v7, v0

    .line 727
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v10, v8, v0

    .line 729
    if-eqz v9, :cond_0

    .line 730
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 732
    :cond_0
    if-eqz v10, :cond_1

    .line 733
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 736
    :cond_1
    if-nez v9, :cond_2

    if-eqz v10, :cond_3

    .line 737
    :cond_2
    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    iget-object v1, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lo/ʟ$if;->ˋ(Landroid/view/View;IIII)V

    .line 740
    :cond_3
    if-eqz v6, :cond_4

    iget-object v0, p0, Lo/ʟ;->ᐜ:Lo/ⅼ;

    invoke-virtual {v0}, Lo/ⅼ;->getFinalX()I

    move-result v0

    if-ne v7, v0, :cond_4

    iget-object v0, p0, Lo/ʟ;->ᐜ:Lo/ⅼ;

    invoke-virtual {v0}, Lo/ⅼ;->getFinalY()I

    move-result v0

    if-ne v8, v0, :cond_4

    .line 743
    iget-object v0, p0, Lo/ʟ;->ᐜ:Lo/ⅼ;

    invoke-virtual {v0}, Lo/ⅼ;->abortAnimation()V

    .line 744
    const/4 v6, 0x0

    .line 747
    :cond_4
    if-nez v6, :cond_6

    .line 748
    if-eqz p1, :cond_5

    .line 749
    iget-object v0, p0, Lo/ʟ;->ᓸ:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/ʟ;->ᓹ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 751
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ʟ;->ᑊ(I)V

    .line 756
    :cond_6
    :goto_0
    iget v0, p0, Lo/ʟ;->ԇ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public ˈ(II)Landroid/view/View;
    .locals 5

    .line 1461
    iget-object v0, p0, Lo/ʟ;->ᓸ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1462
    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 1463
    iget-object v0, p0, Lo/ʟ;->ᓸ:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    invoke-virtual {v1, v3}, Lo/ʟ$if;->ᵣ(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1464
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    if-lt p2, v0, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1466
    return-object v4

    .line 1462
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1469
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public ˊ(Landroid/view/View;II)Z
    .locals 3

    .line 539
    iput-object p1, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    .line 540
    const/4 v0, -0x1

    iput v0, p0, Lo/ʟ;->ઽ:I

    .line 542
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v0, v1}, Lo/ʟ;->ˋ(IIII)Z

    move-result v2

    .line 543
    if-nez v2, :cond_0

    iget v0, p0, Lo/ʟ;->ԇ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    .line 549
    :cond_0
    return v2
.end method

.method public ˋ(Landroid/view/View;II)Z
    .locals 1

    .line 1443
    if-nez p1, :cond_0

    .line 1444
    const/4 v0, 0x0

    return v0

    .line 1446
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-lt p3, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ge p3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˍ(F)V
    .locals 0

    .line 401
    iput p1, p0, Lo/ʟ;->Ꭲ:F

    .line 402
    return-void
.end method

.method public ᐝ(Landroid/view/View;I)V
    .locals 3

    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lo/ʟ;->ᓸ:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ʟ;->ᓸ:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    iput-object p1, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    .line 466
    iput p2, p0, Lo/ʟ;->ઽ:I

    .line 467
    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    invoke-virtual {v0, p1, p2}, Lo/ʟ$if;->ʼ(Landroid/view/View;I)V

    .line 468
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ʟ;->ᑊ(I)V

    .line 469
    return-void
.end method

.method public ᐩ(I)Z
    .locals 2

    .line 867
    iget v0, p0, Lo/ʟ;->ร:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method ᑊ(I)V
    .locals 2

    .line 871
    iget-object v0, p0, Lo/ʟ;->ᓸ:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/ʟ;->ᓹ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 872
    iget v0, p0, Lo/ʟ;->ԇ:I

    if-eq v0, p1, :cond_0

    .line 873
    iput p1, p0, Lo/ʟ;->ԇ:I

    .line 874
    iget-object v0, p0, Lo/ʟ;->ᒩ:Lo/ʟ$if;

    invoke-virtual {v0, p1}, Lo/ʟ$if;->ᕀ(I)V

    .line 875
    iget v0, p0, Lo/ʟ;->ԇ:I

    if-nez v0, :cond_0

    .line 876
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    .line 879
    :cond_0
    return-void
.end method

.method public ᕑ()Landroid/view/View;
    .locals 1

    .line 475
    iget-object v0, p0, Lo/ʟ;->ᓶ:Landroid/view/View;

    return-object v0
.end method

.method public ι(II)Z
    .locals 3

    .line 564
    iget-boolean v0, p0, Lo/ʟ;->ᓷ:Z

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_0
    iget-object v0, p0, Lo/ʟ;->ᓴ:Landroid/view/VelocityTracker;

    iget v1, p0, Lo/ʟ;->ઽ:I

    invoke-static {v0, v1}, Lo/ﹻ;->ˊ(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lo/ʟ;->ᓴ:Landroid/view/VelocityTracker;

    iget v2, p0, Lo/ʟ;->ઽ:I

    invoke-static {v1, v2}, Lo/ﹻ;->ˋ(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lo/ʟ;->ˋ(IIII)Z

    move-result v0

    return v0
.end method
