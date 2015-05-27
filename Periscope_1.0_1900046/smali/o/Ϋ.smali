.class final Lo/Ϋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ʢ;


# instance fields
.field private final qK:Landroid/os/Handler;

.field private final qL:Lo/κ;

.field private final qM:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<Lo/\u02a2$\u02cb;>;"
        }
    .end annotation
.end field

.field private final qN:[Z

.field private qO:Z

.field private qP:I

.field private qQ:I


# direct methods
.method public constructor <init>(III)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "ExoPlayerImpl"

    const-string v1, "Init 1.3.3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/Ϋ;->qO:Z

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lo/Ϋ;->qP:I

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lo/Ϋ;->qM:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 59
    new-array v0, p1, [Z

    iput-object v0, p0, Lo/Ϋ;->qN:[Z

    .line 60
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lo/Ϋ;->qN:[Z

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 61
    iget-object v0, p0, Lo/Ϋ;->qN:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v6

    .line 60
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Lo/ε;

    invoke-direct {v0, p0}, Lo/ε;-><init>(Lo/Ϋ;)V

    iput-object v0, p0, Lo/Ϋ;->qK:Landroid/os/Handler;

    .line 69
    new-instance v0, Lo/κ;

    iget-object v1, p0, Lo/Ϋ;->qK:Landroid/os/Handler;

    iget-boolean v2, p0, Lo/Ϋ;->qO:Z

    iget-object v3, p0, Lo/Ϋ;->qN:[Z

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lo/κ;-><init>(Landroid/os/Handler;Z[ZII)V

    iput-object v0, p0, Lo/Ϋ;->qL:Lo/κ;

    .line 71
    return-void
.end method


# virtual methods
.method public getBufferedPosition()J
    .locals 2

    .line 171
    iget-object v0, p0, Lo/Ϋ;->qL:Lo/κ;

    invoke-virtual {v0}, Lo/κ;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 161
    iget-object v0, p0, Lo/Ϋ;->qL:Lo/κ;

    invoke-virtual {v0}, Lo/κ;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public release()V
    .locals 2

    .line 145
    iget-object v0, p0, Lo/Ϋ;->qL:Lo/κ;

    invoke-virtual {v0}, Lo/κ;->release()V

    .line 146
    iget-object v0, p0, Lo/Ϋ;->qK:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 135
    iget-object v0, p0, Lo/Ϋ;->qL:Lo/κ;

    invoke-virtual {v0, p1, p2}, Lo/κ;->seekTo(J)V

    .line 136
    return-void
.end method

.method public stop()V
    .locals 1

    .line 140
    iget-object v0, p0, Lo/Ϋ;->qL:Lo/κ;

    invoke-virtual {v0}, Lo/κ;->stop()V

    .line 141
    return-void
.end method

.method ˊ(Landroid/os/Message;)V
    .locals 5

    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 186
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lo/Ϋ;->qP:I

    .line 187
    iget-object v0, p0, Lo/Ϋ;->qM:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ʢ$ˋ;

    move-object v3, v0

    .line 188
    iget-boolean v0, p0, Lo/Ϋ;->qO:Z

    iget v1, p0, Lo/Ϋ;->qP:I

    invoke-interface {v3, v0, v1}, Lo/ʢ$ˋ;->ˊ(ZI)V

    .line 189
    goto :goto_0

    .line 190
    :cond_0
    goto :goto_3

    .line 193
    :pswitch_1
    iget v0, p0, Lo/Ϋ;->qQ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/Ϋ;->qQ:I

    .line 194
    iget v0, p0, Lo/Ϋ;->qQ:I

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lo/Ϋ;->qM:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ʢ$ˋ;

    move-object v3, v0

    .line 196
    invoke-interface {v3}, Lo/ʢ$ˋ;->ｴ()V

    .line 197
    goto :goto_1

    :cond_1
    goto :goto_3

    .line 202
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/ʡ;

    move-object v2, v0

    .line 203
    iget-object v0, p0, Lo/Ϋ;->qM:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ʢ$ˋ;

    move-object v4, v0

    .line 204
    invoke-interface {v4, v2}, Lo/ʢ$ˋ;->ˊ(Lo/ʡ;)V

    .line 205
    goto :goto_2

    .line 206
    .line 209
    :cond_2
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ˊ(Lo/ʢ$if;ILjava/lang/Object;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lo/Ϋ;->qL:Lo/κ;

    invoke-virtual {v0, p1, p2, p3}, Lo/κ;->ˊ(Lo/ʢ$if;ILjava/lang/Object;)V

    .line 152
    return-void
.end method

.method public ˊ(Lo/ʢ$ˋ;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lo/Ϋ;->qM:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public varargs ˊ([Lo/ڹ;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/Ϋ;->qL:Lo/κ;

    invoke-virtual {v0, p1}, Lo/κ;->ˊ([Lo/ڹ;)V

    .line 96
    return-void
.end method

.method public ˋ(Lo/ʢ$if;ILjava/lang/Object;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lo/Ϋ;->qL:Lo/κ;

    invoke-virtual {v0, p1, p2, p3}, Lo/κ;->ˋ(Lo/ʢ$if;ILjava/lang/Object;)V

    .line 157
    return-void
.end method

.method public ᐧ(IZ)V
    .locals 1

    .line 100
    iget-object v0, p0, Lo/Ϋ;->qN:[Z

    aget-boolean v0, v0, p1

    if-eq v0, p2, :cond_0

    .line 101
    iget-object v0, p0, Lo/Ϋ;->qN:[Z

    aput-boolean p2, v0, p1

    .line 102
    iget-object v0, p0, Lo/Ϋ;->qL:Lo/κ;

    invoke-virtual {v0, p1, p2}, Lo/κ;->ᐧ(IZ)V

    .line 104
    :cond_0
    return-void
.end method

.method public ᑊ(Z)V
    .locals 4

    .line 113
    iget-boolean v0, p0, Lo/Ϋ;->qO:Z

    if-eq v0, p1, :cond_0

    .line 114
    iput-boolean p1, p0, Lo/Ϋ;->qO:Z

    .line 115
    iget v0, p0, Lo/Ϋ;->qQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/Ϋ;->qQ:I

    .line 116
    iget-object v0, p0, Lo/Ϋ;->qL:Lo/κ;

    invoke-virtual {v0, p1}, Lo/κ;->ᑊ(Z)V

    .line 117
    iget-object v0, p0, Lo/Ϋ;->qM:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ʢ$ˋ;

    move-object v3, v0

    .line 118
    iget v0, p0, Lo/Ϋ;->qP:I

    invoke-interface {v3, p1, v0}, Lo/ʢ$ˋ;->ˊ(ZI)V

    .line 119
    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public ｉ()I
    .locals 1

    .line 90
    iget v0, p0, Lo/Ϋ;->qP:I

    return v0
.end method

.method public ｔ()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lo/Ϋ;->qO:Z

    return v0
.end method

.method public ｖ()J
    .locals 2

    .line 166
    iget-object v0, p0, Lo/Ϋ;->qL:Lo/κ;

    invoke-virtual {v0}, Lo/κ;->ｖ()J

    move-result-wide v0

    return-wide v0
.end method

.method public ｬ()I
    .locals 6

    .line 176
    invoke-virtual {p0}, Lo/Ϋ;->getBufferedPosition()J

    move-result-wide v2

    .line 177
    invoke-virtual {p0}, Lo/Ϋ;->getDuration()J

    move-result-wide v4

    .line 178
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x64

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x64

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    :goto_0
    long-to-int v0, v0

    :goto_1
    return v0
.end method
