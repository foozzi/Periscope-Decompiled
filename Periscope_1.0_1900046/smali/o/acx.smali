.class public Lo/acx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private bye:Lo/acw;

.field private final byf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
        }
    .end annotation
.end field

.field private final byg:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/acx;->byf:Ljava/util/HashMap;

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lo/acx;->byg:[I

    .line 23
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 39
    iget-object v1, p0, Lo/acx;->byg:[I

    monitor-enter v1

    .line 40
    move-object v0, p2

    :try_start_0
    check-cast v0, Lo/acw$if;

    move-object v2, v0

    .line 41
    invoke-virtual {v2}, Lo/acw$if;->wQ()Lo/acw;

    move-result-object v0

    iput-object v0, p0, Lo/acx;->bye:Lo/acw;

    .line 42
    iget-object v0, p0, Lo/acx;->byf:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v4, v0

    .line 43
    iget-object v0, p0, Lo/acx;->bye:Lo/acw;

    invoke-virtual {v0, v4}, Lo/acw;->execute(Ljava/lang/Runnable;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lo/acx;->byf:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v1

    throw v5

    .line 47
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 50
    iget-object v1, p0, Lo/acx;->byg:[I

    monitor-enter v1

    .line 51
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lo/acx;->bye:Lo/acw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 53
    :goto_0
    return-void
.end method

.method public wR()Ljava/lang/String;
    .locals 1

    .line 56
    const/4 v0, 0x6

    invoke-static {v0}, Lo/anw;->ᔨ(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˏ(Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 4

    .line 27
    invoke-virtual {p0}, Lo/acx;->wR()Ljava/lang/String;

    move-result-object v1

    .line 28
    iget-object v2, p0, Lo/acx;->byg:[I

    monitor-enter v2

    .line 29
    :try_start_0
    iget-object v0, p0, Lo/acx;->bye:Lo/acw;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lo/acx;->bye:Lo/acw;

    invoke-virtual {v0, p1}, Lo/acw;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lo/acx;->byf:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 35
    :goto_1
    return-object v1
.end method
