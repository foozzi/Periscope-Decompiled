.class public abstract Lo/ri;
.super Lo/qz;
.source ""

# interfaces
.implements Lo/re;
.implements Lo/rm;
.implements Lo/rp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ri$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:Ljava/lang/Object;Progress:Ljava/lang/Object;Result:Ljava/lang/Object;>Lo/qz<TParams;TProgress;TResult;>;Lo/re<Lo/rp;>;Lo/rm;Lo/rp;"
    }
.end annotation


# instance fields
.field private final Xj:Lo/rn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lo/qz;-><init>()V

    .line 20
    new-instance v0, Lo/rn;

    invoke-direct {v0}, Lo/rn;-><init>()V

    iput-object v0, p0, Lo/ri;->Xj:Lo/rn;

    .line 21
    return-void
.end method


# virtual methods
.method public cQ()Z
    .locals 1

    .line 54
    invoke-virtual {p0}, Lo/ri;->cW()Lo/re;

    move-result-object v0

    check-cast v0, Lo/rm;

    check-cast v0, Lo/re;

    invoke-interface {v0}, Lo/re;->cQ()Z

    move-result v0

    return v0
.end method

.method public cW()Lo/re;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::Lo/re<Lo/rp;>;:Lo/rm;:Lo/rp;>()TT;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lo/ri;->Xj:Lo/rn;

    return-object v0
.end method

.method public cj()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Collection<Lo/rp;>;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lo/ri;->cW()Lo/re;

    move-result-object v0

    check-cast v0, Lo/rm;

    check-cast v0, Lo/re;

    invoke-interface {v0}, Lo/re;->cj()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 31
    invoke-static {p0, p1}, Lo/rh;->ˊ(Lo/rm;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lo/ri;->cW()Lo/re;

    move-result-object v0

    check-cast v0, Lo/rm;

    check-cast v0, Lo/rp;

    invoke-interface {v0}, Lo/rp;->isFinished()Z

    move-result v0

    return v0
.end method

.method public final varargs ˊ(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/concurrent/ExecutorService;[TParams;)V"
        }
    .end annotation

    .line 25
    new-instance v1, Lo/ri$if;

    invoke-direct {v1, p1, p0}, Lo/ri$if;-><init>(Ljava/util/concurrent/Executor;Lo/ri;)V

    .line 26
    invoke-super {p0, v1, p2}, Lo/qz;->ˊ(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lo/qz;

    .line 27
    return-void
.end method

.method public ˊ(Lo/rp;)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lo/ri;->cO()Lo/qz$ˎ;

    move-result-object v0

    sget-object v1, Lo/qz$ˎ;->WX:Lo/qz$ˎ;

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not add Dependency after task is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lo/ri;->cW()Lo/re;

    move-result-object v0

    check-cast v0, Lo/rm;

    check-cast v0, Lo/re;

    invoke-interface {v0, p1}, Lo/re;->Ꭵ(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public є()Lo/rh;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lo/ri;->cW()Lo/re;

    move-result-object v0

    check-cast v0, Lo/rm;

    invoke-interface {v0}, Lo/rm;->є()Lo/rh;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Ꭵ(Ljava/lang/Object;)V
    .locals 1

    .line 10
    move-object v0, p1

    check-cast v0, Lo/rp;

    invoke-virtual {p0, v0}, Lo/ri;->ˊ(Lo/rp;)V

    return-void
.end method

.method public ᐝ(Ljava/lang/Throwable;)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lo/ri;->cW()Lo/re;

    move-result-object v0

    check-cast v0, Lo/rm;

    check-cast v0, Lo/rp;

    invoke-interface {v0, p1}, Lo/rp;->ᐝ(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public ᔊ(Z)V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lo/ri;->cW()Lo/re;

    move-result-object v0

    check-cast v0, Lo/rm;

    check-cast v0, Lo/rp;

    invoke-interface {v0, p1}, Lo/rp;->ᔊ(Z)V

    .line 65
    return-void
.end method
