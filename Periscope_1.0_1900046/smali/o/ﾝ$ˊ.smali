.class Lo/ﾝ$ˊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﾝ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# instance fields
.field private final iU:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<Lo/\u217d;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    invoke-static {v0}, Lo/ﾕ;->ᵘ(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lo/ﾝ$ˊ;->iU:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized ˊ(Lo/ⅽ;)V
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-virtual {p1}, Lo/ⅽ;->clear()V

    .line 148
    iget-object v0, p0, Lo/ﾝ$ˊ;->iU:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ˋ([B)Lo/ⅽ;
    .locals 2

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lo/ﾝ$ˊ;->iU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ⅽ;

    move-object v1, v0

    .line 140
    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lo/ⅽ;

    invoke-direct {v1}, Lo/ⅽ;-><init>()V

    .line 143
    :cond_0
    invoke-virtual {v1, p1}, Lo/ⅽ;->ˊ([B)Lo/ⅽ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
