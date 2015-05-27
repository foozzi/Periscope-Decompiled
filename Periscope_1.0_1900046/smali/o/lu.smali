.class abstract Lo/lu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private PN:Ljava/lang/Thread;

.field protected volatile PO:Z

.field private PP:Ljava/util/Vector;

.field protected PQ:Lo/kl;


# direct methods
.method constructor <init>(Ljava/util/Vector;IILjava/util/Hashtable;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lo/lu;->PP:Ljava/util/Vector;

    .line 34
    invoke-static {p2, p3, p4}, Lo/kl;->ˊ(IILjava/util/Hashtable;)Lo/kl;

    move-result-object v0

    iput-object v0, p0, Lo/lu;->PQ:Lo/kl;

    .line 36
    return-void
.end method


# virtual methods
.method aL()V
    .locals 1

    .line 21
    iget-object v0, p0, Lo/lu;->PN:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 22
    return-void
.end method

.method aM()V
    .locals 1

    .line 25
    iget-object v0, p0, Lo/lu;->PN:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 26
    return-void
.end method

.method aO()V
    .locals 1

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/lu;->PO:Z

    .line 54
    return-void
.end method

.method aP()V
    .locals 1

    .line 29
    iget-object v0, p0, Lo/lu;->PQ:Lo/kl;

    invoke-virtual {v0}, Lo/kl;->reset()V

    .line 30
    return-void
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/lu;->PN:Ljava/lang/Thread;

    return-object v0
.end method

.method public run()V
    .locals 7

    .line 60
    :cond_0
    const/4 v3, 0x0

    .line 61
    :goto_0
    iget-boolean v0, p0, Lo/lu;->PO:Z

    if-nez v0, :cond_2

    .line 63
    iget-object v4, p0, Lo/lu;->PP:Ljava/util/Vector;

    monitor-enter v4

    .line 65
    :try_start_0
    iget-object v0, p0, Lo/lu;->PP:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lo/lu;->PP:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/kn;

    move-object v3, v0

    .line 67
    iget-object v0, p0, Lo/lu;->PP:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit v4

    goto :goto_3

    .line 71
    :cond_1
    :try_start_1
    iget-object v0, p0, Lo/lu;->PP:Ljava/util/Vector;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    goto :goto_1

    .line 72
    :catch_0
    move-exception v5

    .line 74
    :goto_1
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v4

    throw v6

    :goto_2
    goto :goto_0

    .line 76
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 77
    iget-boolean v0, p0, Lo/lu;->PO:Z

    if-nez v0, :cond_3

    .line 78
    invoke-virtual {p0, v3}, Lo/lu;->ˋ(Lo/kn;)V

    .line 81
    :cond_3
    iget-boolean v0, p0, Lo/lu;->PO:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lo/lu;->shutdown()V

    .line 83
    return-void
.end method

.method public abstract shutdown()V
.end method

.method ˊ(Ljava/lang/Thread;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lo/lu;->PN:Ljava/lang/Thread;

    .line 18
    return-void
.end method

.method abstract ˋ(Lo/kn;)V
.end method
