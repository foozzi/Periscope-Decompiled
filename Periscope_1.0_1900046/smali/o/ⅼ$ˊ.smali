.class Lo/ⅼ$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ⅼ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ⅼ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Ljava/lang/Object;IIIII)V
    .locals 6

    .line 102
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 103
    return-void
.end method

.method public ˊ(Ljava/lang/Object;IIIIIIII)V
    .locals 9

    .line 108
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 109
    return-void
.end method

.method public ˋ(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 1

    .line 64
    if-eqz p2, :cond_0

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0
.end method

.method public י(Ljava/lang/Object;)Z
    .locals 1

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public ᵎ(Ljava/lang/Object;)I
    .locals 1

    .line 75
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public ᵔ(Ljava/lang/Object;)I
    .locals 1

    .line 80
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public ᵢ(Ljava/lang/Object;)F
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public ⁱ(Ljava/lang/Object;)Z
    .locals 2

    .line 90
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    move-object v1, v0

    .line 91
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public ﹶ(Ljava/lang/Object;)V
    .locals 1

    .line 119
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 120
    return-void
.end method

.method public ﹺ(Ljava/lang/Object;)I
    .locals 1

    .line 141
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method public ｰ(Ljava/lang/Object;)I
    .locals 1

    .line 146
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    return v0
.end method
