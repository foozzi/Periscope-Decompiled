.class Lo/ะ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    }
.end annotation


# instance fields
.field final synthetic op:Lo/ऽ;


# direct methods
.method constructor <init>(Lo/ऽ;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lo/ะ;->op:Lo/ऽ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .line 520
    iget-object v0, p0, Lo/ะ;->op:Lo/ऽ;

    invoke-static {v0}, Lo/ऽ;->ˊ(Lo/ऽ;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    iget-object v0, p0, Lo/ะ;->op:Lo/ऽ;

    invoke-static {v0}, Lo/ऽ;->ˎ(Lo/ऽ;)Lo/ɬ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ɬ;->ɬ()Lo/ﾚ;

    move-result-object v3

    .line 522
    if-eqz v3, :cond_0

    .line 523
    iget-object v0, p0, Lo/ะ;->op:Lo/ऽ;

    invoke-static {v0, v3}, Lo/ऽ;->ˊ(Lo/ऽ;Lo/ﾚ;)V

    .line 525
    :cond_0
    iget-object v0, p0, Lo/ะ;->op:Lo/ऽ;

    invoke-static {v0}, Lo/ऽ;->ˏ(Lo/ऽ;)V

    .line 526
    iget-object v0, p0, Lo/ะ;->op:Lo/ऽ;

    invoke-static {v0}, Lo/ऽ;->ˋ(Lo/ऽ;)V

    .line 527
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Open sessions were closed and a new session was opened."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 531
    :cond_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Skipping session finalization because a crash has already occurred."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 517
    invoke-virtual {p0}, Lo/ะ;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
