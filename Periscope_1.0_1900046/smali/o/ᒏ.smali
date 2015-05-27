.class public abstract Lo/ᒏ;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ᒵ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᒏ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::Lo/\u14b9;>Ljava/lang/Object;Lo/\u14b5<TR;>;"
    }
.end annotation


# instance fields
.field private final BP:Ljava/lang/Object;

.field protected final BQ:Lo/ᒏ$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u148f$if<TR;>;"
        }
    .end annotation
.end field

.field private final BR:Ljava/util/concurrent/CountDownLatch;

.field private final BS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u14b5$if;>;"
        }
    .end annotation
.end field

.field private BT:Lo/ᓙ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14d9<TR;>;"
        }
    .end annotation
.end field

.field private volatile BU:Lo/ᒹ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private volatile BV:Z

.field private BW:Z

.field private BX:Z

.field private BY:Lo/ᴩ;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/ᒏ;->BP:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lo/ᒏ;->BR:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᒏ;->BS:Ljava/util/ArrayList;

    new-instance v0, Lo/ᒏ$if;

    invoke-direct {v0, p1}, Lo/ᒏ$if;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/ᒏ;->BQ:Lo/ᒏ$if;

    return-void
.end method

.method private ˋ(Lo/ᒹ;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Lo/ᒏ;->BU:Lo/ᒹ;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᒏ;->BY:Lo/ᴩ;

    iget-object v0, p0, Lo/ᒏ;->BR:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lo/ᒏ;->BU:Lo/ᒹ;

    invoke-interface {v0}, Lo/ᒹ;->হ()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    iget-object v0, p0, Lo/ᒏ;->BT:Lo/ᓙ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᒏ;->BQ:Lo/ᒏ$if;

    invoke-virtual {v0}, Lo/ᒏ$if;->ړ()V

    iget-boolean v0, p0, Lo/ᒏ;->BW:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ᒏ;->BQ:Lo/ᒏ$if;

    iget-object v1, p0, Lo/ᒏ;->BT:Lo/ᓙ;

    invoke-direct {p0}, Lo/ᒏ;->ٺ()Lo/ᒹ;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ᒏ$if;->ˊ(Lo/ᓙ;Lo/ᒹ;)V

    :cond_0
    iget-object v0, p0, Lo/ᒏ;->BS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒵ$if;

    move-object v5, v0

    invoke-interface {v5, v3}, Lo/ᒵ$if;->ˋ(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/ᒏ;->BS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static ˎ(Lo/ᒹ;)V
    .locals 4

    instance-of v0, p0, Lo/ᒸ;

    if-eqz v0, :cond_0

    move-object v0, p0

    :try_start_0
    check-cast v0, Lo/ᒸ;

    invoke-interface {v0}, Lo/ᒸ;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v0, "AbstractPendingResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to release "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private ٺ()Lo/ᒹ;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v3, p0, Lo/ᒏ;->BP:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v0, p0, Lo/ᒏ;->BV:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lo/ﺧ;->ˎ(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lo/ᒏ;->ﺓ()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lo/ﺧ;->ˎ(ZLjava/lang/Object;)V

    iget-object v2, p0, Lo/ᒏ;->BU:Lo/ᒹ;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᒏ;->BU:Lo/ᒹ;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᒏ;->BT:Lo/ᓙ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒏ;->BV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    :goto_1
    invoke-virtual {p0}, Lo/ᒏ;->ت()V

    return-object v2
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-object v1, p0, Lo/ᒏ;->BP:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lo/ᒏ;->BW:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/ᒏ;->BV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lo/ᒏ;->BY:Lo/ᴩ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lo/ᒏ;->BY:Lo/ᴩ;

    invoke-interface {v0}, Lo/ᴩ;->cancel()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_2
    :goto_0
    :try_start_3
    iget-object v0, p0, Lo/ᒏ;->BU:Lo/ᒹ;

    invoke-static {v0}, Lo/ᒏ;->ˎ(Lo/ᒹ;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᒏ;->BT:Lo/ᓙ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒏ;->BW:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Cy:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lo/ᒏ;->ˊ(Lcom/google/android/gms/common/api/Status;)Lo/ᒹ;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ᒏ;->ˋ(Lo/ᒹ;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3

    :goto_1
    return-void
.end method

.method public isCanceled()Z
    .locals 3

    iget-object v1, p0, Lo/ᒏ;->BP:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lo/ᒏ;->BW:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method protected abstract ˊ(Lcom/google/android/gms/common/api/Status;)Lo/ᒹ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/google/android/gms/common/api/Status;)TR;"
        }
    .end annotation
.end method

.method public final ˊ(Lo/ᒹ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v2, p0, Lo/ᒏ;->BP:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lo/ᒏ;->BX:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/ᒏ;->BW:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lo/ᒏ;->ˎ(Lo/ᒹ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lo/ᒏ;->ﺓ()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Results have already been set"

    invoke-static {v0, v1}, Lo/ﺧ;->ˎ(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lo/ᒏ;->BV:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lo/ﺧ;->ˎ(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lo/ᒏ;->ˋ(Lo/ᒹ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :goto_2
    return-void
.end method

.method public final ˊ(Lo/ᓙ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14d9<TR;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lo/ᒏ;->BV:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lo/ﺧ;->ˎ(ZLjava/lang/Object;)V

    iget-object v2, p0, Lo/ᒏ;->BP:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lo/ᒏ;->isCanceled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lo/ᒏ;->ﺓ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ᒏ;->BQ:Lo/ᒏ$if;

    invoke-direct {p0}, Lo/ᒏ;->ٺ()Lo/ᒹ;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/ᒏ$if;->ˊ(Lo/ᓙ;Lo/ᒹ;)V

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lo/ᒏ;->BT:Lo/ᓙ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :goto_2
    return-void
.end method

.method protected ت()V
    .locals 0

    return-void
.end method

.method ٻ()V
    .locals 3

    iget-object v1, p0, Lo/ᒏ;->BP:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lo/ᒏ;->ﺓ()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Cx:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lo/ᒏ;->ˊ(Lcom/google/android/gms/common/api/Status;)Lo/ᒹ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ᒏ;->ˊ(Lo/ᒹ;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒏ;->BX:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :goto_0
    return-void
.end method

.method public final ﺓ()Z
    .locals 4

    iget-object v0, p0, Lo/ᒏ;->BR:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
