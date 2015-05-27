.class Lo/aid;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bFZ:Lo/aic;


# direct methods
.method constructor <init>(Lo/aic;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lo/aid;->bFZ:Lo/aic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 537
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lo/aid;->bFZ:Lo/aic;

    iget-object v0, v0, Lo/aic;->bFY:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lo/aid;->bFZ:Lo/aic;

    iget-object v0, v0, Lo/aic;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iget-object v0, v0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ᐝ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lo/aid;->bFZ:Lo/aic;

    iget-object v0, v0, Lo/aic;->bFY:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lo/aid;->bFZ:Lo/aic;

    iget-object v1, v1, Lo/aic;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iget-object v1, v1, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v1}, Lo/alk;->ᵌ(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 540
    iget-object v0, p0, Lo/aid;->bFZ:Lo/aic;

    iget-object v0, v0, Lo/aic;->bFY:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 542
    :cond_0
    return-void
.end method
