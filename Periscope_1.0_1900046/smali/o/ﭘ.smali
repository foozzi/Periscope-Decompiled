.class Lo/ﭘ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Ljava/lang/Object;IIIII)V
    .locals 6

    .line 52
    move-object v0, p0

    check-cast v0, Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 53
    return-void
.end method

.method public static ˊ(Ljava/lang/Object;IIIIIIII)V
    .locals 9

    .line 57
    move-object v0, p0

    check-cast v0, Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 58
    return-void
.end method

.method public static ˋ(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 1

    .line 26
    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0
.end method

.method public static י(Ljava/lang/Object;)Z
    .locals 1

    .line 31
    move-object v0, p0

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public static ᵎ(Ljava/lang/Object;)I
    .locals 1

    .line 35
    move-object v0, p0

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public static ᵔ(Ljava/lang/Object;)I
    .locals 1

    .line 39
    move-object v0, p0

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public static ⁱ(Ljava/lang/Object;)Z
    .locals 1

    .line 43
    move-object v0, p0

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public static ﹶ(Ljava/lang/Object;)V
    .locals 1

    .line 67
    move-object v0, p0

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 68
    return-void
.end method

.method public static ﹺ(Ljava/lang/Object;)I
    .locals 1

    .line 84
    move-object v0, p0

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method public static ｰ(Ljava/lang/Object;)I
    .locals 1

    .line 88
    move-object v0, p0

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    return v0
.end method
