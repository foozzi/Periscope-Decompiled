.class public abstract Lo/rs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/se;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/se<TT;>;"
    }
.end annotation


# instance fields
.field protected final Xr:Ljava/util/concurrent/ScheduledExecutorService;

.field protected final Xs:Lo/ru;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ru<TT;>;"
        }
    .end annotation
.end field

.field protected final Xt:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/ScheduledFuture<*>;>;"
        }
    .end annotation
.end field

.field protected volatile Xu:I

.field protected final dV:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lo/ru;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lo/ru<TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lo/rs;->Xu:I

    .line 33
    iput-object p1, p0, Lo/rs;->dV:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lo/rs;->Xr:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    iput-object p3, p0, Lo/rs;->Xs:Lo/ru;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo/rs;->Xt:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    return-void
.end method


# virtual methods
.method public cZ()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lo/rs;->de()V

    .line 103
    return-void
.end method

.method public da()V
    .locals 1

    .line 137
    iget-object v0, p0, Lo/rs;->Xs:Lo/ru;

    invoke-virtual {v0}, Lo/ru;->dg()V

    .line 138
    return-void
.end method

.method public db()V
    .locals 2

    .line 121
    iget-object v0, p0, Lo/rs;->Xt:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lo/rs;->dV:Landroid/content/Context;

    const-string v1, "Cancelling time-based rollover because no events are currently being generated."

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lo/rs;->Xt:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 126
    iget-object v0, p0, Lo/rs;->Xt:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 128
    :cond_0
    return-void
.end method

.method public dc()Z
    .locals 3

    .line 155
    :try_start_0
    iget-object v0, p0, Lo/rs;->Xs:Lo/ru;

    invoke-virtual {v0}, Lo/ru;->dc()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 156
    :catch_0
    move-exception v2

    .line 157
    iget-object v0, p0, Lo/rs;->dV:Landroid/content/Context;

    const-string v1, "Failed to roll file over."

    invoke-static {v0, v1, v2}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public dd()V
    .locals 4

    .line 41
    iget v0, p0, Lo/rs;->Xu:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 43
    :goto_0
    iget-object v0, p0, Lo/rs;->Xt:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 45
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 46
    iget v0, p0, Lo/rs;->Xu:I

    iget v1, p0, Lo/rs;->Xu:I

    invoke-virtual {p0, v0, v1}, Lo/rs;->ᵌ(II)V

    .line 48
    :cond_2
    return-void
.end method

.method de()V
    .locals 10

    .line 60
    invoke-virtual {p0}, Lo/rs;->Ḭ()Lo/sg;

    move-result-object v6

    .line 61
    if-nez v6, :cond_0

    .line 62
    iget-object v0, p0, Lo/rs;->dV:Landroid/content/Context;

    const-string v1, "skipping files send because we don\'t yet know the target endpoint"

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lo/rs;->dV:Landroid/content/Context;

    const-string v1, "Sending all files"

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    const/4 v7, 0x0

    .line 70
    iget-object v0, p0, Lo/rs;->Xs:Lo/ru;

    invoke-virtual {v0}, Lo/ru;->df()Ljava/util/List;

    move-result-object v8

    .line 73
    :try_start_0
    iget-object v0, p0, Lo/rs;->dV:Landroid/content/Context;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "attempt to send batch of %d files"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 77
    invoke-interface {v6, v8}, Lo/sg;->ʼ(Ljava/util/List;)Z

    move-result v9

    .line 79
    if-eqz v9, :cond_1

    .line 80
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v7

    move v7, v0

    .line 81
    iget-object v0, p0, Lo/rs;->Xs:Lo/ru;

    invoke-virtual {v0, v8}, Lo/ru;->ˌ(Ljava/util/List;)V

    .line 84
    :cond_1
    if-nez v9, :cond_2

    .line 85
    goto :goto_1

    .line 88
    :cond_2
    iget-object v0, p0, Lo/rs;->Xs:Lo/ru;

    invoke-virtual {v0}, Lo/ru;->df()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 89
    goto :goto_0

    .line 93
    :cond_3
    :goto_1
    goto :goto_2

    .line 90
    :catch_0
    move-exception v9

    .line 91
    iget-object v0, p0, Lo/rs;->dV:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send batch of analytics files to server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    :goto_2
    if-nez v7, :cond_4

    .line 96
    iget-object v0, p0, Lo/rs;->Xs:Lo/ru;

    invoke-virtual {v0}, Lo/ru;->dh()V

    .line 98
    :cond_4
    return-void
.end method

.method public ᒢ(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lo/rs;->dV:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    :try_start_0
    iget-object v0, p0, Lo/rs;->Xs:Lo/ru;

    invoke-virtual {v0, p1}, Lo/ru;->ᖮ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v2

    .line 147
    iget-object v0, p0, Lo/rs;->dV:Landroid/content/Context;

    const-string v1, "Failed to write event."

    invoke-static {v0, v1, v2}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :goto_0
    invoke-virtual {p0}, Lo/rs;->dd()V

    .line 150
    return-void
.end method

.method protected ᵌ(II)V
    .locals 9

    .line 107
    :try_start_0
    new-instance v8, Lo/sj;

    iget-object v0, p0, Lo/rs;->dV:Landroid/content/Context;

    invoke-direct {v8, v0, p0}, Lo/sj;-><init>(Landroid/content/Context;Lo/sf;)V

    .line 109
    iget-object v0, p0, Lo/rs;->dV:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling time based file roll over every "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lo/rs;->Xt:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lo/rs;->Xr:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v2, v8

    int-to-long v3, p1

    int-to-long v5, p2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 113
    :catch_0
    move-exception v8

    .line 114
    iget-object v0, p0, Lo/rs;->dV:Landroid/content/Context;

    const-string v1, "Failed to schedule time based file roll over"

    invoke-static {v0, v1, v8}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :goto_0
    return-void
.end method

.method protected ﭙ(I)V
    .locals 2

    .line 131
    iput p1, p0, Lo/rs;->Xu:I

    .line 132
    iget v0, p0, Lo/rs;->Xu:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lo/rs;->ᵌ(II)V

    .line 133
    return-void
.end method
