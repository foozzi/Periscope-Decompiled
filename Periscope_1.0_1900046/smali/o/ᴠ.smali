.class final Lo/ᴠ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᴠ$1;,
        Lo/ᴠ$ˊ;,
        Lo/ᴠ$if;
    }
.end annotation


# instance fields
.field private final iQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/\ufb86;Lo/\u1d20$if;>;"
        }
    .end annotation
.end field

.field private final iR:Lo/ᴠ$ˊ;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ᴠ;->iQ:Ljava/util/Map;

    .line 22
    new-instance v0, Lo/ᴠ$ˊ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ᴠ$ˊ;-><init>(Lo/ᴠ$1;)V

    iput-object v0, p0, Lo/ᴠ;->iR:Lo/ᴠ$ˊ;

    .line 68
    return-void
.end method


# virtual methods
.method ʼ(Lo/ﮆ;)V
    .locals 5

    .line 26
    move-object v3, p0

    monitor-enter v3

    .line 27
    :try_start_0
    iget-object v0, p0, Lo/ᴠ;->iQ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴠ$if;

    move-object v2, v0

    .line 28
    if-nez v2, :cond_0

    .line 29
    iget-object v0, p0, Lo/ᴠ;->iR:Lo/ᴠ$ˊ;

    invoke-virtual {v0}, Lo/ᴠ$ˊ;->ᵚ()Lo/ᴠ$if;

    move-result-object v2

    .line 30
    iget-object v0, p0, Lo/ᴠ;->iQ:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    iget v0, v2, Lo/ᴠ$if;->iT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lo/ᴠ$if;->iT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 35
    :goto_0
    iget-object v0, v2, Lo/ᴠ$if;->iS:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 36
    return-void
.end method

.method ʽ(Lo/ﮆ;)V
    .locals 7

    .line 40
    move-object v4, p0

    monitor-enter v4

    .line 41
    :try_start_0
    iget-object v0, p0, Lo/ᴠ;->iQ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴠ$if;

    move-object v3, v0

    .line 42
    if-eqz v3, :cond_0

    iget v0, v3, Lo/ᴠ$if;->iT:I

    if-gtz v0, :cond_2

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot release a lock that is not held, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interestedThreads: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget v2, v3, Lo/ᴠ$if;->iT:I

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    iget v0, v3, Lo/ᴠ$if;->iT:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v3, Lo/ᴠ$if;->iT:I

    if-nez v0, :cond_4

    .line 49
    iget-object v0, p0, Lo/ᴠ;->iQ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴠ$if;

    move-object v5, v0

    .line 50
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed the wrong lock, expected to remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but actually removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    iget-object v0, p0, Lo/ᴠ;->iR:Lo/ᴠ$ˊ;

    invoke-virtual {v0, v5}, Lo/ᴠ$ˊ;->ˊ(Lo/ᴠ$if;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_4
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v4

    throw v6

    .line 60
    :goto_1
    iget-object v0, v3, Lo/ᴠ$if;->iS:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 61
    return-void
.end method
