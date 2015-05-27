.class Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reader"
.end annotation


# instance fields
.field frameReader:Lcom/squareup/okhttp/internal/spdy/FrameReader;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)V
    .locals 4

    .line 562
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .line 563
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$900(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;)V
    .locals 0

    .line 559
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)V

    return-void
.end method

.method private ackSettingsLater(Lcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 6

    .line 707
    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1900()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$2;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;
    invoke-static {v4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$900(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$2;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 715
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .line 719
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lo/uj;Ljava/lang/String;IJ)V
    .locals 0

    .line 782
    return-void
.end method

.method public data(ZILo/ui;I)V
    .locals 3

    .line 592
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushedStream(I)Z
    invoke-static {v0, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushDataLater(ILo/ui;IZ)V
    invoke-static {v0, p2, p3, p4, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILo/ui;IZ)V

    .line 594
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v2

    .line 597
    if-nez v2, :cond_1

    .line 598
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, p2, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 599
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lo/ui;->ᵋ(J)V

    .line 600
    return-void

    .line 602
    :cond_1
    invoke-virtual {v2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveData(Lo/ui;I)V

    .line 603
    if-eqz p1, :cond_2

    .line 604
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveFin()V

    .line 606
    :cond_2
    return-void
.end method

.method protected execute()V
    .locals 8

    .line 567
    sget-object v3, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 568
    sget-object v4, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->variant:Lcom/squareup/okhttp/internal/spdy/Variant;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lo/up;->ˋ(Ljava/net/Socket;)Lo/va;

    move-result-object v1

    invoke-static {v1}, Lo/up;->ˋ(Lo/va;)Lo/ui;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-boolean v2, v2, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->client:Z

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Variant;->newReader(Lo/ui;Z)Lcom/squareup/okhttp/internal/spdy/FrameReader;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    .line 571
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-boolean v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->client:Z

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader;->readConnectionPreface()V

    .line 574
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    invoke-interface {v0, p0}, Lcom/squareup/okhttp/internal/spdy/FrameReader;->nextFrame(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 576
    :cond_1
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-object v3, v0

    .line 577
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    .line 583
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    invoke-static {v0, v3, v4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 585
    goto :goto_1

    .line 584
    :catch_0
    move-exception v5

    .line 586
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 587
    goto :goto_4

    .line 578
    :catch_1
    move-exception v5

    .line 579
    :try_start_2
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-object v3, v0

    .line 580
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v0

    .line 583
    :try_start_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    invoke-static {v0, v3, v4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 585
    goto :goto_2

    .line 584
    :catch_2
    move-exception v5

    .line 586
    :goto_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 587
    goto :goto_4

    .line 582
    :catchall_0
    move-exception v6

    .line 583
    :try_start_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    invoke-static {v0, v3, v4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 585
    goto :goto_3

    .line 584
    :catch_3
    move-exception v7

    .line 586
    :goto_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .line 588
    :goto_4
    return-void
.end method

.method public goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;Lo/uj;)V
    .locals 7

    .line 734
    invoke-virtual {p3}, Lo/uj;->size()I

    move-result v0

    .line 739
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v3

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1700(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1700(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-object v2, v0

    .line 741
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    const/4 v1, 0x1

    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1402(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 745
    :goto_0
    move-object v3, v2

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 746
    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->getId()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v6, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveRstStream(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 748
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 745
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 751
    :cond_1
    return-void
.end method

.method public headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushedStream(I)Z
    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushHeadersLater(ILjava/util/List;Z)V
    invoke-static {v0, p3, p5, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1300(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILjava/util/List;Z)V

    .line 612
    return-void

    .line 615
    :cond_0
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v7

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1400(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v7

    return-void

    .line 619
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v6

    .line 621
    if-nez v6, :cond_5

    .line 623
    invoke-virtual/range {p6 .. p6}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfStreamAbsent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, p3, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    monitor-exit v7

    return-void

    .line 629
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1500(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-gt p3, v0, :cond_3

    monitor-exit v7

    return-void

    .line 632
    :cond_3
    :try_start_3
    rem-int/lit8 v0, p3, 0x2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1600(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v0, v1, :cond_4

    monitor-exit v7

    return-void

    .line 635
    :cond_4
    :try_start_4
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move v1, p3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;-><init>(ILcom/squareup/okhttp/internal/spdy/SpdyConnection;ZZLjava/util/List;)V

    move-object v8, v0

    .line 637
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I
    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1502(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)I

    .line 638
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1700(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1900()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;
    invoke-static {v4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$900(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-direct {v1, p0, v2, v3, v8}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$1;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 648
    monitor-exit v7

    return-void

    .line 650
    :cond_5
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v7

    throw v9

    .line 653
    :goto_0
    invoke-virtual/range {p6 .. p6}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfStreamPresent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 654
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v6, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 655
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 656
    return-void

    .line 660
    :cond_6
    move-object/from16 v0, p6

    invoke-virtual {v6, p5, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveHeaders(Ljava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    .line 661
    if-eqz p2, :cond_7

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveFin()V

    .line 662
    :cond_7
    return-void
.end method

.method public ping(ZII)V
    .locals 4

    .line 722
    if-eqz p1, :cond_1

    .line 723
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removePing(I)Lcom/squareup/okhttp/internal/spdy/Ping;
    invoke-static {v0, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$2200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/Ping;

    move-result-object v3

    .line 724
    if-eqz v3, :cond_0

    .line 725
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/Ping;->receive()V

    .line 727
    :cond_0
    goto :goto_0

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writePingLater(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    invoke-static {v0, v1, p2, p3, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$2300(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ZIILcom/squareup/okhttp/internal/spdy/Ping;)V

    .line 731
    :goto_0
    return-void
.end method

.method public priority(IIIZ)V
    .locals 0

    .line 772
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)V"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushRequestLater(ILjava/util/List;)V
    invoke-static {v0, p2, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$2400(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILjava/util/List;)V

    .line 777
    return-void
.end method

.method public rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushedStream(I)Z
    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushResetLater(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    invoke-static {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$2000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 667
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v1

    .line 670
    if-eqz v1, :cond_1

    .line 671
    invoke-virtual {v1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveRstStream(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 673
    :cond_1
    return-void
.end method

.method public settings(ZLcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 11

    .line 676
    const-wide/16 v2, 0x0

    .line 677
    const/4 v4, 0x0

    .line 678
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v5

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v6

    .line 680
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/Settings;->clear()V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/spdy/Settings;->merge(Lcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 682
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_1

    .line 683
    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->ackSettingsLater(Lcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v7

    .line 686
    const/4 v0, -0x1

    if-eq v7, v0, :cond_3

    if-eq v7, v6, :cond_3

    .line 687
    sub-int v0, v7, v6

    int-to-long v2, v0

    .line 688
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->receivedInitialPeerSettings:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$2100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 689
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->addBytesToWriteWindow(J)V

    .line 690
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    const/4 v1, 0x1

    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->receivedInitialPeerSettings:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$2102(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Z)Z

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1700(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 693
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1700(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1700(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    .line 696
    :cond_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v5

    throw v8

    .line 697
    :goto_0
    if-eqz v4, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_4

    .line 698
    move-object v5, v4

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 699
    move-object v9, v8

    monitor-enter v9

    .line 700
    :try_start_1
    invoke-virtual {v8, v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->addBytesToWriteWindow(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 701
    monitor-exit v9

    goto :goto_2

    :catchall_1
    move-exception v10

    monitor-exit v9

    throw v10

    .line 698
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 704
    :cond_4
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 6

    .line 754
    if-nez p1, :cond_0

    .line 755
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v3

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-wide v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v1, p2

    iput-wide v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    .line 757
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    :goto_0
    goto :goto_1

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v3

    .line 761
    if-eqz v3, :cond_1

    .line 762
    move-object v4, v3

    monitor-enter v4

    .line 763
    :try_start_1
    invoke-virtual {v3, p2, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->addBytesToWriteWindow(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 764
    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v5

    monitor-exit v4

    throw v5

    .line 767
    :cond_1
    :goto_1
    return-void
.end method
