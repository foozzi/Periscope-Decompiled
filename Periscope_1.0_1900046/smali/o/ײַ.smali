.class public Lo/ײַ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private delay:I

.field private fH:I

.field private fI:I

.field private fV:Ljava/lang/Integer;

.field private fW:I

.field private fX:Landroid/graphics/Bitmap;

.field private fY:[B

.field private fZ:[B

.field private ga:I

.field private gb:[B

.field private gc:[Z

.field private gd:I

.field private ge:Z

.field private gf:Z

.field private gg:Z

.field private gh:I

.field private gi:Z

.field private height:I

.field private out:Ljava/io/OutputStream;

.field private started:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ײַ;->fV:Ljava/lang/Integer;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lo/ײַ;->fW:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lo/ײַ;->delay:I

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ײַ;->started:Z

    .line 70
    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Lo/ײַ;->gc:[Z

    .line 72
    const/4 v0, 0x7

    iput v0, p0, Lo/ײַ;->gd:I

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lo/ײַ;->fH:I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ײַ;->ge:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ײַ;->gf:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ײַ;->gg:Z

    .line 82
    const/16 v0, 0xa

    iput v0, p0, Lo/ײַ;->gh:I

    return-void
.end method

.method private writeShort(I)V
    .locals 3

    .line 519
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 520
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 521
    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .locals 3

    .line 527
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 528
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    :cond_0
    return-void
.end method

.method private ċ()V
    .locals 3

    .line 470
    iget v0, p0, Lo/ײַ;->width:I

    invoke-direct {p0, v0}, Lo/ײַ;->writeShort(I)V

    .line 471
    iget v0, p0, Lo/ײַ;->height:I

    invoke-direct {p0, v0}, Lo/ײַ;->writeShort(I)V

    .line 473
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    iget v1, p0, Lo/ײַ;->gd:I

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 478
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 479
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 480
    return-void
.end method

.method private ĩ()V
    .locals 2

    .line 486
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 487
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 488
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 489
    const-string v0, "NETSCAPE2.0"

    invoke-direct {p0, v0}, Lo/ײַ;->writeString(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 491
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 492
    iget v0, p0, Lo/ײַ;->fW:I

    invoke-direct {p0, v0}, Lo/ײַ;->writeShort(I)V

    .line 493
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 494
    return-void
.end method

.method private ɽ()V
    .locals 6

    .line 500
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lo/ײַ;->gb:[B

    iget-object v2, p0, Lo/ײַ;->gb:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 501
    iget-object v0, p0, Lo/ײַ;->gb:[B

    array-length v0, v0

    rsub-int v4, v0, 0x300

    .line 502
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 503
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 502
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 505
    :cond_0
    return-void
.end method

.method private ʃ()V
    .locals 5

    .line 511
    new-instance v4, Lo/ﬧ;

    iget v0, p0, Lo/ײַ;->width:I

    iget v1, p0, Lo/ײַ;->height:I

    iget-object v2, p0, Lo/ײַ;->fZ:[B

    iget v3, p0, Lo/ײַ;->ga:I

    invoke-direct {v4, v0, v1, v2, v3}, Lo/ﬧ;-><init>(II[BI)V

    .line 512
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Lo/ﬧ;->encode(Ljava/io/OutputStream;)V

    .line 513
    return-void
.end method

.method private ї(I)I
    .locals 14

    .line 347
    iget-object v0, p0, Lo/ײַ;->gb:[B

    if-nez v0, :cond_0

    .line 348
    const/4 v0, -0x1

    return v0

    .line 349
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 350
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 351
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 352
    const/4 v5, 0x0

    .line 353
    const/high16 v6, 0x1000000

    .line 354
    iget-object v0, p0, Lo/ײַ;->gb:[B

    array-length v7, v0

    .line 355
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    .line 356
    iget-object v0, p0, Lo/ײַ;->gb:[B

    move v1, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sub-int v9, v2, v0

    .line 357
    iget-object v0, p0, Lo/ײַ;->gb:[B

    move v1, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sub-int v10, v3, v0

    .line 358
    iget-object v0, p0, Lo/ײַ;->gb:[B

    aget-byte v0, v0, v8

    and-int/lit16 v0, v0, 0xff

    sub-int v11, v4, v0

    .line 359
    mul-int v0, v9, v9

    mul-int v1, v10, v10

    add-int/2addr v0, v1

    mul-int v1, v11, v11

    add-int v12, v0, v1

    .line 360
    div-int/lit8 v13, v8, 0x3

    .line 361
    iget-object v0, p0, Lo/ײַ;->gc:[Z

    aget-boolean v0, v0, v13

    if-eqz v0, :cond_1

    if-ge v12, v6, :cond_1

    .line 362
    move v6, v12

    .line 363
    move v5, v13

    .line 365
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 366
    goto :goto_0

    .line 367
    :cond_2
    return v5
.end method

.method private ｧ()V
    .locals 10

    .line 311
    iget-object v0, p0, Lo/ײַ;->fY:[B

    array-length v4, v0

    .line 312
    div-int/lit8 v5, v4, 0x3

    .line 313
    new-array v0, v5, [B

    iput-object v0, p0, Lo/ײַ;->fZ:[B

    .line 314
    new-instance v6, Lo/דּ;

    iget-object v0, p0, Lo/ײַ;->fY:[B

    iget v1, p0, Lo/ײַ;->gh:I

    invoke-direct {v6, v0, v4, v1}, Lo/דּ;-><init>([BII)V

    .line 316
    invoke-virtual {v6}, Lo/דּ;->ч()[B

    move-result-object v0

    iput-object v0, p0, Lo/ײַ;->gb:[B

    .line 318
    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lo/ײַ;->gb:[B

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 319
    iget-object v0, p0, Lo/ײַ;->gb:[B

    aget-byte v8, v0, v7

    .line 320
    iget-object v0, p0, Lo/ײַ;->gb:[B

    iget-object v1, p0, Lo/ײַ;->gb:[B

    add-int/lit8 v2, v7, 0x2

    aget-byte v1, v1, v2

    aput-byte v1, v0, v7

    .line 321
    iget-object v0, p0, Lo/ײַ;->gb:[B

    add-int/lit8 v1, v7, 0x2

    aput-byte v8, v0, v1

    .line 322
    iget-object v0, p0, Lo/ײַ;->gc:[Z

    div-int/lit8 v1, v7, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 318
    add-int/lit8 v7, v7, 0x3

    goto :goto_0

    .line 325
    :cond_0
    const/4 v7, 0x0

    .line 326
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_1

    .line 327
    iget-object v0, p0, Lo/ײַ;->fY:[B

    move v1, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lo/ײַ;->fY:[B

    move v2, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lo/ײַ;->fY:[B

    move v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v6, v0, v1, v2}, Lo/דּ;->ͺ(III)I

    move-result v9

    .line 328
    iget-object v0, p0, Lo/ײַ;->gc:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v9

    .line 329
    iget-object v0, p0, Lo/ײַ;->fZ:[B

    int-to-byte v1, v9

    aput-byte v1, v0, v8

    .line 326
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 331
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ײַ;->fY:[B

    .line 332
    const/16 v0, 0x8

    iput v0, p0, Lo/ײַ;->ga:I

    .line 333
    const/4 v0, 0x7

    iput v0, p0, Lo/ײַ;->gd:I

    .line 335
    iget-object v0, p0, Lo/ײַ;->fV:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lo/ײַ;->fV:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lo/ײַ;->ї(I)I

    move-result v0

    iput v0, p0, Lo/ײַ;->fI:I

    goto :goto_2

    .line 337
    :cond_2
    iget-boolean v0, p0, Lo/ײַ;->gi:Z

    if-eqz v0, :cond_3

    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ײַ;->ї(I)I

    move-result v0

    iput v0, p0, Lo/ײַ;->fI:I

    .line 340
    :cond_3
    :goto_2
    return-void
.end method

.method private ｲ()V
    .locals 17

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ײַ;->fX:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ײַ;->fX:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 377
    move-object/from16 v0, p0

    iget v0, v0, Lo/ײַ;->width:I

    if-ne v8, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lo/ײַ;->height:I

    if-eq v9, v0, :cond_1

    .line 379
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lo/ײַ;->width:I

    move-object/from16 v1, p0

    iget v1, v1, Lo/ײַ;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 380
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 381
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 382
    move-object/from16 v0, p0

    iput-object v10, v0, Lo/ײַ;->fX:Landroid/graphics/Bitmap;

    .line 384
    :cond_1
    mul-int v0, v8, v9

    new-array v10, v0, [I

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ײַ;->fX:Landroid/graphics/Bitmap;

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 388
    array-length v0, v10

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ײַ;->fY:[B

    .line 390
    const/4 v11, 0x0

    .line 391
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/ײַ;->gi:Z

    .line 392
    const/4 v12, 0x0

    .line 393
    move-object v13, v10

    array-length v14, v13

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_3

    aget v16, v13, v15

    .line 394
    if-nez v16, :cond_2

    .line 395
    add-int/lit8 v12, v12, 0x1

    .line 397
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ײַ;->fY:[B

    move v1, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v16

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ײַ;->fY:[B

    move v1, v11

    add-int/lit8 v11, v11, 0x1

    shr-int/lit8 v2, v16, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ײַ;->fY:[B

    move v1, v11

    add-int/lit8 v11, v11, 0x1

    shr-int/lit8 v2, v16, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 393
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 402
    :cond_3
    mul-int/lit8 v0, v12, 0x64

    int-to-double v0, v0

    array-length v2, v10

    int-to-double v2, v2

    div-double v13, v0, v2

    .line 405
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    cmpl-double v0, v13, v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/ײַ;->gi:Z

    .line 406
    const-string v0, "AnimatedGifEncoder"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 407
    const-string v0, "AnimatedGifEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got pixels for frame with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% transparent pixels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_5
    return-void
.end method

.method private ﾌ()V
    .locals 5

    .line 415
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 416
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/16 v1, 0xf9

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 417
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 419
    iget-object v0, p0, Lo/ײַ;->fV:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/ײַ;->gi:Z

    if-nez v0, :cond_0

    .line 420
    const/4 v3, 0x0

    .line 421
    const/4 v4, 0x0

    goto :goto_0

    .line 423
    :cond_0
    const/4 v3, 0x1

    .line 424
    const/4 v4, 0x2

    .line 426
    :goto_0
    iget v0, p0, Lo/ײַ;->fH:I

    if-ltz v0, :cond_1

    .line 427
    iget v0, p0, Lo/ײַ;->fH:I

    and-int/lit8 v4, v0, 0x7

    .line 429
    :cond_1
    shl-int/lit8 v4, v4, 0x2

    .line 432
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    or-int/lit8 v1, v4, 0x0

    or-int/lit8 v1, v1, 0x0

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 437
    iget v0, p0, Lo/ײַ;->delay:I

    invoke-direct {p0, v0}, Lo/ײַ;->writeShort(I)V

    .line 438
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    iget v1, p0, Lo/ײַ;->fI:I

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 439
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 440
    return-void
.end method

.method private ﾍ()V
    .locals 3

    .line 446
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ײַ;->writeShort(I)V

    .line 448
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ײַ;->writeShort(I)V

    .line 449
    iget v0, p0, Lo/ײַ;->width:I

    invoke-direct {p0, v0}, Lo/ײַ;->writeShort(I)V

    .line 450
    iget v0, p0, Lo/ײַ;->height:I

    invoke-direct {p0, v0}, Lo/ײַ;->writeShort(I)V

    .line 452
    iget-boolean v0, p0, Lo/ײַ;->gf:Z

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    iget v1, p0, Lo/ײַ;->gd:I

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 463
    :goto_0
    return-void
.end method


# virtual methods
.method public setSize(II)V
    .locals 2

    .line 255
    iget-boolean v0, p0, Lo/ײַ;->started:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/ײַ;->gf:Z

    if-nez v0, :cond_0

    .line 256
    return-void

    .line 257
    :cond_0
    iput p1, p0, Lo/ײַ;->width:I

    .line 258
    iput p2, p0, Lo/ײַ;->height:I

    .line 259
    iget v0, p0, Lo/ײַ;->width:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 260
    const/16 v0, 0x140

    iput v0, p0, Lo/ײַ;->width:I

    .line 261
    :cond_1
    iget v0, p0, Lo/ײַ;->height:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 262
    const/16 v0, 0xf0

    iput v0, p0, Lo/ײַ;->height:I

    .line 263
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ײַ;->gg:Z

    .line 264
    return-void
.end method

.method public ˊ(Ljava/io/OutputStream;)Z
    .locals 3

    .line 275
    if-nez p1, :cond_0

    .line 276
    const/4 v0, 0x0

    return v0

    .line 277
    :cond_0
    const/4 v1, 0x1

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ײַ;->ge:Z

    .line 279
    iput-object p1, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    .line 281
    const-string v0, "GIF89a"

    :try_start_0
    invoke-direct {p0, v0}, Lo/ײַ;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_0

    .line 282
    :catch_0
    move-exception v2

    .line 283
    const/4 v1, 0x0

    .line 285
    :goto_0
    iput-boolean v1, p0, Lo/ײַ;->started:Z

    return v1
.end method

.method public ˎ(Landroid/graphics/Bitmap;)Z
    .locals 4

    .line 151
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lo/ײַ;->started:Z

    if-nez v0, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_1
    const/4 v2, 0x1

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lo/ײַ;->gg:Z

    if-nez v0, :cond_2

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lo/ײַ;->setSize(II)V

    .line 160
    :cond_2
    iput-object p1, p0, Lo/ײַ;->fX:Landroid/graphics/Bitmap;

    .line 161
    invoke-direct {p0}, Lo/ײַ;->ｲ()V

    .line 162
    invoke-direct {p0}, Lo/ײַ;->ｧ()V

    .line 163
    iget-boolean v0, p0, Lo/ײַ;->gf:Z

    if-eqz v0, :cond_3

    .line 164
    invoke-direct {p0}, Lo/ײַ;->ċ()V

    .line 165
    invoke-direct {p0}, Lo/ײַ;->ɽ()V

    .line 166
    iget v0, p0, Lo/ײַ;->fW:I

    if-ltz v0, :cond_3

    .line 168
    invoke-direct {p0}, Lo/ײַ;->ĩ()V

    .line 171
    :cond_3
    invoke-direct {p0}, Lo/ײַ;->ﾌ()V

    .line 172
    invoke-direct {p0}, Lo/ײַ;->ﾍ()V

    .line 173
    iget-boolean v0, p0, Lo/ײַ;->gf:Z

    if-nez v0, :cond_4

    .line 174
    invoke-direct {p0}, Lo/ײַ;->ɽ()V

    .line 176
    :cond_4
    invoke-direct {p0}, Lo/ײַ;->ʃ()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ײַ;->gf:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 178
    :catch_0
    move-exception v3

    .line 179
    const/4 v2, 0x0

    .line 182
    :goto_0
    return v2
.end method

.method public і(I)V
    .locals 2

    .line 94
    int-to-float v0, p1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lo/ײַ;->delay:I

    .line 95
    return-void
.end method

.method public Ｌ()Z
    .locals 4

    .line 190
    iget-boolean v0, p0, Lo/ײַ;->started:Z

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_0
    const/4 v2, 0x1

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ײַ;->started:Z

    .line 195
    :try_start_0
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 196
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 197
    iget-boolean v0, p0, Lo/ײַ;->ge:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_1
    goto :goto_0

    .line 200
    :catch_0
    move-exception v3

    .line 201
    const/4 v2, 0x0

    .line 205
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lo/ײַ;->fI:I

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ײַ;->out:Ljava/io/OutputStream;

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ײַ;->fX:Landroid/graphics/Bitmap;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ײַ;->fY:[B

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ײַ;->fZ:[B

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ײַ;->gb:[B

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ײַ;->ge:Z

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ײַ;->gf:Z

    .line 214
    return v2
.end method
