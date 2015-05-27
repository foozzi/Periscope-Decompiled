.class Lo/ajz;
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

    .line 123
    iput-object p1, p0, Lo/ajz;->bIe:Lo/ajw;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lo/ajz;->bIe:Lo/ajw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ajw;->ˊ(Lo/ajw;Z)Z

    .line 132
    iget-object v0, p0, Lo/ajz;->bIe:Lo/ajw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ajw;->ˋ(Lo/ajw;Z)Z

    .line 133
    iget-object v0, p0, Lo/ajz;->bIe:Lo/ajw;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ajw;->setVisibility(I)V

    .line 134
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lo/ajz;->bIe:Lo/ajw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ajw;->ˊ(Lo/ajw;Z)Z

    .line 127
    return-void
.end method
