.class Lo/yq$ˎ;
.super Lo/yq$ˏ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/yq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ce"
.end annotation


# instance fields
.field final synthetic bqL:Lo/yq;


# direct methods
.method private constructor <init>(Lo/yq;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-direct {p0}, Lo/yq$ˏ;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/yq;Lo/yr;)V
    .locals 0

    .line 673
    invoke-direct {p0, p1}, Lo/yq$ˎ;-><init>(Lo/yq;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 678
    iget-object v0, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˌ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 679
    iget-object v0, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʻ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 680
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 683
    :try_start_0
    iget-object v0, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˌ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    goto :goto_1

    .line 684
    :catch_0
    move-exception v6

    .line 686
    :goto_0
    invoke-virtual {p0}, Lo/yq$ˎ;->uE()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    iget-object v0, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˌ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    .line 688
    const/4 v0, -0x2

    if-ne v7, v0, :cond_0

    .line 689
    goto :goto_1

    .line 690
    :cond_0
    if-ltz v7, :cond_1

    .line 691
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected audio buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_1
    goto :goto_0

    .line 697
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʻ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 708
    goto :goto_3

    .line 698
    :catch_1
    move-exception v6

    .line 700
    :goto_2
    invoke-virtual {p0}, Lo/yq$ˎ;->uE()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 701
    iget-object v0, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʻ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    .line 702
    const/4 v0, -0x2

    if-ne v7, v0, :cond_3

    .line 703
    goto :goto_3

    .line 704
    :cond_3
    if-ltz v7, :cond_4

    .line 705
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected video buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_4
    goto :goto_2

    .line 710
    :cond_5
    :goto_3
    const/4 v6, 0x0

    .line 711
    const/4 v7, 0x0

    .line 712
    const/4 v8, 0x0

    .line 714
    :goto_4
    invoke-virtual {p0}, Lo/yq$ˎ;->uE()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 715
    iget-object v0, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˌ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9

    .line 716
    if-ltz v9, :cond_6

    .line 717
    const/4 v8, 0x1

    .line 719
    aget-object v10, v3, v9

    .line 720
    iget v0, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 721
    iget v0, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 722
    iget-object v0, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˋ(Lo/yq;)Lo/yp$if;

    move-result-object v0

    invoke-interface {v0, v10, v5}, Lo/yp$if;->ˋ(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 725
    iget-object v0, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˌ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 727
    :cond_6
    iget-object v0, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʻ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    .line 728
    if-ltz v10, :cond_7

    .line 729
    const/4 v7, 0x1

    .line 731
    aget-object v11, v4, v10

    .line 732
    iget v0, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 733
    iget-object v0, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˋ(Lo/yq;)Lo/yp$if;

    move-result-object v0

    invoke-interface {v0, v11, v5}, Lo/yp$if;->ˊ(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 736
    iget-object v0, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʻ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 738
    :cond_7
    if-nez v6, :cond_8

    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    .line 740
    iget-object v0, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˋ(Lo/yq;)Lo/yp$if;

    move-result-object v0

    iget-object v1, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v1}, Lo/yq;->ˌ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iget-object v2, p0, Lo/yq$ˎ;->bqL:Lo/yq;

    invoke-static {v2}, Lo/yq;->ʻ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/yp$if;->ˊ(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 741
    invoke-virtual {p0}, Lo/yq$ˎ;->uF()V

    .line 742
    const/4 v6, 0x1

    .line 744
    :cond_8
    goto/16 :goto_4

    .line 745
    :cond_9
    return-void
.end method
