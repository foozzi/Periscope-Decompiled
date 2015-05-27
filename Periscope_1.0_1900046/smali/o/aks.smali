.class public Lo/aks;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bJU:Landroid/media/MediaMuxer;

.field bJV:I

.field bJW:I

.field bJX:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lo/aks;->bJV:I

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lo/aks;->bJW:I

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lo/aks;->bJX:[J

    return-void
.end method

.method private declared-synchronized ˊ(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lo/aks;->bJU:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    .line 71
    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, p0, Lo/aks;->bJX:[J

    aget-wide v2, v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 73
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lo/aks;->bJV:I

    if-ne p1, v2, :cond_0

    const-string v2, "Audio"

    goto :goto_0

    :cond_0
    const-string v2, "Video"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time reversed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/aks;->bJX:[J

    aget-wide v2, v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    monitor-exit p0

    return-void

    .line 78
    :cond_1
    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, p0, Lo/aks;->bJX:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x186a0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 80
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lo/aks;->bJV:I

    if-ne p1, v2, :cond_2

    const-string v2, "Audio"

    goto :goto_1

    :cond_2
    const-string v2, "Video"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time jump from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/aks;->bJX:[J

    aget-wide v2, v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_3
    iget-object v0, p0, Lo/aks;->bJX:[J

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    aput-wide v1, v0, p1

    .line 83
    iget-object v0, p0, Lo/aks;->bJU:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 84
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized Bd()V
    .locals 3

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lo/aks;->bJU:Landroid/media/MediaMuxer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 45
    :try_start_1
    iget-object v0, p0, Lo/aks;->bJU:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 46
    iget-object v0, p0, Lo/aks;->bJU:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 47
    const-string v0, "RTMP"

    const-string v1, "Recording ended"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 51
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aks;->bJU:Landroid/media/MediaMuxer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized ˊ(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 6

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lo/aks;->bJX:[J

    iget-object v1, p0, Lo/aks;->bJX:[J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 27
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lo/aks;->bJU:Landroid/media/MediaMuxer;

    .line 28
    iget-object v0, p0, Lo/aks;->bJU:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lo/aks;->bJV:I

    .line 29
    iget-object v0, p0, Lo/aks;->bJU:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lo/aks;->bJW:I

    .line 30
    iget-object v0, p0, Lo/aks;->bJU:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 31
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording started to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    goto :goto_0

    .line 33
    :catch_0
    move-exception v5

    .line 35
    :try_start_1
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ˎ(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    monitor-enter p0

    .line 59
    :try_start_0
    iget v0, p0, Lo/aks;->bJV:I

    invoke-direct {p0, v0, p1, p2}, Lo/aks;->ˊ(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ˏ(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    iget v0, p0, Lo/aks;->bJW:I

    invoke-direct {p0, v0, p1, p2}, Lo/aks;->ˊ(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
