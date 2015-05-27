.class public final Lo/乀;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/乀$if;
    }
.end annotation


# instance fields
.field private final Eq:Lo/乀$if;

.field private final Er:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u14b4$\u02ca;>;"
        }
    .end annotation
.end field

.field final Es:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u14b4$\u02ca;>;"
        }
    .end annotation
.end field

.field private Et:Z

.field private final Eu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u14b4$\u02cb;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lo/乀$if;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/乀;->Er:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/乀;->Es:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/乀;->Et:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/乀;->Eu:Ljava/util/ArrayList;

    iput-object p2, p0, Lo/乀;->Eq:Lo/乀$if;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/乀;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/ᒴ$ˊ;

    move-object v2, v0

    iget-object v3, p0, Lo/乀;->Er:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lo/乀;->Eq:Lo/乀$if;

    invoke-interface {v0}, Lo/乀$if;->ᐵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/乀;->Eq:Lo/乀$if;

    invoke-interface {v0}, Lo/乀$if;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/乀;->Er:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/乀;->Eq:Lo/乀$if;

    invoke-interface {v0}, Lo/乀$if;->ᑈ()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v2, v4}, Lo/ᒴ$ˊ;->ˊ(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "GmsClientEvents"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public ʽ(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 7

    iget-object v0, p0, Lo/乀;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lo/乀;->Eu:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lo/乀;->Eu:Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒴ$ˋ;

    move-object v5, v0

    iget-object v0, p0, Lo/乀;->Eq:Lo/乀$if;

    invoke-interface {v0}, Lo/乀$if;->ᐵ()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/乀;->Eu:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5, p1}, Lo/ᒴ$ˋ;->ˊ(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v2

    throw v6

    :goto_1
    return-void
.end method

.method public ˊ(Lo/ᒴ$ˊ;)V
    .locals 5

    invoke-static {p1}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lo/乀;->Er:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lo/乀;->Er:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GmsClientEvents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerConnectionCallbacks(): listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/乀;->Er:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    :goto_1
    iget-object v0, p0, Lo/乀;->Eq:Lo/乀$if;

    invoke-interface {v0}, Lo/乀$if;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/乀;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/乀;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public ˊ(Lo/ᒴ$ˋ;)V
    .locals 5

    invoke-static {p1}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lo/乀;->Eu:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lo/乀;->Eu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GmsClientEvents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerConnectionFailedListener(): listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/乀;->Eu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    :goto_1
    return-void
.end method

.method public ˋ(Lo/ᒴ$ˊ;)V
    .locals 6

    invoke-static {p1}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lo/乀;->Er:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lo/乀;->Er:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v0, "GmsClientEvents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterConnectionCallbacks(): listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lo/乀;->Et:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/乀;->Es:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    :goto_1
    return-void
.end method

.method public ˋ(Lo/ᒴ$ˋ;)V
    .locals 6

    invoke-static {p1}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lo/乀;->Eu:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lo/乀;->Eu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v0, "GmsClientEvents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterConnectionFailedListener(): listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    :goto_0
    return-void
.end method

.method public ˎ(Landroid/os/Bundle;)V
    .locals 7

    iget-object v2, p0, Lo/乀;->Er:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lo/乀;->Et:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ﺧ;->ᐪ(Z)V

    iget-object v0, p0, Lo/乀;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/乀;->Et:Z

    iget-object v0, p0, Lo/乀;->Es:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lo/ﺧ;->ᐪ(Z)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lo/乀;->Er:Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒴ$ˊ;

    move-object v5, v0

    iget-object v0, p0, Lo/乀;->Eq:Lo/乀$if;

    invoke-interface {v0}, Lo/乀$if;->ᐵ()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/乀;->Eq:Lo/乀$if;

    invoke-interface {v0}, Lo/乀$if;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lo/乀;->Es:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v5, p1}, Lo/ᒴ$ˊ;->ˊ(Landroid/os/Bundle;)V

    :cond_3
    goto :goto_2

    :cond_4
    :goto_3
    iget-object v0, p0, Lo/乀;->Es:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/乀;->Et:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception v6

    monitor-exit v2

    throw v6

    :goto_4
    return-void
.end method

.method public ᵅ(I)V
    .locals 7

    iget-object v0, p0, Lo/乀;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lo/乀;->Er:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lo/乀;->Et:Z

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lo/乀;->Er:Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒴ$ˊ;

    move-object v5, v0

    iget-object v0, p0, Lo/乀;->Eq:Lo/乀$if;

    invoke-interface {v0}, Lo/乀$if;->ᐵ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lo/乀;->Er:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5, p1}, Lo/ᒴ$ˊ;->ܙ(I)V

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lo/乀;->Es:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/乀;->Et:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v2

    throw v6

    :goto_2
    return-void
.end method

.method protected ọ()V
    .locals 3

    iget-object v1, p0, Lo/乀;->Er:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lo/乀;->Eq:Lo/乀$if;

    invoke-interface {v0}, Lo/乀$if;->ᑈ()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/乀;->ˎ(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :goto_0
    return-void
.end method
