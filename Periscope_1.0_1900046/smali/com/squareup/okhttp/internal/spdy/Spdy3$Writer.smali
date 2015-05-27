.class final Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final headerBlockBuffer:Lo/ue;

.field private final headerBlockOut:Lo/uh;

.field private final sink:Lo/uh;


# direct methods
.method constructor <init>(Lo/uh;Z)V
    .locals 3

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    .line 296
    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->client:Z

    .line 298
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    .line 299
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Spdy3;->DICTIONARY:[B

    invoke-virtual {v2, v0}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 300
    new-instance v0, Lo/ue;

    invoke-direct {v0}, Lo/ue;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lo/ue;

    .line 301
    new-instance v0, Lo/uk;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lo/ue;

    invoke-direct {v0, v1, v2}, Lo/uk;-><init>(Lo/uz;Ljava/util/zip/Deflater;)V

    invoke-static {v0}, Lo/up;->ˊ(Lo/uz;)Lo/uh;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lo/uh;

    .line 302
    return-void
.end method

.method private writeNameValueBlockToBuffer(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)V"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lo/uh;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 411
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_1

    .line 412
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v6, v0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lo/uj;

    .line 413
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lo/uh;

    invoke-virtual {v6}, Lo/uj;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 414
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lo/uh;

    invoke-interface {v0, v6}, Lo/uh;->ˋ(Lo/uj;)Lo/uh;

    .line 415
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v7, v0, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lo/uj;

    .line 416
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lo/uh;

    invoke-virtual {v7}, Lo/uj;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 417
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lo/uh;

    invoke-interface {v0, v7}, Lo/uh;->ˋ(Lo/uj;)Lo/uh;

    .line 411
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V

    .line 420
    return-void
.end method


# virtual methods
.method public ackSettings(Lcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 0

    .line 306
    return-void
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 488
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    .line 489
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lo/uh;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized connectionPreface()V
    .locals 1

    monitor-enter p0

    .line 316
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized data(ZILo/ue;I)V
    .locals 1

    monitor-enter p0

    .line 391
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 392
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sendDataFrame(IILo/ue;I)V
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

.method public declared-synchronized flush()V
    .locals 3

    monitor-enter p0

    .line 319
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V
    .locals 6

    monitor-enter p0

    .line 456
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_0
    iget v0, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    const/4 v3, 0x7

    .line 461
    const/4 v4, 0x0

    .line 462
    const/16 v5, 0x8

    .line 463
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, -0x7ffcfff9

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 464
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 465
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    invoke-interface {v0, p1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 466
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    iget v1, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 467
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 359
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 361
    const/4 v4, 0x0

    .line 362
    const/16 v5, 0x8

    .line 363
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    long-to-int v6, v0

    .line 365
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, -0x7ffcfff8

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 366
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, 0xffffff

    and-int/2addr v1, v6

    or-int/lit8 v1, v1, 0x0

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 367
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 368
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lo/ue;

    invoke-interface {v0, v1}, Lo/uh;->ˊ(Lo/va;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public maxDataLength()I
    .locals 1

    .line 386
    const/16 v0, 0x3fff

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 7

    monitor-enter p0

    .line 442
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->client:Z

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eq v0, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 444
    :goto_1
    if-eq p1, v3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload != reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_3
    const/4 v4, 0x6

    .line 446
    const/4 v5, 0x0

    .line 447
    const/4 v6, 0x4

    .line 448
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, -0x7ffcfffa

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 449
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 450
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    invoke-interface {v0, p2}, Lo/uh;->ǀ(I)Lo/uh;

    .line 451
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)V"
        }
    .end annotation

    .line 312
    return-void
.end method

.method public declared-synchronized rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 6

    monitor-enter p0

    .line 373
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    iget v0, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 375
    :cond_1
    const/4 v3, 0x0

    .line 376
    const/4 v4, 0x3

    .line 377
    const/16 v5, 0x8

    .line 378
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 379
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 380
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 381
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    iget v1, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 382
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method sendDataFrame(IILo/ue;I)V
    .locals 4

    .line 397
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 402
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 403
    if-lez p4, :cond_2

    .line 404
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    int-to-long v1, p4

    invoke-interface {v0, p3, v1, v2}, Lo/uh;->write(Lo/ue;J)V

    .line 406
    :cond_2
    return-void
.end method

.method public declared-synchronized settings(Lcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 9

    monitor-enter p0

    .line 423
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    const/4 v3, 0x4

    .line 425
    const/4 v4, 0x0

    .line 426
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/Settings;->size()I

    move-result v5

    .line 427
    mul-int/lit8 v0, v5, 0x8

    add-int/lit8 v6, v0, 0x4

    .line 428
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, -0x7ffcfffc

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 429
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, 0xffffff

    and-int/2addr v1, v6

    or-int/lit8 v1, v1, 0x0

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 430
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    invoke-interface {v0, v5}, Lo/uh;->ǀ(I)Lo/uh;

    .line 431
    const/4 v7, 0x0

    :goto_0
    const/16 v0, 0xa

    if-gt v7, v0, :cond_2

    .line 432
    invoke-virtual {p1, v7}, Lcom/squareup/okhttp/internal/spdy/Settings;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 433
    :cond_1
    invoke-virtual {p1, v7}, Lcom/squareup/okhttp/internal/spdy/Settings;->flags(I)I

    move-result v8

    .line 434
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    and-int/lit16 v1, v8, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, v7

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 435
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    invoke-virtual {p1, v7}, Lcom/squareup/okhttp/internal/spdy/Settings;->get(I)I

    move-result v1

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 431
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 344
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    invoke-direct {p0, p3}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 346
    const/4 v4, 0x2

    .line 347
    if-eqz p1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    long-to-int v6, v0

    .line 350
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, -0x7ffcfffe

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 351
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    and-int/lit16 v1, v5, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, v6

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 352
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, 0x7fffffff

    and-int/2addr v1, p2

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 353
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lo/ue;

    invoke-interface {v0, v1}, Lo/uh;->ˊ(Lo/va;)J

    .line 354
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 326
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    invoke-direct {p0, p5}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 328
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    long-to-int v4, v0

    .line 329
    const/4 v5, 0x1

    .line 330
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    or-int v6, v0, v1

    .line 332
    const/4 v7, 0x0

    .line 333
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, -0x7ffcffff

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 334
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    and-int/lit16 v1, v6, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 335
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, 0x7fffffff

    and-int/2addr v1, p3

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 336
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, 0x7fffffff

    and-int/2addr v1, p4

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 337
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/uh;->ɔ(I)Lo/uh;

    .line 338
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lo/ue;

    invoke-interface {v0, v1}, Lo/uh;->ˊ(Lo/va;)J

    .line 339
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 6

    monitor-enter p0

    .line 472
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 474
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_2
    const/16 v3, 0x9

    .line 478
    const/4 v4, 0x0

    .line 479
    const/16 v5, 0x8

    .line 480
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 481
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 482
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    invoke-interface {v0, p1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 483
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lo/uh;->ǀ(I)Lo/uh;

    .line 484
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
