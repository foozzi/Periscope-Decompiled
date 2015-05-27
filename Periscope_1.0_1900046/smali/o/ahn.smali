.class Lo/ahn;
.super Lo/alu;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bFb:Landroid/view/ViewGroup;

.field final synthetic bFc:Landroid/view/View;

.field final synthetic bFd:Lo/ahm;


# direct methods
.method constructor <init>(Lo/ahm;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lo/ahn;->bFd:Lo/ahm;

    iput-object p2, p0, Lo/ahn;->bFb:Landroid/view/ViewGroup;

    iput-object p3, p0, Lo/ahn;->bFc:Landroid/view/View;

    invoke-direct {p0}, Lo/alu;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lo/ahn;->bFd:Lo/ahm;

    invoke-static {v0}, Lo/ahm;->ˋ(Lo/ahm;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/aho;

    invoke-direct {v1, p0}, Lo/aho;-><init>(Lo/ahn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    iget-object v0, p0, Lo/ahn;->bFd:Lo/ahm;

    invoke-static {v0}, Lo/ahm;->ˊ(Lo/ahm;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 64
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lo/ahn;->bFd:Lo/ahm;

    invoke-static {v0}, Lo/ahm;->ˊ(Lo/ahm;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 53
    return-void
.end method
