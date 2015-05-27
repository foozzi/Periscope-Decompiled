.class public Lo/amo;
.super Landroid/view/View;
.source ""


# instance fields
.field private bNi:I

.field private bNj:I

.field private bNk:Lo/aek$ˊ;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Lo/amo;->ˊ(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1}, Lo/amo;->ˊ(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1}, Lo/amo;->ˊ(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private ˊ(Landroid/content/Context;)V
    .locals 3

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/amo;->mPaint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lo/amo;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lo/amo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lo/amo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    invoke-static {p1}, Lo/akn;->ᒢ(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lo/amo;->bNj:I

    .line 40
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lo/amo;->setBackgroundColor(I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 50
    move-object v0, p1

    iget v1, p0, Lo/amo;->bNi:I

    int-to-float v3, v1

    iget-object v5, p0, Lo/amo;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 52
    iget-object v0, p0, Lo/amo;->bNk:Lo/aek$ˊ;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lo/amo;->bNk:Lo/aek$ˊ;

    invoke-interface {v0}, Lo/aek$ˊ;->xW()J

    move-result-wide v6

    .line 54
    iget-object v0, p0, Lo/amo;->bNk:Lo/aek$ˊ;

    invoke-interface {v0}, Lo/aek$ˊ;->xV()J

    move-result-wide v8

    .line 55
    cmp-long v0, v8, v6

    if-gez v0, :cond_0

    .line 56
    long-to-float v0, v8

    long-to-float v1, v6

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lo/amo;->ۥ(F)V

    .line 59
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lo/amo;->bNi:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lo/amo;->bNk:Lo/aek$ˊ;

    .line 71
    return-void
.end method

.method public ˊ(Lo/aek$ˊ;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lo/amo;->bNk:Lo/aek$ˊ;

    if-eqz v0, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    iput-object p1, p0, Lo/amo;->bNk:Lo/aek$ˊ;

    .line 66
    return-void
.end method

.method public ۥ(F)V
    .locals 1

    .line 44
    iget v0, p0, Lo/amo;->bNj:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lo/amo;->bNi:I

    .line 45
    invoke-virtual {p0}, Lo/amo;->invalidate()V

    .line 46
    return-void
.end method
