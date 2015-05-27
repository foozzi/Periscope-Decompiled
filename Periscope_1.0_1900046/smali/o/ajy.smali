.class Lo/ajy;
.super Lo/alv;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bIe:Lo/ajw;


# direct methods
.method constructor <init>(Lo/ajw;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lo/ajy;->bIe:Lo/ajw;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lo/ajy;->bIe:Lo/ajw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ajw;->ˊ(Lo/ajw;Z)Z

    .line 120
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lo/ajy;->bIe:Lo/ajw;

    invoke-static {v0}, Lo/ajw;->ˋ(Lo/ajw;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lo/akj;->ᔉ(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lo/ajy;->bIe:Lo/ajw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ajw;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lo/ajy;->bIe:Lo/ajw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ajw;->ˊ(Lo/ajw;Z)Z

    .line 114
    iget-object v0, p0, Lo/ajy;->bIe:Lo/ajw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ajw;->ˋ(Lo/ajw;Z)Z

    .line 115
    return-void
.end method
