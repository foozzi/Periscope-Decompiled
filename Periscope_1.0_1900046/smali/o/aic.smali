.class public Lo/aic;
.super Lo/alv;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bFU:Ltv/periscope/android/ui/main/MainActivity$if;

.field final synthetic bFW:Lo/aif;

.field final synthetic bFX:Landroid/animation/ObjectAnimator;

.field final synthetic bFY:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Ltv/periscope/android/ui/main/MainActivity$if;Lo/aif;Landroid/animation/ObjectAnimator;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lo/aic;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iput-object p2, p0, Lo/aic;->bFW:Lo/aif;

    iput-object p3, p0, Lo/aic;->bFX:Landroid/animation/ObjectAnimator;

    iput-object p4, p0, Lo/aic;->bFY:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 531
    iget-object v0, p0, Lo/aic;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iget-object v0, v0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ᐝ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lo/aic;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iget-object v0, v0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ᐝ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lo/aic;->bFW:Lo/aif;

    iget v1, v1, Lo/aif;->bGg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 533
    iget-object v0, p0, Lo/aic;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iget-object v0, v0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ˏ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/aic;->bFW:Lo/aif;

    iget v1, v1, Lo/aif;->bGf:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 534
    iget-object v0, p0, Lo/aic;->bFX:Landroid/animation/ObjectAnimator;

    new-instance v1, Lo/aid;

    invoke-direct {v1, p0}, Lo/aid;-><init>(Lo/aic;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 544
    return-void
.end method
