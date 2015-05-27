.class public Lo/aip;
.super Landroid/view/View;
.source ""


# instance fields
.field private bFQ:Lo/abf;

.field private г:I

.field private ذ:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/aip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 28
    const v0, 0x7f010009

    invoke-direct {p0, p1, p2, v0}, Lo/aip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    sget-object v0, Lo/vh$if;->ToolbarButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 36
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/aip;->ذ:Landroid/graphics/drawable/Drawable;

    .line 37
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-direct {p0, v0}, Lo/aip;->ה(I)V

    .line 39
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    return-void
.end method

.method private zN()V
    .locals 3

    .line 43
    iget-object v0, p0, Lo/aip;->ذ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lo/aip;->ذ:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lo/aip;->г:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 45
    invoke-virtual {p0}, Lo/aip;->invalidate()V

    .line 47
    :cond_0
    return-void
.end method

.method private ה(I)V
    .locals 0

    .line 86
    iput p1, p0, Lo/aip;->г:I

    .line 87
    invoke-direct {p0}, Lo/aip;->zN()V

    .line 88
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lo/aip;->ذ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 100
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 102
    iget-object v0, p0, Lo/aip;->ذ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 103
    iget-object v0, p0, Lo/aip;->ذ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 105
    invoke-virtual {p0}, Lo/aip;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v3

    div-int/lit8 v5, v0, 0x2

    .line 106
    invoke-virtual {p0}, Lo/aip;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v4

    div-int/lit8 v6, v0, 0x2

    .line 107
    iget-object v0, p0, Lo/aip;->ذ:Landroid/graphics/drawable/Drawable;

    add-int v1, v5, v3

    add-int v2, v6, v4

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lo/aip;->ה(I)V

    .line 60
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lo/aip;->ذ:Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-virtual {p0}, Lo/aip;->requestLayout()V

    .line 52
    invoke-direct {p0}, Lo/aip;->zN()V

    .line 53
    return-void
.end method

.method public setTargetColor(I)V
    .locals 2

    .line 68
    new-instance v0, Lo/abf;

    iget v1, p0, Lo/aip;->г:I

    invoke-direct {v0, v1, p1}, Lo/abf;-><init>(II)V

    iput-object v0, p0, Lo/aip;->bFQ:Lo/abf;

    .line 69
    return-void
.end method

.method public zO()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lo/aip;->bFQ:Lo/abf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public zP()I
    .locals 1

    .line 79
    iget-object v0, p0, Lo/aip;->bFQ:Lo/abf;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_0
    iget-object v0, p0, Lo/aip;->bFQ:Lo/abf;

    iget v0, v0, Lo/abf;->bvp:I

    return v0
.end method

.method public ˮ(F)V
    .locals 2

    .line 91
    iget-object v0, p0, Lo/aip;->bFQ:Lo/abf;

    invoke-virtual {v0, p1}, Lo/abf;->ˆ(F)I

    move-result v1

    .line 92
    iget v0, p0, Lo/aip;->г:I

    if-eq v1, v0, :cond_0

    .line 93
    iput v1, p0, Lo/aip;->г:I

    .line 94
    invoke-direct {p0}, Lo/aip;->zN()V

    .line 96
    :cond_0
    return-void
.end method
