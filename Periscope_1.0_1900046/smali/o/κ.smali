.class final Lo/κ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final qK:Landroid/os/Handler;

.field private final qN:[Z

.field private qO:Z

.field private final qS:Landroid/os/HandlerThread;

.field private final qT:Lo/ν;

.field private final qU:J

.field private final qV:J

.field private final qW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/\u06b9;>;"
        }
    .end annotation
.end field

.field private qX:[Lo/ڹ;

.field private qY:Lo/ڹ;

.field private qZ:Z

.field private ra:Z

.field private rb:I

.field private rc:I

.field private rd:J

.field private volatile re:J

.field private volatile rf:J

.field private volatile rg:J

.field private state:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z[ZII)V
    .locals 5

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lo/κ;->rb:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lo/κ;->rc:I

    .line 88
    iput-object p1, p0, Lo/κ;->qK:Landroid/os/Handler;

    .line 89
    iput-boolean p2, p0, Lo/κ;->qO:Z

    .line 90
    array-length v0, p3

    new-array v0, v0, [Z

    iput-object v0, p0, Lo/κ;->qN:[Z

    .line 91
    int-to-long v0, p4

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lo/κ;->qU:J

    .line 92
    int-to-long v0, p5

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lo/κ;->qV:J

    .line 93
    const/4 v4, 0x0

    :goto_0
    array-length v0, p3

    if-ge v4, v0, :cond_0

    .line 94
    iget-object v0, p0, Lo/κ;->qN:[Z

    aget-boolean v1, p3, v4

    aput-boolean v1, v0, v4

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lo/κ;->state:I

    .line 98
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/κ;->re:J

    .line 99
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/κ;->rg:J

    .line 101
    new-instance v0, Lo/ν;

    invoke-direct {v0}, Lo/ν;-><init>()V

    iput-object v0, p0, Lo/κ;->qT:Lo/ν;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/κ;->qW:Ljava/util/List;

    .line 105
    new-instance v0, Lo/হ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Lo/হ;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lo/κ;->qS:Landroid/os/HandlerThread;

    .line 107
    iget-object v0, p0, Lo/κ;->qS:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lo/κ;->qS:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    .line 109
    return-void
.end method

.method private setState(I)V
    .locals 3

    .line 243
    iget v0, p0, Lo/κ;->state:I

    if-eq v0, p1, :cond_0

    .line 244
    iput p1, p0, Lo/κ;->state:I

    .line 245
    iget-object v0, p0, Lo/κ;->qK:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    :cond_0
    return-void
.end method

.method private ť()V
    .locals 1

    .line 478
    invoke-direct {p0}, Lo/κ;->ڌ()V

    .line 479
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/κ;->setState(I)V

    .line 480
    return-void
.end method

.method private Ÿ()V
    .locals 3

    .line 483
    invoke-direct {p0}, Lo/κ;->ڌ()V

    .line 484
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/κ;->setState(I)V

    .line 485
    move-object v1, p0

    monitor-enter v1

    .line 486
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lo/κ;->qZ:Z

    .line 487
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 489
    :goto_0
    return-void
.end method

.method private ˊ(IJJ)V
    .locals 6

    .line 451
    add-long v2, p2, p4

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v4, v2, v0

    .line 453
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    .line 454
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 458
    :goto_0
    return-void
.end method

.method private ˊ(Lo/ڹ;)Z
    .locals 8

    .line 321
    invoke-virtual {p1}, Lo/ڹ;->ﮈ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x1

    return v0

    .line 324
    :cond_0
    invoke-virtual {p1}, Lo/ڹ;->ﺓ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    const/4 v0, 0x0

    return v0

    .line 327
    :cond_1
    iget v0, p0, Lo/κ;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 328
    const/4 v0, 0x1

    return v0

    .line 330
    :cond_2
    invoke-virtual {p1}, Lo/ڹ;->ﻤ()J

    move-result-wide v2

    .line 331
    invoke-virtual {p1}, Lo/ڹ;->ﻥ()J

    move-result-wide v4

    .line 332
    iget-boolean v0, p0, Lo/κ;->ra:Z

    if-eqz v0, :cond_3

    iget-wide v6, p0, Lo/κ;->qV:J

    goto :goto_0

    :cond_3
    iget-wide v6, p0, Lo/κ;->qU:J

    .line 333
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_4

    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-eqz v0, :cond_4

    const-wide/16 v0, -0x3

    cmp-long v0, v4, v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lo/κ;->rf:J

    add-long/2addr v0, v6

    cmp-long v0, v4, v0

    if-gez v0, :cond_4

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, -0x2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_5

    cmp-long v0, v4, v2

    if-ltz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private ˋ(Lo/ڹ;)V
    .locals 3

    .line 511
    :try_start_0
    invoke-direct {p0, p1}, Lo/κ;->ˏ(Lo/ڹ;)V

    .line 512
    invoke-virtual {p1}, Lo/ڹ;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 513
    invoke-virtual {p1}, Lo/ڹ;->disable()V
    :try_end_0
    .catch Lo/ʡ; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 521
    :cond_0
    goto :goto_0

    .line 515
    :catch_0
    move-exception v2

    .line 517
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Stop failed."

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    goto :goto_0

    .line 518
    :catch_1
    move-exception v2

    .line 520
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Stop failed."

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    :goto_0
    return-void
.end method

.method private ˋ([Lo/ڹ;)V
    .locals 3

    .line 250
    invoke-direct {p0}, Lo/κ;->ڌ()V

    .line 251
    iput-object p1, p0, Lo/κ;->qX:[Lo/ڹ;

    .line 252
    const/4 v2, 0x0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_2

    .line 253
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lo/ڹ;->ƭ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lo/κ;->qY:Lo/ڹ;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 255
    aget-object v0, p1, v2

    iput-object v0, p0, Lo/κ;->qY:Lo/ڹ;

    .line 252
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lo/κ;->setState(I)V

    .line 259
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 260
    return-void
.end method

.method private ˌ(J)V
    .locals 5

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/κ;->ra:Z

    .line 462
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lo/κ;->rf:J

    .line 463
    iget-object v0, p0, Lo/κ;->qT:Lo/ν;

    invoke-virtual {v0}, Lo/ν;->stop()V

    .line 464
    iget-object v0, p0, Lo/κ;->qT:Lo/ν;

    iget-wide v1, p0, Lo/κ;->rf:J

    invoke-virtual {v0, v1, v2}, Lo/ν;->ˍ(J)V

    .line 465
    iget v0, p0, Lo/κ;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lo/κ;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 466
    :cond_0
    return-void

    .line 468
    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lo/κ;->qW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 469
    iget-object v0, p0, Lo/κ;->qW:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ڹ;

    move-object v4, v0

    .line 470
    invoke-direct {p0, v4}, Lo/κ;->ˏ(Lo/ڹ;)V

    .line 471
    iget-wide v0, p0, Lo/κ;->rf:J

    invoke-virtual {v4, v0, v1}, Lo/ڹ;->seekTo(J)V

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 473
    :cond_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lo/κ;->setState(I)V

    .line 474
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 475
    return-void
.end method

.method private ˎ(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(ILjava/lang/Object;)V"
        }
    .end annotation

    .line 540
    move-object v0, p2

    :try_start_0
    check-cast v0, Landroid/util/Pair;

    move-object v2, v0

    .line 541
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lo/ʢ$if;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lo/ʢ$if;->ˋ(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 543
    move-object v2, p0

    monitor-enter v2

    .line 544
    :try_start_1
    iget v0, p0, Lo/κ;->rc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/κ;->rc:I

    .line 545
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 547
    :goto_0
    goto :goto_2

    .line 543
    :catchall_1
    move-exception v4

    move-object v5, p0

    monitor-enter v5

    .line 544
    :try_start_2
    iget v0, p0, Lo/κ;->rc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/κ;->rc:I

    .line 545
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 546
    monitor-exit v5

    goto :goto_1

    :catchall_2
    move-exception v6

    monitor-exit v5

    throw v6

    :goto_1
    throw v4

    .line 548
    :goto_2
    iget v0, p0, Lo/κ;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lo/κ;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 552
    :cond_0
    return-void
.end method

.method private ˎ(Lo/ڹ;)V
    .locals 3

    .line 526
    :try_start_0
    invoke-virtual {p1}, Lo/ڹ;->release()V
    :try_end_0
    .catch Lo/ʡ; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 533
    goto :goto_0

    .line 527
    :catch_0
    move-exception v2

    .line 529
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Release failed."

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    goto :goto_0

    .line 530
    :catch_1
    move-exception v2

    .line 532
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Release failed."

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    :goto_0
    return-void
.end method

.method private ˏ(Lo/ڹ;)V
    .locals 2

    .line 594
    invoke-virtual {p1}, Lo/ڹ;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 595
    invoke-virtual {p1}, Lo/ڹ;->stop()V

    .line 597
    :cond_0
    return-void
.end method

.method private ڌ()V
    .locals 4

    .line 492
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/κ;->ra:Z

    .line 495
    iget-object v0, p0, Lo/κ;->qT:Lo/ν;

    invoke-virtual {v0}, Lo/ν;->stop()V

    .line 496
    iget-object v0, p0, Lo/κ;->qX:[Lo/ڹ;

    if-nez v0, :cond_0

    .line 497
    return-void

    .line 499
    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lo/κ;->qX:[Lo/ڹ;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 500
    iget-object v0, p0, Lo/κ;->qX:[Lo/ڹ;

    aget-object v3, v0, v2

    .line 501
    invoke-direct {p0, v3}, Lo/κ;->ˋ(Lo/ڹ;)V

    .line 502
    invoke-direct {p0, v3}, Lo/κ;->ˎ(Lo/ڹ;)V

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lo/κ;->qX:[Lo/ڹ;

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lo/κ;->qY:Lo/ڹ;

    .line 506
    iget-object v0, p0, Lo/κ;->qW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 507
    return-void
.end method

.method private ᐨ(IZ)V
    .locals 6

    .line 556
    iget-object v0, p0, Lo/κ;->qN:[Z

    aget-boolean v0, v0, p1

    if-ne v0, p2, :cond_0

    .line 557
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lo/κ;->qN:[Z

    aput-boolean p2, v0, p1

    .line 561
    iget v0, p0, Lo/κ;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lo/κ;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 562
    :cond_1
    return-void

    .line 565
    :cond_2
    iget-object v0, p0, Lo/κ;->qX:[Lo/ڹ;

    aget-object v3, v0, p1

    .line 566
    invoke-virtual {v3}, Lo/ڹ;->getState()I

    move-result v4

    .line 567
    const/4 v0, 0x1

    if-eq v4, v0, :cond_3

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    const/4 v0, 0x3

    if-eq v4, v0, :cond_3

    .line 570
    return-void

    .line 573
    :cond_3
    if-eqz p2, :cond_6

    .line 574
    iget-boolean v0, p0, Lo/κ;->qO:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lo/κ;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    .line 575
    :goto_0
    iget-wide v0, p0, Lo/κ;->rf:J

    invoke-virtual {v3, v0, v1, v5}, Lo/ڹ;->ˋ(JZ)V

    .line 576
    iget-object v0, p0, Lo/κ;->qW:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    if-eqz v5, :cond_5

    .line 578
    invoke-virtual {v3}, Lo/ڹ;->start()V

    .line 580
    :cond_5
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 581
    goto :goto_1

    .line 582
    :cond_6
    iget-object v0, p0, Lo/κ;->qY:Lo/ڹ;

    if-ne v3, v0, :cond_7

    .line 585
    iget-object v0, p0, Lo/κ;->qT:Lo/ν;

    invoke-virtual {v3}, Lo/ڹ;->ｆ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/ν;->ˍ(J)V

    .line 587
    :cond_7
    invoke-direct {p0, v3}, Lo/κ;->ˏ(Lo/ڹ;)V

    .line 588
    iget-object v0, p0, Lo/κ;->qW:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 589
    invoke-virtual {v3}, Lo/ڹ;->disable()V

    .line 591
    :goto_1
    return-void
.end method

.method private ᕀ(Z)V
    .locals 3

    .line 344
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lo/κ;->ra:Z

    .line 345
    iput-boolean p1, p0, Lo/κ;->qO:Z

    .line 346
    if-nez p1, :cond_0

    .line 347
    invoke-direct {p0}, Lo/κ;->ﾐ()V

    .line 348
    invoke-direct {p0}, Lo/κ;->ﾘ()V

    goto :goto_0

    .line 350
    :cond_0
    iget v0, p0, Lo/κ;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 351
    invoke-direct {p0}, Lo/κ;->ﾋ()V

    .line 352
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 353
    :cond_1
    iget v0, p0, Lo/κ;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 354
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/κ;->qK:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 359
    goto :goto_1

    .line 358
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lo/κ;->qK:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    throw v2

    .line 360
    :goto_1
    return-void
.end method

.method private ｺ()V
    .locals 17

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 264
    const/4 v8, 0x1

    .line 265
    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/κ;->qX:[Lo/ڹ;

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/κ;->qX:[Lo/ڹ;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lo/ڹ;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/κ;->qX:[Lo/ڹ;

    aget-object v0, v0, v9

    move-object/from16 v1, p0

    iget-wide v1, v1, Lo/κ;->rf:J

    invoke-virtual {v0, v1, v2}, Lo/ڹ;->ﾞ(J)I

    move-result v10

    .line 268
    if-nez v10, :cond_0

    .line 269
    const/4 v8, 0x0

    .line 265
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 274
    :cond_1
    if-nez v8, :cond_2

    .line 276
    move-object/from16 v0, p0

    move-wide v2, v6

    const/4 v1, 0x2

    const-wide/16 v4, 0xa

    invoke-direct/range {v0 .. v5}, Lo/κ;->ˊ(IJJ)V

    .line 277
    return-void

    .line 280
    :cond_2
    const-wide/16 v9, 0x0

    .line 281
    const/4 v11, 0x1

    .line 282
    const/4 v12, 0x1

    .line 283
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/κ;->qX:[Lo/ڹ;

    array-length v0, v0

    if-ge v13, v0, :cond_9

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/κ;->qX:[Lo/ڹ;

    aget-object v14, v0, v13

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/κ;->qN:[Z

    aget-boolean v0, v0, v13

    if-eqz v0, :cond_8

    invoke-virtual {v14}, Lo/ڹ;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 286
    move-object/from16 v0, p0

    iget-wide v0, v0, Lo/κ;->rf:J

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v1, v2}, Lo/ڹ;->ˋ(JZ)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/κ;->qW:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    if-eqz v11, :cond_3

    invoke-virtual {v14}, Lo/ڹ;->ﮈ()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 289
    :goto_2
    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lo/κ;->ˊ(Lo/ڹ;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v12, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    .line 290
    :goto_3
    const-wide/16 v0, -0x1

    cmp-long v0, v9, v0

    if-nez v0, :cond_5

    goto :goto_4

    .line 294
    :cond_5
    invoke-virtual {v14}, Lo/ڹ;->ﻤ()J

    move-result-wide v15

    .line 295
    const-wide/16 v0, -0x1

    cmp-long v0, v15, v0

    if-nez v0, :cond_6

    .line 296
    const-wide/16 v9, -0x1

    goto :goto_4

    .line 297
    :cond_6
    const-wide/16 v0, -0x2

    cmp-long v0, v15, v0

    if-nez v0, :cond_7

    goto :goto_4

    .line 300
    :cond_7
    move-wide v0, v15

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 283
    :cond_8
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 305
    :cond_9
    move-object/from16 v0, p0

    iput-wide v9, v0, Lo/κ;->re:J

    .line 307
    if-eqz v11, :cond_a

    .line 309
    move-object/from16 v0, p0

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lo/κ;->setState(I)V

    goto :goto_6

    .line 311
    :cond_a
    if-eqz v12, :cond_b

    const/4 v0, 0x4

    goto :goto_5

    :cond_b
    const/4 v0, 0x3

    :goto_5
    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/κ;->setState(I)V

    .line 312
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/κ;->qO:Z

    if-eqz v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lo/κ;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 313
    invoke-direct/range {p0 .. p0}, Lo/κ;->ﾋ()V

    .line 317
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/κ;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 318
    return-void
.end method

.method private ﾋ()V
    .locals 2

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/κ;->ra:Z

    .line 364
    iget-object v0, p0, Lo/κ;->qT:Lo/ν;

    invoke-virtual {v0}, Lo/ν;->start()V

    .line 365
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/κ;->qW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 366
    iget-object v0, p0, Lo/κ;->qW:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ڹ;

    invoke-virtual {v0}, Lo/ڹ;->start()V

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method

.method private ﾐ()V
    .locals 2

    .line 371
    iget-object v0, p0, Lo/κ;->qT:Lo/ν;

    invoke-virtual {v0}, Lo/ν;->stop()V

    .line 372
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/κ;->qW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 373
    iget-object v0, p0, Lo/κ;->qW:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ڹ;

    invoke-direct {p0, v0}, Lo/κ;->ˏ(Lo/ڹ;)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method

.method private ﾘ()V
    .locals 4

    .line 378
    iget-object v0, p0, Lo/κ;->qY:Lo/ڹ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/κ;->qW:Ljava/util/List;

    iget-object v1, p0, Lo/κ;->qY:Lo/ڹ;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/κ;->qY:Lo/ڹ;

    invoke-virtual {v0}, Lo/ڹ;->ﮈ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lo/κ;->qY:Lo/ڹ;

    invoke-virtual {v0}, Lo/ڹ;->ｆ()J

    move-result-wide v0

    iput-wide v0, p0, Lo/κ;->rf:J

    .line 381
    iget-object v0, p0, Lo/κ;->qT:Lo/ν;

    iget-wide v1, p0, Lo/κ;->rf:J

    invoke-virtual {v0, v1, v2}, Lo/ν;->ˍ(J)V

    goto :goto_0

    .line 383
    :cond_0
    iget-object v0, p0, Lo/κ;->qT:Lo/ν;

    invoke-virtual {v0}, Lo/ν;->ƒ()J

    move-result-wide v0

    iput-wide v0, p0, Lo/κ;->rf:J

    .line 385
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lo/κ;->rd:J

    .line 386
    return-void
.end method

.method private ﾚ()V
    .locals 18

    .line 389
    const-string v0, "doSomeWork"

    invoke-static {v0}, Lo/ท;->beginSection(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 391
    move-object/from16 v0, p0

    iget-wide v0, v0, Lo/κ;->re:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lo/κ;->re:J

    goto :goto_0

    :cond_0
    const-wide v8, 0x7fffffffffffffffL

    .line 393
    :goto_0
    const/4 v10, 0x1

    .line 394
    const/4 v11, 0x1

    .line 395
    invoke-direct/range {p0 .. p0}, Lo/κ;->ﾘ()V

    .line 396
    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/κ;->qW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_7

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/κ;->qW:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ڹ;

    move-object v13, v0

    .line 401
    move-object/from16 v0, p0

    iget-wide v0, v0, Lo/κ;->rf:J

    move-object/from16 v2, p0

    iget-wide v2, v2, Lo/κ;->rd:J

    invoke-virtual {v13, v0, v1, v2, v3}, Lo/ڹ;->ˊ(JJ)V

    .line 402
    if-eqz v10, :cond_1

    invoke-virtual {v13}, Lo/ڹ;->ﮈ()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 403
    :goto_2
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lo/κ;->ˊ(Lo/ڹ;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v11, 0x1

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    .line 405
    :goto_3
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_3

    goto :goto_4

    .line 409
    :cond_3
    invoke-virtual {v13}, Lo/ڹ;->ﻤ()J

    move-result-wide v14

    .line 410
    invoke-virtual {v13}, Lo/ڹ;->ﻥ()J

    move-result-wide v16

    .line 411
    const-wide/16 v0, -0x1

    cmp-long v0, v16, v0

    if-nez v0, :cond_4

    .line 412
    const-wide/16 v8, -0x1

    goto :goto_4

    .line 413
    :cond_4
    const-wide/16 v0, -0x3

    cmp-long v0, v16, v0

    if-eqz v0, :cond_6

    const-wide/16 v0, -0x1

    cmp-long v0, v14, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, -0x2

    cmp-long v0, v14, v0

    if-eqz v0, :cond_5

    cmp-long v0, v16, v14

    if-ltz v0, :cond_5

    goto :goto_4

    .line 419
    :cond_5
    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 396
    :cond_6
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 423
    :cond_7
    move-object/from16 v0, p0

    iput-wide v8, v0, Lo/κ;->rg:J

    .line 425
    if-eqz v10, :cond_8

    .line 426
    move-object/from16 v0, p0

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lo/κ;->setState(I)V

    .line 427
    invoke-direct/range {p0 .. p0}, Lo/κ;->ﾐ()V

    goto :goto_5

    .line 428
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lo/κ;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    if-eqz v11, :cond_9

    .line 429
    move-object/from16 v0, p0

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lo/κ;->setState(I)V

    .line 430
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/κ;->qO:Z

    if-eqz v0, :cond_a

    .line 431
    invoke-direct/range {p0 .. p0}, Lo/κ;->ﾋ()V

    goto :goto_5

    .line 433
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lo/κ;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    if-nez v11, :cond_a

    .line 434
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/κ;->qO:Z

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/κ;->ra:Z

    .line 435
    move-object/from16 v0, p0

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lo/κ;->setState(I)V

    .line 436
    invoke-direct/range {p0 .. p0}, Lo/κ;->ﾐ()V

    .line 439
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/κ;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/κ;->qO:Z

    if-eqz v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lo/κ;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lo/κ;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 441
    :cond_c
    move-object/from16 v0, p0

    move-wide v2, v6

    const/4 v1, 0x7

    const-wide/16 v4, 0xa

    invoke-direct/range {v0 .. v5}, Lo/κ;->ˊ(IJJ)V

    goto :goto_6

    .line 442
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/κ;->qW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 443
    move-object/from16 v0, p0

    move-wide v2, v6

    const/4 v1, 0x7

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lo/κ;->ˊ(IJJ)V

    .line 446
    :cond_e
    :goto_6
    invoke-static {}, Lo/ท;->endSection()V

    .line 447
    return-void
.end method


# virtual methods
.method public getBufferedPosition()J
    .locals 4

    .line 120
    iget-wide v0, p0, Lo/κ;->rg:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lo/κ;->rg:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getDuration()J
    .locals 4

    .line 125
    iget-wide v0, p0, Lo/κ;->re:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lo/κ;->re:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 189
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 191
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lo/ڹ;

    check-cast v0, [Lo/ڹ;

    invoke-direct {p0, v0}, Lo/κ;->ˋ([Lo/ڹ;)V
    :try_end_0
    .catch Lo/ʡ; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    const/4 v0, 0x1

    return v0

    .line 195
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lo/κ;->ｺ()V
    :try_end_1
    .catch Lo/ʡ; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    const/4 v0, 0x1

    return v0

    .line 199
    :pswitch_2
    :try_start_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lo/κ;->ᕀ(Z)V
    :try_end_2
    .catch Lo/ʡ; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 200
    const/4 v0, 0x1

    return v0

    .line 203
    :pswitch_3
    :try_start_3
    invoke-direct {p0}, Lo/κ;->ﾚ()V
    :try_end_3
    .catch Lo/ʡ; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 204
    const/4 v0, 0x1

    return v0

    .line 207
    :pswitch_4
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lo/κ;->ˌ(J)V
    :try_end_4
    .catch Lo/ʡ; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 208
    const/4 v0, 0x1

    return v0

    .line 211
    :pswitch_5
    :try_start_5
    invoke-direct {p0}, Lo/κ;->ť()V
    :try_end_5
    .catch Lo/ʡ; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 212
    const/4 v0, 0x1

    return v0

    .line 215
    :pswitch_6
    :try_start_6
    invoke-direct {p0}, Lo/κ;->Ÿ()V
    :try_end_6
    .catch Lo/ʡ; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 216
    const/4 v0, 0x1

    return v0

    .line 219
    :pswitch_7
    :try_start_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lo/κ;->ˎ(ILjava/lang/Object;)V
    :try_end_7
    .catch Lo/ʡ; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 220
    const/4 v0, 0x1

    return v0

    .line 223
    :pswitch_8
    :try_start_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v0, v1}, Lo/κ;->ᐨ(IZ)V
    :try_end_8
    .catch Lo/ʡ; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 224
    const/4 v0, 0x1

    return v0

    .line 227
    :goto_2
    const/4 v0, 0x0

    return v0

    .line 229
    :catch_0
    move-exception v3

    .line 230
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Internal track renderer error."

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    iget-object v0, p0, Lo/κ;->qK:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 232
    invoke-direct {p0}, Lo/κ;->ť()V

    .line 233
    const/4 v0, 0x1

    return v0

    .line 234
    :catch_1
    move-exception v3

    .line 235
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Internal runtime error."

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    iget-object v0, p0, Lo/κ;->qK:Landroid/os/Handler;

    new-instance v1, Lo/ʡ;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2}, Lo/ʡ;-><init>(Ljava/lang/Throwable;Z)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 237
    invoke-direct {p0}, Lo/κ;->ť()V

    .line 238
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    .line 172
    :try_start_0
    iget-boolean v0, p0, Lo/κ;->qZ:Z

    if-eqz v0, :cond_0

    .line 173
    monitor-exit p0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    :goto_0
    iget-boolean v0, p0, Lo/κ;->qZ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 178
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v2

    .line 180
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 181
    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lo/κ;->qS:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public seekTo(J)V
    .locals 3

    .line 138
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method

.method public stop()V
    .locals 2

    .line 142
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 143
    return-void
.end method

.method public ˊ(Lo/ʢ$if;ILjava/lang/Object;)V
    .locals 4

    .line 150
    iget v0, p0, Lo/κ;->rb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/κ;->rb:I

    .line 151
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    return-void
.end method

.method public varargs ˊ([Lo/ڹ;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    return-void
.end method

.method public declared-synchronized ˋ(Lo/ʢ$if;ILjava/lang/Object;)V
    .locals 6

    monitor-enter p0

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lo/κ;->qZ:Z

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "ExoPlayerImplInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent message("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") after release. Message ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    monitor-exit p0

    return-void

    .line 160
    :cond_0
    iget v4, p0, Lo/κ;->rb:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lo/κ;->rb:I

    .line 161
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 162
    :goto_0
    iget v0, p0, Lo/κ;->rc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v4, :cond_1

    .line 164
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    goto :goto_0

    .line 165
    :catch_0
    move-exception v5

    .line 166
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    goto :goto_0

    .line 169
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ᐧ(IZ)V
    .locals 3

    .line 146
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void
.end method

.method public ᑊ(Z)V
    .locals 4

    .line 134
    iget-object v0, p0, Lo/κ;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method

.method public ｖ()J
    .locals 4

    .line 116
    iget-wide v0, p0, Lo/κ;->rf:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
