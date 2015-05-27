.class public Lo/ﺩ;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﺩ$if;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final 丨:[I


# instance fields
.field protected ĵ:I

.field private ĸ:Lo/ᒃ;

.field private Ĺ:Landroid/view/animation/Animation;

.field private Ļ:Landroid/view/animation/Animation;

.field private Ŀ:Landroid/view/animation/Animation;

.field private ř:Landroid/view/animation/Animation;

.field private ǰ:Landroid/view/animation/Animation;

.field private ɫ:F

.field private ʇ:Z

.field private ʋ:I

.field private Υ:I

.field private ϟ:Z

.field private Ѓ:Landroid/view/animation/Animation$AnimationListener;

.field private х:Z

.field private final ҁ:Landroid/view/animation/Animation;

.field private final Ґ:Landroid/view/animation/Animation;

.field private כ:I

.field private ڏ:F

.field private ڔ:Landroid/view/View;

.field private ઽ:I

.field private לּ:Lo/ﺩ$if;

.field private ﮃ:Z

.field private ﮅ:F

.field private ﱠ:I

.field private ﱢ:I

.field private ﺮ:Z

.field private ﻠ:F

.field private ﻩ:Z

.field private ｃ:Z

.field private final ｩ:Landroid/view/animation/DecelerateInterpolator;

.field private ｪ:Lo/ר;

.field private ﾃ:I

.field protected ﾅ:I

.field private ﾝ:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    const-class v0, Lo/ﺩ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/ﺩ;->LOG_TAG:Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/ﺩ;->丨:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101000e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ﺩ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 270
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﺩ;->ﮃ:Z

    .line 98
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lo/ﺩ;->ﮅ:F

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﺩ;->ﺮ:Z

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lo/ﺩ;->ઽ:I

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lo/ﺩ;->ﾃ:I

    .line 151
    new-instance v0, Lo/ﻨ;

    invoke-direct {v0, p0}, Lo/ﻨ;-><init>(Lo/ﺩ;)V

    iput-object v0, p0, Lo/ﺩ;->Ѓ:Landroid/view/animation/Animation$AnimationListener;

    .line 874
    new-instance v0, Lo/ɪ;

    invoke-direct {v0, p0}, Lo/ɪ;-><init>(Lo/ﺩ;)V

    iput-object v0, p0, Lo/ﺩ;->ҁ:Landroid/view/animation/Animation;

    .line 898
    new-instance v0, Lo/ɾ;

    invoke-direct {v0, p0}, Lo/ɾ;-><init>(Lo/ﺩ;)V

    iput-object v0, p0, Lo/ﺩ;->Ґ:Landroid/view/animation/Animation;

    .line 272
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lo/ﺩ;->כ:I

    .line 274
    invoke-virtual {p0}, Lo/ﺩ;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lo/ﺩ;->ﱠ:I

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ﺩ;->setWillNotDraw(Z)V

    .line 278
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lo/ﺩ;->ｩ:Landroid/view/animation/DecelerateInterpolator;

    .line 280
    sget-object v0, Lo/ﺩ;->丨:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 281
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/ﺩ;->setEnabled(Z)V

    .line 282
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    invoke-virtual {p0}, Lo/ﺩ;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 285
    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lo/ﺩ;->ʋ:I

    .line 286
    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lo/ﺩ;->Υ:I

    .line 288
    invoke-direct {p0}, Lo/ﺩ;->ᐢ()V

    .line 289
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lo/ﺑ;->ˊ(Landroid/view/ViewGroup;Z)V

    .line 291
    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lo/ﺩ;->ɫ:F

    .line 292
    iget v0, p0, Lo/ﺩ;->ɫ:F

    iput v0, p0, Lo/ﺩ;->ﮅ:F

    .line 293
    return-void
.end method

.method static synthetic ʻ(Lo/ﺩ;)Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lo/ﺩ;->ﻩ:Z

    return v0
.end method

.method static synthetic ʼ(Lo/ﺩ;)I
    .locals 1

    .line 59
    iget v0, p0, Lo/ﺩ;->ﱢ:I

    return v0
.end method

.method static synthetic ʽ(Lo/ﺩ;)Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lo/ﺩ;->ϟ:Z

    return v0
.end method

.method private ˉ(F)V
    .locals 1

    .line 386
    invoke-direct {p0}, Lo/ﺩ;->ᒻ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lo/ﺩ;->ۥ(I)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-static {v0, p1}, Lo/ﺑ;->ˏ(Landroid/view/View;F)V

    .line 390
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-static {v0, p1}, Lo/ﺑ;->ᐝ(Landroid/view/View;F)V

    .line 392
    :goto_0
    return-void
.end method

.method private ˊ(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 846
    iput p1, p0, Lo/ﺩ;->ﾅ:I

    .line 847
    iget-object v0, p0, Lo/ﺩ;->ҁ:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 848
    iget-object v0, p0, Lo/ﺩ;->ҁ:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 849
    iget-object v0, p0, Lo/ﺩ;->ҁ:Landroid/view/animation/Animation;

    iget-object v1, p0, Lo/ﺩ;->ｩ:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 850
    if-eqz p2, :cond_0

    .line 851
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0, p2}, Lo/ר;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 853
    :cond_0
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->clearAnimation()V

    .line 854
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    iget-object v1, p0, Lo/ﺩ;->ҁ:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lo/ר;->startAnimation(Landroid/view/animation/Animation;)V

    .line 855
    return-void
.end method

.method private ˊ(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 360
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ר;->setVisibility(I)V

    .line 361
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 365
    iget-object v0, p0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lo/ᒃ;->setAlpha(I)V

    .line 367
    :cond_0
    new-instance v0, Lo/ｨ;

    invoke-direct {v0, p0}, Lo/ｨ;-><init>(Lo/ﺩ;)V

    iput-object v0, p0, Lo/ﺩ;->Ĺ:Landroid/view/animation/Animation;

    .line 373
    iget-object v0, p0, Lo/ﺩ;->Ĺ:Landroid/view/animation/Animation;

    iget v1, p0, Lo/ﺩ;->ﱠ:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 374
    if-eqz p1, :cond_1

    .line 375
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0, p1}, Lo/ר;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 377
    :cond_1
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->clearAnimation()V

    .line 378
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    iget-object v1, p0, Lo/ﺩ;->Ĺ:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lo/ר;->startAnimation(Landroid/view/animation/Animation;)V

    .line 379
    return-void
.end method

.method static synthetic ˊ(Lo/ﺩ;F)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lo/ﺩ;->ˉ(F)V

    return-void
.end method

.method static synthetic ˊ(Lo/ﺩ;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lo/ﺩ;->ۥ(I)V

    return-void
.end method

.method static synthetic ˊ(Lo/ﺩ;IZ)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lo/ﺩ;->ˏ(IZ)V

    return-void
.end method

.method static synthetic ˊ(Lo/ﺩ;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lo/ﺩ;->ˋ(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private ˊ(ZZ)V
    .locals 2

    .line 395
    iget-boolean v0, p0, Lo/ﺩ;->ﮃ:Z

    if-eq v0, p1, :cond_1

    .line 396
    iput-boolean p2, p0, Lo/ﺩ;->ʇ:Z

    .line 397
    invoke-direct {p0}, Lo/ﺩ;->ᔊ()V

    .line 398
    iput-boolean p1, p0, Lo/ﺩ;->ﮃ:Z

    .line 399
    iget-boolean v0, p0, Lo/ﺩ;->ﮃ:Z

    if-eqz v0, :cond_0

    .line 400
    iget v0, p0, Lo/ﺩ;->ﱢ:I

    iget-object v1, p0, Lo/ﺩ;->Ѓ:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Lo/ﺩ;->ˊ(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lo/ﺩ;->Ѓ:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Lo/ﺩ;->ˋ(Landroid/view/animation/Animation$AnimationListener;)V

    .line 405
    :cond_1
    :goto_0
    return-void
.end method

.method private ˊ(Landroid/view/animation/Animation;)Z
    .locals 1

    .line 701
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic ˊ(Lo/ﺩ;)Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lo/ﺩ;->ﮃ:Z

    return v0
.end method

.method static synthetic ˋ(Lo/ﺩ;I)I
    .locals 0

    .line 59
    iput p1, p0, Lo/ﺩ;->ﱢ:I

    return p1
.end method

.method static synthetic ˋ(Lo/ﺩ;)Lo/ᒃ;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    return-object v0
.end method

.method private ˋ(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 858
    iget-boolean v0, p0, Lo/ﺩ;->ﻩ:Z

    if-eqz v0, :cond_0

    .line 860
    invoke-direct {p0, p1, p2}, Lo/ﺩ;->ˎ(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 862
    :cond_0
    iput p1, p0, Lo/ﺩ;->ﾅ:I

    .line 863
    iget-object v0, p0, Lo/ﺩ;->Ґ:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 864
    iget-object v0, p0, Lo/ﺩ;->Ґ:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 865
    iget-object v0, p0, Lo/ﺩ;->Ґ:Landroid/view/animation/Animation;

    iget-object v1, p0, Lo/ﺩ;->ｩ:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 866
    if-eqz p2, :cond_1

    .line 867
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0, p2}, Lo/ר;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 869
    :cond_1
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->clearAnimation()V

    .line 870
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    iget-object v1, p0, Lo/ﺩ;->Ґ:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lo/ר;->startAnimation(Landroid/view/animation/Animation;)V

    .line 872
    :goto_0
    return-void
.end method

.method private ˋ(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 408
    new-instance v0, Lo/Ȉ;

    invoke-direct {v0, p0}, Lo/Ȉ;-><init>(Lo/ﺩ;)V

    iput-object v0, p0, Lo/ﺩ;->Ļ:Landroid/view/animation/Animation;

    .line 414
    iget-object v0, p0, Lo/ﺩ;->Ļ:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 415
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0, p1}, Lo/ר;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 416
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->clearAnimation()V

    .line 417
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    iget-object v1, p0, Lo/ﺩ;->Ļ:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lo/ר;->startAnimation(Landroid/view/animation/Animation;)V

    .line 418
    return-void
.end method

.method static synthetic ˋ(Lo/ﺩ;F)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lo/ﺩ;->ˌ(F)V

    return-void
.end method

.method private ˌ(F)V
    .locals 5

    .line 892
    const/4 v3, 0x0

    .line 893
    iget v0, p0, Lo/ﺩ;->ﾅ:I

    iget v1, p0, Lo/ﺩ;->ĵ:I

    iget v2, p0, Lo/ﺩ;->ﾅ:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int v3, v0, v1

    .line 894
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->getTop()I

    move-result v0

    sub-int v4, v3, v0

    .line 895
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lo/ﺩ;->ˏ(IZ)V

    .line 896
    return-void
.end method

.method private ˎ(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 907
    iput p1, p0, Lo/ﺩ;->ﾅ:I

    .line 908
    invoke-direct {p0}, Lo/ﺩ;->ᒻ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    invoke-virtual {v0}, Lo/ᒃ;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lo/ﺩ;->ﾝ:F

    goto :goto_0

    .line 911
    :cond_0
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-static {v0}, Lo/ﺑ;->ﾞ(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lo/ﺩ;->ﾝ:F

    .line 913
    :goto_0
    new-instance v0, Lo/ɿ;

    invoke-direct {v0, p0}, Lo/ɿ;-><init>(Lo/ﺩ;)V

    iput-object v0, p0, Lo/ﺩ;->ǰ:Landroid/view/animation/Animation;

    .line 921
    iget-object v0, p0, Lo/ﺩ;->ǰ:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 922
    if-eqz p2, :cond_1

    .line 923
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0, p2}, Lo/ר;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 925
    :cond_1
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->clearAnimation()V

    .line 926
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    iget-object v1, p0, Lo/ﺩ;->ǰ:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lo/ר;->startAnimation(Landroid/view/animation/Animation;)V

    .line 927
    return-void
.end method

.method static synthetic ˎ(Lo/ﺩ;)Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lo/ﺩ;->ʇ:Z

    return v0
.end method

.method static synthetic ˏ(Lo/ﺩ;)Lo/ﺩ$if;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/ﺩ;->לּ:Lo/ﺩ$if;

    return-object v0
.end method

.method private ˏ(IZ)V
    .locals 2

    .line 930
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->bringToFront()V

    .line 931
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0, p1}, Lo/ר;->offsetTopAndBottom(I)V

    .line 932
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->getTop()I

    move-result v0

    iput v0, p0, Lo/ﺩ;->ﱢ:I

    .line 933
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 934
    invoke-virtual {p0}, Lo/ﺩ;->invalidate()V

    .line 936
    :cond_0
    return-void
.end method

.method private ˏ(Landroid/view/MotionEvent;)V
    .locals 4

    .line 939
    invoke-static {p1}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;)I

    move-result v1

    .line 940
    invoke-static {p1, v1}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 941
    iget v0, p0, Lo/ﺩ;->ઽ:I

    if-ne v2, v0, :cond_1

    .line 944
    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 945
    :goto_0
    invoke-static {p1, v3}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lo/ﺩ;->ઽ:I

    .line 947
    :cond_1
    return-void
.end method

.method static synthetic ͺ(Lo/ﺩ;)F
    .locals 1

    .line 59
    iget v0, p0, Lo/ﺩ;->ɫ:F

    return v0
.end method

.method private ͺ(II)Landroid/view/animation/Animation;
    .locals 3

    .line 431
    iget-boolean v0, p0, Lo/ﺩ;->ﻩ:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/ﺩ;->ᒻ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x0

    return-object v0

    .line 434
    :cond_0
    new-instance v2, Lo/ȋ;

    invoke-direct {v2, p0, p1, p2}, Lo/ȋ;-><init>(Lo/ﺩ;II)V

    .line 442
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 444
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ר;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 445
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->clearAnimation()V

    .line 446
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0, v2}, Lo/ר;->startAnimation(Landroid/view/animation/Animation;)V

    .line 447
    return-object v2
.end method

.method private ۥ(I)V
    .locals 1

    .line 188
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 189
    iget-object v0, p0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    invoke-virtual {v0, p1}, Lo/ᒃ;->setAlpha(I)V

    .line 190
    return-void
.end method

.method private ᐝ(Landroid/view/MotionEvent;I)F
    .locals 2

    .line 688
    invoke-static {p1, p2}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 689
    if-gez v1, :cond_0

    .line 690
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 692
    :cond_0
    invoke-static {p1, v1}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method static synthetic ᐝ(Lo/ﺩ;)Lo/ר;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    return-object v0
.end method

.method private ᐢ()V
    .locals 4

    .line 311
    new-instance v0, Lo/ר;

    invoke-virtual {p0}, Lo/ﺩ;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0x50506

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v2, v3}, Lo/ר;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    .line 312
    new-instance v0, Lo/ᒃ;

    invoke-virtual {p0}, Lo/ﺩ;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lo/ᒃ;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    .line 313
    iget-object v0, p0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    const v1, -0x50506

    invoke-virtual {v0, v1}, Lo/ᒃ;->setBackgroundColor(I)V

    .line 314
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    iget-object v1, p0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    invoke-virtual {v0, v1}, Lo/ר;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ר;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {p0, v0}, Lo/ﺩ;->addView(Landroid/view/View;)V

    .line 317
    return-void
.end method

.method private ᒻ()Z
    .locals 2

    .line 331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ᔅ()V
    .locals 2

    .line 421
    iget-object v0, p0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    invoke-virtual {v0}, Lo/ᒃ;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Lo/ﺩ;->ͺ(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lo/ﺩ;->Ŀ:Landroid/view/animation/Animation;

    .line 422
    return-void
.end method

.method private ᔉ()V
    .locals 2

    .line 425
    iget-object v0, p0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    invoke-virtual {v0}, Lo/ᒃ;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Lo/ﺩ;->ͺ(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lo/ﺩ;->ř:Landroid/view/animation/Animation;

    .line 426
    return-void
.end method

.method private ᔊ()V
    .locals 3

    .line 524
    iget-object v0, p0, Lo/ﺩ;->ڔ:Landroid/view/View;

    if-nez v0, :cond_1

    .line 525
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lo/ﺩ;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 526
    invoke-virtual {p0, v1}, Lo/ﺩ;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 527
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iput-object v2, p0, Lo/ﺩ;->ڔ:Landroid/view/View;

    .line 529
    goto :goto_1

    .line 525
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic ι(Lo/ﺩ;)F
    .locals 1

    .line 59
    iget v0, p0, Lo/ﺩ;->ﾝ:F

    return v0
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 296
    iget v0, p0, Lo/ﺩ;->ﾃ:I

    if-gez v0, :cond_0

    .line 297
    return p2

    .line 298
    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    .line 300
    iget v0, p0, Lo/ﺩ;->ﾃ:I

    return v0

    .line 301
    :cond_1
    iget v0, p0, Lo/ﺩ;->ﾃ:I

    if-lt p2, v0, :cond_2

    .line 303
    add-int/lit8 v0, p2, 0x1

    return v0

    .line 306
    :cond_2
    return p2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 630
    invoke-direct {p0}, Lo/ﺩ;->ᔊ()V

    .line 632
    invoke-static {p1}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;)I

    move-result v2

    .line 634
    iget-boolean v0, p0, Lo/ﺩ;->ｃ:Z

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﺩ;->ｃ:Z

    .line 638
    :cond_0
    invoke-virtual {p0}, Lo/ﺩ;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/ﺩ;->ｃ:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/ﺩ;->ᔋ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/ﺩ;->ﮃ:Z

    if-eqz v0, :cond_2

    .line 640
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 643
    :cond_2
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 645
    :pswitch_0
    iget v0, p0, Lo/ﺩ;->ĵ:I

    iget-object v1, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v1}, Lo/ר;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lo/ﺩ;->ˏ(IZ)V

    .line 646
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lo/ﺩ;->ઽ:I

    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﺩ;->х:Z

    .line 648
    iget v0, p0, Lo/ﺩ;->ઽ:I

    invoke-direct {p0, p1, v0}, Lo/ﺩ;->ᐝ(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 649
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, v3, v0

    if-nez v0, :cond_3

    .line 650
    const/4 v0, 0x0

    return v0

    .line 652
    :cond_3
    iput v3, p0, Lo/ﺩ;->ﻠ:F

    .line 653
    goto :goto_0

    .line 656
    :pswitch_1
    iget v0, p0, Lo/ﺩ;->ઽ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 657
    sget-object v0, Lo/ﺩ;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v0, 0x0

    return v0

    .line 661
    :cond_4
    iget v0, p0, Lo/ﺩ;->ઽ:I

    invoke-direct {p0, p1, v0}, Lo/ﺩ;->ᐝ(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 662
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, v4, v0

    if-nez v0, :cond_5

    .line 663
    const/4 v0, 0x0

    return v0

    .line 665
    :cond_5
    iget v0, p0, Lo/ﺩ;->ﻠ:F

    sub-float v5, v4, v0

    .line 666
    iget v0, p0, Lo/ﺩ;->כ:I

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_6

    iget-boolean v0, p0, Lo/ﺩ;->х:Z

    if-nez v0, :cond_6

    .line 667
    iget v0, p0, Lo/ﺩ;->ﻠ:F

    iget v1, p0, Lo/ﺩ;->כ:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lo/ﺩ;->ڏ:F

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﺩ;->х:Z

    .line 669
    iget-object v0, p0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lo/ᒃ;->setAlpha(I)V

    goto :goto_0

    .line 674
    :pswitch_2
    invoke-direct {p0, p1}, Lo/ﺩ;->ˏ(Landroid/view/MotionEvent;)V

    .line 675
    goto :goto_0

    .line 679
    :pswitch_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﺩ;->х:Z

    .line 680
    const/4 v0, -0x1

    iput v0, p0, Lo/ﺩ;->ઽ:I

    .line 684
    :cond_6
    :goto_0
    :pswitch_4
    iget-boolean v0, p0, Lo/ﺩ;->х:Z

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .line 546
    invoke-virtual {p0}, Lo/ﺩ;->getMeasuredWidth()I

    move-result v5

    .line 547
    invoke-virtual {p0}, Lo/ﺩ;->getMeasuredHeight()I

    move-result v6

    .line 548
    invoke-virtual {p0}, Lo/ﺩ;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 549
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lo/ﺩ;->ڔ:Landroid/view/View;

    if-nez v0, :cond_1

    .line 552
    invoke-direct {p0}, Lo/ﺩ;->ᔊ()V

    .line 554
    :cond_1
    iget-object v0, p0, Lo/ﺩ;->ڔ:Landroid/view/View;

    if-nez v0, :cond_2

    .line 555
    return-void

    .line 557
    :cond_2
    iget-object v7, p0, Lo/ﺩ;->ڔ:Landroid/view/View;

    .line 558
    invoke-virtual {p0}, Lo/ﺩ;->getPaddingLeft()I

    move-result v8

    .line 559
    invoke-virtual {p0}, Lo/ﺩ;->getPaddingTop()I

    move-result v9

    .line 560
    invoke-virtual {p0}, Lo/ﺩ;->getPaddingLeft()I

    move-result v0

    sub-int v0, v5, v0

    invoke-virtual {p0}, Lo/ﺩ;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 561
    invoke-virtual {p0}, Lo/ﺩ;->getPaddingTop()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {p0}, Lo/ﺩ;->getPaddingBottom()I

    move-result v1

    sub-int v11, v0, v1

    .line 562
    add-int v0, v8, v10

    add-int v1, v9, v11

    invoke-virtual {v7, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 563
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->getMeasuredWidth()I

    move-result v12

    .line 564
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->getMeasuredHeight()I

    move-result v13

    .line 565
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    div-int/lit8 v1, v5, 0x2

    div-int/lit8 v2, v12, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lo/ﺩ;->ﱢ:I

    div-int/lit8 v3, v5, 0x2

    div-int/lit8 v4, v12, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lo/ﺩ;->ﱢ:I

    add-int/2addr v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/ר;->layout(IIII)V

    .line 567
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 571
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 572
    iget-object v0, p0, Lo/ﺩ;->ڔ:Landroid/view/View;

    if-nez v0, :cond_0

    .line 573
    invoke-direct {p0}, Lo/ﺩ;->ᔊ()V

    .line 575
    :cond_0
    iget-object v0, p0, Lo/ﺩ;->ڔ:Landroid/view/View;

    if-nez v0, :cond_1

    .line 576
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lo/ﺩ;->ڔ:Landroid/view/View;

    invoke-virtual {p0}, Lo/ﺩ;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lo/ﺩ;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lo/ﺩ;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lo/ﺩ;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lo/ﺩ;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lo/ﺩ;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 582
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    iget v1, p0, Lo/ﺩ;->ʋ:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Lo/ﺩ;->Υ:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/ר;->measure(II)V

    .line 584
    iget-boolean v0, p0, Lo/ﺩ;->ϟ:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lo/ﺩ;->ﺮ:Z

    if-nez v0, :cond_2

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﺩ;->ﺮ:Z

    .line 586
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lo/ﺩ;->ĵ:I

    iput v0, p0, Lo/ﺩ;->ﱢ:I

    .line 588
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lo/ﺩ;->ﾃ:I

    .line 590
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lo/ﺩ;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 591
    invoke-virtual {p0, v4}, Lo/ﺩ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/ﺩ;->ｪ:Lo/ר;

    if-ne v0, v1, :cond_3

    .line 592
    iput v4, p0, Lo/ﺩ;->ﾃ:I

    .line 593
    goto :goto_1

    .line 590
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 596
    :cond_4
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    .line 706
    invoke-static/range {p1 .. p1}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;)I

    move-result v6

    .line 708
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ﺩ;->ｃ:Z

    if-eqz v0, :cond_0

    if-nez v6, :cond_0

    .line 709
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/ﺩ;->ｃ:Z

    .line 712
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo/ﺩ;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ﺩ;->ｃ:Z

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lo/ﺩ;->ᔋ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 714
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 717
    :cond_2
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    .line 719
    :pswitch_0
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lo/ﺩ;->ઽ:I

    .line 720
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/ﺩ;->х:Z

    .line 721
    goto/16 :goto_3

    .line 724
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lo/ﺩ;->ઽ:I

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 725
    if-gez v7, :cond_3

    .line 726
    sget-object v0, Lo/ﺩ;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v0, 0x0

    return v0

    .line 730
    :cond_3
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 731
    move-object/from16 v0, p0

    iget v0, v0, Lo/ﺩ;->ڏ:F

    sub-float v0, v8, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v9, v0, v1

    .line 732
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ﺩ;->х:Z

    if-eqz v0, :cond_10

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ᒃ;->ι(Z)V

    .line 734
    move-object/from16 v0, p0

    iget v0, v0, Lo/ﺩ;->ﮅ:F

    div-float v10, v9, v0

    .line 735
    const/4 v0, 0x0

    cmpg-float v0, v10, v0

    if-gez v0, :cond_4

    .line 736
    const/4 v0, 0x0

    return v0

    .line 738
    :cond_4
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 739
    float-to-double v0, v11

    const-wide v2, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float v12, v0, v1

    .line 740
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move-object/from16 v1, p0

    iget v1, v1, Lo/ﺩ;->ﮅ:F

    sub-float v13, v0, v1

    .line 741
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ﺩ;->ϟ:Z

    if-eqz v0, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lo/ﺩ;->ɫ:F

    move-object/from16 v1, p0

    iget v1, v1, Lo/ﺩ;->ĵ:I

    int-to-float v1, v1

    sub-float v14, v0, v1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lo/ﺩ;->ɫ:F

    .line 743
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v14

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v14

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 745
    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, v15, v0

    float-to-double v0, v0

    const/high16 v2, 0x40800000    # 4.0f

    div-float v2, v15, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v16, v0, v1

    .line 747
    mul-float v0, v14, v16

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v17, v0, v1

    .line 749
    move-object/from16 v0, p0

    iget v0, v0, Lo/ﺩ;->ĵ:I

    mul-float v1, v14, v11

    add-float v1, v1, v17

    float-to-int v1, v1

    add-int v18, v0, v1

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ﺩ;->ｪ:Lo/ר;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ר;->setVisibility(I)V

    .line 755
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ﺩ;->ﻩ:Z

    if-nez v0, :cond_7

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ﺩ;->ｪ:Lo/ר;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lo/ﺑ;->ˏ(Landroid/view/View;F)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ﺩ;->ｪ:Lo/ר;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lo/ﺑ;->ᐝ(Landroid/view/View;F)V

    .line 759
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lo/ﺩ;->ﮅ:F

    cmpg-float v0, v9, v0

    if-gez v0, :cond_a

    .line 760
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ﺩ;->ﻩ:Z

    if-eqz v0, :cond_8

    .line 761
    move-object/from16 v0, p0

    iget v0, v0, Lo/ﺩ;->ﮅ:F

    div-float v0, v9, v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/ﺩ;->ˉ(F)V

    .line 763
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    invoke-virtual {v0}, Lo/ᒃ;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    if-le v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ﺩ;->Ŀ:Landroid/view/animation/Animation;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/ﺩ;->ˊ(Landroid/view/animation/Animation;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 766
    invoke-direct/range {p0 .. p0}, Lo/ﺩ;->ᔅ()V

    .line 768
    :cond_9
    const v0, 0x3f4ccccd    # 0.8f

    mul-float v19, v12, v0

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    const v1, 0x3f4ccccd    # 0.8f

    move/from16 v2, v19

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lo/ᒃ;->ͺ(FF)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v12}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lo/ᒃ;->ι(F)V

    .line 771
    goto :goto_1

    .line 772
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    invoke-virtual {v0}, Lo/ᒃ;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ﺩ;->ř:Landroid/view/animation/Animation;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/ﺩ;->ˊ(Landroid/view/animation/Animation;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 775
    invoke-direct/range {p0 .. p0}, Lo/ﺩ;->ᔉ()V

    .line 778
    :cond_b
    :goto_1
    const v0, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v12

    const/high16 v1, -0x41800000    # -0.25f

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v16

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v19, v0, v1

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lo/ᒃ;->ʾ(F)V

    .line 780
    move-object/from16 v0, p0

    iget v0, v0, Lo/ﺩ;->ﱢ:I

    sub-int v0, v18, v0

    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lo/ﺩ;->ˏ(IZ)V

    .line 782
    goto/16 :goto_3

    .line 786
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;)I

    move-result v7

    .line 787
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lo/ﺩ;->ઽ:I

    .line 788
    goto/16 :goto_3

    .line 792
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lo/ﺩ;->ˏ(Landroid/view/MotionEvent;)V

    .line 793
    goto/16 :goto_3

    .line 797
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lo/ﺩ;->ઽ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 798
    const/4 v0, 0x1

    if-ne v6, v0, :cond_c

    .line 799
    sget-object v0, Lo/ﺩ;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_c
    const/4 v0, 0x0

    return v0

    .line 803
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lo/ﺩ;->ઽ:I

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 804
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 805
    move-object/from16 v0, p0

    iget v0, v0, Lo/ﺩ;->ڏ:F

    sub-float v0, v8, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v9, v0, v1

    .line 806
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/ﺩ;->х:Z

    .line 807
    move-object/from16 v0, p0

    iget v0, v0, Lo/ﺩ;->ﮅ:F

    cmpl-float v0, v9, v0

    if-lez v0, :cond_e

    .line 808
    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/ﺩ;->ˊ(ZZ)V

    goto :goto_2

    .line 811
    :cond_e
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/ﺩ;->ﮃ:Z

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ᒃ;->ͺ(FF)V

    .line 813
    const/4 v10, 0x0

    .line 814
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ﺩ;->ﻩ:Z

    if-nez v0, :cond_f

    .line 815
    new-instance v10, Lo/ɨ;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lo/ɨ;-><init>(Lo/ﺩ;)V

    .line 834
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lo/ﺩ;->ﱢ:I

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v10}, Lo/ﺩ;->ˋ(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᒃ;->ι(Z)V

    .line 837
    :goto_2
    const/4 v0, -0x1

    move-object/from16 v1, p0

    iput v0, v1, Lo/ﺩ;->ઽ:I

    .line 838
    const/4 v0, 0x0

    return v0

    .line 842
    :cond_10
    :goto_3
    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 698
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 482
    invoke-virtual {p0, p1}, Lo/ﺩ;->setColorSchemeResources([I)V

    .line 483
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .line 509
    invoke-direct {p0}, Lo/ﺩ;->ᔊ()V

    .line 510
    iget-object v0, p0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    invoke-virtual {v0, p1}, Lo/ᒃ;->setColorSchemeColors([I)V

    .line 511
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4

    .line 493
    invoke-virtual {p0}, Lo/ﺩ;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 494
    array-length v0, p1

    new-array v2, v0, [I

    .line 495
    const/4 v3, 0x0

    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_0

    .line 496
    aget v0, p1, v3

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v2, v3

    .line 495
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p0, v2}, Lo/ﺩ;->setColorSchemeColors([I)V

    .line 499
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1

    .line 541
    int-to-float v0, p1

    iput v0, p0, Lo/ﺩ;->ﮅ:F

    .line 542
    return-void
.end method

.method public setOnRefreshListener(Lo/ﺩ$if;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lo/ﺩ;->לּ:Lo/ﺩ$if;

    .line 325
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 455
    invoke-virtual {p0, p1}, Lo/ﺩ;->setProgressBackgroundColorSchemeResource(I)V

    .line 456
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1

    .line 473
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0, p1}, Lo/ר;->setBackgroundColor(I)V

    .line 474
    iget-object v0, p0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    invoke-virtual {v0, p1}, Lo/ᒃ;->setBackgroundColor(I)V

    .line 475
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1

    .line 464
    invoke-virtual {p0}, Lo/ﺩ;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ﺩ;->setProgressBackgroundColorSchemeColor(I)V

    .line 465
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 1

    .line 228
    int-to-float v0, p2

    iput v0, p0, Lo/ﺩ;->ɫ:F

    .line 229
    iput-boolean p1, p0, Lo/ﺩ;->ﻩ:Z

    .line 230
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->invalidate()V

    .line 231
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 2

    .line 207
    iput-boolean p1, p0, Lo/ﺩ;->ﻩ:Z

    .line 208
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ר;->setVisibility(I)V

    .line 209
    iput p2, p0, Lo/ﺩ;->ﱢ:I

    iput p2, p0, Lo/ﺩ;->ĵ:I

    .line 210
    int-to-float v0, p3

    iput v0, p0, Lo/ﺩ;->ɫ:F

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﺩ;->ϟ:Z

    .line 212
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->invalidate()V

    .line 213
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 3

    .line 341
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lo/ﺩ;->ﮃ:Z

    if-eq v0, p1, :cond_1

    .line 343
    iput-boolean p1, p0, Lo/ﺩ;->ﮃ:Z

    .line 344
    const/4 v2, 0x0

    .line 345
    iget-boolean v0, p0, Lo/ﺩ;->ϟ:Z

    if-nez v0, :cond_0

    .line 346
    iget v0, p0, Lo/ﺩ;->ɫ:F

    iget v1, p0, Lo/ﺩ;->ĵ:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v2, v0

    goto :goto_0

    .line 348
    :cond_0
    iget v0, p0, Lo/ﺩ;->ɫ:F

    float-to-int v2, v0

    .line 350
    :goto_0
    iget v0, p0, Lo/ﺩ;->ﱢ:I

    sub-int v0, v2, v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lo/ﺩ;->ˏ(IZ)V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﺩ;->ʇ:Z

    .line 353
    iget-object v0, p0, Lo/ﺩ;->Ѓ:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Lo/ﺩ;->ˊ(Landroid/view/animation/Animation$AnimationListener;)V

    .line 354
    goto :goto_1

    .line 355
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ﺩ;->ˊ(ZZ)V

    .line 357
    :goto_1
    return-void
.end method

.method public setSize(I)V
    .locals 3

    .line 237
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 238
    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Lo/ﺩ;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 241
    if-nez p1, :cond_1

    .line 242
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lo/ﺩ;->ʋ:I

    iput v0, p0, Lo/ﺩ;->Υ:I

    goto :goto_0

    .line 244
    :cond_1
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lo/ﺩ;->ʋ:I

    iput v0, p0, Lo/ﺩ;->Υ:I

    .line 249
    :goto_0
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ר;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v0, p0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    invoke-virtual {v0, p1}, Lo/ᒃ;->ˡ(I)V

    .line 251
    iget-object v0, p0, Lo/ﺩ;->ｪ:Lo/ר;

    iget-object v1, p0, Lo/ﺩ;->ĸ:Lo/ᒃ;

    invoke-virtual {v0, v1}, Lo/ר;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    return-void
.end method

.method public ᔋ()Z
    .locals 3

    .line 614
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_5

    .line 615
    iget-object v0, p0, Lo/ﺩ;->ڔ:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Lo/ﺩ;->ڔ:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    move-object v2, v0

    .line 617
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 621
    :cond_2
    iget-object v0, p0, Lo/ﺩ;->ڔ:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lo/ﺑ;->ˎ(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/ﺩ;->ڔ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 624
    :cond_5
    iget-object v0, p0, Lo/ﺩ;->ڔ:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lo/ﺑ;->ˎ(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
