.class public Lo/amq;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private final bNm:Landroid/graphics/drawable/shapes/RectShape;

.field private bNn:F

.field private bNo:F

.field private bNp:F

.field private bNq:I

.field private final mPaint:Landroid/graphics/Paint;

.field private Ύ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lo/amq;->bNm:Landroid/graphics/drawable/shapes/RectShape;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/amq;->mPaint:Landroid/graphics/Paint;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lo/amq;->bNq:I

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/amq;->ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lo/amq;->bNm:Landroid/graphics/drawable/shapes/RectShape;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/amq;->mPaint:Landroid/graphics/Paint;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lo/amq;->bNq:I

    .line 34
    invoke-direct {p0, p1, p2}, Lo/amq;->ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lo/amq;->bNm:Landroid/graphics/drawable/shapes/RectShape;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/amq;->mPaint:Landroid/graphics/Paint;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lo/amq;->bNq:I

    .line 39
    invoke-direct {p0, p1, p2}, Lo/amq;->ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 43
    sget-object v0, Lo/vh$if;->ScrollTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 45
    const/4 v0, 0x0

    const/high16 v1, 0x41100000    # 9.0f

    :try_start_0
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lo/amq;->bNn:F

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f090082

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 48
    iget-object v0, p0, Lo/amq;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v5

    .line 52
    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 77
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 79
    iget v0, p0, Lo/amq;->bNq:I

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v3

    .line 81
    iget v0, p0, Lo/amq;->Ύ:I

    int-to-float v0, v0

    iget v1, p0, Lo/amq;->bNp:F

    mul-float/2addr v0, v1

    iget v1, p0, Lo/amq;->bNo:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lo/amq;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lo/amq;->bNm:Landroid/graphics/drawable/shapes/RectShape;

    invoke-virtual {v2}, Landroid/graphics/drawable/shapes/RectShape;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    iget-object v0, p0, Lo/amq;->bNm:Landroid/graphics/drawable/shapes/RectShape;

    iget-object v1, p0, Lo/amq;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/shapes/RectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 83
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 85
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 56
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 58
    invoke-virtual {p0}, Lo/amq;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lo/amq;->getChildCount()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v2, v0

    .line 59
    iget-object v0, p0, Lo/amq;->bNm:Landroid/graphics/drawable/shapes/RectShape;

    iget v1, p0, Lo/amq;->bNn:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    .line 60
    iput v2, p0, Lo/amq;->bNp:F

    .line 61
    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 64
    iput p1, p0, Lo/amq;->Ύ:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lo/amq;->bNo:F

    .line 66
    invoke-virtual {p0}, Lo/amq;->invalidate()V

    .line 67
    return-void
.end method

.method public setScrollVisibility(I)V
    .locals 1

    .line 88
    iget v0, p0, Lo/amq;->bNq:I

    if-eq v0, p1, :cond_0

    .line 89
    iput p1, p0, Lo/amq;->bNq:I

    .line 90
    invoke-virtual {p0}, Lo/amq;->invalidate()V

    .line 92
    :cond_0
    return-void
.end method

.method public ᐝ(IF)V
    .locals 1

    .line 70
    iput p1, p0, Lo/amq;->Ύ:I

    .line 71
    iget v0, p0, Lo/amq;->bNp:F

    mul-float/2addr v0, p2

    iput v0, p0, Lo/amq;->bNo:F

    .line 72
    invoke-virtual {p0}, Lo/amq;->invalidate()V

    .line 73
    return-void
.end method
