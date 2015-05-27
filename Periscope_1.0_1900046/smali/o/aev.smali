.class Lo/aev;
.super Lo/alv;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bBV:Lo/aet;

.field final synthetic bBW:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/aet;Landroid/view/View;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lo/aev;->bBV:Lo/aet;

    iput-object p2, p0, Lo/aev;->bBW:Landroid/view/View;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 606
    iget-object v0, p0, Lo/aev;->bBW:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 607
    return-void
.end method
