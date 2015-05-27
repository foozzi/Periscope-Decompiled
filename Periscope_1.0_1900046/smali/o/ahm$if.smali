.class Lo/ahm$if;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ahm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private bFf:Landroid/graphics/PathMeasure;

.field private bFg:Landroid/view/View;

.field private bFh:F

.field private bFi:F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FLandroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 85
    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lo/ahm$if;->bFf:Landroid/graphics/PathMeasure;

    .line 86
    iget-object v0, p0, Lo/ahm$if;->bFf:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Lo/ahm$if;->bFh:F

    .line 87
    iput-object p4, p0, Lo/ahm$if;->bFg:Landroid/view/View;

    .line 88
    iput p2, p0, Lo/ahm$if;->bFi:F

    .line 90
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 13

    .line 95
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    .line 96
    iget-object v0, p0, Lo/ahm$if;->bFf:Landroid/graphics/PathMeasure;

    iget v1, p0, Lo/ahm$if;->bFh:F

    mul-float/2addr v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v10, v2}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    .line 97
    iget-object v0, p0, Lo/ahm$if;->bFg:Landroid/view/View;

    iget v1, p0, Lo/ahm$if;->bFi:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 100
    const v0, 0x453b8000    # 3000.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x43480000    # 200.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 101
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    const-wide v4, 0x3fb1111120000000L    # 0.06666667014360428

    const-wide v6, 0x3fc99999a0000000L    # 0.20000000298023224

    const-wide v8, 0x3ff19999a0000000L    # 1.100000023841858

    invoke-static/range {v0 .. v9}, Lo/ƒ;->ˊ(DDDDD)D

    move-result-wide v11

    .line 106
    iget-object v0, p0, Lo/ahm$if;->bFg:Landroid/view/View;

    double-to-float v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 107
    iget-object v0, p0, Lo/ahm$if;->bFg:Landroid/view/View;

    double-to-float v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 108
    goto :goto_0

    :cond_0
    const v0, 0x453b8000    # 3000.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 110
    float-to-double v0, p1

    const-wide v2, 0x3fb1111120000000L    # 0.06666667014360428

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    const-wide v6, 0x3ff19999a0000000L    # 1.100000023841858

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v0 .. v9}, Lo/ƒ;->ˊ(DDDDD)D

    move-result-wide v11

    .line 115
    iget-object v0, p0, Lo/ahm$if;->bFg:Landroid/view/View;

    double-to-float v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 116
    iget-object v0, p0, Lo/ahm$if;->bFg:Landroid/view/View;

    double-to-float v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 117
    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lo/ahm$if;->bFg:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 119
    iget-object v0, p0, Lo/ahm$if;->bFg:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 121
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 122
    return-void
.end method
