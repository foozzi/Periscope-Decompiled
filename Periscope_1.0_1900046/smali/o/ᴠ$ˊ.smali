.class Lo/ᴠ$ˊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᴠ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# instance fields
.field private final iU:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<Lo/\u1d20$if;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lo/ᴠ$ˊ;->iU:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lo/ᴠ$1;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lo/ᴠ$ˊ;-><init>()V

    return-void
.end method


# virtual methods
.method ˊ(Lo/ᴠ$if;)V
    .locals 4

    .line 84
    iget-object v2, p0, Lo/ᴠ$ˊ;->iU:Ljava/util/Queue;

    monitor-enter v2

    .line 85
    :try_start_0
    iget-object v0, p0, Lo/ᴠ$ˊ;->iU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lo/ᴠ$ˊ;->iU:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 89
    :goto_0
    return-void
.end method

.method ᵚ()Lo/ᴠ$if;
    .locals 4

    .line 74
    iget-object v2, p0, Lo/ᴠ$ˊ;->iU:Ljava/util/Queue;

    monitor-enter v2

    .line 75
    :try_start_0
    iget-object v0, p0, Lo/ᴠ$ˊ;->iU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴠ$if;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 76
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 77
    :goto_0
    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lo/ᴠ$if;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lo/ᴠ$if;-><init>(Lo/ᴠ$1;)V

    .line 80
    :cond_0
    return-object v1
.end method
