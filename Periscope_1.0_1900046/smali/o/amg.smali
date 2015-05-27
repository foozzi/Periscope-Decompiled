.class public Lo/amg;
.super Lo/ami;
.source ""


# instance fields
.field private final bMZ:Landroid/graphics/drawable/shapes/RectShape;

.field private bNa:F

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Lo/ami;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lo/amg;->bMZ:Landroid/graphics/drawable/shapes/RectShape;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/amg;->mPaint:Landroid/graphics/Paint;

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/amg;->ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1, p2}, Lo/ami;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lo/amg;->bMZ:Landroid/graphics/drawable/shapes/RectShape;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/amg;->mPaint:Landroid/graphics/Paint;

    .line 25
    invoke-direct {p0, p1, p2}, Lo/amg;->ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lo/ami;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lo/amg;->bMZ:Landroid/graphics/drawable/shapes/RectShape;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/amg;->mPaint:Landroid/graphics/Paint;

    .line 30
    invoke-direct {p0, p1, p2}, Lo/amg;->ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method private ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 34
    sget-object v0, Lo/vh$if;->PsSelectedTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 36
    const/4 v0, 0x0

    const/high16 v1, 0x41100000    # 9.0f

    :try_start_0
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lo/amg;->bNa:F

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f090082

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 39
    iget-object v0, p0, Lo/amg;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v5

    .line 43
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 47
    invoke-super {p0, p1}, Lo/ami;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    iget-object v0, p0, Lo/amg;->bMZ:Landroid/graphics/drawable/shapes/RectShape;

    invoke-virtual {p0}, Lo/amg;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lo/amg;->bNa:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v3

    .line 52
    invoke-virtual {p0}, Lo/amg;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lo/amg;->bMZ:Landroid/graphics/drawable/shapes/RectShape;

    invoke-virtual {v1}, Landroid/graphics/drawable/shapes/RectShape;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    invoke-virtual {p0}, Lo/amg;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lo/amg;->bMZ:Landroid/graphics/drawable/shapes/RectShape;

    iget-object v1, p0, Lo/amg;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/shapes/RectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 57
    :cond_0
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 58
    return-void
.end method
