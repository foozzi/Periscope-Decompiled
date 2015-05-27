.class public Lo/ᵨ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᵨ$if;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final fm:Landroid/graphics/Bitmap$Config;


# instance fields
.field private fA:Z

.field private fn:[I

.field private fo:Ljava/nio/ByteBuffer;

.field private final fp:[B

.field private fq:[S

.field private fr:[B

.field private fs:[B

.field private ft:[B

.field private fu:[I

.field private fv:I

.field private fw:[B

.field private fx:Lo/ⅹ;

.field private fy:Lo/ᵨ$if;

.field private fz:Landroid/graphics/Bitmap;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lo/ᵨ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/ᵨ;->TAG:Ljava/lang/String;

    .line 104
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lo/ᵨ;->fm:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lo/ᵨ$if;)V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lo/ᵨ;->fp:[B

    .line 155
    iput-object p1, p0, Lo/ᵨ;->fy:Lo/ᵨ$if;

    .line 156
    new-instance v0, Lo/ⅹ;

    invoke-direct {v0}, Lo/ⅹ;-><init>()V

    iput-object v0, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    .line 157
    return-void
.end method

.method private read()I
    .locals 4

    .line 654
    const/4 v2, 0x0

    .line 656
    :try_start_0
    iget-object v0, p0, Lo/ᵨ;->fo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    move v2, v0

    .line 659
    goto :goto_0

    .line 657
    :catch_0
    move-exception v3

    .line 658
    const/4 v0, 0x1

    iput v0, p0, Lo/ᵨ;->status:I

    .line 660
    :goto_0
    return v2
.end method

.method private ˊ(Lo/ℴ;Lo/ℴ;)Landroid/graphics/Bitmap;
    .locals 22

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v8, v0, Lo/ⅹ;->width:I

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v9, v0, Lo/ⅹ;->height:I

    .line 430
    move-object/from16 v0, p0

    iget-object v10, v0, Lo/ᵨ;->fu:[I

    .line 433
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Lo/ℴ;->fH:I

    if-lez v0, :cond_2

    .line 436
    move-object/from16 v0, p2

    iget v0, v0, Lo/ℴ;->fH:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 438
    const/4 v11, 0x0

    .line 439
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lo/ℴ;->fG:Z

    if-nez v0, :cond_0

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v11, v0, Lo/ⅹ;->bgColor:I

    .line 442
    :cond_0
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    .line 443
    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Lo/ℴ;->fH:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fz:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fz:Landroid/graphics/Bitmap;

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 450
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lo/ᵨ;->ˊ(Lo/ℴ;)V

    .line 453
    const/4 v11, 0x1

    .line 454
    const/16 v12, 0x8

    .line 455
    const/4 v13, 0x0

    .line 456
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lo/ℴ;->fE:I

    if-ge v14, v0, :cond_8

    .line 457
    move v15, v14

    .line 458
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lo/ℴ;->fF:Z

    if-eqz v0, :cond_4

    .line 459
    move-object/from16 v0, p1

    iget v0, v0, Lo/ℴ;->fE:I

    if-lt v13, v0, :cond_3

    .line 460
    add-int/lit8 v11, v11, 0x1

    .line 461
    packed-switch v11, :pswitch_data_0

    goto :goto_2

    .line 463
    :pswitch_0
    const/4 v13, 0x4

    .line 464
    goto :goto_2

    .line 466
    :pswitch_1
    const/4 v13, 0x2

    .line 467
    const/4 v12, 0x4

    .line 468
    goto :goto_2

    .line 470
    :pswitch_2
    const/4 v13, 0x1

    .line 471
    const/4 v12, 0x2

    .line 472
    .line 477
    :cond_3
    :goto_2
    move v15, v13

    .line 478
    add-int/2addr v13, v12

    .line 480
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Lo/ℴ;->fC:I

    add-int/2addr v15, v0

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v0, v0, Lo/ⅹ;->height:I

    if-ge v15, v0, :cond_7

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v0, v0, Lo/ⅹ;->width:I

    mul-int v16, v15, v0

    .line 484
    move-object/from16 v0, p1

    iget v0, v0, Lo/ℴ;->fB:I

    add-int v17, v16, v0

    .line 486
    move-object/from16 v0, p1

    iget v0, v0, Lo/ℴ;->fD:I

    add-int v18, v17, v0

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v0, v0, Lo/ⅹ;->width:I

    add-int v0, v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v0, v0, Lo/ⅹ;->width:I

    add-int v18, v16, v0

    .line 492
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Lo/ℴ;->fD:I

    mul-int v19, v14, v0

    .line 493
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->ft:[B

    move/from16 v1, v19

    add-int/lit8 v19, v19, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    move/from16 v20, v1

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fn:[I

    aget v21, v0, v20

    .line 497
    if-eqz v21, :cond_6

    .line 498
    aput v21, v10, v17

    .line 500
    :cond_6
    add-int/lit8 v17, v17, 0x1

    .line 501
    goto :goto_3

    .line 456
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 506
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ᵨ;->fA:Z

    if-eqz v0, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Lo/ℴ;->fH:I

    if-eqz v0, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Lo/ℴ;->fH:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 508
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fz:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 509
    invoke-direct/range {p0 .. p0}, Lo/ᵨ;->Ⅼ()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᵨ;->fz:Landroid/graphics/Bitmap;

    .line 511
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fz:Landroid/graphics/Bitmap;

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 515
    :cond_b
    invoke-direct/range {p0 .. p0}, Lo/ᵨ;->Ⅼ()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 516
    move-object v0, v14

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 517
    return-object v14

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static ˊ(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 699
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 700
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 702
    :cond_0
    return-void
.end method

.method private ˊ(Lo/ℴ;)V
    .locals 21

    .line 524
    if-eqz p1, :cond_0

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fo:Ljava/nio/ByteBuffer;

    move-object/from16 v1, p1

    iget v1, v1, Lo/ℴ;->fJ:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 529
    :cond_0
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v0, v0, Lo/ⅹ;->width:I

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v1, v1, Lo/ⅹ;->height:I

    mul-int v3, v0, v1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lo/ℴ;->fD:I

    move-object/from16 v1, p1

    iget v1, v1, Lo/ℴ;->fE:I

    mul-int v3, v0, v1

    .line 533
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->ft:[B

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->ft:[B

    array-length v0, v0

    if-ge v0, v3, :cond_3

    .line 535
    :cond_2
    new-array v0, v3, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᵨ;->ft:[B

    .line 537
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fq:[S

    if-nez v0, :cond_4

    .line 538
    const/16 v0, 0x1000

    new-array v0, v0, [S

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᵨ;->fq:[S

    .line 540
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fr:[B

    if-nez v0, :cond_5

    .line 541
    const/16 v0, 0x1000

    new-array v0, v0, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᵨ;->fr:[B

    .line 543
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fs:[B

    if-nez v0, :cond_6

    .line 544
    const/16 v0, 0x1001

    new-array v0, v0, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᵨ;->fs:[B

    .line 548
    :cond_6
    invoke-direct/range {p0 .. p0}, Lo/ᵨ;->read()I

    move-result v16

    .line 549
    const/4 v0, 0x1

    shl-int v5, v0, v16

    .line 550
    add-int/lit8 v8, v5, 0x1

    .line 551
    add-int/lit8 v4, v5, 0x2

    .line 552
    const/4 v10, -0x1

    .line 553
    add-int/lit8 v7, v16, 0x1

    .line 554
    const/4 v0, 0x1

    shl-int/2addr v0, v7

    add-int/lit8 v6, v0, -0x1

    .line 555
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v5, :cond_7

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fq:[S

    const/4 v1, 0x0

    aput-short v1, v0, v12

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fr:[B

    int-to-byte v1, v12

    aput-byte v1, v0, v12

    .line 555
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 562
    :cond_7
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    .line 563
    const/4 v14, 0x0

    :cond_8
    :goto_2
    if-ge v14, v3, :cond_13

    .line 565
    if-nez v13, :cond_a

    .line 567
    invoke-direct/range {p0 .. p0}, Lo/ᵨ;->ΐ()I

    move-result v13

    .line 568
    if-gtz v13, :cond_9

    .line 569
    const/4 v0, 0x3

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᵨ;->status:I

    .line 570
    goto/16 :goto_6

    .line 572
    :cond_9
    const/16 v19, 0x0

    .line 575
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fp:[B

    aget-byte v0, v0, v19

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v11

    add-int/2addr v15, v0

    .line 576
    add-int/lit8 v11, v11, 0x8

    .line 577
    add-int/lit8 v19, v19, 0x1

    .line 578
    add-int/lit8 v13, v13, -0x1

    .line 580
    :cond_b
    :goto_3
    if-lt v11, v7, :cond_8

    .line 582
    and-int v12, v15, v6

    .line 583
    shr-int/2addr v15, v7

    .line 584
    sub-int/2addr v11, v7

    .line 587
    if-ne v12, v5, :cond_c

    .line 589
    add-int/lit8 v7, v16, 0x1

    .line 590
    const/4 v0, 0x1

    shl-int/2addr v0, v7

    add-int/lit8 v6, v0, -0x1

    .line 591
    add-int/lit8 v4, v5, 0x2

    .line 592
    const/4 v10, -0x1

    .line 593
    goto :goto_3

    .line 596
    :cond_c
    if-le v12, v4, :cond_d

    .line 597
    const/4 v0, 0x3

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᵨ;->status:I

    .line 598
    goto/16 :goto_2

    .line 601
    :cond_d
    if-ne v12, v8, :cond_e

    .line 602
    goto/16 :goto_2

    .line 605
    :cond_e
    const/4 v0, -0x1

    if-ne v10, v0, :cond_f

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fs:[B

    move/from16 v1, v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v2, p0

    iget-object v2, v2, Lo/ᵨ;->fr:[B

    aget-byte v2, v2, v12

    aput-byte v2, v0, v1

    .line 607
    move v10, v12

    .line 608
    move/from16 v17, v12

    .line 609
    goto :goto_3

    .line 611
    :cond_f
    move v9, v12

    .line 612
    if-lt v12, v4, :cond_10

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fs:[B

    move/from16 v1, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v2, v17

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 614
    move v12, v10

    .line 616
    :cond_10
    :goto_4
    if-lt v12, v5, :cond_11

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fs:[B

    move/from16 v1, v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v2, p0

    iget-object v2, v2, Lo/ᵨ;->fr:[B

    aget-byte v2, v2, v12

    aput-byte v2, v0, v1

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fq:[S

    aget-short v12, v0, v12

    goto :goto_4

    .line 620
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fr:[B

    aget-byte v0, v0, v12

    and-int/lit16 v1, v0, 0xff

    move/from16 v17, v1

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fs:[B

    move/from16 v1, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v2, v17

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 624
    const/16 v0, 0x1000

    if-ge v4, v0, :cond_12

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fq:[S

    int-to-short v1, v10

    aput-short v1, v0, v4

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->fr:[B

    move/from16 v1, v17

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 627
    add-int/lit8 v4, v4, 0x1

    .line 628
    and-int v0, v4, v6

    if-nez v0, :cond_12

    const/16 v0, 0x1000

    if-ge v4, v0, :cond_12

    .line 629
    add-int/lit8 v7, v7, 0x1

    .line 630
    add-int/2addr v6, v4

    .line 633
    :cond_12
    move v10, v9

    .line 635
    :goto_5
    if-lez v18, :cond_b

    .line 637
    add-int/lit8 v18, v18, -0x1

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->ft:[B

    move/from16 v1, v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v2, p0

    iget-object v2, v2, Lo/ᵨ;->fs:[B

    aget-byte v2, v2, v18

    aput-byte v2, v0, v1

    .line 639
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 645
    :cond_13
    :goto_6
    move/from16 v14, v20

    :goto_7
    if-ge v14, v3, :cond_14

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵨ;->ft:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v14

    .line 645
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 648
    :cond_14
    return-void
.end method

.method private ΐ()I
    .locals 5

    .line 669
    invoke-direct {p0}, Lo/ᵨ;->read()I

    move-result v2

    .line 670
    const/4 v3, 0x0

    .line 671
    if-lez v2, :cond_1

    .line 674
    :goto_0
    if-ge v3, v2, :cond_0

    .line 675
    sub-int v4, v2, v3

    .line 676
    :try_start_0
    iget-object v0, p0, Lo/ᵨ;->fo:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lo/ᵨ;->fp:[B

    invoke-virtual {v0, v1, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    add-int v0, v3, v4

    move v3, v0

    goto :goto_0

    .line 683
    :cond_0
    goto :goto_1

    .line 680
    :catch_0
    move-exception v4

    .line 681
    sget-object v0, Lo/ᵨ;->TAG:Ljava/lang/String;

    const-string v1, "Error Reading Block"

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    const/4 v0, 0x1

    iput v0, p0, Lo/ᵨ;->status:I

    .line 685
    :cond_1
    :goto_1
    return v3
.end method

.method private Ⅼ()Landroid/graphics/Bitmap;
    .locals 5

    .line 689
    iget-object v0, p0, Lo/ᵨ;->fy:Lo/ᵨ$if;

    iget-object v1, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v1, v1, Lo/ⅹ;->width:I

    iget-object v2, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v2, v2, Lo/ⅹ;->height:I

    sget-object v3, Lo/ᵨ;->fm:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1, v2, v3}, Lo/ᵨ$if;->ˊ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 690
    if-nez v4, :cond_0

    .line 691
    iget-object v0, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v0, v0, Lo/ⅹ;->width:I

    iget-object v1, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v1, v1, Lo/ⅹ;->height:I

    sget-object v2, Lo/ᵨ;->fm:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 693
    :cond_0
    invoke-static {v4}, Lo/ᵨ;->ˊ(Landroid/graphics/Bitmap;)V

    .line 694
    return-object v4
.end method


# virtual methods
.method public advance()V
    .locals 2

    .line 187
    iget v0, p0, Lo/ᵨ;->fv:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v1, v1, Lo/ⅹ;->fM:I

    rem-int/2addr v0, v1

    iput v0, p0, Lo/ᵨ;->fv:I

    .line 188
    return-void
.end method

.method public clear()V
    .locals 2

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᵨ;->fw:[B

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᵨ;->ft:[B

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᵨ;->fu:[I

    .line 351
    iget-object v0, p0, Lo/ᵨ;->fz:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lo/ᵨ;->fy:Lo/ᵨ$if;

    iget-object v1, p0, Lo/ᵨ;->fz:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lo/ᵨ$if;->ˋ(Landroid/graphics/Bitmap;)V

    .line 354
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᵨ;->fz:Landroid/graphics/Bitmap;

    .line 355
    return-void
.end method

.method public getFrameCount()I
    .locals 1

    .line 221
    iget-object v0, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v0, v0, Lo/ⅹ;->fM:I

    return v0
.end method

.method public ˊ(Lo/ⅹ;[B)V
    .locals 4

    .line 358
    iput-object p1, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    .line 359
    iput-object p2, p0, Lo/ᵨ;->fw:[B

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lo/ᵨ;->status:I

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Lo/ᵨ;->fv:I

    .line 363
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/ᵨ;->fo:Ljava/nio/ByteBuffer;

    .line 364
    iget-object v0, p0, Lo/ᵨ;->fo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 365
    iget-object v0, p0, Lo/ᵨ;->fo:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᵨ;->fA:Z

    .line 370
    iget-object v0, p1, Lo/ⅹ;->fO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ℴ;

    move-object v3, v0

    .line 371
    iget v0, v3, Lo/ℴ;->fH:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᵨ;->fA:Z

    .line 373
    goto :goto_1

    :cond_0
    goto :goto_0

    .line 378
    :cond_1
    :goto_1
    iget v0, p1, Lo/ⅹ;->width:I

    iget v1, p1, Lo/ⅹ;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lo/ᵨ;->ft:[B

    .line 379
    iget v0, p1, Lo/ⅹ;->width:I

    iget v1, p1, Lo/ⅹ;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lo/ᵨ;->fu:[I

    .line 380
    return-void
.end method

.method public Ι(I)I
    .locals 2

    .line 197
    const/4 v1, -0x1

    .line 198
    if-ltz p1, :cond_0

    iget-object v0, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v0, v0, Lo/ⅹ;->fM:I

    if-ge p1, v0, :cond_0

    .line 199
    iget-object v0, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ℴ;

    iget v1, v0, Lo/ℴ;->delay:I

    .line 201
    :cond_0
    return v1
.end method

.method public ṟ()I
    .locals 1

    .line 208
    iget-object v0, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v0, v0, Lo/ⅹ;->fM:I

    if-lez v0, :cond_0

    iget v0, p0, Lo/ᵨ;->fv:I

    if-gez v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 212
    :cond_1
    iget v0, p0, Lo/ᵨ;->fv:I

    invoke-virtual {p0, v0}, Lo/ᵨ;->Ι(I)I

    move-result v0

    return v0
.end method

.method public ẛ()I
    .locals 1

    .line 230
    iget v0, p0, Lo/ᵨ;->fv:I

    return v0
.end method

.method public Ỉ()I
    .locals 1

    .line 243
    iget-object v0, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v0, v0, Lo/ⅹ;->fT:I

    return v0
.end method

.method public declared-synchronized ῒ()Landroid/graphics/Bitmap;
    .locals 8

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v0, v0, Lo/ⅹ;->fM:I

    if-lez v0, :cond_0

    iget v0, p0, Lo/ᵨ;->fv:I

    if-gez v0, :cond_2

    .line 253
    :cond_0
    sget-object v0, Lo/ᵨ;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    sget-object v0, Lo/ᵨ;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to decode frame, frameCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v2, v2, Lo/ⅹ;->fM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " framePointer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/ᵨ;->fv:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lo/ᵨ;->status:I

    .line 258
    :cond_2
    iget v0, p0, Lo/ᵨ;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lo/ᵨ;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 259
    :cond_3
    sget-object v0, Lo/ᵨ;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    sget-object v0, Lo/ᵨ;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/ᵨ;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_4
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 264
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lo/ᵨ;->status:I

    .line 266
    iget-object v0, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fO:Ljava/util/List;

    iget v1, p0, Lo/ᵨ;->fv:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ℴ;

    move-object v3, v0

    .line 267
    const/4 v4, 0x0

    .line 268
    iget v0, p0, Lo/ᵨ;->fv:I

    add-int/lit8 v5, v0, -0x1

    .line 269
    if-ltz v5, :cond_6

    .line 270
    iget-object v0, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fO:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ℴ;

    move-object v4, v0

    .line 274
    :cond_6
    iget-object v0, v3, Lo/ℴ;->fK:[I

    if-nez v0, :cond_7

    .line 275
    iget-object v0, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fL:[I

    iput-object v0, p0, Lo/ᵨ;->fn:[I

    goto :goto_0

    .line 277
    :cond_7
    iget-object v0, v3, Lo/ℴ;->fK:[I

    iput-object v0, p0, Lo/ᵨ;->fn:[I

    .line 278
    iget-object v0, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    iget v0, v0, Lo/ⅹ;->fR:I

    iget v1, v3, Lo/ℴ;->fI:I

    if-ne v0, v1, :cond_8

    .line 279
    iget-object v0, p0, Lo/ᵨ;->fx:Lo/ⅹ;

    const/4 v1, 0x0

    iput v1, v0, Lo/ⅹ;->bgColor:I

    .line 283
    :cond_8
    :goto_0
    const/4 v6, 0x0

    .line 284
    iget-boolean v0, v3, Lo/ℴ;->fG:Z

    if-eqz v0, :cond_9

    .line 285
    iget-object v0, p0, Lo/ᵨ;->fn:[I

    iget v1, v3, Lo/ℴ;->fI:I

    aget v6, v0, v1

    .line 287
    iget-object v0, p0, Lo/ᵨ;->fn:[I

    iget v1, v3, Lo/ℴ;->fI:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 289
    :cond_9
    iget-object v0, p0, Lo/ᵨ;->fn:[I

    if-nez v0, :cond_b

    .line 290
    sget-object v0, Lo/ᵨ;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 291
    sget-object v0, Lo/ᵨ;->TAG:Ljava/lang/String;

    const-string v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_a
    const/4 v0, 0x1

    iput v0, p0, Lo/ᵨ;->status:I

    .line 295
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 299
    :cond_b
    invoke-direct {p0, v3, v4}, Lo/ᵨ;->ˊ(Lo/ℴ;Lo/ℴ;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 302
    iget-boolean v0, v3, Lo/ℴ;->fG:Z

    if-eqz v0, :cond_c

    .line 303
    iget-object v0, p0, Lo/ᵨ;->fn:[I

    iget v1, v3, Lo/ℴ;->fI:I

    aput v6, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_c
    monitor-exit p0

    return-object v7

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
