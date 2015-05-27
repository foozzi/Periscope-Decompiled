.class public Lo/amv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/amv$if;
    }
.end annotation


# instance fields
.field private final bNA:Landroid/animation/AnimatorSet;

.field private final bNB:Landroid/animation/ObjectAnimator;

.field private final bNy:Landroid/widget/PopupWindow;

.field private final bNz:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/amv;->bNy:Landroid/widget/PopupWindow;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/amv;->bNz:Landroid/widget/TextView;

    .line 34
    new-instance v0, Lo/amv$if;

    iget-object v1, p0, Lo/amv;->bNy:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lo/amv;->bNz:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Lo/amv$if;-><init>(Landroid/widget/PopupWindow;Landroid/widget/TextView;)V

    iput-object v0, p0, Lo/amv;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lo/amv;->bNA:Landroid/animation/AnimatorSet;

    .line 36
    iget-object v0, p0, Lo/amv;->bNz:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lo/amv;->bNB:Landroid/animation/ObjectAnimator;

    .line 37
    iget-object v0, p0, Lo/amv;->bNB:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 39
    iget-object v0, p0, Lo/amv;->bNy:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 40
    iget-object v0, p0, Lo/amv;->bNy:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 41
    iget-object v0, p0, Lo/amv;->bNy:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object v0, p0, Lo/amv;->bNy:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lo/amv;->bNz:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 43
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 77
    iget-object v0, p0, Lo/amv;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    iget-object v0, p0, Lo/amv;->bNA:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 79
    iget-object v0, p0, Lo/amv;->bNy:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 80
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lo/amv;->bNy:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public ˊ(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 12

    .line 46
    iget-object v0, p0, Lo/amv;->bNz:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 49
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 51
    const/4 v0, 0x0

    aget v5, v4, v0

    .line 52
    const/4 v0, 0x1

    aget v6, v4, v0

    .line 53
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v6

    invoke-direct {v7, v5, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 56
    iget-object v0, p0, Lo/amv;->bNz:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 60
    iget-object v0, p0, Lo/amv;->bNz:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    .line 61
    iget-object v0, p0, Lo/amv;->bNz:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    .line 62
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, v8, 0x2

    sub-int v10, v0, v1

    .line 63
    iget v0, v7, Landroid/graphics/Rect;->top:I

    sub-int v11, v0, v9

    .line 65
    iget-object v0, p0, Lo/amv;->bNy:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v10, v11}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 66
    iget-object v0, p0, Lo/amv;->bNA:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lo/amv;->bNB:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 67
    iget-object v0, p0, Lo/amv;->bNA:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 69
    iget-object v0, p0, Lo/amv;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 70
    return-void
.end method
