.class Lo/afc;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bBV:Lo/aet;


# direct methods
.method constructor <init>(Lo/aet;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lo/afc;->bBV:Lo/aet;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 303
    sget-object v0, Lo/vi$if;->bmH:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 304
    iget-object v0, p0, Lo/afc;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ˑ(Lo/aet;)V

    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 291
    iget-object v0, p0, Lo/afc;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ˏ(Lo/aet;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 292
    iget-object v0, p0, Lo/afc;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ˎ(Lo/aet;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/afc;->bBV:Lo/aet;

    invoke-static {v1}, Lo/aet;->ˋ(Lo/aet;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    iget-object v0, p0, Lo/afc;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ˏ(Lo/aet;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 294
    iget-object v0, p0, Lo/afc;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ʿ(Lo/aet;)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lo/afc;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ˏ(Lo/aet;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 298
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
