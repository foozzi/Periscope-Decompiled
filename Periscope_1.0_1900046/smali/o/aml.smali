.class public Lo/aml;
.super Landroid/widget/ImageView;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lo/aml;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/aml;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lo/aml;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 22
    return-void
.end method

.method private BN()V
    .locals 8

    .line 37
    invoke-virtual {p0}, Lo/aml;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lo/aml;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 43
    invoke-virtual {p0}, Lo/aml;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lo/aml;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lo/aml;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    .line 44
    invoke-virtual {p0}, Lo/aml;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lo/aml;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lo/aml;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 45
    invoke-virtual {p0}, Lo/aml;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 46
    invoke-virtual {p0}, Lo/aml;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 48
    mul-int v0, v6, v5

    mul-int v1, v7, v4

    if-le v0, v1, :cond_1

    .line 49
    int-to-float v0, v5

    int-to-float v1, v7

    div-float v3, v0, v1

    goto :goto_0

    .line 51
    :cond_1
    int-to-float v0, v4

    int-to-float v1, v6

    div-float v3, v0, v1

    .line 54
    :goto_0
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 55
    invoke-virtual {p0, v2}, Lo/aml;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 26
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 27
    invoke-direct {p0}, Lo/aml;->BN()V

    .line 28
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1

    .line 32
    invoke-direct {p0}, Lo/aml;->BN()V

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 61
    return-void
.end method
