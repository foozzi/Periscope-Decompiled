.class Lo/or;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TH:Lo/pa;

.field private final TI:Lo/ot;


# direct methods
.method constructor <init>(Lo/ot;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lo/or;->TI:Lo/ot;

    .line 31
    new-instance v0, Lo/pa;

    invoke-direct {v0}, Lo/pa;-><init>()V

    iput-object v0, p0, Lo/or;->TH:Lo/pa;

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 42
    iget-object v0, p0, Lo/or;->TH:Lo/pa;

    invoke-virtual {v0}, Lo/pa;->bZ()Lo/oz;

    move-result-object v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lo/or;->TI:Lo/ot;

    invoke-virtual {v0, v2}, Lo/ot;->ˊ(Lo/oz;)V

    .line 47
    return-void
.end method

.method public ˊ(Lo/pe;Ljava/lang/Object;)V
    .locals 2

    .line 35
    invoke-static {p1, p2}, Lo/oz;->ˎ(Lo/pe;Ljava/lang/Object;)Lo/oz;

    move-result-object v1

    .line 36
    iget-object v0, p0, Lo/or;->TH:Lo/pa;

    invoke-virtual {v0, v1}, Lo/pa;->ˎ(Lo/oz;)V

    .line 37
    iget-object v0, p0, Lo/or;->TI:Lo/ot;

    invoke-virtual {v0}, Lo/ot;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method
