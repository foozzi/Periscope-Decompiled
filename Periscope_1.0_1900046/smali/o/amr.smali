.class public Lo/amr;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Landroid/view/TextureView;II)V
    .locals 4

    .line 19
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 20
    :cond_0
    return-void

    .line 22
    :cond_1
    sub-int v2, p2, p1

    .line 23
    if-lez v2, :cond_2

    .line 24
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 25
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 26
    invoke-virtual {p0, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 30
    invoke-virtual {p0, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 32
    :goto_0
    return-void
.end method
