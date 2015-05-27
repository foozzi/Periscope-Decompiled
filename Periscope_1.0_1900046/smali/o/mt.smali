.class Lo/mt;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final QA:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<Lo/ms;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/mt;->QA:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public bm()V
    .locals 2

    .line 33
    iget-object v0, p0, Lo/mt;->QA:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public bn()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lo/mt;->QA:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bo()Lo/ms;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/mt;->QA:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ms;

    return-object v0
.end method

.method public ˊ(Landroid/app/Activity;Lo/ms;)Z
    .locals 4

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {p0}, Lo/mt;->bn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Authorize already in progress"

    invoke-interface {v0, v1, v2}, Lo/ps;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2, p1}, Lo/ms;->ˌ(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lo/mt;->QA:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to update authHandler, authorize already in progress."

    invoke-interface {v0, v1, v2}, Lo/ps;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_1
    :goto_0
    return v3
.end method
