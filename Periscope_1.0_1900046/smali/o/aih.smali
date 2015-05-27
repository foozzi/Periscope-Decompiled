.class Lo/aih;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aif$if$if;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bGk:Landroid/widget/ProgressBar;

.field final synthetic bGl:Lo/aig;


# direct methods
.method constructor <init>(Lo/aig;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lo/aih;->bGl:Lo/aig;

    iput-object p2, p0, Lo/aih;->bGk:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zL()V
    .locals 2

    .line 79
    iget-object v0, p0, Lo/aih;->bGk:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lo/aii;

    invoke-direct {v1, p0}, Lo/aii;-><init>(Lo/aih;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 85
    return-void
.end method
