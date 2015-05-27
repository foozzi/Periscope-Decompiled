.class Lo/yq$if;
.super Lo/yq$ˏ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/yq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic bqL:Lo/yq;


# direct methods
.method private constructor <init>(Lo/yq;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lo/yq$if;->bqL:Lo/yq;

    invoke-direct {p0}, Lo/yq$ˏ;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/yq;Lo/yr;)V
    .locals 0

    .line 606
    invoke-direct {p0, p1}, Lo/yq$if;-><init>(Lo/yq;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 610
    iget-object v0, p0, Lo/yq$if;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˌ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 611
    invoke-virtual {p0}, Lo/yq$if;->uF()V

    .line 612
    iget-object v0, p0, Lo/yq$if;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˌ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 613
    :goto_0
    invoke-virtual {p0}, Lo/yq$if;->uE()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 614
    const/4 v9, 0x0

    .line 616
    :try_start_0
    iget-object v0, p0, Lo/yq$if;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˍ(Lo/yq;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/yq$ˊ;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    .line 618
    goto :goto_1

    .line 617
    :catch_0
    move-exception v10

    .line 619
    :goto_1
    if-eqz v9, :cond_2

    .line 620
    :goto_2
    invoke-virtual {p0}, Lo/yq$if;->uE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lo/yq$if;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˌ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    .line 622
    const/4 v0, -0x1

    if-ne v10, v0, :cond_0

    .line 623
    goto :goto_2

    .line 625
    :cond_0
    aget-object v11, v8, v10

    .line 626
    invoke-virtual {v9, v11}, Lo/yq$ˊ;->ˊ(Ljava/nio/ByteBuffer;)V

    .line 627
    iget-object v0, p0, Lo/yq$if;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˌ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    move v1, v10

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v9}, Lo/yq$ˊ;->uC()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 629
    .line 631
    :cond_1
    iget-object v0, p0, Lo/yq$if;->bqL:Lo/yq;

    invoke-static {v0, v9}, Lo/yq;->ˋ(Lo/yq;Lo/yq$ˊ;)V

    .line 633
    :cond_2
    goto :goto_0

    .line 634
    :cond_3
    iget-object v0, p0, Lo/yq$if;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˌ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 635
    return-void
.end method
