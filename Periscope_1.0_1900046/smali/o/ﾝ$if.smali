.class Lo/ﾝ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﾝ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final iU:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<Lo/\u1d68;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lo/ﾕ;->ᵘ(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lo/ﾝ$if;->iU:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized ˊ(Lo/ᵨ$if;)Lo/ᵨ;
    .locals 2

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lo/ﾝ$if;->iU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵨ;

    move-object v1, v0

    .line 122
    if-nez v1, :cond_0

    .line 123
    new-instance v1, Lo/ᵨ;

    invoke-direct {v1, p1}, Lo/ᵨ;-><init>(Lo/ᵨ$if;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ˊ(Lo/ᵨ;)V
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-virtual {p1}, Lo/ᵨ;->clear()V

    .line 130
    iget-object v0, p0, Lo/ﾝ$if;->iU:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
