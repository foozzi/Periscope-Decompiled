.class final Lo/pa;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Uo:Lo/oz;

.field private Up:Lo/oz;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized bZ()Lo/oz;
    .locals 2

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v1, p0, Lo/pa;->Uo:Lo/oz;

    .line 24
    iget-object v0, p0, Lo/pa;->Uo:Lo/oz;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lo/pa;->Uo:Lo/oz;

    iget-object v0, v0, Lo/oz;->Un:Lo/oz;

    iput-object v0, p0, Lo/pa;->Uo:Lo/oz;

    .line 26
    iget-object v0, p0, Lo/pa;->Uo:Lo/oz;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lo/pa;->Up:Lo/oz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized ˎ(Lo/oz;)V
    .locals 2

    monitor-enter p0

    .line 8
    if-nez p1, :cond_0

    .line 9
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be enqueued"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_0
    iget-object v0, p0, Lo/pa;->Up:Lo/oz;

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lo/pa;->Up:Lo/oz;

    iput-object p1, v0, Lo/oz;->Un:Lo/oz;

    .line 13
    iput-object p1, p0, Lo/pa;->Up:Lo/oz;

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lo/pa;->Uo:Lo/oz;

    if-nez v0, :cond_2

    .line 15
    iput-object p1, p0, Lo/pa;->Up:Lo/oz;

    iput-object p1, p0, Lo/pa;->Uo:Lo/oz;

    goto :goto_0

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Head present, but no tail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized ῑ(I)Lo/oz;
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lo/pa;->Uo:Lo/oz;

    if-nez v0, :cond_0

    .line 35
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 37
    :cond_0
    invoke-virtual {p0}, Lo/pa;->bZ()Lo/oz;
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
