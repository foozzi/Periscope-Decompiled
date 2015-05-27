.class Lo/aii;
.super Lo/alv;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bGm:Lo/aih;


# direct methods
.method constructor <init>(Lo/aih;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lo/aii;->bGm:Lo/aih;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lo/aii;->bGm:Lo/aih;

    iget-object v0, v0, Lo/aih;->bGk:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 83
    return-void
.end method
