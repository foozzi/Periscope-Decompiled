.class Lo/pl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/pn;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UV:Lo/pj;

.field final UW:Ljava/util/concurrent/CountDownLatch;

.field final synthetic UX:I


# direct methods
.method constructor <init>(Lo/pj;I)V
    .locals 2

    .line 567
    iput-object p1, p0, Lo/pl;->UV:Lo/pj;

    iput p2, p0, Lo/pl;->UX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget v1, p0, Lo/pl;->UX:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lo/pl;->UW:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public ˏ(Ljava/lang/Exception;)V
    .locals 1

    .line 584
    iget-object v0, p0, Lo/pl;->UV:Lo/pj;

    invoke-static {v0}, Lo/pj;->ˎ(Lo/pj;)Lo/pn;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/pn;->ˏ(Ljava/lang/Exception;)V

    .line 585
    return-void
.end method

.method public ו(Ljava/lang/Object;)V
    .locals 4

    .line 575
    iget-object v0, p0, Lo/pl;->UW:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 576
    iget-object v0, p0, Lo/pl;->UW:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lo/pl;->UV:Lo/pj;

    invoke-static {v0}, Lo/pj;->ˋ(Lo/pj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 578
    iget-object v0, p0, Lo/pl;->UV:Lo/pj;

    invoke-static {v0}, Lo/pj;->ˎ(Lo/pj;)Lo/pn;

    move-result-object v0

    iget-object v1, p0, Lo/pl;->UV:Lo/pj;

    invoke-interface {v0, v1}, Lo/pn;->ו(Ljava/lang/Object;)V

    .line 580
    :cond_0
    return-void
.end method
