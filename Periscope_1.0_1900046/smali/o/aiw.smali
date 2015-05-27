.class Lo/aiw;
.super Lo/alv;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bGN:Lo/aiq;

.field final synthetic bGP:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/aiq;Landroid/view/View;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lo/aiw;->bGN:Lo/aiq;

    iput-object p2, p0, Lo/aiw;->bGP:Landroid/view/View;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lo/aiw;->bGP:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 338
    return-void
.end method
