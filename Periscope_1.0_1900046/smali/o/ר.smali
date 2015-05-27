.class Lo/ר;
.super Landroid/widget/ImageView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ר$if;
    }
.end annotation


# instance fields
.field private כּ:Landroid/view/animation/Animation$AnimationListener;

.field private ﭨ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 12

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Lo/ר;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 54
    mul-float v0, p3, v5

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 55
    const/high16 v0, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v5

    float-to-int v7, v0

    .line 56
    const/4 v0, 0x0

    mul-float/2addr v0, v5

    float-to-int v8, v0

    .line 58
    const/high16 v0, 0x40600000    # 3.5f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lo/ר;->ﭨ:I

    .line 61
    invoke-direct {p0}, Lo/ר;->ᵥ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v9, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 63
    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, v5

    invoke-static {p0, v0}, Lo/ﺑ;->ʻ(Landroid/view/View;F)V

    goto :goto_0

    .line 65
    :cond_0
    new-instance v10, Lo/ר$if;

    iget v0, p0, Lo/ר;->ﭨ:I

    invoke-direct {v10, p0, v0, v6}, Lo/ר$if;-><init>(Lo/ר;II)V

    .line 66
    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 67
    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 68
    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lo/ר;->ﭨ:I

    int-to-float v1, v1

    int-to-float v2, v8

    int-to-float v3, v7

    const/high16 v4, 0x1e000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 70
    iget v11, p0, Lo/ר;->ﭨ:I

    .line 72
    invoke-virtual {p0, v11, v11, v11, v11}, Lo/ר;->setPadding(IIII)V

    .line 74
    :goto_0
    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    invoke-virtual {p0, v9}, Lo/ר;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method

.method static synthetic ˊ(Lo/ר;)I
    .locals 1

    .line 38
    iget v0, p0, Lo/ר;->ﭨ:I

    return v0
.end method

.method static synthetic ˊ(Lo/ר;I)I
    .locals 0

    .line 38
    iput p1, p0, Lo/ר;->ﭨ:I

    return p1
.end method

.method private ᵥ()Z
    .locals 2

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 106
    iget-object v0, p0, Lo/ר;->כּ:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lo/ר;->כּ:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lo/ר;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 98
    iget-object v0, p0, Lo/ר;->כּ:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lo/ר;->כּ:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lo/ר;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 85
    invoke-direct {p0}, Lo/ר;->ᵥ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lo/ר;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lo/ר;->ﭨ:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lo/ר;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lo/ר;->ﭨ:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lo/ר;->setMeasuredDimension(II)V

    .line 89
    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lo/ר;->כּ:Landroid/view/animation/Animation$AnimationListener;

    .line 93
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lo/ר;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lo/ר;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    :cond_0
    return-void
.end method

.method public setBackgroundColorRes(I)V
    .locals 1

    .line 117
    invoke-virtual {p0}, Lo/ר;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ר;->setBackgroundColor(I)V

    .line 118
    return-void
.end method
