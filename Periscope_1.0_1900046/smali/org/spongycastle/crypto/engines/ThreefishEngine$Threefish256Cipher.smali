.class final Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;
.super Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Threefish256Cipher"
.end annotation


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    .line 460
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    .line 461
    return-void
.end method


# virtual methods
.method ˋ([J[J)V
    .locals 20

    .line 465
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->aMi:[J

    .line 466
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->aMh:[J

    .line 467
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->jK()[I

    move-result-object v7

    .line 468
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->jL()[I

    move-result-object v8

    .line 471
    array-length v0, v5

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 473
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 475
    :cond_0
    array-length v0, v6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 483
    :cond_1
    const/4 v0, 0x0

    aget-wide v9, p1, v0

    .line 484
    const/4 v0, 0x1

    aget-wide v11, p1, v0

    .line 485
    const/4 v0, 0x2

    aget-wide v13, p1, v0

    .line 486
    const/4 v0, 0x3

    aget-wide v15, p1, v0

    .line 491
    const/4 v0, 0x0

    aget-wide v0, v5, v0

    add-long/2addr v9, v0

    .line 492
    const/4 v0, 0x1

    aget-wide v0, v5, v0

    const/4 v2, 0x0

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long/2addr v11, v0

    .line 493
    const/4 v0, 0x2

    aget-wide v0, v5, v0

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long/2addr v13, v0

    .line 494
    const/4 v0, 0x3

    aget-wide v0, v5, v0

    add-long/2addr v15, v0

    .line 507
    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    const/16 v1, 0x12

    if-ge v0, v1, :cond_2

    .line 509
    aget v18, v7, v17

    .line 510
    aget v19, v8, v17

    .line 518
    add-long v0, v9, v11

    move-wide v9, v0

    const/16 v2, 0xe

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 519
    add-long v0, v13, v15

    move-wide v13, v0

    move-wide v2, v15

    const/16 v4, 0x10

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 521
    add-long v0, v9, v15

    move-wide v9, v0

    move-wide v2, v15

    const/16 v4, 0x34

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 522
    add-long v0, v13, v11

    move-wide v13, v0

    const/16 v2, 0x39

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 524
    add-long v0, v9, v11

    move-wide v9, v0

    const/16 v2, 0x17

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 525
    add-long v0, v13, v15

    move-wide v13, v0

    move-wide v2, v15

    const/16 v4, 0x28

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 527
    add-long v0, v9, v15

    move-wide v9, v0

    move-wide v2, v15

    const/4 v4, 0x5

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 528
    add-long v0, v13, v11

    move-wide v13, v0

    const/16 v2, 0x25

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 533
    aget-wide v0, v5, v18

    add-long/2addr v9, v0

    .line 534
    add-int/lit8 v0, v18, 0x1

    aget-wide v0, v5, v0

    aget-wide v2, v6, v19

    add-long/2addr v0, v2

    add-long/2addr v11, v0

    .line 535
    add-int/lit8 v0, v18, 0x2

    aget-wide v0, v5, v0

    add-int/lit8 v2, v19, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long/2addr v13, v0

    .line 536
    add-int/lit8 v0, v18, 0x3

    aget-wide v0, v5, v0

    move/from16 v2, v17

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-long/2addr v15, v0

    .line 541
    add-long v0, v9, v11

    move-wide v9, v0

    const/16 v2, 0x19

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 542
    add-long v0, v13, v15

    move-wide v13, v0

    move-wide v2, v15

    const/16 v4, 0x21

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 544
    add-long v0, v9, v15

    move-wide v9, v0

    move-wide v2, v15

    const/16 v4, 0x2e

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 545
    add-long v0, v13, v11

    move-wide v13, v0

    const/16 v2, 0xc

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 547
    add-long v0, v9, v11

    move-wide v9, v0

    const/16 v2, 0x3a

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 548
    add-long v0, v13, v15

    move-wide v13, v0

    move-wide v2, v15

    const/16 v4, 0x16

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 550
    add-long v0, v9, v15

    move-wide v9, v0

    move-wide v2, v15

    const/16 v4, 0x20

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 551
    add-long v0, v13, v11

    move-wide v13, v0

    const/16 v2, 0x20

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 556
    add-int/lit8 v0, v18, 0x1

    aget-wide v0, v5, v0

    add-long/2addr v9, v0

    .line 557
    add-int/lit8 v0, v18, 0x2

    aget-wide v0, v5, v0

    add-int/lit8 v2, v19, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long/2addr v11, v0

    .line 558
    add-int/lit8 v0, v18, 0x3

    aget-wide v0, v5, v0

    add-int/lit8 v2, v19, 0x2

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long/2addr v13, v0

    .line 559
    add-int/lit8 v0, v18, 0x4

    aget-wide v0, v5, v0

    move/from16 v2, v17

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    add-long/2addr v15, v0

    .line 507
    add-int/lit8 v17, v17, 0x2

    goto/16 :goto_0

    .line 565
    :cond_2
    const/4 v0, 0x0

    aput-wide v9, p2, v0

    .line 566
    const/4 v0, 0x1

    aput-wide v11, p2, v0

    .line 567
    const/4 v0, 0x2

    aput-wide v13, p2, v0

    .line 568
    const/4 v0, 0x3

    aput-wide v15, p2, v0

    .line 569
    return-void
.end method

.method ˎ([J[J)V
    .locals 19

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->aMi:[J

    .line 574
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->aMh:[J

    .line 575
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->jK()[I

    move-result-object v6

    .line 576
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->jL()[I

    move-result-object v7

    .line 579
    array-length v0, v4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 583
    :cond_0
    array-length v0, v5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 588
    :cond_1
    const/4 v0, 0x0

    aget-wide v8, p1, v0

    .line 589
    const/4 v0, 0x1

    aget-wide v10, p1, v0

    .line 590
    const/4 v0, 0x2

    aget-wide v12, p1, v0

    .line 591
    const/4 v0, 0x3

    aget-wide v14, p1, v0

    .line 593
    const/16 v16, 0x11

    :goto_0
    move/from16 v0, v16

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 595
    aget v17, v6, v16

    .line 596
    aget v18, v7, v16

    .line 599
    add-int/lit8 v0, v17, 0x1

    aget-wide v0, v4, v0

    sub-long/2addr v8, v0

    .line 600
    add-int/lit8 v0, v17, 0x2

    aget-wide v0, v4, v0

    add-int/lit8 v2, v18, 0x1

    aget-wide v2, v5, v2

    add-long/2addr v0, v2

    sub-long/2addr v10, v0

    .line 601
    add-int/lit8 v0, v17, 0x3

    aget-wide v0, v4, v0

    add-int/lit8 v2, v18, 0x2

    aget-wide v2, v5, v2

    add-long/2addr v0, v2

    sub-long/2addr v12, v0

    .line 602
    add-int/lit8 v0, v17, 0x4

    aget-wide v0, v4, v0

    move/from16 v2, v16

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sub-long/2addr v14, v0

    .line 606
    const/16 v0, 0x20

    invoke-static {v14, v15, v0, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v14

    .line 607
    sub-long/2addr v8, v14

    .line 608
    const/16 v0, 0x20

    invoke-static {v10, v11, v0, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v10

    .line 609
    sub-long/2addr v12, v10

    .line 611
    const/16 v0, 0x3a

    invoke-static {v10, v11, v0, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v10

    .line 612
    sub-long/2addr v8, v10

    .line 613
    const/16 v0, 0x16

    invoke-static {v14, v15, v0, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v14

    .line 614
    sub-long/2addr v12, v14

    .line 616
    const/16 v0, 0x2e

    invoke-static {v14, v15, v0, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v14

    .line 617
    sub-long/2addr v8, v14

    .line 618
    const/16 v0, 0xc

    invoke-static {v10, v11, v0, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v10

    .line 619
    sub-long/2addr v12, v10

    .line 621
    const/16 v0, 0x19

    invoke-static {v10, v11, v0, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v10

    .line 622
    sub-long/2addr v8, v10

    .line 623
    const/16 v0, 0x21

    invoke-static {v14, v15, v0, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v14

    .line 624
    sub-long/2addr v12, v14

    .line 627
    aget-wide v0, v4, v17

    sub-long/2addr v8, v0

    .line 628
    add-int/lit8 v0, v17, 0x1

    aget-wide v0, v4, v0

    aget-wide v2, v5, v18

    add-long/2addr v0, v2

    sub-long/2addr v10, v0

    .line 629
    add-int/lit8 v0, v17, 0x2

    aget-wide v0, v4, v0

    add-int/lit8 v2, v18, 0x1

    aget-wide v2, v5, v2

    add-long/2addr v0, v2

    sub-long/2addr v12, v0

    .line 630
    add-int/lit8 v0, v17, 0x3

    aget-wide v0, v4, v0

    move/from16 v2, v16

    int-to-long v2, v2

    add-long/2addr v0, v2

    sub-long/2addr v14, v0

    .line 633
    const/4 v0, 0x5

    invoke-static {v14, v15, v0, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v14

    .line 634
    sub-long/2addr v8, v14

    .line 635
    const/16 v0, 0x25

    invoke-static {v10, v11, v0, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v10

    .line 636
    sub-long/2addr v12, v10

    .line 638
    const/16 v0, 0x17

    invoke-static {v10, v11, v0, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v10

    .line 639
    sub-long/2addr v8, v10

    .line 640
    const/16 v0, 0x28

    invoke-static {v14, v15, v0, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v14

    .line 641
    sub-long/2addr v12, v14

    .line 643
    const/16 v0, 0x34

    invoke-static {v14, v15, v0, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v14

    .line 644
    sub-long/2addr v8, v14

    .line 645
    const/16 v0, 0x39

    invoke-static {v10, v11, v0, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v10

    .line 646
    sub-long/2addr v12, v10

    .line 648
    const/16 v0, 0xe

    invoke-static {v10, v11, v0, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v10

    .line 649
    sub-long/2addr v8, v10

    .line 650
    const/16 v0, 0x10

    invoke-static {v14, v15, v0, v12, v13}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v14

    .line 651
    sub-long/2addr v12, v14

    .line 593
    add-int/lit8 v16, v16, -0x2

    goto/16 :goto_0

    .line 657
    :cond_2
    const/4 v0, 0x0

    aget-wide v0, v4, v0

    sub-long/2addr v8, v0

    .line 658
    const/4 v0, 0x1

    aget-wide v0, v4, v0

    const/4 v2, 0x0

    aget-wide v2, v5, v2

    add-long/2addr v0, v2

    sub-long/2addr v10, v0

    .line 659
    const/4 v0, 0x2

    aget-wide v0, v4, v0

    const/4 v2, 0x1

    aget-wide v2, v5, v2

    add-long/2addr v0, v2

    sub-long/2addr v12, v0

    .line 660
    const/4 v0, 0x3

    aget-wide v0, v4, v0

    sub-long/2addr v14, v0

    .line 665
    const/4 v0, 0x0

    aput-wide v8, p2, v0

    .line 666
    const/4 v0, 0x1

    aput-wide v10, p2, v0

    .line 667
    const/4 v0, 0x2

    aput-wide v12, p2, v0

    .line 668
    const/4 v0, 0x3

    aput-wide v14, p2, v0

    .line 669
    return-void
.end method
