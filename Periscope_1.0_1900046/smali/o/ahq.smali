.class Lo/ahq;
.super Lo/alv;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bFb:Landroid/view/ViewGroup;

.field final synthetic bFj:Lo/ahp;

.field final synthetic ɭ:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/ahp;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lo/ahq;->bFj:Lo/ahp;

    iput-object p2, p0, Lo/ahq;->bFb:Landroid/view/ViewGroup;

    iput-object p3, p0, Lo/ahq;->ɭ:Landroid/view/View;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lo/ahq;->bFj:Lo/ahp;

    invoke-static {v0}, Lo/ahp;->ˋ(Lo/ahp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/ahr;

    invoke-direct {v1, p0}, Lo/ahr;-><init>(Lo/ahq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    iget-object v0, p0, Lo/ahq;->bFj:Lo/ahp;

    invoke-static {v0}, Lo/ahp;->ˊ(Lo/ahp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 65
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lo/ahq;->bFj:Lo/ahp;

    invoke-static {v0}, Lo/ahp;->ˊ(Lo/ahp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 54
    return-void
.end method
