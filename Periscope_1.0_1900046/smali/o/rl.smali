.class public Lo/rl;
.super Ljava/util/concurrent/FutureTask;
.source ""

# interfaces
.implements Lo/re;
.implements Lo/rm;
.implements Lo/rp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:Ljava/lang/Object;>Ljava/util/concurrent/FutureTask<TV;>;Lo/re<Lo/rp;>;Lo/rm;Lo/rp;"
    }
.end annotation


# instance fields
.field final Xm:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Runnable;TV;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0, p1}, Lo/rl;->ᐤ(Ljava/lang/Object;)Lo/re;

    move-result-object v0

    iput-object v0, p0, Lo/rl;->Xm:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/concurrent/Callable<TV;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 23
    invoke-virtual {p0, p1}, Lo/rl;->ᐤ(Ljava/lang/Object;)Lo/re;

    move-result-object v0

    iput-object v0, p0, Lo/rl;->Xm:Ljava/lang/Object;

    .line 24
    return-void
.end method


# virtual methods
.method public cQ()Z
    .locals 1

    .line 48
    invoke-virtual {p0}, Lo/rl;->cW()Lo/re;

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

    .line 79
    iget-object v0, p0, Lo/rl;->Xm:Ljava/lang/Object;

    check-cast v0, Lo/re;

    return-object v0
.end method

.method public cj()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Collection<Lo/rp;>;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lo/rl;->cW()Lo/re;

    move-result-object v0

    check-cast v0, Lo/rm;

    check-cast v0, Lo/re;

    invoke-interface {v0}, Lo/re;->cj()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 33
    invoke-virtual {p0}, Lo/rl;->cW()Lo/re;

    move-result-object v0

    check-cast v0, Lo/rm;

    invoke-interface {v0, p1}, Lo/rm;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lo/rl;->cW()Lo/re;

    move-result-object v0

    check-cast v0, Lo/rm;

    check-cast v0, Lo/rp;

    invoke-interface {v0}, Lo/rp;->isFinished()Z

    move-result v0

    return v0
.end method

.method public ˊ(Lo/rp;)V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lo/rl;->cW()Lo/re;

    move-result-object v0

    check-cast v0, Lo/rm;

    check-cast v0, Lo/re;

    invoke-interface {v0, p1}, Lo/re;->Ꭵ(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public є()Lo/rh;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lo/rl;->cW()Lo/re;

    move-result-object v0

    check-cast v0, Lo/rm;

    invoke-interface {v0}, Lo/rm;->є()Lo/rh;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Ꭵ(Ljava/lang/Object;)V
    .locals 1

    .line 16
    move-object v0, p1

    check-cast v0, Lo/rp;

    invoke-virtual {p0, v0}, Lo/rl;->ˊ(Lo/rp;)V

    return-void
.end method

.method public ᐝ(Ljava/lang/Throwable;)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lo/rl;->cW()Lo/re;

    move-result-object v0

    check-cast v0, Lo/rm;

    check-cast v0, Lo/rp;

    invoke-interface {v0, p1}, Lo/rp;->ᐝ(Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method protected ᐤ(Ljava/lang/Object;)Lo/re;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::Lo/re<Lo/rp;>;:Lo/rm;:Lo/rp;>(Ljava/lang/Object;)TT;"
        }
    .end annotation

    .line 85
    invoke-static {p1}, Lo/rn;->ᒡ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    move-object v0, p1

    check-cast v0, Lo/re;

    return-object v0

    .line 88
    :cond_0
    new-instance v0, Lo/rn;

    invoke-direct {v0}, Lo/rn;-><init>()V

    return-object v0
.end method

.method public ᔊ(Z)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lo/rl;->cW()Lo/re;

    move-result-object v0

    check-cast v0, Lo/rm;

    check-cast v0, Lo/rp;

    invoke-interface {v0, p1}, Lo/rp;->ᔊ(Z)V

    .line 59
    return-void
.end method
