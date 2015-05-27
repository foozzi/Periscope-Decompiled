.class final Lcom/squareup/okhttp/internal/spdy/Http2$Writer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lo/ue;

.field private final hpackWriter:Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;

.field private maxFrameSize:I

.field private final sink:Lo/uh;


# direct methods
.method constructor <init>(Lo/uh;Z)V
    .locals 2

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    .line 373
    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->client:Z

    .line 374
    new-instance v0, Lo/ue;

    invoke-direct {v0}, Lo/ue;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->hpackBuffer:Lo/ue;

    .line 375
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->hpackBuffer:Lo/ue;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;-><init>(Lo/ue;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->hpackWriter:Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;

    .line 376
    const/16 v0, 0x4000

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->maxFrameSize:I

    .line 377
    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .locals 5

    .line 459
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 460
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->maxFrameSize:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v4, v0

    .line 461
    int-to-long v0, v4

    sub-long/2addr p2, v0

    .line 462
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x9

    invoke-virtual {p0, p1, v4, v1, v0}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->frameHeader(IIBB)V

    .line 463
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->hpackBuffer:Lo/ue;

    int-to-long v2, v4

    invoke-interface {v0, v1, v2, v3}, Lo/uh;->write(Lo/ue;J)V

    .line 464
    goto :goto_0

    .line 465
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized ackSettings(Lcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 6

    monitor-enter p0

    .line 385
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_0
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->maxFrameSize:I

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/spdy/Settings;->getMaxFrameSize(I)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->maxFrameSize:I

    .line 387
    const/4 v2, 0x0

    .line 388
    const/4 v3, 0x4

    .line 389
    const/4 v4, 0x1

    .line 390
    const/4 v5, 0x0

    .line 391
    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->frameHeader(IIBB)V

    .line 392
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 564
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    .line 565
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized connectionPreface()V
    .locals 6

    monitor-enter p0

    .line 396
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->client:Z

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 398
    :cond_1
    # getter for: Lcom/squareup/okhttp/internal/spdy/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    # getter for: Lcom/squareup/okhttp/internal/spdy/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    # getter for: Lcom/squareup/okhttp/internal/spdy/Http2;->CONNECTION_PREFACE:Lo/uj;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$000()Lo/uj;

    move-result-object v3

    invoke-virtual {v3}, Lo/uj;->el()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    # getter for: Lcom/squareup/okhttp/internal/spdy/Http2;->CONNECTION_PREFACE:Lo/uj;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$000()Lo/uj;

    move-result-object v1

    invoke-virtual {v1}, Lo/uj;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lo/uh;->ᐧ([B)Lo/uh;

    .line 402
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized data(ZILo/ue;I)V
    .locals 3

    monitor-enter p0

    .line 486
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    const/4 v2, 0x0

    .line 488
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 489
    :cond_1
    invoke-virtual {p0, p2, v2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->dataFrame(IBLo/ue;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method dataFrame(IBLo/ue;I)V
    .locals 4

    .line 493
    const/4 v3, 0x0

    .line 494
    invoke-virtual {p0, p1, p4, v3, p2}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->frameHeader(IIBB)V

    .line 495
    if-lez p4, :cond_0

    .line 496
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    int-to-long v1, p4

    invoke-interface {v0, p3, v1, v2}, Lo/uh;->write(Lo/ue;J)V

    .line 498
    :cond_0
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 3

    monitor-enter p0

    .line 380
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method frameHeader(IIBB)V
    .locals 4

    .line 569
    # getter for: Lcom/squareup/okhttp/internal/spdy/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/squareup/okhttp/internal/spdy/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 570
    :cond_0
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->maxFrameSize:I

    if-le p2, v0, :cond_1

    .line 571
    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->maxFrameSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 573
    :cond_1
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    const-string v0, "reserved bit set: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->writeMedium(Lo/uh;I)V
    invoke-static {v0, p2}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$600(Lo/uh;I)V

    .line 575
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lo/uh;->ɟ(I)Lo/uh;

    .line 576
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lo/uh;->ɟ(I)Lo/uh;

    .line 577
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 578
    return-void
.end method

.method public declared-synchronized goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V
    .locals 6

    monitor-enter p0

    .line 533
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_0
    iget v0, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 535
    :cond_1
    array-length v0, p3

    add-int/lit8 v2, v0, 0x8

    .line 536
    const/4 v3, 0x7

    .line 537
    const/4 v4, 0x0

    .line 538
    const/4 v5, 0x0

    .line 539
    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->frameHeader(IIBB)V

    .line 540
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-interface {v0, p1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 541
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    iget v1, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->httpCode:I

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 542
    array-length v0, p3

    if-lez v0, :cond_2

    .line 543
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-interface {v0, p3}, Lo/uh;->ᐧ([B)Lo/uh;

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 421
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method headers(ZILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)V"
        }
    .end annotation

    .line 443
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->hpackBuffer:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->hpackWriter:Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 447
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->hpackBuffer:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v4

    .line 448
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->maxFrameSize:I

    int-to-long v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v6, v0

    .line 449
    const/4 v7, 0x1

    .line 450
    int-to-long v0, v6

    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    const/4 v8, 0x4

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 451
    :goto_0
    if-eqz p1, :cond_3

    or-int/lit8 v0, v8, 0x1

    int-to-byte v8, v0

    .line 452
    :cond_3
    invoke-virtual {p0, p2, v6, v7, v8}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->frameHeader(IIBB)V

    .line 453
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->hpackBuffer:Lo/ue;

    int-to-long v2, v6

    invoke-interface {v0, v1, v2, v3}, Lo/uh;->write(Lo/ue;J)V

    .line 455
    int-to-long v0, v6

    cmp-long v0, v4, v0

    if-lez v0, :cond_4

    int-to-long v0, v6

    sub-long v0, v4, v0

    invoke-direct {p0, p2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->writeContinuationFrames(IJ)V

    .line 456
    :cond_4
    return-void
.end method

.method public maxDataLength()I
    .locals 1

    .line 481
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->maxFrameSize:I

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 6

    monitor-enter p0

    .line 520
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_0
    const/16 v2, 0x8

    .line 522
    const/4 v3, 0x6

    .line 523
    if-eqz p1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 524
    :goto_0
    const/4 v5, 0x0

    .line 525
    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->frameHeader(IIBB)V

    .line 526
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-interface {v0, p2}, Lo/uh;->ǀ(I)Lo/uh;

    .line 527
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-interface {v0, p3}, Lo/uh;->ǀ(I)Lo/uh;

    .line 528
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 427
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->hpackBuffer:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->hpackWriter:Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 431
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->hpackBuffer:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v4

    .line 432
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->maxFrameSize:I

    add-int/lit8 v0, v0, -0x4

    int-to-long v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v6, v0

    .line 433
    const/4 v7, 0x5

    .line 434
    int-to-long v0, v6

    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    const/4 v8, 0x4

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 435
    :goto_0
    add-int/lit8 v0, v6, 0x4

    invoke-virtual {p0, p1, v0, v7, v8}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->frameHeader(IIBB)V

    .line 436
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    const v1, 0x7fffffff

    and-int/2addr v1, p2

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 437
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->hpackBuffer:Lo/ue;

    int-to-long v2, v6

    invoke-interface {v0, v1, v2, v3}, Lo/uh;->write(Lo/ue;J)V

    .line 439
    int-to-long v0, v6

    cmp-long v0, v4, v0

    if-lez v0, :cond_3

    int-to-long v0, v6

    sub-long v0, v4, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->writeContinuationFrames(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 5

    monitor-enter p0

    .line 469
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_0
    iget v0, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 472
    :cond_1
    const/4 v2, 0x4

    .line 473
    const/4 v3, 0x3

    .line 474
    const/4 v4, 0x0

    .line 475
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->frameHeader(IIBB)V

    .line 476
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    iget v1, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->httpCode:I

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 477
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized settings(Lcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 8

    monitor-enter p0

    .line 501
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/Settings;->size()I

    move-result v0

    mul-int/lit8 v2, v0, 0x6

    .line 503
    const/4 v3, 0x4

    .line 504
    const/4 v4, 0x0

    .line 505
    const/4 v5, 0x0

    .line 506
    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->frameHeader(IIBB)V

    .line 507
    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0xa

    if-ge v6, v0, :cond_4

    .line 508
    invoke-virtual {p1, v6}, Lcom/squareup/okhttp/internal/spdy/Settings;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 509
    :cond_1
    move v7, v6

    .line 510
    const/4 v0, 0x4

    if-ne v7, v0, :cond_2

    const/4 v7, 0x3

    goto :goto_1

    .line 511
    :cond_2
    const/4 v0, 0x7

    if-ne v7, v0, :cond_3

    const/4 v7, 0x4

    .line 512
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-interface {v0, v7}, Lo/uh;->ɔ(I)Lo/uh;

    .line 513
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-virtual {p1, v6}, Lcom/squareup/okhttp/internal/spdy/Settings;->get(I)I

    move-result v1

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 507
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 515
    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 415
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 408
    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 409
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_1
    invoke-virtual {p0, p1, p3, p5}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 7

    monitor-enter p0

    .line 550
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 552
    :cond_1
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 553
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 552
    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 555
    :cond_2
    const/4 v4, 0x4

    .line 556
    const/16 v5, 0x8

    .line 557
    const/4 v6, 0x0

    .line 558
    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->frameHeader(IIBB)V

    .line 559
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 560
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
