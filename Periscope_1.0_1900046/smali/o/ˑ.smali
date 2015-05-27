.class Lo/ˑ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ᵥ:Lo/ˉ;

.field final synthetic ﹸ:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lo/ˉ;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lo/ˑ;->ᵥ:Lo/ˉ;

    iput-object p2, p0, Lo/ˑ;->ﹸ:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    .line 1042
    iget-object v0, p0, Lo/ˑ;->ﹸ:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lo/ˑ;->ﹸ:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1044
    iget-object v0, p0, Lo/ˑ;->ᵥ:Lo/ˉ;

    iget-object v1, p0, Lo/ˑ;->ﹸ:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lo/ˑ;->ﹸ:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1047
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1050
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1053
    return-void
.end method
