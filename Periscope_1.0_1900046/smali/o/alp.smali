.class Lo/alp;
.super Lo/alv;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bMz:Lo/alo;


# direct methods
.method constructor <init>(Lo/alo;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lo/alp;->bMz:Lo/alo;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lo/alp;->bMz:Lo/alo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/alo;->ˊ(Lo/alo;Z)Z

    .line 157
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lo/alp;->bMz:Lo/alo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/alo;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lo/alp;->bMz:Lo/alo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/alo;->ˊ(Lo/alo;Z)Z

    .line 151
    iget-object v0, p0, Lo/alp;->bMz:Lo/alo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/alo;->ˋ(Lo/alo;Z)Z

    .line 152
    return-void
.end method
