.class abstract Lo/yq$ˏ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/yq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "\u02cf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/yq$ˏ$if;
    }
.end annotation


# instance fields
.field private volatile bqR:Z

.field private final bqS:Ljava/lang/Long;

.field private bqT:Ljava/lang/Thread;

.field private volatile וֹ:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lo/yq$ˏ;->bqS:Ljava/lang/Long;

    .line 478
    return-void
.end method


# virtual methods
.method public join()V
    .locals 2

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/yq$ˏ;->bqR:Z

    .line 501
    :try_start_0
    iget-object v0, p0, Lo/yq$ˏ;->bqT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    goto :goto_0

    .line 502
    :catch_0
    move-exception v1

    .line 504
    :goto_0
    return-void
.end method

.method public abstract run()V
.end method

.method public start()V
    .locals 2

    .line 481
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo/yq$ˏ$if;

    invoke-direct {v1, p0}, Lo/yq$ˏ$if;-><init>(Lo/yq$ˏ;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lo/yq$ˏ;->bqT:Ljava/lang/Thread;

    .line 482
    iget-object v0, p0, Lo/yq$ˏ;->bqT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 483
    return-void
.end method

.method public uD()V
    .locals 4

    .line 486
    iget-object v1, p0, Lo/yq$ˏ;->bqS:Ljava/lang/Long;

    monitor-enter v1

    .line 487
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lo/yq$ˏ;->וֹ:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/yq$ˏ;->bqR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 489
    :try_start_1
    iget-object v0, p0, Lo/yq$ˏ;->bqS:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    goto :goto_0

    .line 490
    :catch_0
    move-exception v2

    .line 491
    goto :goto_0

    .line 493
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3

    .line 494
    :goto_1
    return-void
.end method

.method protected uE()Z
    .locals 1

    .line 507
    iget-boolean v0, p0, Lo/yq$ˏ;->bqR:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected uF()V
    .locals 3

    .line 511
    iget-object v1, p0, Lo/yq$ˏ;->bqS:Ljava/lang/Long;

    monitor-enter v1

    .line 512
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lo/yq$ˏ;->וֹ:Z

    .line 513
    iget-object v0, p0, Lo/yq$ˏ;->bqS:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 515
    :goto_0
    return-void
.end method
