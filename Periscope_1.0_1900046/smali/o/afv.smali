.class Lo/afv;
.super Lo/alv;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bCH:Lo/afq;


# direct methods
.method constructor <init>(Lo/afq;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lo/afv;->bCH:Lo/afq;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lo/afv;->bCH:Lo/afq;

    invoke-static {v0}, Lo/afq;->ʻ(Lo/afq;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lo/afv;->bCH:Lo/afq;

    invoke-static {v0}, Lo/afq;->ᐝ(Lo/afq;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    return-void
.end method
