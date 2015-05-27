.class public abstract Lorg/spongycastle/math/raw/Nat256;
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

    .line 243
    const/16 v0, 0x8

    new-array v0, v0, [I

    return-object v0
.end method

.method public static qw()[I
    .locals 1

    .line 248
    const/16 v0, 0x10

    new-array v0, v0, [I

    return-object v0
.end method

.method public static ʹ([I)V
    .locals 2

    .line 1297
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 1298
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, p0, v1

    .line 1299
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v0, p0, v1

    .line 1300
    const/4 v0, 0x0

    const/4 v1, 0x3

    aput v0, p0, v1

    .line 1301
    const/4 v0, 0x0

    const/4 v1, 0x4

    aput v0, p0, v1

    .line 1302
    const/4 v0, 0x0

    const/4 v1, 0x5

    aput v0, p0, v1

    .line 1303
    const/4 v0, 0x0

    const/4 v1, 0x6

    aput v0, p0, v1

    .line 1304
    const/4 v0, 0x0

    const/4 v1, 0x7

    aput v0, p0, v1

    .line 1305
    return-void
.end method

.method public static ʻ([II)I
    .locals 4

    .line 296
    if-nez p1, :cond_0

    .line 298
    const/4 v0, 0x0

    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 300
    :cond_0
    and-int/lit16 v0, p1, 0xff

    if-eq v0, p1, :cond_1

    .line 302
    const/4 v0, 0x0

    return v0

    .line 304
    :cond_1
    ushr-int/lit8 v2, p1, 0x5

    .line 305
    and-int/lit8 v3, p1, 0x1f

    .line 306
    aget v0, p0, v2

    ushr-int/2addr v0, v3

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static ʽ(I[I[I)I
    .locals 10

    .line 674
    const-wide/16 v6, 0x0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 675
    const/4 v0, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    mul-long/2addr v0, v8

    const/4 v2, 0x0

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 676
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 677
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 678
    const/4 v0, 0x1

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    mul-long/2addr v0, v8

    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 679
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 680
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 681
    const/4 v0, 0x2

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    mul-long/2addr v0, v8

    const/4 v2, 0x2

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 682
    long-to-int v0, v6

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 683
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 684
    const/4 v0, 0x3

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    mul-long/2addr v0, v8

    const/4 v2, 0x3

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 685
    long-to-int v0, v6

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 686
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 687
    const/4 v0, 0x4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    mul-long/2addr v0, v8

    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 688
    long-to-int v0, v6

    const/4 v1, 0x4

    aput v0, p2, v1

    .line 689
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 690
    const/4 v0, 0x5

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    mul-long/2addr v0, v8

    const/4 v2, 0x5

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 691
    long-to-int v0, v6

    const/4 v1, 0x5

    aput v0, p2, v1

    .line 692
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 693
    const/4 v0, 0x6

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    mul-long/2addr v0, v8

    const/4 v2, 0x6

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 694
    long-to-int v0, v6

    const/4 v1, 0x6

    aput v0, p2, v1

    .line 695
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 696
    const/4 v0, 0x7

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    mul-long/2addr v0, v8

    const/4 v2, 0x7

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 697
    long-to-int v0, v6

    const/4 v1, 0x7

    aput v0, p2, v1

    .line 698
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 699
    long-to-int v0, v6

    return v0
.end method

.method public static ʾ([I[I[I)I
    .locals 8

    .line 73
    const-wide/16 v6, 0x0

    .line 74
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

    .line 75
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 76
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 77
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

    .line 78
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 79
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 80
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

    .line 81
    long-to-int v0, v6

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 82
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 83
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

    .line 84
    long-to-int v0, v6

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 85
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 86
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

    .line 87
    long-to-int v0, v6

    const/4 v1, 0x4

    aput v0, p2, v1

    .line 88
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 89
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

    .line 90
    long-to-int v0, v6

    const/4 v1, 0x5

    aput v0, p2, v1

    .line 91
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 92
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

    .line 93
    long-to-int v0, v6

    const/4 v1, 0x6

    aput v0, p2, v1

    .line 94
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 95
    const/4 v0, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x7

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 96
    long-to-int v0, v6

    const/4 v1, 0x7

    aput v0, p2, v1

    .line 97
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 98
    long-to-int v0, v6

    return v0
.end method

.method public static ʿ([I[I[I)V
    .locals 27

    .line 367
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 368
    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 369
    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 370
    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 371
    const/4 v0, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 372
    const/4 v0, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 373
    const/4 v0, 0x6

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 374
    const/4 v0, 0x7

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v20, v0, v2

    .line 377
    const-wide/16 v22, 0x0

    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v24, v0, v2

    .line 378
    mul-long v0, v24, v6

    add-long v22, v22, v0

    .line 379
    move-wide/from16 v0, v22

    long-to-int v0, v0

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 380
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 381
    mul-long v0, v24, v8

    add-long v22, v22, v0

    .line 382
    move-wide/from16 v0, v22

    long-to-int v0, v0

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 383
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 384
    mul-long v0, v24, v10

    add-long v22, v22, v0

    .line 385
    move-wide/from16 v0, v22

    long-to-int v0, v0

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 386
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 387
    mul-long v0, v24, v12

    add-long v22, v22, v0

    .line 388
    move-wide/from16 v0, v22

    long-to-int v0, v0

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 389
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 390
    mul-long v0, v24, v14

    add-long v22, v22, v0

    .line 391
    move-wide/from16 v0, v22

    long-to-int v0, v0

    const/4 v1, 0x4

    aput v0, p2, v1

    .line 392
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 393
    mul-long v0, v24, v16

    add-long v22, v22, v0

    .line 394
    move-wide/from16 v0, v22

    long-to-int v0, v0

    const/4 v1, 0x5

    aput v0, p2, v1

    .line 395
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 396
    mul-long v0, v24, v18

    add-long v22, v22, v0

    .line 397
    move-wide/from16 v0, v22

    long-to-int v0, v0

    const/4 v1, 0x6

    aput v0, p2, v1

    .line 398
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 399
    mul-long v0, v24, v20

    add-long v22, v22, v0

    .line 400
    move-wide/from16 v0, v22

    long-to-int v0, v0

    const/4 v1, 0x7

    aput v0, p2, v1

    .line 401
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 402
    move-wide/from16 v0, v22

    long-to-int v0, v0

    const/16 v1, 0x8

    aput v0, p2, v1

    .line 405
    const/16 v22, 0x1

    :goto_0
    move/from16 v0, v22

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 407
    const-wide/16 v23, 0x0

    aget v0, p0, v22

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v25, v0, v2

    .line 408
    mul-long v0, v25, v6

    add-int/lit8 v2, v22, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 409
    add-int/lit8 v0, v22, 0x0

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 410
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 411
    mul-long v0, v25, v8

    add-int/lit8 v2, v22, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 412
    add-int/lit8 v0, v22, 0x1

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 413
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 414
    mul-long v0, v25, v10

    add-int/lit8 v2, v22, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 415
    add-int/lit8 v0, v22, 0x2

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 416
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 417
    mul-long v0, v25, v12

    add-int/lit8 v2, v22, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 418
    add-int/lit8 v0, v22, 0x3

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 419
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 420
    mul-long v0, v25, v14

    add-int/lit8 v2, v22, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 421
    add-int/lit8 v0, v22, 0x4

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 422
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 423
    mul-long v0, v25, v16

    add-int/lit8 v2, v22, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 424
    add-int/lit8 v0, v22, 0x5

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 425
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 426
    mul-long v0, v25, v18

    add-int/lit8 v2, v22, 0x6

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 427
    add-int/lit8 v0, v22, 0x6

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 428
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 429
    mul-long v0, v25, v20

    add-int/lit8 v2, v22, 0x7

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 430
    add-int/lit8 v0, v22, 0x7

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 431
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 432
    add-int/lit8 v0, v22, 0x8

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p2, v0

    .line 405
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 434
    :cond_0
    return-void
.end method

.method public static ˈ([I[I[I)I
    .locals 29

    .line 510
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 511
    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 512
    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 513
    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 514
    const/4 v0, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 515
    const/4 v0, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 516
    const/4 v0, 0x6

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 517
    const/4 v0, 0x7

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v20, v0, v2

    .line 519
    const-wide/16 v22, 0x0

    .line 520
    const/16 v24, 0x0

    :goto_0
    move/from16 v0, v24

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 522
    const-wide/16 v25, 0x0

    aget v0, p0, v24

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v27, v0, v2

    .line 523
    mul-long v0, v27, v6

    add-int/lit8 v2, v24, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v25, v25, v0

    .line 524
    add-int/lit8 v0, v24, 0x0

    move-wide/from16 v1, v25

    long-to-int v1, v1

    aput v1, p2, v0

    .line 525
    const/16 v0, 0x20

    ushr-long v25, v25, v0

    .line 526
    mul-long v0, v27, v8

    add-int/lit8 v2, v24, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v25, v25, v0

    .line 527
    add-int/lit8 v0, v24, 0x1

    move-wide/from16 v1, v25

    long-to-int v1, v1

    aput v1, p2, v0

    .line 528
    const/16 v0, 0x20

    ushr-long v25, v25, v0

    .line 529
    mul-long v0, v27, v10

    add-int/lit8 v2, v24, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v25, v25, v0

    .line 530
    add-int/lit8 v0, v24, 0x2

    move-wide/from16 v1, v25

    long-to-int v1, v1

    aput v1, p2, v0

    .line 531
    const/16 v0, 0x20

    ushr-long v25, v25, v0

    .line 532
    mul-long v0, v27, v12

    add-int/lit8 v2, v24, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v25, v25, v0

    .line 533
    add-int/lit8 v0, v24, 0x3

    move-wide/from16 v1, v25

    long-to-int v1, v1

    aput v1, p2, v0

    .line 534
    const/16 v0, 0x20

    ushr-long v25, v25, v0

    .line 535
    mul-long v0, v27, v14

    add-int/lit8 v2, v24, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v25, v25, v0

    .line 536
    add-int/lit8 v0, v24, 0x4

    move-wide/from16 v1, v25

    long-to-int v1, v1

    aput v1, p2, v0

    .line 537
    const/16 v0, 0x20

    ushr-long v25, v25, v0

    .line 538
    mul-long v0, v27, v16

    add-int/lit8 v2, v24, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v25, v25, v0

    .line 539
    add-int/lit8 v0, v24, 0x5

    move-wide/from16 v1, v25

    long-to-int v1, v1

    aput v1, p2, v0

    .line 540
    const/16 v0, 0x20

    ushr-long v25, v25, v0

    .line 541
    mul-long v0, v27, v18

    add-int/lit8 v2, v24, 0x6

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v25, v25, v0

    .line 542
    add-int/lit8 v0, v24, 0x6

    move-wide/from16 v1, v25

    long-to-int v1, v1

    aput v1, p2, v0

    .line 543
    const/16 v0, 0x20

    ushr-long v25, v25, v0

    .line 544
    mul-long v0, v27, v20

    add-int/lit8 v2, v24, 0x7

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v25, v25, v0

    .line 545
    add-int/lit8 v0, v24, 0x7

    move-wide/from16 v1, v25

    long-to-int v1, v1

    aput v1, p2, v0

    .line 546
    const/16 v0, 0x20

    ushr-long v25, v25, v0

    .line 547
    add-int/lit8 v0, v24, 0x8

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v22

    add-long v25, v25, v0

    .line 548
    add-int/lit8 v0, v24, 0x8

    move-wide/from16 v1, v25

    long-to-int v1, v1

    aput v1, p2, v0

    .line 549
    const/16 v0, 0x20

    ushr-long v22, v25, v0

    .line 520
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 551
    :cond_0
    move-wide/from16 v0, v22

    long-to-int v0, v0

    return v0
.end method

.method public static ˈ([I[I)Z
    .locals 3

    .line 267
    const/4 v2, 0x7

    :goto_0
    if-ltz v2, :cond_1

    .line 269
    aget v0, p0, v2

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 271
    const/4 v0, 0x0

    return v0

    .line 267
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 274
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ˉ([I[I[I)I
    .locals 8

    .line 1133
    const-wide/16 v6, 0x0

    .line 1134
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

    .line 1135
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 1136
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1137
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

    .line 1138
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 1139
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1140
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

    .line 1141
    long-to-int v0, v6

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 1142
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1143
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

    .line 1144
    long-to-int v0, v6

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 1145
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1146
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

    .line 1147
    long-to-int v0, v6

    const/4 v1, 0x4

    aput v0, p2, v1

    .line 1148
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1149
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

    .line 1150
    long-to-int v0, v6

    const/4 v1, 0x5

    aput v0, p2, v1

    .line 1151
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1152
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

    .line 1153
    long-to-int v0, v6

    const/4 v1, 0x6

    aput v0, p2, v1

    .line 1154
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1155
    const/4 v0, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1156
    long-to-int v0, v6

    const/4 v1, 0x7

    aput v0, p2, v1

    .line 1157
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1158
    long-to-int v0, v6

    return v0
.end method

.method public static ˉ([I[I)Z
    .locals 5

    .line 311
    const/4 v2, 0x7

    :goto_0
    if-ltz v2, :cond_2

    .line 313
    aget v0, p0, v2

    const/high16 v1, -0x80000000

    xor-int v3, v0, v1

    .line 314
    aget v0, p1, v2

    const/high16 v1, -0x80000000

    xor-int v4, v0, v1

    .line 315
    if-ge v3, v4, :cond_0

    .line 316
    const/4 v0, 0x0

    return v0

    .line 317
    :cond_0
    if-le v3, v4, :cond_1

    .line 318
    const/4 v0, 0x1

    return v0

    .line 311
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 320
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static ˊ(IJ[II)I
    .locals 14

    .line 737
    const-wide/16 v6, 0x0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 738
    const-wide v0, 0xffffffffL

    and-long v10, p1, v0

    .line 739
    mul-long v0, v8, v10

    add-int/lit8 v2, p4, 0x0

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 740
    add-int/lit8 v0, p4, 0x0

    long-to-int v1, v6

    aput v1, p3, v0

    .line 741
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 742
    const/16 v0, 0x20

    ushr-long v12, p1, v0

    .line 743
    mul-long v0, v8, v12

    add-long/2addr v0, v10

    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 744
    add-int/lit8 v0, p4, 0x1

    long-to-int v1, v6

    aput v1, p3, v0

    .line 745
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 746
    add-int/lit8 v0, p4, 0x2

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v12

    add-long/2addr v6, v0

    .line 747
    add-int/lit8 v0, p4, 0x2

    long-to-int v1, v6

    aput v1, p3, v0

    .line 748
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 749
    add-int/lit8 v0, p4, 0x3

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 750
    add-int/lit8 v0, p4, 0x3

    long-to-int v1, v6

    aput v1, p3, v0

    .line 751
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 752
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    move-object/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[III)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static ˊ([II[II)I
    .locals 8

    .line 193
    const-wide/16 v6, 0x0

    .line 194
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 195
    add-int/lit8 v0, p1, 0x0

    long-to-int v1, v6

    aput v1, p0, v0

    .line 196
    add-int/lit8 v0, p3, 0x0

    long-to-int v1, v6

    aput v1, p2, v0

    .line 197
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 198
    add-int/lit8 v0, p1, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 199
    add-int/lit8 v0, p1, 0x1

    long-to-int v1, v6

    aput v1, p0, v0

    .line 200
    add-int/lit8 v0, p3, 0x1

    long-to-int v1, v6

    aput v1, p2, v0

    .line 201
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 202
    add-int/lit8 v0, p1, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 203
    add-int/lit8 v0, p1, 0x2

    long-to-int v1, v6

    aput v1, p0, v0

    .line 204
    add-int/lit8 v0, p3, 0x2

    long-to-int v1, v6

    aput v1, p2, v0

    .line 205
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 206
    add-int/lit8 v0, p1, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 207
    add-int/lit8 v0, p1, 0x3

    long-to-int v1, v6

    aput v1, p0, v0

    .line 208
    add-int/lit8 v0, p3, 0x3

    long-to-int v1, v6

    aput v1, p2, v0

    .line 209
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 210
    add-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 211
    add-int/lit8 v0, p1, 0x4

    long-to-int v1, v6

    aput v1, p0, v0

    .line 212
    add-int/lit8 v0, p3, 0x4

    long-to-int v1, v6

    aput v1, p2, v0

    .line 213
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 214
    add-int/lit8 v0, p1, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 215
    add-int/lit8 v0, p1, 0x5

    long-to-int v1, v6

    aput v1, p0, v0

    .line 216
    add-int/lit8 v0, p3, 0x5

    long-to-int v1, v6

    aput v1, p2, v0

    .line 217
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 218
    add-int/lit8 v0, p1, 0x6

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x6

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 219
    add-int/lit8 v0, p1, 0x6

    long-to-int v1, v6

    aput v1, p0, v0

    .line 220
    add-int/lit8 v0, p3, 0x6

    long-to-int v1, v6

    aput v1, p2, v0

    .line 221
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 222
    add-int/lit8 v0, p1, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x7

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 223
    add-int/lit8 v0, p1, 0x7

    long-to-int v1, v6

    aput v1, p0, v0

    .line 224
    add-int/lit8 v0, p3, 0x7

    long-to-int v1, v6

    aput v1, p2, v0

    .line 225
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 226
    long-to-int v0, v6

    return v0
.end method

.method public static ˊ([II[III)I
    .locals 8

    .line 163
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 164
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 165
    add-int/lit8 v0, p3, 0x0

    long-to-int v1, v6

    aput v1, p2, v0

    .line 166
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 167
    add-int/lit8 v0, p1, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 168
    add-int/lit8 v0, p3, 0x1

    long-to-int v1, v6

    aput v1, p2, v0

    .line 169
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 170
    add-int/lit8 v0, p1, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 171
    add-int/lit8 v0, p3, 0x2

    long-to-int v1, v6

    aput v1, p2, v0

    .line 172
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 173
    add-int/lit8 v0, p1, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 174
    add-int/lit8 v0, p3, 0x3

    long-to-int v1, v6

    aput v1, p2, v0

    .line 175
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 176
    add-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 177
    add-int/lit8 v0, p3, 0x4

    long-to-int v1, v6

    aput v1, p2, v0

    .line 178
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 179
    add-int/lit8 v0, p1, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 180
    add-int/lit8 v0, p3, 0x5

    long-to-int v1, v6

    aput v1, p2, v0

    .line 181
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 182
    add-int/lit8 v0, p1, 0x6

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x6

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 183
    add-int/lit8 v0, p3, 0x6

    long-to-int v1, v6

    aput v1, p2, v0

    .line 184
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 185
    add-int/lit8 v0, p1, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x7

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 186
    add-int/lit8 v0, p3, 0x7

    long-to-int v1, v6

    aput v1, p2, v0

    .line 187
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 188
    long-to-int v0, v6

    return v0
.end method

.method public static ˊ(I[II[II[II)J
    .locals 26

    .line 605
    const-wide/16 v6, 0x0

    move/from16 v0, p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 606
    add-int/lit8 v0, p2, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 607
    mul-long v0, v8, v10

    add-int/lit8 v2, p4, 0x0

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 608
    add-int/lit8 v0, p6, 0x0

    long-to-int v1, v6

    aput v1, p5, v0

    .line 609
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 610
    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 611
    mul-long v0, v8, v12

    add-long/2addr v0, v10

    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 612
    add-int/lit8 v0, p6, 0x1

    long-to-int v1, v6

    aput v1, p5, v0

    .line 613
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 614
    add-int/lit8 v0, p2, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 615
    mul-long v0, v8, v14

    add-long/2addr v0, v12

    add-int/lit8 v2, p4, 0x2

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 616
    add-int/lit8 v0, p6, 0x2

    long-to-int v1, v6

    aput v1, p5, v0

    .line 617
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 618
    add-int/lit8 v0, p2, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 619
    mul-long v0, v8, v16

    add-long/2addr v0, v14

    add-int/lit8 v2, p4, 0x3

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 620
    add-int/lit8 v0, p6, 0x3

    long-to-int v1, v6

    aput v1, p5, v0

    .line 621
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 622
    add-int/lit8 v0, p2, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 623
    mul-long v0, v8, v18

    add-long v0, v0, v16

    add-int/lit8 v2, p4, 0x4

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 624
    add-int/lit8 v0, p6, 0x4

    long-to-int v1, v6

    aput v1, p5, v0

    .line 625
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 626
    add-int/lit8 v0, p2, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v20, v0, v2

    .line 627
    mul-long v0, v8, v20

    add-long v0, v0, v18

    add-int/lit8 v2, p4, 0x5

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 628
    add-int/lit8 v0, p6, 0x5

    long-to-int v1, v6

    aput v1, p5, v0

    .line 629
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 630
    add-int/lit8 v0, p2, 0x6

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v22, v0, v2

    .line 631
    mul-long v0, v8, v22

    add-long v0, v0, v20

    add-int/lit8 v2, p4, 0x6

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 632
    add-int/lit8 v0, p6, 0x6

    long-to-int v1, v6

    aput v1, p5, v0

    .line 633
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 634
    add-int/lit8 v0, p2, 0x7

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v24, v0, v2

    .line 635
    mul-long v0, v8, v24

    add-long v0, v0, v22

    add-int/lit8 v2, p4, 0x7

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 636
    add-int/lit8 v0, p6, 0x7

    long-to-int v1, v6

    aput v1, p5, v0

    .line 637
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 638
    add-long v6, v6, v24

    .line 639
    return-wide v6
.end method

.method public static ˊ([II[II[II)Z
    .locals 7

    .line 253
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/raw/Nat256;->ˋ([II[II)Z

    move-result v6

    .line 254
    if-eqz v6, :cond_0

    .line 256
    invoke-static/range {p0 .. p5}, Lorg/spongycastle/math/raw/Nat256;->ˎ([II[II[II)I

    goto :goto_0

    .line 260
    :cond_0
    move-object v0, p2

    move v1, p3

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat256;->ˎ([II[II[II)I

    .line 262
    :goto_0
    return v6
.end method

.method public static ˋ(II[II)I
    .locals 12

    .line 760
    const-wide/16 v6, 0x0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 761
    mul-long v0, v10, v8

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 762
    add-int/lit8 v0, p3, 0x0

    long-to-int v1, v6

    aput v1, p2, v0

    .line 763
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 764
    add-int/lit8 v0, p3, 0x1

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v10

    add-long/2addr v6, v0

    .line 765
    add-int/lit8 v0, p3, 0x1

    long-to-int v1, v6

    aput v1, p2, v0

    .line 766
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 767
    add-int/lit8 v0, p3, 0x2

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 768
    add-int/lit8 v0, p3, 0x2

    long-to-int v1, v6

    aput v1, p2, v0

    .line 769
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 770
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x3

    invoke-static {v0, p2, p3, v1}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[III)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static ˋ([II[II[II)V
    .locals 27

    .line 438
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 439
    add-int/lit8 v0, p3, 0x1

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 440
    add-int/lit8 v0, p3, 0x2

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 441
    add-int/lit8 v0, p3, 0x3

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 442
    add-int/lit8 v0, p3, 0x4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 443
    add-int/lit8 v0, p3, 0x5

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 444
    add-int/lit8 v0, p3, 0x6

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 445
    add-int/lit8 v0, p3, 0x7

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v20, v0, v2

    .line 448
    const-wide/16 v22, 0x0

    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v24, v0, v2

    .line 449
    mul-long v0, v24, v6

    add-long v22, v22, v0

    .line 450
    add-int/lit8 v0, p5, 0x0

    move-wide/from16 v1, v22

    long-to-int v1, v1

    aput v1, p4, v0

    .line 451
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 452
    mul-long v0, v24, v8

    add-long v22, v22, v0

    .line 453
    add-int/lit8 v0, p5, 0x1

    move-wide/from16 v1, v22

    long-to-int v1, v1

    aput v1, p4, v0

    .line 454
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 455
    mul-long v0, v24, v10

    add-long v22, v22, v0

    .line 456
    add-int/lit8 v0, p5, 0x2

    move-wide/from16 v1, v22

    long-to-int v1, v1

    aput v1, p4, v0

    .line 457
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 458
    mul-long v0, v24, v12

    add-long v22, v22, v0

    .line 459
    add-int/lit8 v0, p5, 0x3

    move-wide/from16 v1, v22

    long-to-int v1, v1

    aput v1, p4, v0

    .line 460
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 461
    mul-long v0, v24, v14

    add-long v22, v22, v0

    .line 462
    add-int/lit8 v0, p5, 0x4

    move-wide/from16 v1, v22

    long-to-int v1, v1

    aput v1, p4, v0

    .line 463
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 464
    mul-long v0, v24, v16

    add-long v22, v22, v0

    .line 465
    add-int/lit8 v0, p5, 0x5

    move-wide/from16 v1, v22

    long-to-int v1, v1

    aput v1, p4, v0

    .line 466
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 467
    mul-long v0, v24, v18

    add-long v22, v22, v0

    .line 468
    add-int/lit8 v0, p5, 0x6

    move-wide/from16 v1, v22

    long-to-int v1, v1

    aput v1, p4, v0

    .line 469
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 470
    mul-long v0, v24, v20

    add-long v22, v22, v0

    .line 471
    add-int/lit8 v0, p5, 0x7

    move-wide/from16 v1, v22

    long-to-int v1, v1

    aput v1, p4, v0

    .line 472
    const/16 v0, 0x20

    ushr-long v22, v22, v0

    .line 473
    add-int/lit8 v0, p5, 0x8

    move-wide/from16 v1, v22

    long-to-int v1, v1

    aput v1, p4, v0

    .line 476
    const/16 v22, 0x1

    :goto_0
    move/from16 v0, v22

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 478
    add-int/lit8 p5, p5, 0x1

    .line 479
    const-wide/16 v23, 0x0

    add-int v0, p1, v22

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v25, v0, v2

    .line 480
    mul-long v0, v25, v6

    add-int/lit8 v2, p5, 0x0

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 481
    add-int/lit8 v0, p5, 0x0

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p4, v0

    .line 482
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 483
    mul-long v0, v25, v8

    add-int/lit8 v2, p5, 0x1

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 484
    add-int/lit8 v0, p5, 0x1

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p4, v0

    .line 485
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 486
    mul-long v0, v25, v10

    add-int/lit8 v2, p5, 0x2

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 487
    add-int/lit8 v0, p5, 0x2

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p4, v0

    .line 488
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 489
    mul-long v0, v25, v12

    add-int/lit8 v2, p5, 0x3

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 490
    add-int/lit8 v0, p5, 0x3

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p4, v0

    .line 491
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 492
    mul-long v0, v25, v14

    add-int/lit8 v2, p5, 0x4

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 493
    add-int/lit8 v0, p5, 0x4

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p4, v0

    .line 494
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 495
    mul-long v0, v25, v16

    add-int/lit8 v2, p5, 0x5

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 496
    add-int/lit8 v0, p5, 0x5

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p4, v0

    .line 497
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 498
    mul-long v0, v25, v18

    add-int/lit8 v2, p5, 0x6

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 499
    add-int/lit8 v0, p5, 0x6

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p4, v0

    .line 500
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 501
    mul-long v0, v25, v20

    add-int/lit8 v2, p5, 0x7

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 502
    add-int/lit8 v0, p5, 0x7

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p4, v0

    .line 503
    const/16 v0, 0x20

    ushr-long v23, v23, v0

    .line 504
    add-int/lit8 v0, p5, 0x8

    move-wide/from16 v1, v23

    long-to-int v1, v1

    aput v1, p4, v0

    .line 476
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 506
    :cond_0
    return-void
.end method

.method public static ˋ([II[II)Z
    .locals 5

    .line 325
    const/4 v2, 0x7

    :goto_0
    if-ltz v2, :cond_2

    .line 327
    add-int v0, p1, v2

    aget v0, p0, v0

    const/high16 v1, -0x80000000

    xor-int v3, v0, v1

    .line 328
    add-int v0, p3, v2

    aget v0, p2, v0

    const/high16 v1, -0x80000000

    xor-int v4, v0, v1

    .line 329
    if-ge v3, v4, :cond_0

    .line 330
    const/4 v0, 0x0

    return v0

    .line 331
    :cond_0
    if-le v3, v4, :cond_1

    .line 332
    const/4 v0, 0x1

    return v0

    .line 325
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 334
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static ˌ([I[I)I
    .locals 8

    .line 1223
    const-wide/16 v6, 0x0

    .line 1224
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

    .line 1225
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 1226
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1227
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

    .line 1228
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 1229
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1230
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

    .line 1231
    long-to-int v0, v6

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 1232
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1233
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

    .line 1234
    long-to-int v0, v6

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 1235
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1236
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

    .line 1237
    long-to-int v0, v6

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 1238
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1239
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

    .line 1240
    long-to-int v0, v6

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 1241
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1242
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

    .line 1243
    long-to-int v0, v6

    const/4 v1, 0x6

    aput v0, p1, v1

    .line 1244
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1245
    const/4 v0, 0x7

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1246
    long-to-int v0, v6

    const/4 v1, 0x7

    aput v0, p1, v1

    .line 1247
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1248
    long-to-int v0, v6

    return v0
.end method

.method public static ˎ([II[II[II)I
    .locals 8

    .line 1163
    const-wide/16 v6, 0x0

    .line 1164
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1165
    add-int/lit8 v0, p5, 0x0

    long-to-int v1, v6

    aput v1, p4, v0

    .line 1166
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1167
    add-int/lit8 v0, p1, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1168
    add-int/lit8 v0, p5, 0x1

    long-to-int v1, v6

    aput v1, p4, v0

    .line 1169
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1170
    add-int/lit8 v0, p1, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1171
    add-int/lit8 v0, p5, 0x2

    long-to-int v1, v6

    aput v1, p4, v0

    .line 1172
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1173
    add-int/lit8 v0, p1, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1174
    add-int/lit8 v0, p5, 0x3

    long-to-int v1, v6

    aput v1, p4, v0

    .line 1175
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1176
    add-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1177
    add-int/lit8 v0, p5, 0x4

    long-to-int v1, v6

    aput v1, p4, v0

    .line 1178
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1179
    add-int/lit8 v0, p1, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1180
    add-int/lit8 v0, p5, 0x5

    long-to-int v1, v6

    aput v1, p4, v0

    .line 1181
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1182
    add-int/lit8 v0, p1, 0x6

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x6

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1183
    add-int/lit8 v0, p5, 0x6

    long-to-int v1, v6

    aput v1, p4, v0

    .line 1184
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1185
    add-int/lit8 v0, p1, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x7

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 1186
    add-int/lit8 v0, p5, 0x7

    long-to-int v1, v6

    aput v1, p4, v0

    .line 1187
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 1188
    long-to-int v0, v6

    return v0
.end method

.method public static ˎ([II[II)V
    .locals 50

    .line 969
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    .line 972
    const/4 v8, 0x0

    .line 974
    const/4 v10, 0x7

    const/16 v11, 0x10

    .line 977
    :cond_0
    move v0, v10

    add-int/lit8 v10, v10, -0x1

    add-int v0, v0, p1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 978
    mul-long v14, v12, v12

    .line 979
    add-int/lit8 v11, v11, -0x1

    add-int v0, p3, v11

    shl-int/lit8 v1, v8, 0x1f

    const/16 v2, 0x21

    ushr-long v2, v14, v2

    long-to-int v2, v2

    or-int/2addr v1, v2

    aput v1, p2, v0

    .line 980
    add-int/lit8 v11, v11, -0x1

    add-int v0, p3, v11

    const/4 v1, 0x1

    ushr-long v1, v14, v1

    long-to-int v1, v1

    aput v1, p2, v0

    .line 981
    long-to-int v8, v14

    .line 983
    if-gtz v10, :cond_0

    .line 986
    mul-long v12, v4, v4

    .line 987
    shl-int/lit8 v0, v8, 0x1f

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x21

    ushr-long v2, v12, v2

    or-long v6, v0, v2

    .line 988
    add-int/lit8 v0, p3, 0x0

    long-to-int v1, v12

    aput v1, p2, v0

    .line 989
    const/16 v0, 0x20

    ushr-long v0, v12, v0

    long-to-int v0, v0

    and-int/lit8 v8, v0, 0x1

    .line 993
    add-int/lit8 v0, p1, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 994
    add-int/lit8 v0, p3, 0x2

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 997
    mul-long v0, v10, v4

    add-long/2addr v6, v0

    .line 998
    long-to-int v9, v6

    .line 999
    add-int/lit8 v0, p3, 0x1

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1000
    ushr-int/lit8 v8, v9, 0x1f

    .line 1001
    const/16 v0, 0x20

    ushr-long v0, v6, v0

    add-long/2addr v12, v0

    .line 1004
    add-int/lit8 v0, p1, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 1005
    add-int/lit8 v0, p3, 0x3

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 1006
    add-int/lit8 v0, p3, 0x4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 1008
    mul-long v0, v14, v4

    add-long/2addr v12, v0

    .line 1009
    long-to-int v9, v12

    .line 1010
    add-int/lit8 v0, p3, 0x2

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1011
    ushr-int/lit8 v8, v9, 0x1f

    .line 1012
    const/16 v0, 0x20

    ushr-long v0, v12, v0

    mul-long v2, v14, v10

    add-long/2addr v0, v2

    add-long v16, v16, v0

    .line 1013
    const/16 v0, 0x20

    ushr-long v0, v16, v0

    add-long v18, v18, v0

    .line 1014
    const-wide v0, 0xffffffffL

    and-long v16, v16, v0

    .line 1017
    add-int/lit8 v0, p1, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v20, v0, v2

    .line 1018
    add-int/lit8 v0, p3, 0x5

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v22, v0, v2

    .line 1019
    add-int/lit8 v0, p3, 0x6

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v24, v0, v2

    .line 1021
    mul-long v0, v20, v4

    add-long v16, v16, v0

    .line 1022
    move-wide/from16 v0, v16

    long-to-int v9, v0

    .line 1023
    add-int/lit8 v0, p3, 0x3

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1024
    ushr-int/lit8 v8, v9, 0x1f

    .line 1025
    const/16 v0, 0x20

    ushr-long v0, v16, v0

    mul-long v2, v20, v10

    add-long/2addr v0, v2

    add-long v18, v18, v0

    .line 1026
    const/16 v0, 0x20

    ushr-long v0, v18, v0

    mul-long v2, v20, v14

    add-long/2addr v0, v2

    add-long v22, v22, v0

    .line 1027
    const-wide v0, 0xffffffffL

    and-long v18, v18, v0

    .line 1028
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    add-long v24, v24, v0

    .line 1029
    const-wide v0, 0xffffffffL

    and-long v22, v22, v0

    .line 1032
    add-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v26, v0, v2

    .line 1033
    add-int/lit8 v0, p3, 0x7

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v28, v0, v2

    .line 1034
    add-int/lit8 v0, p3, 0x8

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v30, v0, v2

    .line 1036
    mul-long v0, v26, v4

    add-long v18, v18, v0

    .line 1037
    move-wide/from16 v0, v18

    long-to-int v9, v0

    .line 1038
    add-int/lit8 v0, p3, 0x4

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1039
    ushr-int/lit8 v8, v9, 0x1f

    .line 1040
    const/16 v0, 0x20

    ushr-long v0, v18, v0

    mul-long v2, v26, v10

    add-long/2addr v0, v2

    add-long v22, v22, v0

    .line 1041
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    mul-long v2, v26, v14

    add-long/2addr v0, v2

    add-long v24, v24, v0

    .line 1042
    const-wide v0, 0xffffffffL

    and-long v22, v22, v0

    .line 1043
    const/16 v0, 0x20

    ushr-long v0, v24, v0

    mul-long v2, v26, v20

    add-long/2addr v0, v2

    add-long v28, v28, v0

    .line 1044
    const-wide v0, 0xffffffffL

    and-long v24, v24, v0

    .line 1045
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    add-long v30, v30, v0

    .line 1046
    const-wide v0, 0xffffffffL

    and-long v28, v28, v0

    .line 1049
    add-int/lit8 v0, p1, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v32, v0, v2

    .line 1050
    add-int/lit8 v0, p3, 0x9

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v34, v0, v2

    .line 1051
    add-int/lit8 v0, p3, 0xa

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v36, v0, v2

    .line 1053
    mul-long v0, v32, v4

    add-long v22, v22, v0

    .line 1054
    move-wide/from16 v0, v22

    long-to-int v9, v0

    .line 1055
    add-int/lit8 v0, p3, 0x5

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1056
    ushr-int/lit8 v8, v9, 0x1f

    .line 1057
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    mul-long v2, v32, v10

    add-long/2addr v0, v2

    add-long v24, v24, v0

    .line 1058
    const/16 v0, 0x20

    ushr-long v0, v24, v0

    mul-long v2, v32, v14

    add-long/2addr v0, v2

    add-long v28, v28, v0

    .line 1059
    const-wide v0, 0xffffffffL

    and-long v24, v24, v0

    .line 1060
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    mul-long v2, v32, v20

    add-long/2addr v0, v2

    add-long v30, v30, v0

    .line 1061
    const-wide v0, 0xffffffffL

    and-long v28, v28, v0

    .line 1062
    const/16 v0, 0x20

    ushr-long v0, v30, v0

    mul-long v2, v32, v26

    add-long/2addr v0, v2

    add-long v34, v34, v0

    .line 1063
    const-wide v0, 0xffffffffL

    and-long v30, v30, v0

    .line 1064
    const/16 v0, 0x20

    ushr-long v0, v34, v0

    add-long v36, v36, v0

    .line 1065
    const-wide v0, 0xffffffffL

    and-long v34, v34, v0

    .line 1068
    add-int/lit8 v0, p1, 0x6

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v38, v0, v2

    .line 1069
    add-int/lit8 v0, p3, 0xb

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v40, v0, v2

    .line 1070
    add-int/lit8 v0, p3, 0xc

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v42, v0, v2

    .line 1072
    mul-long v0, v38, v4

    add-long v24, v24, v0

    .line 1073
    move-wide/from16 v0, v24

    long-to-int v9, v0

    .line 1074
    add-int/lit8 v0, p3, 0x6

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1075
    ushr-int/lit8 v8, v9, 0x1f

    .line 1076
    const/16 v0, 0x20

    ushr-long v0, v24, v0

    mul-long v2, v38, v10

    add-long/2addr v0, v2

    add-long v28, v28, v0

    .line 1077
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    mul-long v2, v38, v14

    add-long/2addr v0, v2

    add-long v30, v30, v0

    .line 1078
    const-wide v0, 0xffffffffL

    and-long v28, v28, v0

    .line 1079
    const/16 v0, 0x20

    ushr-long v0, v30, v0

    mul-long v2, v38, v20

    add-long/2addr v0, v2

    add-long v34, v34, v0

    .line 1080
    const-wide v0, 0xffffffffL

    and-long v30, v30, v0

    .line 1081
    const/16 v0, 0x20

    ushr-long v0, v34, v0

    mul-long v2, v38, v26

    add-long/2addr v0, v2

    add-long v36, v36, v0

    .line 1082
    const-wide v0, 0xffffffffL

    and-long v34, v34, v0

    .line 1083
    const/16 v0, 0x20

    ushr-long v0, v36, v0

    mul-long v2, v38, v32

    add-long/2addr v0, v2

    add-long v40, v40, v0

    .line 1084
    const-wide v0, 0xffffffffL

    and-long v36, v36, v0

    .line 1085
    const/16 v0, 0x20

    ushr-long v0, v40, v0

    add-long v42, v42, v0

    .line 1086
    const-wide v0, 0xffffffffL

    and-long v40, v40, v0

    .line 1089
    add-int/lit8 v0, p1, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v44, v0, v2

    .line 1090
    add-int/lit8 v0, p3, 0xd

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v46, v0, v2

    .line 1091
    add-int/lit8 v0, p3, 0xe

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v48, v0, v2

    .line 1093
    mul-long v0, v44, v4

    add-long v28, v28, v0

    .line 1094
    move-wide/from16 v0, v28

    long-to-int v9, v0

    .line 1095
    add-int/lit8 v0, p3, 0x7

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1096
    ushr-int/lit8 v8, v9, 0x1f

    .line 1097
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    mul-long v2, v44, v10

    add-long/2addr v0, v2

    add-long v30, v30, v0

    .line 1098
    const/16 v0, 0x20

    ushr-long v0, v30, v0

    mul-long v2, v44, v14

    add-long/2addr v0, v2

    add-long v34, v34, v0

    .line 1099
    const/16 v0, 0x20

    ushr-long v0, v34, v0

    mul-long v2, v44, v20

    add-long/2addr v0, v2

    add-long v36, v36, v0

    .line 1100
    const/16 v0, 0x20

    ushr-long v0, v36, v0

    mul-long v2, v44, v26

    add-long/2addr v0, v2

    add-long v40, v40, v0

    .line 1101
    const/16 v0, 0x20

    ushr-long v0, v40, v0

    mul-long v2, v44, v32

    add-long/2addr v0, v2

    add-long v42, v42, v0

    .line 1102
    const/16 v0, 0x20

    ushr-long v0, v42, v0

    mul-long v2, v44, v38

    add-long/2addr v0, v2

    add-long v46, v46, v0

    .line 1103
    const/16 v0, 0x20

    ushr-long v0, v46, v0

    add-long v48, v48, v0

    .line 1106
    move-wide/from16 v0, v30

    long-to-int v9, v0

    .line 1107
    add-int/lit8 v0, p3, 0x8

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1108
    ushr-int/lit8 v8, v9, 0x1f

    .line 1109
    move-wide/from16 v0, v34

    long-to-int v9, v0

    .line 1110
    add-int/lit8 v0, p3, 0x9

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1111
    ushr-int/lit8 v8, v9, 0x1f

    .line 1112
    move-wide/from16 v0, v36

    long-to-int v9, v0

    .line 1113
    add-int/lit8 v0, p3, 0xa

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1114
    ushr-int/lit8 v8, v9, 0x1f

    .line 1115
    move-wide/from16 v0, v40

    long-to-int v9, v0

    .line 1116
    add-int/lit8 v0, p3, 0xb

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1117
    ushr-int/lit8 v8, v9, 0x1f

    .line 1118
    move-wide/from16 v0, v42

    long-to-int v9, v0

    .line 1119
    add-int/lit8 v0, p3, 0xc

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1120
    ushr-int/lit8 v8, v9, 0x1f

    .line 1121
    move-wide/from16 v0, v46

    long-to-int v9, v0

    .line 1122
    add-int/lit8 v0, p3, 0xd

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1123
    ushr-int/lit8 v8, v9, 0x1f

    .line 1124
    move-wide/from16 v0, v48

    long-to-int v9, v0

    .line 1125
    add-int/lit8 v0, p3, 0xe

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1126
    ushr-int/lit8 v8, v9, 0x1f

    .line 1127
    add-int/lit8 v0, p3, 0xf

    aget v0, p2, v0

    const/16 v1, 0x20

    shr-long v1, v48, v1

    long-to-int v1, v1

    add-int v9, v0, v1

    .line 1128
    add-int/lit8 v0, p3, 0xf

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 1129
    return-void
.end method

.method public static ˑ([I[I)I
    .locals 8

    .line 133
    const-wide/16 v6, 0x0

    .line 134
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

    .line 135
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 136
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 137
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

    .line 138
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 139
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 140
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

    .line 141
    long-to-int v0, v6

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 142
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 143
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

    .line 144
    long-to-int v0, v6

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 145
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 146
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

    .line 147
    long-to-int v0, v6

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 148
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 149
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

    .line 150
    long-to-int v0, v6

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 151
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 152
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

    .line 153
    long-to-int v0, v6

    const/4 v1, 0x6

    aput v0, p1, v1

    .line 154
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 155
    const/4 v0, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 156
    long-to-int v0, v6

    const/4 v1, 0x7

    aput v0, p1, v1

    .line 157
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 158
    long-to-int v0, v6

    return v0
.end method

.method public static ᐨ([I)Z
    .locals 3

    .line 339
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 341
    const/4 v0, 0x0

    return v0

    .line 343
    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/16 v0, 0x8

    if-ge v2, v0, :cond_2

    .line 345
    aget v0, p0, v2

    if-eqz v0, :cond_1

    .line 347
    const/4 v0, 0x0

    return v0

    .line 343
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
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
    const/4 v0, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 36
    long-to-int v0, v6

    const/4 v1, 0x7

    aput v0, p2, v1

    .line 37
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 38
    long-to-int v0, v6

    return v0
.end method

.method public static ι([I[I)V
    .locals 50

    .line 805
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    .line 808
    const/4 v8, 0x0

    .line 810
    const/4 v10, 0x7

    const/16 v11, 0x10

    .line 813
    :cond_0
    move v0, v10

    add-int/lit8 v10, v10, -0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 814
    mul-long v14, v12, v12

    .line 815
    add-int/lit8 v11, v11, -0x1

    shl-int/lit8 v0, v8, 0x1f

    const/16 v1, 0x21

    ushr-long v1, v14, v1

    long-to-int v1, v1

    or-int/2addr v0, v1

    aput v0, p1, v11

    .line 816
    add-int/lit8 v11, v11, -0x1

    const/4 v0, 0x1

    ushr-long v0, v14, v0

    long-to-int v0, v0

    aput v0, p1, v11

    .line 817
    long-to-int v8, v14

    .line 819
    if-gtz v10, :cond_0

    .line 822
    mul-long v12, v4, v4

    .line 823
    shl-int/lit8 v0, v8, 0x1f

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x21

    ushr-long v2, v12, v2

    or-long v6, v0, v2

    .line 824
    long-to-int v0, v12

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 825
    const/16 v0, 0x20

    ushr-long v0, v12, v0

    long-to-int v0, v0

    and-int/lit8 v8, v0, 0x1

    .line 829
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 830
    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 833
    mul-long v0, v10, v4

    add-long/2addr v6, v0

    .line 834
    long-to-int v9, v6

    .line 835
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 836
    ushr-int/lit8 v8, v9, 0x1f

    .line 837
    const/16 v0, 0x20

    ushr-long v0, v6, v0

    add-long/2addr v12, v0

    .line 840
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 841
    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 842
    const/4 v0, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 844
    mul-long v0, v14, v4

    add-long/2addr v12, v0

    .line 845
    long-to-int v9, v12

    .line 846
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 847
    ushr-int/lit8 v8, v9, 0x1f

    .line 848
    const/16 v0, 0x20

    ushr-long v0, v12, v0

    mul-long v2, v14, v10

    add-long/2addr v0, v2

    add-long v16, v16, v0

    .line 849
    const/16 v0, 0x20

    ushr-long v0, v16, v0

    add-long v18, v18, v0

    .line 850
    const-wide v0, 0xffffffffL

    and-long v16, v16, v0

    .line 853
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v20, v0, v2

    .line 854
    const/4 v0, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v22, v0, v2

    .line 855
    const/4 v0, 0x6

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v24, v0, v2

    .line 857
    mul-long v0, v20, v4

    add-long v16, v16, v0

    .line 858
    move-wide/from16 v0, v16

    long-to-int v9, v0

    .line 859
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 860
    ushr-int/lit8 v8, v9, 0x1f

    .line 861
    const/16 v0, 0x20

    ushr-long v0, v16, v0

    mul-long v2, v20, v10

    add-long/2addr v0, v2

    add-long v18, v18, v0

    .line 862
    const/16 v0, 0x20

    ushr-long v0, v18, v0

    mul-long v2, v20, v14

    add-long/2addr v0, v2

    add-long v22, v22, v0

    .line 863
    const-wide v0, 0xffffffffL

    and-long v18, v18, v0

    .line 864
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    add-long v24, v24, v0

    .line 865
    const-wide v0, 0xffffffffL

    and-long v22, v22, v0

    .line 868
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v26, v0, v2

    .line 869
    const/4 v0, 0x7

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v28, v0, v2

    .line 870
    const/16 v0, 0x8

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v30, v0, v2

    .line 872
    mul-long v0, v26, v4

    add-long v18, v18, v0

    .line 873
    move-wide/from16 v0, v18

    long-to-int v9, v0

    .line 874
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 875
    ushr-int/lit8 v8, v9, 0x1f

    .line 876
    const/16 v0, 0x20

    ushr-long v0, v18, v0

    mul-long v2, v26, v10

    add-long/2addr v0, v2

    add-long v22, v22, v0

    .line 877
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    mul-long v2, v26, v14

    add-long/2addr v0, v2

    add-long v24, v24, v0

    .line 878
    const-wide v0, 0xffffffffL

    and-long v22, v22, v0

    .line 879
    const/16 v0, 0x20

    ushr-long v0, v24, v0

    mul-long v2, v26, v20

    add-long/2addr v0, v2

    add-long v28, v28, v0

    .line 880
    const-wide v0, 0xffffffffL

    and-long v24, v24, v0

    .line 881
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    add-long v30, v30, v0

    .line 882
    const-wide v0, 0xffffffffL

    and-long v28, v28, v0

    .line 885
    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v32, v0, v2

    .line 886
    const/16 v0, 0x9

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v34, v0, v2

    .line 887
    const/16 v0, 0xa

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v36, v0, v2

    .line 889
    mul-long v0, v32, v4

    add-long v22, v22, v0

    .line 890
    move-wide/from16 v0, v22

    long-to-int v9, v0

    .line 891
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 892
    ushr-int/lit8 v8, v9, 0x1f

    .line 893
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    mul-long v2, v32, v10

    add-long/2addr v0, v2

    add-long v24, v24, v0

    .line 894
    const/16 v0, 0x20

    ushr-long v0, v24, v0

    mul-long v2, v32, v14

    add-long/2addr v0, v2

    add-long v28, v28, v0

    .line 895
    const-wide v0, 0xffffffffL

    and-long v24, v24, v0

    .line 896
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    mul-long v2, v32, v20

    add-long/2addr v0, v2

    add-long v30, v30, v0

    .line 897
    const-wide v0, 0xffffffffL

    and-long v28, v28, v0

    .line 898
    const/16 v0, 0x20

    ushr-long v0, v30, v0

    mul-long v2, v32, v26

    add-long/2addr v0, v2

    add-long v34, v34, v0

    .line 899
    const-wide v0, 0xffffffffL

    and-long v30, v30, v0

    .line 900
    const/16 v0, 0x20

    ushr-long v0, v34, v0

    add-long v36, v36, v0

    .line 901
    const-wide v0, 0xffffffffL

    and-long v34, v34, v0

    .line 904
    const/4 v0, 0x6

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v38, v0, v2

    .line 905
    const/16 v0, 0xb

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v40, v0, v2

    .line 906
    const/16 v0, 0xc

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v42, v0, v2

    .line 908
    mul-long v0, v38, v4

    add-long v24, v24, v0

    .line 909
    move-wide/from16 v0, v24

    long-to-int v9, v0

    .line 910
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x6

    aput v0, p1, v1

    .line 911
    ushr-int/lit8 v8, v9, 0x1f

    .line 912
    const/16 v0, 0x20

    ushr-long v0, v24, v0

    mul-long v2, v38, v10

    add-long/2addr v0, v2

    add-long v28, v28, v0

    .line 913
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    mul-long v2, v38, v14

    add-long/2addr v0, v2

    add-long v30, v30, v0

    .line 914
    const-wide v0, 0xffffffffL

    and-long v28, v28, v0

    .line 915
    const/16 v0, 0x20

    ushr-long v0, v30, v0

    mul-long v2, v38, v20

    add-long/2addr v0, v2

    add-long v34, v34, v0

    .line 916
    const-wide v0, 0xffffffffL

    and-long v30, v30, v0

    .line 917
    const/16 v0, 0x20

    ushr-long v0, v34, v0

    mul-long v2, v38, v26

    add-long/2addr v0, v2

    add-long v36, v36, v0

    .line 918
    const-wide v0, 0xffffffffL

    and-long v34, v34, v0

    .line 919
    const/16 v0, 0x20

    ushr-long v0, v36, v0

    mul-long v2, v38, v32

    add-long/2addr v0, v2

    add-long v40, v40, v0

    .line 920
    const-wide v0, 0xffffffffL

    and-long v36, v36, v0

    .line 921
    const/16 v0, 0x20

    ushr-long v0, v40, v0

    add-long v42, v42, v0

    .line 922
    const-wide v0, 0xffffffffL

    and-long v40, v40, v0

    .line 925
    const/4 v0, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v44, v0, v2

    .line 926
    const/16 v0, 0xd

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v46, v0, v2

    .line 927
    const/16 v0, 0xe

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v48, v0, v2

    .line 929
    mul-long v0, v44, v4

    add-long v28, v28, v0

    .line 930
    move-wide/from16 v0, v28

    long-to-int v9, v0

    .line 931
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x7

    aput v0, p1, v1

    .line 932
    ushr-int/lit8 v8, v9, 0x1f

    .line 933
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    mul-long v2, v44, v10

    add-long/2addr v0, v2

    add-long v30, v30, v0

    .line 934
    const/16 v0, 0x20

    ushr-long v0, v30, v0

    mul-long v2, v44, v14

    add-long/2addr v0, v2

    add-long v34, v34, v0

    .line 935
    const/16 v0, 0x20

    ushr-long v0, v34, v0

    mul-long v2, v44, v20

    add-long/2addr v0, v2

    add-long v36, v36, v0

    .line 936
    const/16 v0, 0x20

    ushr-long v0, v36, v0

    mul-long v2, v44, v26

    add-long/2addr v0, v2

    add-long v40, v40, v0

    .line 937
    const/16 v0, 0x20

    ushr-long v0, v40, v0

    mul-long v2, v44, v32

    add-long/2addr v0, v2

    add-long v42, v42, v0

    .line 938
    const/16 v0, 0x20

    ushr-long v0, v42, v0

    mul-long v2, v44, v38

    add-long/2addr v0, v2

    add-long v46, v46, v0

    .line 939
    const/16 v0, 0x20

    ushr-long v0, v46, v0

    add-long v48, v48, v0

    .line 942
    move-wide/from16 v0, v30

    long-to-int v9, v0

    .line 943
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0x8

    aput v0, p1, v1

    .line 944
    ushr-int/lit8 v8, v9, 0x1f

    .line 945
    move-wide/from16 v0, v34

    long-to-int v9, v0

    .line 946
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0x9

    aput v0, p1, v1

    .line 947
    ushr-int/lit8 v8, v9, 0x1f

    .line 948
    move-wide/from16 v0, v36

    long-to-int v9, v0

    .line 949
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0xa

    aput v0, p1, v1

    .line 950
    ushr-int/lit8 v8, v9, 0x1f

    .line 951
    move-wide/from16 v0, v40

    long-to-int v9, v0

    .line 952
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0xb

    aput v0, p1, v1

    .line 953
    ushr-int/lit8 v8, v9, 0x1f

    .line 954
    move-wide/from16 v0, v42

    long-to-int v9, v0

    .line 955
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0xc

    aput v0, p1, v1

    .line 956
    ushr-int/lit8 v8, v9, 0x1f

    .line 957
    move-wide/from16 v0, v46

    long-to-int v9, v0

    .line 958
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0xd

    aput v0, p1, v1

    .line 959
    ushr-int/lit8 v8, v9, 0x1f

    .line 960
    move-wide/from16 v0, v48

    long-to-int v9, v0

    .line 961
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0xe

    aput v0, p1, v1

    .line 962
    ushr-int/lit8 v8, v9, 0x1f

    .line 963
    const/16 v0, 0xf

    aget v0, p1, v0

    const/16 v1, 0x20

    shr-long v1, v48, v1

    long-to-int v1, v1

    add-int v9, v0, v1

    .line 964
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0xf

    aput v0, p1, v1

    .line 965
    return-void
.end method

.method public static ﹳ([I)Z
    .locals 2

    .line 355
    const/4 v1, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_1

    .line 357
    aget v0, p0, v1

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x0

    return v0

    .line 355
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ﹳ(Ljava/math/BigInteger;)[I
    .locals 4

    .line 279
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 284
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v2

    .line 285
    const/4 v3, 0x0

    .line 286
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    aput v1, v2, v0

    .line 289
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 291
    :cond_2
    return-object v2
.end method

.method public static ﾞ([I)Ljava/math/BigInteger;
    .locals 5

    .line 1283
    const/16 v0, 0x20

    new-array v2, v0, [B

    .line 1284
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v3, v0, :cond_1

    .line 1286
    aget v4, p0, v3

    .line 1287
    if-eqz v4, :cond_0

    .line 1289
    rsub-int/lit8 v0, v3, 0x7

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v4, v2, v0}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 1284
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1292
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method
