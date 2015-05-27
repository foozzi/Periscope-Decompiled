.class Lo/aiy;
.super Lo/alv;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bGN:Lo/aiq;

.field final synthetic bGO:Landroid/view/View;

.field final synthetic bGP:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/aiq;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lo/aiy;->bGN:Lo/aiq;

    iput-object p2, p0, Lo/aiy;->bGO:Landroid/view/View;

    iput-object p3, p0, Lo/aiy;->bGP:Landroid/view/View;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 360
    iget-object v0, p0, Lo/aiy;->bGO:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lo/aiy;->bGP:Landroid/view/View;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 362
    return-void
.end method
