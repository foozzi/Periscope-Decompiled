.class public abstract Lorg/spongycastle/math/raw/Nat224;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static qv()[I
    .locals 1

    .line 220
    const/4 v0, 0x7

    new-array v0, v0, [I

    return-object v0
.end method

.method public static qw()[I
    .locals 1

    .line 225
    const/16 v0, 0xe

    new-array v0, v0, [I

    return-object v0
.end method

.method public static ʹ([I)V
    .locals 2

    .line 1174
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 1175
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, p0, v1

    .line 1176
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v0, p0, v1

    .line 1177
    const/4 v0, 0x0

    const/4 v1, 0x3

    aput v0, p0, v1

    .line 1178
    const/4 v0, 0x0

    const/4 v1, 0x4

    aput v0, p0, v1

    .line 1179
    const/4 v0, 0x0

    const/4 v1, 0x5

    aput v0, p0, v1

    .line 1180
    const/4 v0, 0x0

    const/4 v1, 0x6

    aput v0, p0, v1

    .line 1181
    return-void
.end method

.method public static ʻ([II)I
    .locals 4

    .line 273
    if-nez p1, :cond_0

    .line 275
    const/4 v0, 0x0

    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 277
    :cond_0
    shr-int/lit8 v2, p1, 0x5

    .line 278
    if-ltz v2, :cond_1

    const/4 v0, 0x7

    if-lt v2, v0, :cond_2

    .line 280
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_2
    and-int/lit8 v3, p1, 0x1f

    .line 283
    aget v0, p0, v2

    ushr-int/2addr v0, v3

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static ʾ([I[I[I)I
    .locals 8

    .line 67
    const-wide/16 v6, 0x0

    .line 68
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x0

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 69
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 70
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 71
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 72
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 73
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 74
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 75
    long-to-int v0, v6

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 76
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 77
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x3

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 78
    long-to-int v0, v6

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 79
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 80
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 81
    long-to-int v0, v6

    const/4 v1, 0x4

    aput v0, p2, v1

    .line 82
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 83
    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 84
    long-to-int v0, v6

    const/4 v1, 0x5

    aput v0, p2, v1

    .line 85
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 86
    const/4 v0, 0x6

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x6

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 87
    long-to-int v0, v6

    const/4 v1, 0x6

    aput v0, p2, v1

    .line 88
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 89
    long-to-int v0, v6

    return v0
.end method

.method public static ʿ([I[I[I)V
    .locals 25

    .line 344
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 345
    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 346
    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 347
    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 348
    const/4 v0, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 349
    const/4 v0, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 350
    const/4 v0, 0x6

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 353
    const-wide/16 v20, 0x0

    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v22, v0, v2

    .line 354
    mul-long v0, v22, v6

    add-long v20, v20, v0

    .line 355
    move-wide/from16 v0, v20

    long-to-int v0, v0

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 356
    const/16 v0, 0x20

    ushr-long v20, v20, v0

    .line 357
    mul-long v0, v22, v8

    add-long v20, v20, v0

    .line 358
    move-wide/from16 v0, v20

    long-to-int v0, v0

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 359
    const/16 v0, 0x20

    ushr-long v20, v20, v0

    .line 360
    mul-long v0, v22, v10

    add-long v20, v20, v0

    .line 361
    move-wide/from16 v0, v20

    long-to-int v0, v0

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 362
    const/16 v0, 0x20

    ushr-long v20, v20, v0

    .line 363
    mul-long v0, v22, v12

    add-long v20, v20, v0

    .line 364
    move-wide/from16 v0, v20

    long-to-int v0, v0

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 365
    const/16 v0, 0x20

    ushr-long v20, v20, v0

    .line 366
    mul-long v0, v22, v14

    add-long v20, v20, v0

    .line 367
    move-wide/from16 v0, v20

    long-to-int v0, v0

    const/4 v1, 0x4

    aput v0, p2, v1

    .line 368
    const/16 v0, 0x20

    ushr-long v20, v20, v0

    .line 369
    mul-long v0, v22, v16

    add-long v20, v20, v0

    .line 370
    move-wide/from16 v0, v20

    long-to-int v0, v0

    const/4 v1, 0x5

    aput v0, p2, v1

    .line 371
    const/16 v0, 0x20

    ushr-long v20, v20, v0

    .line 372
    mul-long v0, v22, v18

    add-long v20, v20, v0

    .line 373
    move-wide/from16 v0, v20

    long-to-int v0, v0

    const/4 v1, 0x6

    aput v0, p2, v1

    .line 374
    const/16 v0, 0x20

    ushr-long v20, v20, v0

    .line 375
    move-wide/from16 v0, v20

    long-to-int v0, v0

    const/4 v1, 0x7

    aput v0, p2, v1

    .line 378
    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 380
    const-wide/16 v21, 0x0

    aget v0, p0, v20

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v23, v0, v2

    .line 381
    mul-long v0, v23, v6

    add-int/lit8 v2, v20, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 382
    add-int/lit8 v0, v20, 0x0

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 383
    const/16 v0, 0x20

    ushr-long v21, v21, v0

    .line 384
    mul-long v0, v23, v8

    add-int/lit8 v2, v20, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 385
    add-int/lit8 v0, v20, 0x1

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 386
    const/16 v0, 0x20

    ushr-long v21, v21, v0

    .line 387
    mul-long v0, v23, v10

    add-int/lit8 v2, v20, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 388
    add-int/lit8 v0, v20, 0x2

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 389
    const/16 v0, 0x20

    ushr-long v21, v21, v0

    .line 390
    mul-long v0, v23, v12

    add-int/lit8 v2, v20, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 391
    add-int/lit8 v0, v20, 0x3

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 392
    const/16 v0, 0x20

    ushr-long v21, v21, v0

    .line 393
    mul-long v0, v23, v14

    add-int/lit8 v2, v20, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 394
    add-int/lit8 v0, v20, 0x4

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 395
    const/16 v0, 0x20

    ushr-long v21, v21, v0

    .line 396
    mul-long v0, v23, v16

    add-int/lit8 v2, v20, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 397
    add-int/lit8 v0, v20, 0x5

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 398
    const/16 v0, 0x20

    ushr-long v21, v21, v0

    .line 399
    mul-long v0, v23, v18

    add-int/lit8 v2, v20, 0x6

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 400
    add-int/lit8 v0, v20, 0x6

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 401
    const/16 v0, 0x20

    ushr-long v21, v21, v0

    .line 402
    add-int/lit8 v0, v20, 0x7

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 378
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 404
    :cond_0
    return-void
.end method

.method public static ˈ([I[I[I)I
    .locals 27

    .line 473
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 474
    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 475
    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 476
    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 477
    const/4 v0, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 478
    const/4 v0, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 479
    const/4 v0, 0x6

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 481
    const-wide/16 v20, 0x0

    .line 482
    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 484
    const-wide/16 v23, 0x0

    aget v0, p0, v22

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v25, v0, v2

    .line 485
    mul-long v0, v25, v6

    add-int/lit8 v2, v22, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 486
    add-int/lit8 v0, v22, 0x0

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 487
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 488
    mul-long v0, v25, v8

    add-int/lit8 v2, v22, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 489
    add-int/lit8 v0, v22, 0x1

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 490
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 491
    mul-long v0, v25, v10

    add-int/lit8 v2, v22, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 492
    add-int/lit8 v0, v22, 0x2

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 493
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 494
    mul-long v0, v25, v12

    add-int/lit8 v2, v22, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 495
    add-int/lit8 v0, v22, 0x3

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 496
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 497
    mul-long v0, v25, v14

    add-int/lit8 v2, v22, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 498
    add-int/lit8 v0, v22, 0x4

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 499
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 500
    mul-long v0, v25, v16

    add-int/lit8 v2, v22, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 501
    add-int/lit8 v0, v22, 0x5

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 502
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 503
    mul-long v0, v25, v18

    add-int/lit8 v2, v22, 0x6

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 504
    add-int/lit8 v0, v22, 0x6

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 505
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 506
    add-int/lit8 v0, v22, 0x7

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v20

    add-long v23, v23, v0

    .line 507
    add-int/lit8 v0, v22, 0x7

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 508
    const/16 v0, 0x20

    ushr-long v20, v23, v0

    .line 482
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 510
    :cond_0
    move-wide/from16 v0, v20

    long-to-int v0, v0

    return v0
.end method

.method public static ˈ([I[I)Z
    .locals 3

    .line 244
    const/4 v2, 0x6

    :goto_0
    if-ltz v2, :cond_1

    .line 246
    aget v0, p0, v2

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 248
    const/4 v0, 0x0

    return v0

    .line 244
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 251
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ˉ([I[I[I)I
    .locals 8

    .line 1025
    const-wide/16 v6, 0x0

    .line 1026
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x0

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1027
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 1028
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1029
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1030
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 1031
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1032
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1033
    long-to-int v0, v6

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 1034
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1035
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x3

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1036
    long-to-int v0, v6

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 1037
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1038
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1039
    long-to-int v0, v6

    const/4 v1, 0x4

    aput v0, p2, v1

    .line 1040
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1041
    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1042
    long-to-int v0, v6

    const/4 v1, 0x5

    aput v0, p2, v1

    .line 1043
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1044
    const/4 v0, 0x6

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1045
    long-to-int v0, v6

    const/4 v1, 0x6

    aput v0, p2, v1

    .line 1046
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1047
    long-to-int v0, v6

    return v0
.end method

.method public static ˉ([I[I)Z
    .locals 5

    .line 288
    const/4 v2, 0x6

    :goto_0
    if-ltz v2, :cond_2

    .line 290
    aget v0, p0, v2

    const/high16 v1, -0x80000000

    xor-int v3, v0, v1

    .line 291
    aget v0, p1, v2

    const/high16 v1, -0x80000000

    xor-int v4, v0, v1

    .line 292
    if-ge v3, v4, :cond_0

    .line 293
    const/4 v0, 0x0

    return v0

    .line 294
    :cond_0
    if-le v3, v4, :cond_1

    .line 295
    const/4 v0, 0x1

    return v0

    .line 288
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 297
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static ˊ(IJ[II)I
    .locals 14

    .line 679
    const-wide/16 v6, 0x0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 680
    const-wide v0, 0xffffffffL

    and-long v10, p1, v0

    .line 681
    mul-long v0, v8, v10

    add-int/lit8 v2, p4, 0x0

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 682
    add-int/lit8 v0, p4, 0x0

    long-to-int v1, v6

    aput v1, p3, v0

    .line 683
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 684
    const/16 v0, 0x20

    ushr-long v12, p1, v0

    .line 685
    mul-long v0, v8, v12

    add-long/2addr v0, v10

    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 686
    add-int/lit8 v0, p4, 0x1

    long-to-int v1, v6

    aput v1, p3, v0

    .line 687
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 688
    add-int/lit8 v0, p4, 0x2

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v12

    add-long/2addr v6, v0

    .line 689
    add-int/lit8 v0, p4, 0x2

    long-to-int v1, v6

    aput v1, p3, v0

    .line 690
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 691
    add-int/lit8 v0, p4, 0x3

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 692
    add-int/lit8 v0, p4, 0x3

    long-to-int v1, v6

    aput v1, p3, v0

    .line 693
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 694
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    move-object/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[III)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static ˊ(I[II[II[II)J
    .locals 24

    .line 560
    const-wide/16 v6, 0x0

    move/from16 v0, p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 561
    add-int/lit8 v0, p2, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 562
    mul-long v0, v8, v10

    add-int/lit8 v2, p4, 0x0

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 563
    add-int/lit8 v0, p6, 0x0

    long-to-int v1, v6

    aput v1, p5, v0

    .line 564
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 565
    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 566
    mul-long v0, v8, v12

    add-long/2addr v0, v10

    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 567
    add-int/lit8 v0, p6, 0x1

    long-to-int v1, v6

    aput v1, p5, v0

    .line 568
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 569
    add-int/lit8 v0, p2, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 570
    mul-long v0, v8, v14

    add-long/2addr v0, v12

    add-int/lit8 v2, p4, 0x2

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 571
    add-int/lit8 v0, p6, 0x2

    long-to-int v1, v6

    aput v1, p5, v0

    .line 572
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 573
    add-int/lit8 v0, p2, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 574
    mul-long v0, v8, v16

    add-long/2addr v0, v14

    add-int/lit8 v2, p4, 0x3

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 575
    add-int/lit8 v0, p6, 0x3

    long-to-int v1, v6

    aput v1, p5, v0

    .line 576
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 577
    add-int/lit8 v0, p2, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 578
    mul-long v0, v8, v18

    add-long v0, v0, v16

    add-int/lit8 v2, p4, 0x4

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 579
    add-int/lit8 v0, p6, 0x4

    long-to-int v1, v6

    aput v1, p5, v0

    .line 580
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 581
    add-int/lit8 v0, p2, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v20, v0, v2

    .line 582
    mul-long v0, v8, v20

    add-long v0, v0, v18

    add-int/lit8 v2, p4, 0x5

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 583
    add-int/lit8 v0, p6, 0x5

    long-to-int v1, v6

    aput v1, p5, v0

    .line 584
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 585
    add-int/lit8 v0, p2, 0x6

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v22, v0, v2

    .line 586
    mul-long v0, v8, v22

    add-long v0, v0, v20

    add-int/lit8 v2, p4, 0x6

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 587
    add-int/lit8 v0, p6, 0x6

    long-to-int v1, v6

    aput v1, p5, v0

    .line 588
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 589
    add-long v6, v6, v22

    .line 590
    return-wide v6
.end method

.method public static ˋ(II[II)I
    .locals 12

    .line 702
    const-wide/16 v6, 0x0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 703
    mul-long v0, v10, v8

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 704
    add-int/lit8 v0, p3, 0x0

    long-to-int v1, v6

    aput v1, p2, v0

    .line 705
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 706
    add-int/lit8 v0, p3, 0x1

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v10

    add-long/2addr v6, v0

    .line 707
    add-int/lit8 v0, p3, 0x1

    long-to-int v1, v6

    aput v1, p2, v0

    .line 708
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 709
    add-int/lit8 v0, p3, 0x2

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 710
    add-int/lit8 v0, p3, 0x2

    long-to-int v1, v6

    aput v1, p2, v0

    .line 711
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 712
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x3

    invoke-static {v0, p2, p3, v1}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[III)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static ˌ([I[I)I
    .locals 8

    .line 1106
    const-wide/16 v6, 0x0

    .line 1107
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1108
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 1109
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1110
    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1111
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 1112
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1113
    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1114
    long-to-int v0, v6

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 1115
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1116
    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1117
    long-to-int v0, v6

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 1118
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1119
    const/4 v0, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1120
    long-to-int v0, v6

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 1121
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1122
    const/4 v0, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1123
    long-to-int v0, v6

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 1124
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1125
    const/4 v0, 0x6

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1126
    long-to-int v0, v6

    const/4 v1, 0x6

    aput v0, p1, v1

    .line 1127
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1128
    long-to-int v0, v6

    return v0
.end method

.method public static ˍ([I[I)V
    .locals 2

    .line 209
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 210
    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 211
    const/4 v0, 0x2

    aget v0, p0, v0

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 212
    const/4 v0, 0x3

    aget v0, p0, v0

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 213
    const/4 v0, 0x4

    aget v0, p0, v0

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 214
    const/4 v0, 0x5

    aget v0, p0, v0

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 215
    const/4 v0, 0x6

    aget v0, p0, v0

    const/4 v1, 0x6

    aput v0, p1, v1

    .line 216
    return-void
.end method

.method public static ᐨ([I)Z
    .locals 3

    .line 316
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 318
    const/4 v0, 0x0

    return v0

    .line 320
    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v0, 0x7

    if-ge v2, v0, :cond_2

    .line 322
    aget v0, p0, v2

    if-eqz v0, :cond_1

    .line 324
    const/4 v0, 0x0

    return v0

    .line 320
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static ι([I[I[I)I
    .locals 8

    .line 13
    const-wide/16 v6, 0x0

    .line 14
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x0

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 15
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 16
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 17
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 18
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 19
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 20
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 21
    long-to-int v0, v6

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 22
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 23
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x3

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 24
    long-to-int v0, v6

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 25
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 26
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 27
    long-to-int v0, v6

    const/4 v1, 0x4

    aput v0, p2, v1

    .line 28
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 29
    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 30
    long-to-int v0, v6

    const/4 v1, 0x5

    aput v0, p2, v1

    .line 31
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 32
    const/4 v0, 0x6

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 33
    long-to-int v0, v6

    const/4 v1, 0x6

    aput v0, p2, v1

    .line 34
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 35
    long-to-int v0, v6

    return v0
.end method

.method public static ι([I[I)V
    .locals 44

    .line 747
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    .line 750
    const/4 v8, 0x0

    .line 752
    const/4 v10, 0x6

    const/16 v11, 0xe

    .line 755
    :cond_0
    move v0, v10

    add-int/lit8 v10, v10, -0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 756
    mul-long v14, v12, v12

    .line 757
    add-int/lit8 v11, v11, -0x1

    shl-int/lit8 v0, v8, 0x1f

    const/16 v1, 0x21

    ushr-long v1, v14, v1

    long-to-int v1, v1

    or-int/2addr v0, v1

    aput v0, p1, v11

    .line 758
    add-int/lit8 v11, v11, -0x1

    const/4 v0, 0x1

    ushr-long v0, v14, v0

    long-to-int v0, v0

    aput v0, p1, v11

    .line 759
    long-to-int v8, v14

    .line 761
    if-gtz v10, :cond_0

    .line 764
    mul-long v12, v4, v4

    .line 765
    shl-int/lit8 v0, v8, 0x1f

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x21

    ushr-long v2, v12, v2

    or-long v6, v0, v2

    .line 766
    long-to-int v0, v12

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 767
    const/16 v0, 0x20

    ushr-long v0, v12, v0

    long-to-int v0, v0

    and-int/lit8 v8, v0, 0x1

    .line 771
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 772
    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 775
    mul-long v0, v10, v4

    add-long/2addr v6, v0

    .line 776
    long-to-int v9, v6

    .line 777
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 778
    ushr-int/lit8 v8, v9, 0x1f

    .line 779
    const/16 v0, 0x20

    ushr-long v0, v6, v0

    add-long/2addr v12, v0

    .line 782
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 783
    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 784
    const/4 v0, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 786
    mul-long v0, v14, v4

    add-long/2addr v12, v0

    .line 787
    long-to-int v9, v12

    .line 788
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 789
    ushr-int/lit8 v8, v9, 0x1f

    .line 790
    const/16 v0, 0x20

    ushr-long v0, v12, v0

    mul-long v2, v14, v10

    add-long/2addr v0, v2

    add-long v16, v16, v0

    .line 791
    const/16 v0, 0x20

    ushr-long v0, v16, v0

    add-long v18, v18, v0

    .line 792
    const-wide v0, 0xffffffffL

    and-long v16, v16, v0

    .line 795
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v20, v0, v2

    .line 796
    const/4 v0, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v22, v0, v2

    .line 797
    const/4 v0, 0x6

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v24, v0, v2

    .line 799
    mul-long v0, v20, v4

    add-long v16, v16, v0

    .line 800
    move-wide/from16 v0, v16

    long-to-int v9, v0

    .line 801
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 802
    ushr-int/lit8 v8, v9, 0x1f

    .line 803
    const/16 v0, 0x20

    ushr-long v0, v16, v0

    mul-long v2, v20, v10

    add-long/2addr v0, v2

    add-long v18, v18, v0

    .line 804
    const/16 v0, 0x20

    ushr-long v0, v18, v0

    mul-long v2, v20, v14

    add-long/2addr v0, v2

    add-long v22, v22, v0

    .line 805
    const-wide v0, 0xffffffffL

    and-long v18, v18, v0

    .line 806
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    add-long v24, v24, v0

    .line 807
    const-wide v0, 0xffffffffL

    and-long v22, v22, v0

    .line 810
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v26, v0, v2

    .line 811
    const/4 v0, 0x7

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v28, v0, v2

    .line 812
    const/16 v0, 0x8

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v30, v0, v2

    .line 814
    mul-long v0, v26, v4

    add-long v18, v18, v0

    .line 815
    move-wide/from16 v0, v18

    long-to-int v9, v0

    .line 816
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 817
    ushr-int/lit8 v8, v9, 0x1f

    .line 818
    const/16 v0, 0x20

    ushr-long v0, v18, v0

    mul-long v2, v26, v10

    add-long/2addr v0, v2

    add-long v22, v22, v0

    .line 819
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    mul-long v2, v26, v14

    add-long/2addr v0, v2

    add-long v24, v24, v0

    .line 820
    const-wide v0, 0xffffffffL

    and-long v22, v22, v0

    .line 821
    const/16 v0, 0x20

    ushr-long v0, v24, v0

    mul-long v2, v26, v20

    add-long/2addr v0, v2

    add-long v28, v28, v0

    .line 822
    const-wide v0, 0xffffffffL

    and-long v24, v24, v0

    .line 823
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    add-long v30, v30, v0

    .line 824
    const-wide v0, 0xffffffffL

    and-long v28, v28, v0

    .line 827
    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v32, v0, v2

    .line 828
    const/16 v0, 0x9

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v34, v0, v2

    .line 829
    const/16 v0, 0xa

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v36, v0, v2

    .line 831
    mul-long v0, v32, v4

    add-long v22, v22, v0

    .line 832
    move-wide/from16 v0, v22

    long-to-int v9, v0

    .line 833
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 834
    ushr-int/lit8 v8, v9, 0x1f

    .line 835
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    mul-long v2, v32, v10

    add-long/2addr v0, v2

    add-long v24, v24, v0

    .line 836
    const/16 v0, 0x20

    ushr-long v0, v24, v0

    mul-long v2, v32, v14

    add-long/2addr v0, v2

    add-long v28, v28, v0

    .line 837
    const-wide v0, 0xffffffffL

    and-long v24, v24, v0

    .line 838
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    mul-long v2, v32, v20

    add-long/2addr v0, v2

    add-long v30, v30, v0

    .line 839
    const-wide v0, 0xffffffffL

    and-long v28, v28, v0

    .line 840
    const/16 v0, 0x20

    ushr-long v0, v30, v0

    mul-long v2, v32, v26

    add-long/2addr v0, v2

    add-long v34, v34, v0

    .line 841
    const-wide v0, 0xffffffffL

    and-long v30, v30, v0

    .line 842
    const/16 v0, 0x20

    ushr-long v0, v34, v0

    add-long v36, v36, v0

    .line 843
    const-wide v0, 0xffffffffL

    and-long v34, v34, v0

    .line 846
    const/4 v0, 0x6

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v38, v0, v2

    .line 847
    const/16 v0, 0xb

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v40, v0, v2

    .line 848
    const/16 v0, 0xc

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v42, v0, v2

    .line 850
    mul-long v0, v38, v4

    add-long v24, v24, v0

    .line 851
    move-wide/from16 v0, v24

    long-to-int v9, v0

    .line 852
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x6

    aput v0, p1, v1

    .line 853
    ushr-int/lit8 v8, v9, 0x1f

    .line 854
    const/16 v0, 0x20

    ushr-long v0, v24, v0

    mul-long v2, v38, v10

    add-long/2addr v0, v2

    add-long v28, v28, v0

    .line 855
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    mul-long v2, v38, v14

    add-long/2addr v0, v2

    add-long v30, v30, v0

    .line 856
    const/16 v0, 0x20

    ushr-long v0, v30, v0

    mul-long v2, v38, v20

    add-long/2addr v0, v2

    add-long v34, v34, v0

    .line 857
    const/16 v0, 0x20

    ushr-long v0, v34, v0

    mul-long v2, v38, v26

    add-long/2addr v0, v2

    add-long v36, v36, v0

    .line 858
    const/16 v0, 0x20

    ushr-long v0, v36, v0

    mul-long v2, v38, v32

    add-long/2addr v0, v2

    add-long v40, v40, v0

    .line 859
    const/16 v0, 0x20

    ushr-long v0, v40, v0

    add-long v42, v42, v0

    .line 862
    move-wide/from16 v0, v28

    long-to-int v9, v0

    .line 863
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x7

    aput v0, p1, v1

    .line 864
    ushr-int/lit8 v8, v9, 0x1f

    .line 865
    move-wide/from16 v0, v30

    long-to-int v9, v0

    .line 866
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0x8

    aput v0, p1, v1

    .line 867
    ushr-int/lit8 v8, v9, 0x1f

    .line 868
    move-wide/from16 v0, v34

    long-to-int v9, v0

    .line 869
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0x9

    aput v0, p1, v1

    .line 870
    ushr-int/lit8 v8, v9, 0x1f

    .line 871
    move-wide/from16 v0, v36

    long-to-int v9, v0

    .line 872
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0xa

    aput v0, p1, v1

    .line 873
    ushr-int/lit8 v8, v9, 0x1f

    .line 874
    move-wide/from16 v0, v40

    long-to-int v9, v0

    .line 875
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0xb

    aput v0, p1, v1

    .line 876
    ushr-int/lit8 v8, v9, 0x1f

    .line 877
    move-wide/from16 v0, v42

    long-to-int v9, v0

    .line 878
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0xc

    aput v0, p1, v1

    .line 879
    ushr-int/lit8 v8, v9, 0x1f

    .line 880
    const/16 v0, 0xd

    aget v0, p1, v0

    const/16 v1, 0x20

    shr-long v1, v42, v1

    long-to-int v1, v1

    add-int v9, v0, v1

    .line 881
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0xd

    aput v0, p1, v1

    .line 882
    return-void
.end method

.method public static ﹳ([I)Z
    .locals 2

    .line 332
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x7

    if-ge v1, v0, :cond_1

    .line 334
    aget v0, p0, v1

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x0

    return v0

    .line 332
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ﹳ(Ljava/math/BigInteger;)[I
    .locals 4

    .line 256
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xe0

    if-le v0, v1, :cond_1

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 261
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 262
    const/4 v3, 0x0

    .line 263
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    aput v1, v2, v0

    .line 266
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 268
    :cond_2
    return-object v2
.end method

.method public static ﾞ([I)Ljava/math/BigInteger;
    .locals 5

    .line 1160
    const/16 v0, 0x1c

    new-array v2, v0, [B

    .line 1161
    const/4 v3, 0x0

    :goto_0
    const/4 v0, 0x7

    if-ge v3, v0, :cond_1

    .line 1163
    aget v4, p0, v3

    .line 1164
    if-eqz v4, :cond_0

    .line 1166
    rsub-int/lit8 v0, v3, 0x6

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v4, v2, v0}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 1161
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1169
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method
