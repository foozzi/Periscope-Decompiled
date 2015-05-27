.class public Lo/ams;
.super Landroid/graphics/drawable/ShapeDrawable;
.source ""


# instance fields
.field private final bNr:I

.field private final bNs:I

.field private final bNt:Landroid/graphics/Paint;

.field private bNu:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/shapes/Shape;IIIILjava/lang/CharSequence;)V
    .locals 3

    .line 34
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 36
    iput p3, p0, Lo/ams;->bNr:I

    .line 37
    iput p4, p0, Lo/ams;->bNs:I

    .line 39
    invoke-virtual {p0}, Lo/ams;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo/ams;->bNt:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lo/ams;->bNt:Landroid/graphics/Paint;

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lo/ams;->bNt:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 44
    iget-object v0, p0, Lo/ams;->bNt:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v0, p0, Lo/ams;->bNt:Landroid/graphics/Paint;

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 47
    iput-object p7, p0, Lo/ams;->bNu:Ljava/lang/CharSequence;

    .line 48
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 52
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    invoke-virtual {p0}, Lo/ams;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 55
    iget-object v0, p0, Lo/ams;->bNu:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lo/ams;->bNt:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lo/ams;->bNt:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lo/ams;->bNt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 57
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 71
    iget v0, p0, Lo/ams;->bNs:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 66
    iget v0, p0, Lo/ams;->bNr:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 61
    iget-object v0, p0, Lo/ams;->bNt:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lo/ams;->bNt:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lo/ams;->bNt:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 82
    return-void
.end method
