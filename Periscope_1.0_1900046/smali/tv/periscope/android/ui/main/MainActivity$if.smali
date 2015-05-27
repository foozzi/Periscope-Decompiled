.class public Ltv/periscope/android/ui/main/MainActivity$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$aux;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/periscope/android/ui/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field private bFI:[I

.field private bFJ:F

.field private bFK:I

.field private bFL:Ljava/util/concurrent/atomic/AtomicInteger;

.field private bFM:Landroid/animation/Animator;

.field private bFN:I

.field private bFO:I

.field private bFP:Lo/abf;

.field private bFQ:Lo/abf;

.field private bFR:I

.field private bFS:I

.field public final synthetic bFT:Ltv/periscope/android/ui/main/MainActivity;


# direct methods
.method private constructor <init>(Ltv/periscope/android/ui/main/MainActivity;)V
    .locals 3

    .line 297
    iput-object p1, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFI:[I

    .line 301
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFL:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Ltv/periscope/android/ui/main/MainActivity;Ltv/periscope/android/ui/main/MainActivity$1;)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/main/MainActivity$if;-><init>(Ltv/periscope/android/ui/main/MainActivity;)V

    return-void
.end method

.method private zK()Z
    .locals 1

    .line 372
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFM:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFM:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ʻ(Lo/aif;)V
    .locals 4

    .line 564
    iget-object v0, p1, Lo/aif;->bGb:Lo/aip;

    iget v1, p1, Lo/aif;->bGd:I

    invoke-virtual {v0, v1}, Lo/aip;->setColor(I)V

    .line 565
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ˊ(Ltv/periscope/android/ui/main/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aif;

    move-object v3, v0

    .line 566
    if-eq v3, p1, :cond_0

    .line 567
    iget-object v0, v3, Lo/aif;->bGb:Lo/aip;

    iget v1, p1, Lo/aif;->bGe:I

    invoke-virtual {v0, v1}, Lo/aip;->setColor(I)V

    .line 569
    :cond_0
    goto :goto_0

    .line 570
    :cond_1
    return-void
.end method

.method private ʼ(Lo/aif;)V
    .locals 2

    .line 573
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ˎ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/view/View;

    move-result-object v0

    iget v1, p1, Lo/aif;->bGc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 574
    iget v0, p1, Lo/aif;->bGc:I

    iput v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFN:I

    .line 575
    iget v0, p1, Lo/aif;->statusBarColor:I

    iput v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFO:I

    .line 576
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    iget v1, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFO:I

    invoke-static {v0, v1}, Ltv/periscope/android/ui/main/MainActivity;->ˊ(Ltv/periscope/android/ui/main/MainActivity;I)V

    .line 577
    return-void
.end method

.method public static synthetic ˊ(Ltv/periscope/android/ui/main/MainActivity$if;I)I
    .locals 0

    .line 297
    iput p1, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFS:I

    return p1
.end method

.method private ˊ(Lo/aif;)Landroid/animation/Animator;
    .locals 11

    .line 420
    iget v0, p1, Lo/aif;->bGh:I

    if-nez v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 421
    :goto_0
    if-eqz v6, :cond_1

    .line 422
    const/4 v4, 0x0

    .line 423
    const/4 v0, 0x2

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    goto :goto_1

    .line 425
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 426
    const/4 v0, 0x2

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    .line 428
    :goto_1
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 429
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ˋ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "translationX"

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 431
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ˋ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 432
    new-instance v0, Lo/ahy;

    invoke-direct {v0, p0, v6, p1}, Lo/ahy;-><init>(Ltv/periscope/android/ui/main/MainActivity$if;ZLo/aif;)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 450
    if-eqz v6, :cond_2

    .line 451
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Lo/alk;->ᖮ(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v10

    goto :goto_2

    .line 453
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Lo/alk;->ᵌ(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v10

    .line 455
    :goto_2
    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 456
    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 457
    return-object v7

    :array_0
    .array-data 4
        0x0
        0x42c80000    # 100.0f
    .end array-data

    :array_1
    .array-data 4
        0x42c80000    # 100.0f
        0x0
    .end array-data
.end method

.method public static synthetic ˊ(Ltv/periscope/android/ui/main/MainActivity$if;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 297
    iput-object p1, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFM:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic ˊ(Ltv/periscope/android/ui/main/MainActivity$if;)Lo/abf;
    .locals 1

    .line 297
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFQ:Lo/abf;

    return-object v0
.end method

.method public static synthetic ˊ(Ltv/periscope/android/ui/main/MainActivity$if;Lo/abf;)Lo/abf;
    .locals 0

    .line 297
    iput-object p1, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFQ:Lo/abf;

    return-object p1
.end method

.method public static synthetic ˊ(Ltv/periscope/android/ui/main/MainActivity$if;Lo/aif;)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/main/MainActivity$if;->ʼ(Lo/aif;)V

    return-void
.end method

.method public static synthetic ˋ(Ltv/periscope/android/ui/main/MainActivity$if;I)I
    .locals 0

    .line 297
    iput p1, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFR:I

    return p1
.end method

.method private ˋ(Lo/aif;)Landroid/animation/Animator;
    .locals 5

    .line 461
    iget-object v0, p1, Lo/aif;->bGb:Lo/aip;

    iget v1, p1, Lo/aif;->bGd:I

    invoke-virtual {v0, v1}, Lo/aip;->setTargetColor(I)V

    .line 462
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ˊ(Ltv/periscope/android/ui/main/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aif;

    move-object v4, v0

    .line 463
    if-eq v4, p1, :cond_0

    .line 464
    iget-object v0, v4, Lo/aif;->bGb:Lo/aip;

    iget v1, p1, Lo/aif;->bGe:I

    invoke-virtual {v0, v1}, Lo/aip;->setTargetColor(I)V

    .line 466
    :cond_0
    goto :goto_0

    .line 467
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 468
    const-wide/16 v0, 0x96

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 469
    new-instance v0, Lo/ahz;

    invoke-direct {v0, p0}, Lo/ahz;-><init>(Ltv/periscope/android/ui/main/MainActivity$if;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 478
    return-object v3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic ˋ(Ltv/periscope/android/ui/main/MainActivity$if;)Lo/abf;
    .locals 1

    .line 297
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFP:Lo/abf;

    return-object v0
.end method

.method public static synthetic ˋ(Ltv/periscope/android/ui/main/MainActivity$if;Lo/abf;)Lo/abf;
    .locals 0

    .line 297
    iput-object p1, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFP:Lo/abf;

    return-object p1
.end method

.method private ˎ(Lo/aif;)Landroid/animation/Animator;
    .locals 4

    .line 482
    new-instance v0, Lo/abf;

    iget v1, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFN:I

    iget v2, p1, Lo/aif;->bGc:I

    invoke-direct {v0, v1, v2}, Lo/abf;-><init>(II)V

    iput-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFQ:Lo/abf;

    .line 483
    new-instance v0, Lo/abf;

    iget v1, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFO:I

    iget v2, p1, Lo/aif;->statusBarColor:I

    invoke-direct {v0, v1, v2}, Lo/abf;-><init>(II)V

    iput-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFP:Lo/abf;

    .line 484
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 485
    const-wide/16 v0, 0x96

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 486
    new-instance v0, Lo/aia;

    invoke-direct {v0, p0}, Lo/aia;-><init>(Ltv/periscope/android/ui/main/MainActivity$if;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 494
    new-instance v0, Lo/aib;

    invoke-direct {v0, p0, p1}, Lo/aib;-><init>(Ltv/periscope/android/ui/main/MainActivity$if;Lo/aif;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 502
    return-object v3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private ˏ(Lo/aif;)Landroid/animation/Animator;
    .locals 12

    .line 509
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ˏ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/view/View;

    move-result-object v0

    const-string v1, "scaleX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 511
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 512
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 514
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ˏ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/view/View;

    move-result-object v0

    const-string v1, "scaleY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 516
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 517
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 519
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ᐝ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "scaleX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 520
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ᐝ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "scaleY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 521
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ᐝ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 522
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 523
    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 525
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 526
    invoke-virtual {v11, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 527
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Lo/alk;->ᖮ(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 528
    new-instance v0, Lo/aic;

    invoke-direct {v0, p0, p1, v5, v10}, Lo/aic;-><init>(Ltv/periscope/android/ui/main/MainActivity$if;Lo/aif;Landroid/animation/ObjectAnimator;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 546
    new-instance v0, Lo/aie;

    invoke-direct {v0, p0, p1}, Lo/aie;-><init>(Ltv/periscope/android/ui/main/MainActivity$if;Lo/aif;)V

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 552
    return-object v11

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        -0x3e4c0000    # -22.5f
        0x0
    .end array-data
.end method


# virtual methods
.method public ʹ(I)V
    .locals 3

    .line 377
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFI:[I

    iget-object v1, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFI:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 378
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFI:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 379
    return-void
.end method

.method public ˊ(IFI)V
    .locals 2

    .line 319
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFL:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iget v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFK:I

    if-ne p1, v0, :cond_4

    .line 320
    iget v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFJ:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    .line 326
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFI:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFI:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 329
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/main/MainActivity$if;->Ү(I)V

    goto :goto_0

    .line 331
    :cond_1
    iget v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFJ:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_2

    .line 333
    const-string v0, "Main"

    const-string v1, "=="

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFI:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFI:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 338
    :cond_3
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/main/MainActivity$if;->Ү(I)V

    .line 342
    :cond_4
    :goto_0
    iput p2, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFJ:F

    .line 343
    iput p1, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFK:I

    .line 344
    return-void
.end method

.method Ү(I)V
    .locals 5

    .line 382
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ˊ(Ltv/periscope/android/ui/main/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aif;

    move-object v2, v0

    .line 383
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFM:Landroid/animation/Animator;

    if-nez v0, :cond_6

    .line 384
    iget v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFN:I

    iget v1, v2, Lo/aif;->bGc:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFR:I

    iget v1, v2, Lo/aif;->bGf:I

    if-ne v0, v1, :cond_0

    .line 386
    return-void

    .line 388
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 389
    iget v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFN:I

    iget v1, v2, Lo/aif;->bGc:I

    if-eq v0, v1, :cond_1

    .line 390
    invoke-direct {p0, v2}, Ltv/periscope/android/ui/main/MainActivity$if;->ˎ(Lo/aif;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_1
    iget-object v0, v2, Lo/aif;->bGb:Lo/aip;

    invoke-virtual {v0}, Lo/aip;->zO()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Lo/aif;->bGb:Lo/aip;

    invoke-virtual {v0}, Lo/aip;->zP()I

    move-result v0

    iget v1, v2, Lo/aif;->bGd:I

    if-eq v0, v1, :cond_3

    .line 394
    :cond_2
    invoke-direct {p0, v2}, Ltv/periscope/android/ui/main/MainActivity$if;->ˋ(Lo/aif;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_3
    iget v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFR:I

    iget v1, v2, Lo/aif;->bGf:I

    if-eq v0, v1, :cond_4

    .line 397
    invoke-direct {p0, v2}, Ltv/periscope/android/ui/main/MainActivity$if;->ˏ(Lo/aif;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_4
    iget v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFS:I

    iget v1, v2, Lo/aif;->bGh:I

    if-eq v0, v1, :cond_5

    .line 400
    invoke-direct {p0, v2}, Ltv/periscope/android/ui/main/MainActivity$if;->ˊ(Lo/aif;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 403
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 404
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 405
    iput-object v4, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFM:Landroid/animation/Animator;

    .line 406
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFM:Landroid/animation/Animator;

    new-instance v1, Lo/ahx;

    invoke-direct {v1, p0}, Lo/ahx;-><init>(Ltv/periscope/android/ui/main/MainActivity$if;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 412
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFM:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 415
    :cond_6
    return-void
.end method

.method public ԇ(I)V
    .locals 1

    .line 580
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFL:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 581
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ʻ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 582
    return-void
.end method

.method public ᐝ(Lo/aif;)V
    .locals 1

    .line 557
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/main/MainActivity$if;->ʼ(Lo/aif;)V

    .line 558
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/main/MainActivity$if;->ʻ(Lo/aif;)V

    .line 559
    iget v0, p1, Lo/aif;->bGf:I

    iput v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFR:I

    .line 560
    iget v0, p1, Lo/aif;->bGh:I

    iput v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFS:I

    .line 561
    return-void
.end method

.method public ﾞ(I)V
    .locals 2

    .line 348
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 350
    :pswitch_0
    sget-object v0, Lo/vi$if;->bmK:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 351
    goto :goto_0

    .line 354
    :pswitch_1
    sget-object v0, Lo/vi$if;->bmL:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 355
    goto :goto_0

    .line 358
    :pswitch_2
    sget-object v0, Lo/vi$if;->bmN:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 359
    .line 366
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity$if;->bFL:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Ltv/periscope/android/ui/main/MainActivity$if;->zK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/main/MainActivity$if;->Ү(I)V

    .line 369
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
