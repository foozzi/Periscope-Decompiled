.class public Lo/rn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/re;
.implements Lo/rm;
.implements Lo/rp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/re<Lo/rp;>;Lo/rm;Lo/rp;"
    }
.end annotation


# instance fields
.field private final Xn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/rp;>;"
        }
    .end annotation
.end field

.field private final Xo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Xp:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/rn;->Xn:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/rn;->Xo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/rn;->Xp:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static ᒡ(Ljava/lang/Object;)Z
    .locals 4

    .line 74
    move-object v0, p0

    :try_start_0
    check-cast v0, Lo/re;

    move-object v1, v0

    .line 75
    move-object v0, p0

    check-cast v0, Lo/rp;

    move-object v2, v0

    .line 76
    move-object v0, p0

    check-cast v0, Lo/rm;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 79
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cQ()Z
    .locals 3

    .line 31
    invoke-virtual {p0}, Lo/rn;->cj()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/rp;

    move-object v2, v0

    .line 32
    invoke-interface {v2}, Lo/rp;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    return v0

    .line 35
    :cond_0
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized cj()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Collection<Lo/rp;>;"
        }
    .end annotation

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lo/rn;->Xn:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 66
    invoke-static {p0, p1}, Lo/rh;->ˊ(Lo/rm;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lo/rn;->Xo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized ˊ(Lo/rp;)V
    .locals 1

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lo/rn;->Xn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public є()Lo/rh;
    .locals 1

    .line 51
    sget-object v0, Lo/rh;->Xf:Lo/rh;

    return-object v0
.end method

.method public synthetic Ꭵ(Ljava/lang/Object;)V
    .locals 1

    .line 14
    move-object v0, p1

    check-cast v0, Lo/rp;

    invoke-virtual {p0, v0}, Lo/rn;->ˊ(Lo/rp;)V

    return-void
.end method

.method public ᐝ(Ljava/lang/Throwable;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lo/rn;->Xp:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public declared-synchronized ᔊ(Z)V
    .locals 1

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lo/rn;->Xo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
