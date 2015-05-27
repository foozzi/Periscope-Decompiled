.class final Lo/ﬥ;
.super Lo/宀;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﬥ$if;,
        Lo/ﬥ$ˊ;
    }
.end annotation


# instance fields
.field private final EA:J

.field private final Ex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<Lo/\ufb25$if;Lo/\ufb25$\u02ca;>;"
        }
    .end annotation
.end field

.field private final Ey:Landroid/content/Context;

.field private final Ez:Lo/a;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lo/宀;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ﬥ;->Ex:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/ﬥ;->Ey:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/ﬥ;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lo/a;->ﺕ()Lo/a;

    move-result-object v0

    iput-object v0, p0, Lo/ﬥ;->Ez:Lo/a;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lo/ﬥ;->EA:J

    return-void
.end method

.method static synthetic ˊ(Lo/ﬥ;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lo/ﬥ;->Ex:Ljava/util/HashMap;

    return-object v0
.end method

.method private ˊ(Lo/ﬥ$if;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lo/ﬥ;->Ex:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lo/ﬥ;->Ex:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﬥ$ˊ;

    move-object v4, v0

    if-nez v4, :cond_0

    new-instance v4, Lo/ﬥ$ˊ;

    invoke-direct {v4, p0, p1}, Lo/ﬥ$ˊ;-><init>(Lo/ﬥ;Lo/ﬥ$if;)V

    invoke-virtual {v4, p2, p3}, Lo/ﬥ$ˊ;->ˊ(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Lo/ﬥ$ˊ;->ᵕ(Ljava/lang/String;)V

    iget-object v0, p0, Lo/ﬥ;->Ex:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ﬥ;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v4, p2}, Lo/ﬥ$ˊ;->ˊ(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v4, p2, p3}, Lo/ﬥ$ˊ;->ˊ(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v4}, Lo/ﬥ$ˊ;->getState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v4}, Lo/ﬥ$ˊ;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v4}, Lo/ﬥ$ˊ;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v4, p3}, Lo/ﬥ$ˊ;->ᵕ(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v4}, Lo/ﬥ$ˊ;->isBound()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v3

    return v0

    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic ˋ(Lo/ﬥ;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/ﬥ;->Ey:Landroid/content/Context;

    return-object v0
.end method

.method private ˋ(Lo/ﬥ$if;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 7

    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lo/ﬥ;->Ex:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lo/ﬥ;->Ex:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﬥ$ˊ;

    move-object v4, v0

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nonexistent connection status for service config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v4, p2}, Lo/ﬥ$ˊ;->ˊ(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GmsClientSupervisor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to unbind a GmsServiceConnection that was not bound before. config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v4, p2, p3}, Lo/ﬥ$ˊ;->ˋ(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v4}, Lo/ﬥ$ˊ;->Ἶ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ﬥ;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v0, p0, Lo/ﬥ;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lo/ﬥ;->EA:J

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v3

    throw v6

    :goto_0
    return-void
.end method

.method static synthetic ˎ(Lo/ﬥ;)Lo/a;
    .locals 1

    iget-object v0, p0, Lo/ﬥ;->Ez:Lo/a;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/ﬥ$ˊ;

    move-object v2, v0

    iget-object v3, p0, Lo/ﬥ;->Ex:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v2}, Lo/ﬥ$ˊ;->Ἶ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lo/ﬥ$ˊ;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GmsClientSupervisor"

    invoke-virtual {v2, v0}, Lo/ﬥ$ˊ;->ᵣ(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lo/ﬥ;->Ex:Ljava/util/HashMap;

    invoke-static {v2}, Lo/ﬥ$ˊ;->ˊ(Lo/ﬥ$ˊ;)Lo/ﬥ$if;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    :goto_0
    const/4 v0, 0x1

    return v0

    :goto_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public ˊ(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lo/ﬥ$if;

    invoke-direct {v0, p1}, Lo/ﬥ$if;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lo/ﬥ;->ˊ(Lo/ﬥ$if;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ˋ(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lo/ﬥ$if;

    invoke-direct {v0, p1}, Lo/ﬥ$if;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lo/ﬥ;->ˋ(Lo/ﬥ$if;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method
