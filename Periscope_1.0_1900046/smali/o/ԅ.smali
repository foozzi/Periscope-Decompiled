.class public Lo/ԅ;
.super Lo/ҫ;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ԅ$ˊ;,
        Lo/ԅ$if;
    }
.end annotation


# instance fields
.field private final se:Lo/ԅ$ˊ;

.field private final sf:Lo/ԅ$if;

.field private final sg:J

.field private final sh:I

.field private final si:I

.field private sj:Landroid/view/Surface;

.field private sk:Z

.field private sl:Z

.field private sm:J

.field private sn:J

.field private so:I

.field private sp:I

.field private sq:I

.field private sr:F

.field private ss:I

.field private st:I

.field private su:F


# direct methods
.method public constructor <init>(Lo/ڒ;IJLandroid/os/Handler;Lo/ԅ$if;I)V
    .locals 11

    .line 212
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-wide v5, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v10}, Lo/ԅ;-><init>(Lo/ڒ;Lo/ᐴ;ZIJLo/ԅ$ˊ;Landroid/os/Handler;Lo/ԅ$if;I)V

    .line 214
    return-void
.end method

.method public constructor <init>(Lo/ڒ;Lo/ᐴ;ZIJLo/ԅ$ˊ;Landroid/os/Handler;Lo/ԅ$if;I)V
    .locals 6

    .line 241
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p8

    move-object v5, p9

    invoke-direct/range {v0 .. v5}, Lo/ҫ;-><init>(Lo/ڒ;Lo/ᐴ;ZLandroid/os/Handler;Lo/ҫ$ˊ;)V

    .line 242
    iput p4, p0, Lo/ԅ;->sh:I

    .line 243
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p5

    iput-wide v0, p0, Lo/ԅ;->sg:J

    .line 244
    iput-object p7, p0, Lo/ԅ;->se:Lo/ԅ$ˊ;

    .line 245
    iput-object p9, p0, Lo/ԅ;->sf:Lo/ԅ$if;

    .line 246
    move/from16 v0, p10

    iput v0, p0, Lo/ԅ;->si:I

    .line 247
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ԅ;->sm:J

    .line 248
    const/4 v0, -0x1

    iput v0, p0, Lo/ԅ;->sp:I

    .line 249
    const/4 v0, -0x1

    iput v0, p0, Lo/ԅ;->sq:I

    .line 250
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lo/ԅ;->sr:F

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Lo/ԅ;->ss:I

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lo/ԅ;->st:I

    .line 253
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lo/ԅ;->su:F

    .line 254
    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 342
    iget-object v0, p0, Lo/ԅ;->sj:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    .line 343
    return-void

    .line 345
    :cond_0
    iput-object p1, p0, Lo/ԅ;->sj:Landroid/view/Surface;

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ԅ;->sk:Z

    .line 347
    invoke-virtual {p0}, Lo/ԅ;->getState()I

    move-result v1

    .line 348
    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    .line 349
    :cond_1
    invoke-virtual {p0}, Lo/ԅ;->ʢ()V

    .line 350
    invoke-virtual {p0}, Lo/ԅ;->ʄ()V

    .line 352
    :cond_2
    return-void
.end method

.method static synthetic ˊ(Lo/ԅ;)Lo/ԅ$if;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/ԅ;->sf:Lo/ԅ$if;

    return-object v0
.end method

.method private ҫ()V
    .locals 5

    .line 514
    iget-object v0, p0, Lo/ԅ;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ԅ;->sf:Lo/ԅ$if;

    if-eqz v0, :cond_0

    iget v0, p0, Lo/ԅ;->ss:I

    iget v1, p0, Lo/ԅ;->sp:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/ԅ;->st:I

    iget v1, p0, Lo/ԅ;->sq:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/ԅ;->su:F

    iget v1, p0, Lo/ԅ;->sr:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 517
    :cond_0
    return-void

    .line 520
    :cond_1
    iget v2, p0, Lo/ԅ;->sp:I

    .line 521
    iget v3, p0, Lo/ԅ;->sq:I

    .line 522
    iget v4, p0, Lo/ԅ;->sr:F

    .line 523
    iget-object v0, p0, Lo/ԅ;->qK:Landroid/os/Handler;

    new-instance v1, Lo/ւ;

    invoke-direct {v1, p0, v2, v3, v4}, Lo/ւ;-><init>(Lo/ԅ;IIF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    iput v2, p0, Lo/ԅ;->ss:I

    .line 531
    iput v3, p0, Lo/ԅ;->st:I

    .line 532
    iput v4, p0, Lo/ԅ;->su:F

    .line 533
    return-void
.end method

.method private ү()V
    .locals 3

    .line 536
    iget-object v0, p0, Lo/ԅ;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ԅ;->sf:Lo/ԅ$if;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/ԅ;->sk:Z

    if-eqz v0, :cond_1

    .line 537
    :cond_0
    return-void

    .line 540
    :cond_1
    iget-object v2, p0, Lo/ԅ;->sj:Landroid/view/Surface;

    .line 541
    iget-object v0, p0, Lo/ԅ;->qK:Landroid/os/Handler;

    new-instance v1, Lo/ח;

    invoke-direct {v1, p0, v2}, Lo/ח;-><init>(Lo/ԅ;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ԅ;->sk:Z

    .line 549
    return-void
.end method

.method private ҷ()V
    .locals 7

    .line 552
    iget-object v0, p0, Lo/ԅ;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ԅ;->sf:Lo/ԅ$if;

    if-eqz v0, :cond_0

    iget v0, p0, Lo/ԅ;->so:I

    if-nez v0, :cond_1

    .line 553
    :cond_0
    return-void

    .line 555
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 557
    iget v4, p0, Lo/ԅ;->so:I

    .line 558
    iget-wide v0, p0, Lo/ԅ;->sn:J

    sub-long v5, v2, v0

    .line 559
    iget-object v0, p0, Lo/ԅ;->qK:Landroid/os/Handler;

    new-instance v1, Lo/צ;

    invoke-direct {v1, p0, v4, v5, v6}, Lo/צ;-><init>(Lo/ԅ;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 566
    const/4 v0, 0x0

    iput v0, p0, Lo/ԅ;->so:I

    .line 567
    iput-wide v2, p0, Lo/ԅ;->sn:J

    .line 568
    return-void
.end method


# virtual methods
.method protected onStopped()V
    .locals 2

    .line 309
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ԅ;->sm:J

    .line 310
    invoke-direct {p0}, Lo/ԅ;->ҷ()V

    .line 311
    invoke-super {p0}, Lo/ҫ;->onStopped()V

    .line 312
    return-void
.end method

.method protected seekTo(J)V
    .locals 2

    .line 275
    invoke-super {p0, p1, p2}, Lo/ҫ;->seekTo(J)V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ԅ;->sl:Z

    .line 277
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ԅ;->sm:J

    .line 278
    return-void
.end method

.method protected ɛ()V
    .locals 2

    .line 302
    invoke-super {p0}, Lo/ҫ;->ɛ()V

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lo/ԅ;->so:I

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ԅ;->sn:J

    .line 305
    return-void
.end method

.method public ɜ()V
    .locals 1

    .line 316
    const/4 v0, -0x1

    iput v0, p0, Lo/ԅ;->sp:I

    .line 317
    const/4 v0, -0x1

    iput v0, p0, Lo/ԅ;->sq:I

    .line 318
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lo/ԅ;->sr:F

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Lo/ԅ;->ss:I

    .line 320
    const/4 v0, -0x1

    iput v0, p0, Lo/ԅ;->st:I

    .line 321
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lo/ԅ;->su:F

    .line 322
    iget-object v0, p0, Lo/ԅ;->se:Lo/ԅ$ˊ;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lo/ԅ;->se:Lo/ԅ$ˊ;

    invoke-interface {v0}, Lo/ԅ$ˊ;->disable()V

    .line 325
    :cond_0
    invoke-super {p0}, Lo/ҫ;->ɜ()V

    .line 326
    return-void
.end method

.method protected ʈ()Z
    .locals 1

    .line 356
    invoke-super {p0}, Lo/ҫ;->ʈ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ԅ;->sj:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ԅ;->sj:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected ˊ(JZ)V
    .locals 4

    .line 263
    invoke-super {p0, p1, p2, p3}, Lo/ҫ;->ˊ(JZ)V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ԅ;->sl:Z

    .line 265
    if-eqz p3, :cond_0

    iget-wide v0, p0, Lo/ԅ;->sg:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lo/ԅ;->sg:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ԅ;->sm:J

    .line 268
    :cond_0
    iget-object v0, p0, Lo/ԅ;->se:Lo/ԅ$ˊ;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lo/ԅ;->se:Lo/ԅ$ˊ;

    invoke-interface {v0}, Lo/ԅ$ˊ;->enable()V

    .line 271
    :cond_1
    return-void
.end method

.method protected ˊ(Landroid/media/MediaCodec;I)V
    .locals 3

    .line 475
    const-string v0, "skipVideoBuffer"

    invoke-static {v0}, Lo/ท;->beginSection(Ljava/lang/String;)V

    .line 476
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 477
    invoke-static {}, Lo/ท;->endSection()V

    .line 478
    iget-object v0, p0, Lo/ԅ;->rp:Lo/ɛ;

    iget v1, v0, Lo/ɛ;->qF:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lo/ɛ;->qF:I

    .line 479
    return-void
.end method

.method protected ˊ(Landroid/media/MediaCodec;IJ)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 504
    invoke-direct {p0}, Lo/ԅ;->ҫ()V

    .line 505
    const-string v0, "releaseOutputBufferTimed"

    invoke-static {v0}, Lo/ท;->beginSection(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 507
    invoke-static {}, Lo/ท;->endSection()V

    .line 508
    iget-object v0, p0, Lo/ԅ;->rp:Lo/ɛ;

    iget v1, v0, Lo/ɛ;->qE:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lo/ɛ;->qE:I

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ԅ;->sl:Z

    .line 510
    invoke-direct {p0}, Lo/ԅ;->ү()V

    .line 511
    return-void
.end method

.method protected ˊ(Landroid/media/MediaCodec;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 2

    .line 363
    iget-object v0, p0, Lo/ԅ;->sj:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 364
    iget v0, p0, Lo/ԅ;->sh:I

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 365
    return-void
.end method

.method protected ˊ(Lo/ب;Landroid/media/MediaFormat;)V
    .locals 3

    .line 386
    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-left"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-top"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 389
    :goto_0
    if-eqz v2, :cond_1

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "crop-left"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lo/ԅ;->sp:I

    .line 392
    if-eqz v2, :cond_2

    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "crop-top"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lo/ԅ;->sq:I

    .line 395
    return-void
.end method

.method protected ˊ(Lo/م;)V
    .locals 2

    .line 369
    invoke-super {p0, p1}, Lo/ҫ;->ˊ(Lo/م;)V

    .line 372
    iget-object v0, p1, Lo/م;->ry:Lo/ب;

    iget v0, v0, Lo/ب;->sD:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lo/م;->ry:Lo/ب;

    iget v0, v0, Lo/ب;->sD:F

    :goto_0
    iput v0, p0, Lo/ԅ;->sr:F

    .line 374
    return-void
.end method

.method protected ˊ(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .locals 15

    .line 408
    if-eqz p9, :cond_0

    .line 409
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lo/ԅ;->ˊ(Landroid/media/MediaCodec;I)V

    .line 410
    const/4 v0, 0x1

    return v0

    .line 414
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sub-long v4, v0, p3

    .line 415
    move-object/from16 v0, p7

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v0, v0, p1

    sub-long v6, v0, v4

    .line 418
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 419
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v6

    add-long v10, v8, v0

    .line 423
    iget-object v0, p0, Lo/ԅ;->se:Lo/ԅ$ˊ;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lo/ԅ;->se:Lo/ԅ$ˊ;

    move-object/from16 v1, p7

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {v0, v1, v2, v10, v11}, Lo/ԅ$ˊ;->ˎ(JJ)J

    move-result-wide v12

    .line 426
    sub-long v0, v12, v8

    const-wide/16 v2, 0x3e8

    div-long v6, v0, v2

    goto :goto_0

    .line 428
    :cond_1
    move-wide v12, v10

    .line 431
    :goto_0
    const-wide/16 v0, -0x7530

    cmp-long v0, v6, v0

    if-gez v0, :cond_2

    .line 433
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lo/ԅ;->ˋ(Landroid/media/MediaCodec;I)V

    .line 434
    const/4 v0, 0x1

    return v0

    .line 437
    :cond_2
    iget-boolean v0, p0, Lo/ԅ;->sl:Z

    if-nez v0, :cond_3

    .line 438
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lo/ԅ;->ˎ(Landroid/media/MediaCodec;I)V

    .line 439
    const/4 v0, 0x1

    return v0

    .line 442
    :cond_3
    invoke-virtual {p0}, Lo/ԅ;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 443
    const/4 v0, 0x0

    return v0

    .line 446
    :cond_4
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 448
    const-wide/32 v0, 0xc350

    cmp-long v0, v6, v0

    if-gez v0, :cond_7

    .line 449
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1, v12, v13}, Lo/ԅ;->ˊ(Landroid/media/MediaCodec;IJ)V

    .line 450
    const/4 v0, 0x1

    return v0

    .line 454
    :cond_5
    const-wide/16 v0, 0x7530

    cmp-long v0, v6, v0

    if-gez v0, :cond_7

    .line 455
    const-wide/16 v0, 0x2af8

    cmp-long v0, v6, v0

    if-lez v0, :cond_6

    .line 460
    const-wide/16 v0, 0x2710

    sub-long v0, v6, v0

    const-wide/16 v2, 0x3e8

    :try_start_0
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    goto :goto_1

    .line 461
    :catch_0
    move-exception v14

    .line 462
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 465
    :cond_6
    :goto_1
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lo/ԅ;->ˎ(Landroid/media/MediaCodec;I)V

    .line 466
    const/4 v0, 0x1

    return v0

    .line 471
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method protected ˊ(Landroid/media/MediaCodec;ZLo/ب;Lo/ب;)Z
    .locals 2

    .line 400
    iget-object v0, p4, Lo/ب;->mimeType:Ljava/lang/String;

    iget-object v1, p3, Lo/ب;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p3, Lo/ب;->width:I

    iget v1, p4, Lo/ب;->width:I

    if-ne v0, v1, :cond_1

    iget v0, p3, Lo/ب;->height:I

    iget v1, p4, Lo/ب;->height:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˋ(ILjava/lang/Object;)V
    .locals 1

    .line 330
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 331
    move-object v0, p2

    check-cast v0, Landroid/view/Surface;

    invoke-direct {p0, v0}, Lo/ԅ;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 333
    :cond_0
    invoke-super {p0, p1, p2}, Lo/ҫ;->ˋ(ILjava/lang/Object;)V

    .line 335
    :goto_0
    return-void
.end method

.method protected ˋ(Landroid/media/MediaCodec;I)V
    .locals 3

    .line 482
    const-string v0, "dropVideoBuffer"

    invoke-static {v0}, Lo/ท;->beginSection(Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 484
    invoke-static {}, Lo/ท;->endSection()V

    .line 485
    iget-object v0, p0, Lo/ԅ;->rp:Lo/ɛ;

    iget v1, v0, Lo/ɛ;->qG:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lo/ɛ;->qG:I

    .line 486
    iget v0, p0, Lo/ԅ;->so:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ԅ;->so:I

    .line 487
    iget v0, p0, Lo/ԅ;->so:I

    iget v1, p0, Lo/ԅ;->si:I

    if-ne v0, v1, :cond_0

    .line 488
    invoke-direct {p0}, Lo/ԅ;->ҷ()V

    .line 490
    :cond_0
    return-void
.end method

.method protected ˎ(Landroid/media/MediaCodec;I)V
    .locals 3

    .line 493
    invoke-direct {p0}, Lo/ԅ;->ҫ()V

    .line 494
    const-string v0, "renderVideoBufferImmediate"

    invoke-static {v0}, Lo/ท;->beginSection(Ljava/lang/String;)V

    .line 495
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 496
    invoke-static {}, Lo/ท;->endSection()V

    .line 497
    iget-object v0, p0, Lo/ԅ;->rp:Lo/ɛ;

    iget v1, v0, Lo/ɛ;->qE:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lo/ɛ;->qE:I

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ԅ;->sl:Z

    .line 499
    invoke-direct {p0}, Lo/ԅ;->ү()V

    .line 500
    return-void
.end method

.method protected ᴵ(Ljava/lang/String;)Z
    .locals 1

    .line 258
    invoke-static {p1}, Lo/দ;->ˇ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lo/ҫ;->ᴵ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected ﺓ()Z
    .locals 4

    .line 282
    invoke-super {p0}, Lo/ҫ;->ﺓ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/ԅ;->sl:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/ԅ;->ʡ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/ԅ;->ν()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 285
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ԅ;->sm:J

    .line 286
    const/4 v0, 0x1

    return v0

    .line 287
    :cond_1
    iget-wide v0, p0, Lo/ԅ;->sm:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 289
    const/4 v0, 0x0

    return v0

    .line 290
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lo/ԅ;->sm:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 292
    const/4 v0, 0x1

    return v0

    .line 295
    :cond_3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ԅ;->sm:J

    .line 296
    const/4 v0, 0x0

    return v0
.end method
