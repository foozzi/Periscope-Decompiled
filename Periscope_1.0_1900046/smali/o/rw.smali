.class public abstract Lo/rw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/sd;"
    }
.end annotation


# instance fields
.field protected final Rv:Ljava/util/concurrent/ScheduledExecutorService;

.field protected XB:Lo/se;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/se<TT;>;"
        }
    .end annotation
.end field

.field protected final dV:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/se;Lo/ru;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/se<TT;>;Lo/ru;Ljava/util/concurrent/ScheduledExecutorService;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/rw;->dV:Landroid/content/Context;

    .line 22
    iput-object p4, p0, Lo/rw;->Rv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    iput-object p2, p0, Lo/rw;->XB:Lo/se;

    .line 25
    invoke-virtual {p3, p0}, Lo/ru;->ˊ(Lo/sd;)V

    .line 26
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 75
    new-instance v0, Lo/sa;

    invoke-direct {v0, p0}, Lo/sa;-><init>(Lo/rw;)V

    invoke-virtual {p0, v0}, Lo/rw;->ˎ(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method protected ˋ(Ljava/lang/Runnable;)V
    .locals 3

    .line 93
    :try_start_0
    iget-object v0, p0, Lo/rw;->Rv:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    iget-object v0, p0, Lo/rw;->dV:Landroid/content/Context;

    const-string v1, "Failed to run events task"

    invoke-static {v0, v1, v2}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :goto_0
    return-void
.end method

.method public ˎ(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 29
    new-instance v0, Lo/rx;

    invoke-direct {v0, p0, p1, p2}, Lo/rx;-><init>(Lo/rw;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lo/rw;->ˎ(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method protected ˎ(Ljava/lang/Runnable;)V
    .locals 3

    .line 101
    :try_start_0
    iget-object v0, p0, Lo/rw;->Rv:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v2

    .line 103
    iget-object v0, p0, Lo/rw;->dV:Landroid/content/Context;

    const-string v1, "Failed to submit events task"

    invoke-static {v0, v1, v2}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :goto_0
    return-void
.end method

.method public ᔾ(Ljava/lang/String;)V
    .locals 1

    .line 62
    new-instance v0, Lo/rz;

    invoke-direct {v0, p0}, Lo/rz;-><init>(Lo/rw;)V

    invoke-virtual {p0, v0}, Lo/rw;->ˎ(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method public ᵌ(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Lo/ry;

    invoke-direct {v0, p0, p1}, Lo/ry;-><init>(Lo/rw;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lo/rw;->ˋ(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method protected abstract ẗ()Lo/se;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/se<TT;>;"
        }
    .end annotation
.end method
