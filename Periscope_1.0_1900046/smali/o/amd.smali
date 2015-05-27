.class public Lo/amd;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field private bMT:Landroid/animation/ValueAnimator;

.field private bMU:Landroid/graphics/drawable/BitmapDrawable;

.field private bMV:Landroid/graphics/Rect;

.field private bMW:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lo/amd;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lo/amd;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lo/amd;->init()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 6

    .line 43
    invoke-virtual {p0}, Lo/amd;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lo/amd;->bMU:Landroid/graphics/drawable/BitmapDrawable;

    .line 44
    iget-object v0, p0, Lo/amd;->bMU:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lo/amd;->mBitmap:Landroid/graphics/Bitmap;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo/amd;->mPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lo/amd;->bMV:Landroid/graphics/Rect;

    .line 47
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lo/amd;->bMT:Landroid/animation/ValueAnimator;

    .line 49
    iget-object v0, p0, Lo/amd;->bMT:Landroid/animation/ValueAnimator;

    new-instance v1, Lo/ame;

    invoke-direct {v1, p0}, Lo/ame;-><init>(Lo/amd;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    iget-object v0, p0, Lo/amd;->bMT:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    iget-object v0, p0, Lo/amd;->bMT:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 58
    iget-object v0, p0, Lo/amd;->bMT:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 59
    iget-object v0, p0, Lo/amd;->bMT:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x6a4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    iget-object v0, p0, Lo/amd;->bMT:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 61
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic ˊ(Lo/amd;F)F
    .locals 0

    .line 19
    iput p1, p0, Lo/amd;->bMW:F

    return p1
.end method

.method static synthetic ˊ(Lo/amd;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/amd;->bMU:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lo/amd;->clearAnimation()V

    .line 85
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lo/amd;->setVisibility(I)V

    .line 86
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 65
    invoke-virtual {p0}, Lo/amd;->getWidth()I

    move-result v4

    .line 66
    iget-object v0, p0, Lo/amd;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 67
    iget v0, p0, Lo/amd;->bMW:F

    neg-float v0, v0

    float-to-int v6, v0

    .line 68
    :goto_0
    if-ge v6, v4, :cond_0

    .line 69
    iget-object v0, p0, Lo/amd;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float v1, v6

    iget-object v2, p0, Lo/amd;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    add-int/2addr v6, v5

    goto :goto_0

    .line 72
    :cond_0
    sub-int v0, v6, v4

    if-lez v0, :cond_1

    .line 73
    iget-object v0, p0, Lo/amd;->bMV:Landroid/graphics/Rect;

    sub-int v1, v6, v4

    iget-object v2, p0, Lo/amd;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 74
    iget-object v0, p0, Lo/amd;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lo/amd;->bMV:Landroid/graphics/Rect;

    iget-object v2, p0, Lo/amd;->bMV:Landroid/graphics/Rect;

    iget-object v3, p0, Lo/amd;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 76
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/amd;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lo/amd;->bMT:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 81
    return-void
.end method
