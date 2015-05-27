.class Lo/aha;
.super Lo/alv;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bEj:Lo/agy$if;


# direct methods
.method constructor <init>(Lo/agy$if;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lo/aha;->bEj:Lo/agy$if;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lo/aha;->bEj:Lo/agy$if;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/agy$if;->ˊ(Lo/agy$if;Z)Z

    .line 78
    iget-object v0, p0, Lo/aha;->bEj:Lo/agy$if;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/agy$if;->ˊ(Lo/agy$if;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 79
    iget-object v0, p0, Lo/aha;->bEj:Lo/agy$if;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/agy$if;->ˊ(Lo/agy$if;Lo/agr;)Lo/agr;

    .line 80
    iget-object v0, p0, Lo/aha;->bEj:Lo/agy$if;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/agy$if;->ˊ(Lo/agy$if;Landroid/view/View;)Landroid/view/View;

    .line 81
    return-void
.end method
