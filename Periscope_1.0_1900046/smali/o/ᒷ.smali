.class final Lo/ᒷ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᒷ$if;
    }
.end annotation


# direct methods
.method private static ʻ(Lo/প;I)[B
    .locals 6

    .line 554
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lo/প;->setPosition(I)V

    .line 556
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 557
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v2

    .line 558
    :goto_0
    const/16 v0, 0x7f

    if-le v2, v0, :cond_0

    .line 559
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v2

    goto :goto_0

    .line 561
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 563
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v3

    .line 564
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_1

    .line 565
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 567
    :cond_1
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_2

    .line 568
    invoke-virtual {p0}, Lo/প;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 570
    :cond_2
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_3

    .line 571
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 575
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 576
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v2

    .line 577
    :goto_1
    const/16 v0, 0x7f

    if-le v2, v0, :cond_4

    .line 578
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v2

    goto :goto_1

    .line 580
    :cond_4
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 583
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 584
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v2

    .line 585
    and-int/lit8 v4, v2, 0x7f

    .line 586
    :goto_2
    const/16 v0, 0x7f

    if-le v2, v0, :cond_5

    .line 587
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v2

    .line 588
    shl-int/lit8 v4, v4, 0x8

    .line 589
    and-int/lit8 v0, v2, 0x7f

    or-int/2addr v4, v0

    goto :goto_2

    .line 591
    :cond_5
    new-array v5, v4, [B

    .line 592
    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0, v4}, Lo/প;->ι([BII)V

    .line 593
    return-object v5
.end method

.method private static ˊ(Lo/প;)J
    .locals 4

    .line 252
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lo/প;->setPosition(I)V

    .line 254
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v2

    .line 255
    invoke-static {v2}, Lo/ᒶ;->د(I)I

    move-result v3

    .line 257
    if-nez v3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 259
    invoke-virtual {p0}, Lo/প;->ϒ()J

    move-result-wide v0

    return-wide v0
.end method

.method private static ˊ(Lo/প;IIJ)Lo/ب;
    .locals 14

    .line 468
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lo/প;->setPosition(I)V

    .line 470
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 471
    invoke-virtual {p0}, Lo/প;->readUnsignedShort()I

    move-result v7

    .line 472
    invoke-virtual {p0}, Lo/প;->readUnsignedShort()I

    move-result v8

    .line 473
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 475
    new-instance v9, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 476
    invoke-virtual {p0}, Lo/প;->getPosition()I

    move-result v10

    .line 477
    :goto_0
    sub-int v0, v10, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 478
    invoke-virtual {p0, v10}, Lo/প;->setPosition(I)V

    .line 479
    invoke-virtual {p0}, Lo/প;->getPosition()I

    move-result v11

    .line 480
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v12

    .line 481
    if-lez v12, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childAtomSize should be positive"

    invoke-static {v0, v1}, Lo/ړ;->ˊ(ZLjava/lang/Object;)V

    .line 482
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v13

    .line 483
    sget v0, Lo/ᒶ;->vi:I

    if-ne v13, v0, :cond_1

    .line 484
    invoke-static {p0, v11}, Lo/ᒷ;->ʻ(Lo/প;I)[B

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_1
    add-int/2addr v10, v12

    .line 487
    goto :goto_0

    .line 489
    :cond_2
    const-string v0, "video/mp4v-es"

    move-wide/from16 v2, p3

    move v4, v7

    move v5, v8

    move-object v6, v9

    const/4 v1, -0x1

    invoke-static/range {v0 .. v6}, Lo/ب;->ˊ(Ljava/lang/String;IJIILjava/util/List;)Lo/ب;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Lo/প;J)Lo/ᒷ$if;
    .locals 14

    .line 325
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lo/প;->setPosition(I)V

    .line 326
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v8

    .line 327
    new-instance v9, Lo/ᒷ$if;

    invoke-direct {v9, v8}, Lo/ᒷ$if;-><init>(I)V

    .line 328
    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_7

    .line 329
    invoke-virtual {p0}, Lo/প;->getPosition()I

    move-result v11

    .line 330
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v12

    .line 331
    if-lez v12, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childAtomSize should be positive"

    invoke-static {v0, v1}, Lo/ړ;->ˊ(ZLjava/lang/Object;)V

    .line 332
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v13

    .line 333
    sget v0, Lo/ᒶ;->vg:I

    if-eq v13, v0, :cond_1

    sget v0, Lo/ᒶ;->vh:I

    if-eq v13, v0, :cond_1

    sget v0, Lo/ᒶ;->vN:I

    if-ne v13, v0, :cond_2

    .line 335
    :cond_1
    move-object v0, p0

    move v1, v11

    move v2, v12

    move-wide v3, p1

    move-object v5, v9

    move v6, v10

    invoke-static/range {v0 .. v6}, Lo/ᒷ;->ˊ(Lo/প;IIJLo/ᒷ$if;I)V

    goto :goto_2

    .line 336
    :cond_2
    sget v0, Lo/ᒶ;->vk:I

    if-eq v13, v0, :cond_3

    sget v0, Lo/ᒶ;->vO:I

    if-eq v13, v0, :cond_3

    sget v0, Lo/ᒶ;->vl:I

    if-ne v13, v0, :cond_4

    .line 338
    :cond_3
    move-object v0, p0

    move v1, v13

    move v2, v11

    move v3, v12

    move-wide v4, p1

    move-object v6, v9

    move v7, v10

    invoke-static/range {v0 .. v7}, Lo/ᒷ;->ˊ(Lo/প;IIIJLo/ᒷ$if;I)V

    goto :goto_2

    .line 340
    :cond_4
    sget v0, Lo/ᒶ;->vU:I

    if-ne v13, v0, :cond_5

    .line 341
    invoke-static {}, Lo/ب;->ԁ()Lo/ب;

    move-result-object v0

    iput-object v0, v9, Lo/ᒷ$if;->wk:Lo/ب;

    goto :goto_2

    .line 342
    :cond_5
    sget v0, Lo/ᒶ;->vX:I

    if-ne v13, v0, :cond_6

    .line 343
    move-wide v0, p1

    invoke-static {p0, v11, v12, v0, v1}, Lo/ᒷ;->ˊ(Lo/প;IIJ)Lo/ب;

    move-result-object v0

    iput-object v0, v9, Lo/ᒷ$if;->wk:Lo/ب;

    .line 346
    :cond_6
    :goto_2
    add-int v0, v11, v12

    invoke-virtual {p0, v0}, Lo/প;->setPosition(I)V

    .line 328
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 348
    :cond_7
    return-object v9
.end method

.method public static ˊ(Lo/ᒶ$if;Lo/ᒶ$ˊ;)Lo/ᓖ;
    .locals 24

    .line 45
    sget v0, Lo/ᒶ;->vx:I

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lo/ᒶ$if;->า(I)Lo/ᒶ$if;

    move-result-object v10

    .line 46
    sget v0, Lo/ᒶ;->vG:I

    invoke-virtual {v10, v0}, Lo/ᒶ$if;->ܝ(I)Lo/ᒶ$ˊ;

    move-result-object v0

    iget-object v0, v0, Lo/ᒶ$ˊ;->wi:Lo/প;

    invoke-static {v0}, Lo/ᒷ;->ˎ(Lo/প;)I

    move-result v11

    .line 47
    const v0, 0x736f756e

    if-eq v11, v0, :cond_0

    const v0, 0x76696465

    if-eq v11, v0, :cond_0

    const v0, 0x74657874

    if-eq v11, v0, :cond_0

    const v0, 0x746d6364

    if-eq v11, v0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    sget v0, Lo/ᒶ;->vE:I

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lo/ᒶ$if;->ܝ(I)Lo/ᒶ$ˊ;

    move-result-object v0

    iget-object v0, v0, Lo/ᒶ$ˊ;->wi:Lo/প;

    invoke-static {v0}, Lo/ᒷ;->ˋ(Lo/প;)Landroid/util/Pair;

    move-result-object v12

    .line 53
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 54
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 55
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ᒶ$ˊ;->wi:Lo/প;

    invoke-static {v0}, Lo/ᒷ;->ˊ(Lo/প;)J

    move-result-wide v16

    .line 57
    const-wide/16 v0, -0x1

    cmp-long v0, v14, v0

    if-nez v0, :cond_1

    .line 58
    const-wide/16 v18, -0x1

    goto :goto_0

    .line 60
    :cond_1
    move-wide v0, v14

    move-wide/from16 v4, v16

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Lo/ผ;->ˊ(JJJ)J

    move-result-wide v18

    .line 62
    :goto_0
    sget v0, Lo/ᒶ;->vy:I

    invoke-virtual {v10, v0}, Lo/ᒶ$if;->า(I)Lo/ᒶ$if;

    move-result-object v0

    sget v1, Lo/ᒶ;->vz:I

    invoke-virtual {v0, v1}, Lo/ᒶ$if;->า(I)Lo/ᒶ$if;

    move-result-object v20

    .line 65
    sget v0, Lo/ᒶ;->vF:I

    invoke-virtual {v10, v0}, Lo/ᒶ$if;->ܝ(I)Lo/ᒶ$ˊ;

    move-result-object v0

    iget-object v0, v0, Lo/ᒶ$ˊ;->wi:Lo/প;

    invoke-static {v0}, Lo/ᒷ;->ˏ(Lo/প;)J

    move-result-wide v21

    .line 66
    sget v0, Lo/ᒶ;->vH:I

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lo/ᒶ$if;->ܝ(I)Lo/ᒶ$ˊ;

    move-result-object v0

    iget-object v0, v0, Lo/ᒶ$ˊ;->wi:Lo/প;

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lo/ᒷ;->ˊ(Lo/প;J)Lo/ᒷ$if;

    move-result-object v23

    .line 67
    new-instance v0, Lo/ᓖ;

    move-object/from16 v1, v23

    iget-object v7, v1, Lo/ᒷ$if;->wk:Lo/ب;

    move-object/from16 v1, v23

    iget-object v8, v1, Lo/ᒷ$if;->wj:[Lo/ᓘ;

    move-object/from16 v1, v23

    iget v9, v1, Lo/ᒷ$if;->wl:I

    move v1, v13

    move v2, v11

    move-wide/from16 v3, v21

    move-wide/from16 v5, v18

    invoke-direct/range {v0 .. v9}, Lo/ᓖ;-><init>(IIJJLo/ب;[Lo/ᓘ;I)V

    return-object v0
.end method

.method private static ˊ(Lo/প;II)Lo/ᓘ;
    .locals 5

    .line 415
    add-int/lit8 v1, p1, 0x8

    .line 417
    const/4 v2, 0x0

    .line 418
    :goto_0
    sub-int v0, v1, p1

    if-ge v0, p2, :cond_3

    .line 419
    invoke-virtual {p0, v1}, Lo/প;->setPosition(I)V

    .line 420
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v3

    .line 421
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v4

    .line 422
    sget v0, Lo/ᒶ;->vP:I

    if-ne v4, v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lo/প;->readInt()I

    goto :goto_1

    .line 424
    :cond_0
    sget v0, Lo/ᒶ;->vK:I

    if-ne v4, v0, :cond_1

    .line 425
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 426
    invoke-virtual {p0}, Lo/প;->readInt()I

    .line 427
    invoke-virtual {p0}, Lo/প;->readInt()I

    goto :goto_1

    .line 428
    :cond_1
    sget v0, Lo/ᒶ;->vL:I

    if-ne v4, v0, :cond_2

    .line 429
    invoke-static {p0, v1, v3}, Lo/ᒷ;->ˋ(Lo/প;II)Lo/ᓘ;

    move-result-object v2

    .line 431
    :cond_2
    :goto_1
    add-int/2addr v1, v3

    .line 432
    goto :goto_0

    .line 434
    :cond_3
    return-object v2
.end method

.method public static ˊ(Lo/ᓖ;Lo/ᒶ$if;)Lo/ᓛ;
    .locals 39

    .line 80
    sget v0, Lo/ᒶ;->wc:I

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lo/ᒶ$if;->ܝ(I)Lo/ᒶ$ˊ;

    move-result-object v0

    iget-object v5, v0, Lo/ᒶ$ˊ;->wi:Lo/প;

    .line 84
    sget v0, Lo/ᒶ;->wd:I

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lo/ᒶ$if;->ܝ(I)Lo/ᒶ$ˊ;

    move-result-object v7

    .line 85
    if-nez v7, :cond_0

    .line 86
    sget v0, Lo/ᒶ;->we:I

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lo/ᒶ$if;->ܝ(I)Lo/ᒶ$ˊ;

    move-result-object v7

    .line 88
    :cond_0
    iget-object v6, v7, Lo/ᒶ$ˊ;->wi:Lo/প;

    .line 90
    sget v0, Lo/ᒶ;->wb:I

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lo/ᒶ$if;->ܝ(I)Lo/ᒶ$ˊ;

    move-result-object v0

    iget-object v8, v0, Lo/ᒶ$ˊ;->wi:Lo/প;

    .line 92
    sget v0, Lo/ᒶ;->vY:I

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lo/ᒶ$if;->ܝ(I)Lo/ᒶ$ˊ;

    move-result-object v0

    iget-object v9, v0, Lo/ᒶ$ˊ;->wi:Lo/প;

    .line 94
    sget v0, Lo/ᒶ;->vZ:I

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lo/ᒶ$if;->ܝ(I)Lo/ᒶ$ˊ;

    move-result-object v10

    .line 95
    if-eqz v10, :cond_1

    iget-object v11, v10, Lo/ᒶ$ˊ;->wi:Lo/প;

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 97
    :goto_0
    sget v0, Lo/ᒶ;->wa:I

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lo/ᒶ$if;->ܝ(I)Lo/ᒶ$ˊ;

    move-result-object v12

    .line 98
    if-eqz v12, :cond_2

    iget-object v13, v12, Lo/ᒶ$ˊ;->wi:Lo/প;

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    .line 101
    :goto_1
    const/16 v0, 0xc

    invoke-virtual {v5, v0}, Lo/প;->setPosition(I)V

    .line 102
    invoke-virtual {v5}, Lo/প;->ѕ()I

    move-result v14

    .line 103
    invoke-virtual {v5}, Lo/প;->ѕ()I

    move-result v15

    .line 105
    new-array v0, v15, [I

    move-object/from16 v16, v0

    .line 106
    new-array v0, v15, [J

    move-object/from16 v17, v0

    .line 107
    new-array v0, v15, [J

    move-object/from16 v18, v0

    .line 108
    new-array v0, v15, [I

    move-object/from16 v19, v0

    .line 111
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Lo/প;->setPosition(I)V

    .line 112
    invoke-virtual {v6}, Lo/প;->ѕ()I

    move-result v20

    .line 114
    const/16 v0, 0xc

    invoke-virtual {v8, v0}, Lo/প;->setPosition(I)V

    .line 115
    invoke-virtual {v8}, Lo/প;->ѕ()I

    move-result v0

    add-int/lit8 v21, v0, -0x1

    .line 116
    invoke-virtual {v8}, Lo/প;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const-string v1, "stsc first chunk must be 1"

    invoke-static {v0, v1}, Lo/ړ;->ˋ(ZLjava/lang/Object;)V

    .line 117
    invoke-virtual {v8}, Lo/প;->ѕ()I

    move-result v22

    .line 118
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lo/প;->ʰ(I)V

    .line 119
    const/16 v23, -0x1

    .line 120
    if-lez v21, :cond_4

    .line 122
    invoke-virtual {v8}, Lo/প;->ѕ()I

    move-result v0

    add-int/lit8 v23, v0, -0x1

    .line 125
    :cond_4
    const/16 v24, 0x0

    .line 126
    move/from16 v25, v22

    .line 129
    const/16 v0, 0xc

    invoke-virtual {v9, v0}, Lo/প;->setPosition(I)V

    .line 130
    invoke-virtual {v9}, Lo/প;->ѕ()I

    move-result v0

    add-int/lit8 v26, v0, -0x1

    .line 131
    invoke-virtual {v9}, Lo/প;->ѕ()I

    move-result v27

    .line 132
    invoke-virtual {v9}, Lo/প;->ѕ()I

    move-result v28

    .line 135
    const/16 v29, 0x0

    .line 136
    const/16 v30, 0x0

    .line 137
    const/16 v31, 0x0

    .line 138
    if-eqz v13, :cond_5

    .line 139
    const/16 v0, 0xc

    invoke-virtual {v13, v0}, Lo/প;->setPosition(I)V

    .line 140
    invoke-virtual {v13}, Lo/প;->ѕ()I

    move-result v0

    add-int/lit8 v30, v0, -0x1

    .line 141
    invoke-virtual {v13}, Lo/প;->ѕ()I

    move-result v29

    .line 147
    invoke-virtual {v13}, Lo/প;->readInt()I

    move-result v31

    .line 150
    :cond_5
    const/16 v32, -0x1

    .line 151
    const/16 v33, 0x0

    .line 152
    if-eqz v11, :cond_6

    .line 153
    const/16 v0, 0xc

    invoke-virtual {v11, v0}, Lo/প;->setPosition(I)V

    .line 154
    invoke-virtual {v11}, Lo/প;->ѕ()I

    move-result v33

    .line 155
    invoke-virtual {v11}, Lo/প;->ѕ()I

    move-result v0

    add-int/lit8 v32, v0, -0x1

    .line 160
    :cond_6
    iget v0, v7, Lo/ᒶ$ˊ;->type:I

    sget v1, Lo/ᒶ;->wd:I

    if-ne v0, v1, :cond_7

    .line 161
    invoke-virtual {v6}, Lo/প;->ϒ()J

    move-result-wide v34

    goto :goto_3

    .line 163
    :cond_7
    invoke-virtual {v6}, Lo/প;->ӧ()J

    move-result-wide v34

    .line 166
    :goto_3
    const-wide/16 v36, 0x0

    .line 167
    const/16 v38, 0x0

    :goto_4
    move/from16 v0, v38

    if-ge v0, v15, :cond_12

    .line 168
    aput-wide v34, v18, v38

    .line 169
    if-nez v14, :cond_8

    invoke-virtual {v5}, Lo/প;->ѕ()I

    move-result v0

    goto :goto_5

    :cond_8
    move v0, v14

    :goto_5
    aput v0, v16, v38

    .line 170
    move/from16 v0, v31

    int-to-long v0, v0

    add-long v0, v0, v36

    aput-wide v0, v17, v38

    .line 173
    if-nez v11, :cond_9

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    aput v0, v19, v38

    .line 174
    move/from16 v0, v38

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 175
    const/4 v0, 0x1

    aput v0, v19, v38

    .line 176
    add-int/lit8 v33, v33, -0x1

    .line 177
    if-lez v33, :cond_a

    .line 178
    invoke-virtual {v11}, Lo/প;->ѕ()I

    move-result v0

    add-int/lit8 v32, v0, -0x1

    .line 183
    :cond_a
    move/from16 v0, v28

    int-to-long v0, v0

    add-long v36, v36, v0

    .line 184
    add-int/lit8 v27, v27, -0x1

    .line 185
    if-nez v27, :cond_b

    if-lez v26, :cond_b

    .line 186
    invoke-virtual {v9}, Lo/প;->ѕ()I

    move-result v27

    .line 187
    invoke-virtual {v9}, Lo/প;->ѕ()I

    move-result v28

    .line 188
    add-int/lit8 v26, v26, -0x1

    .line 192
    :cond_b
    if-eqz v13, :cond_c

    .line 193
    add-int/lit8 v29, v29, -0x1

    .line 194
    if-nez v29, :cond_c

    if-lez v30, :cond_c

    .line 195
    invoke-virtual {v13}, Lo/প;->ѕ()I

    move-result v29

    .line 197
    invoke-virtual {v13}, Lo/প;->readInt()I

    move-result v31

    .line 198
    add-int/lit8 v30, v30, -0x1

    .line 203
    :cond_c
    add-int/lit8 v25, v25, -0x1

    .line 204
    if-nez v25, :cond_10

    .line 205
    add-int/lit8 v24, v24, 0x1

    .line 206
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 207
    iget v0, v7, Lo/ᒶ$ˊ;->type:I

    sget v1, Lo/ᒶ;->wd:I

    if-ne v0, v1, :cond_d

    .line 208
    invoke-virtual {v6}, Lo/প;->ϒ()J

    move-result-wide v34

    goto :goto_7

    .line 210
    :cond_d
    invoke-virtual {v6}, Lo/প;->ӧ()J

    move-result-wide v34

    .line 215
    :cond_e
    :goto_7
    move/from16 v0, v24

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 216
    invoke-virtual {v8}, Lo/প;->ѕ()I

    move-result v22

    .line 217
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lo/প;->ʰ(I)V

    .line 218
    add-int/lit8 v21, v21, -0x1

    .line 219
    if-lez v21, :cond_f

    .line 220
    invoke-virtual {v8}, Lo/প;->ѕ()I

    move-result v0

    add-int/lit8 v23, v0, -0x1

    .line 225
    :cond_f
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    .line 226
    move/from16 v25, v22

    goto :goto_8

    .line 230
    :cond_10
    aget v0, v16, v38

    int-to-long v0, v0

    add-long v34, v34, v0

    .line 167
    :cond_11
    :goto_8
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_4

    .line 234
    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Lo/ᓖ;->wF:J

    move-object/from16 v2, v17

    const-wide/32 v3, 0xf4240

    invoke-static {v2, v3, v4, v0, v1}, Lo/ผ;->ˊ([JJJ)V

    .line 237
    if-nez v33, :cond_13

    const/4 v0, 0x1

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lo/ړ;->יּ(Z)V

    .line 238
    if-nez v27, :cond_14

    const/4 v0, 0x1

    goto :goto_a

    :cond_14
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lo/ړ;->יּ(Z)V

    .line 239
    if-nez v25, :cond_15

    const/4 v0, 0x1

    goto :goto_b

    :cond_15
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lo/ړ;->יּ(Z)V

    .line 240
    if-nez v26, :cond_16

    const/4 v0, 0x1

    goto :goto_c

    :cond_16
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lo/ړ;->יּ(Z)V

    .line 241
    if-nez v30, :cond_17

    const/4 v0, 0x1

    goto :goto_d

    :cond_17
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lo/ړ;->יּ(Z)V

    .line 242
    new-instance v0, Lo/ᓛ;

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lo/ᓛ;-><init>([J[I[J[I)V

    return-object v0
.end method

.method private static ˊ(Lo/প;IIIJLo/ᒷ$if;I)V
    .locals 16

    .line 495
    add-int/lit8 v0, p2, 0x8

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lo/প;->setPosition(I)V

    .line 496
    move-object/from16 v0, p0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lo/প;->ʰ(I)V

    .line 497
    invoke-virtual/range {p0 .. p0}, Lo/প;->readUnsignedShort()I

    move-result v7

    .line 498
    invoke-virtual/range {p0 .. p0}, Lo/প;->readUnsignedShort()I

    move-result v8

    .line 499
    move-object/from16 v0, p0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/প;->ʰ(I)V

    .line 500
    invoke-virtual/range {p0 .. p0}, Lo/প;->Ϝ()I

    move-result v9

    .line 502
    const/4 v10, 0x0

    .line 503
    invoke-virtual/range {p0 .. p0}, Lo/প;->getPosition()I

    move-result v11

    .line 504
    :goto_0
    sub-int v0, v11, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_6

    .line 505
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lo/প;->setPosition(I)V

    .line 506
    invoke-virtual/range {p0 .. p0}, Lo/প;->getPosition()I

    move-result v12

    .line 507
    invoke-virtual/range {p0 .. p0}, Lo/প;->readInt()I

    move-result v13

    .line 508
    if-lez v13, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childAtomSize should be positive"

    invoke-static {v0, v1}, Lo/ړ;->ˊ(ZLjava/lang/Object;)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Lo/প;->readInt()I

    move-result v14

    .line 510
    sget v0, Lo/ᒶ;->vk:I

    move/from16 v1, p1

    if-eq v1, v0, :cond_1

    sget v0, Lo/ᒶ;->vO:I

    move/from16 v1, p1

    if-ne v1, v0, :cond_3

    .line 511
    :cond_1
    sget v0, Lo/ᒶ;->vi:I

    if-ne v14, v0, :cond_2

    .line 512
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lo/ᒷ;->ʻ(Lo/প;I)[B

    move-result-object v10

    .line 515
    invoke-static {v10}, Lo/ܐ;->ι([B)Landroid/util/Pair;

    move-result-object v15

    .line 517
    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 518
    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 519
    goto :goto_2

    :cond_2
    sget v0, Lo/ᒶ;->vJ:I

    if-ne v14, v0, :cond_5

    .line 520
    move-object/from16 v0, p6

    iget-object v0, v0, Lo/ᒷ$if;->wj:[Lo/ᓘ;

    move-object/from16 v1, p0

    invoke-static {v1, v12, v13}, Lo/ᒷ;->ˊ(Lo/প;II)Lo/ᓘ;

    move-result-object v1

    aput-object v1, v0, p7

    goto :goto_2

    .line 523
    :cond_3
    sget v0, Lo/ᒶ;->vl:I

    move/from16 v1, p1

    if-ne v1, v0, :cond_4

    sget v0, Lo/ᒶ;->vm:I

    if-ne v14, v0, :cond_4

    .line 526
    add-int/lit8 v0, v12, 0x8

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lo/প;->setPosition(I)V

    .line 527
    invoke-static/range {p0 .. p0}, Lo/ٻ;->ʼ(Lo/প;)Lo/ب;

    move-result-object v0

    move-object/from16 v1, p6

    iput-object v0, v1, Lo/ᒷ$if;->wk:Lo/ب;

    .line 528
    return-void

    .line 529
    :cond_4
    sget v0, Lo/ᒶ;->vn:I

    move/from16 v1, p1

    if-ne v1, v0, :cond_5

    sget v0, Lo/ᒶ;->vo:I

    if-ne v14, v0, :cond_5

    .line 530
    add-int/lit8 v0, v12, 0x8

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lo/প;->setPosition(I)V

    .line 531
    invoke-static/range {p0 .. p0}, Lo/ٻ;->ʽ(Lo/প;)Lo/ب;

    move-result-object v0

    move-object/from16 v1, p6

    iput-object v0, v1, Lo/ᒷ$if;->wk:Lo/ب;

    .line 532
    return-void

    .line 534
    :cond_5
    :goto_2
    add-int/2addr v11, v13

    .line 535
    goto/16 :goto_0

    .line 539
    :cond_6
    sget v0, Lo/ᒶ;->vl:I

    move/from16 v1, p1

    if-ne v1, v0, :cond_7

    .line 540
    const-string v12, "audio/ac3"

    goto :goto_3

    .line 541
    :cond_7
    sget v0, Lo/ᒶ;->vn:I

    move/from16 v1, p1

    if-ne v1, v0, :cond_8

    .line 542
    const-string v12, "audio/eac3"

    goto :goto_3

    .line 544
    :cond_8
    const-string v12, "audio/mp4a-latm"

    .line 547
    :goto_3
    move-object v0, v12

    move v1, v8

    move-wide/from16 v2, p4

    move v4, v7

    move v5, v9

    if-nez v10, :cond_9

    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :goto_4
    invoke-static/range {v0 .. v6}, Lo/ب;->ˋ(Ljava/lang/String;IJIILjava/util/List;)Lo/ب;

    move-result-object v0

    move-object/from16 v1, p6

    iput-object v0, v1, Lo/ᒷ$if;->wk:Lo/ب;

    .line 550
    return-void
.end method

.method private static ˊ(Lo/প;IIJLo/ᒷ$if;I)V
    .locals 17

    .line 354
    add-int/lit8 v0, p1, 0x8

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lo/প;->setPosition(I)V

    .line 356
    move-object/from16 v0, p0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lo/প;->ʰ(I)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lo/প;->readUnsignedShort()I

    move-result v8

    .line 358
    invoke-virtual/range {p0 .. p0}, Lo/প;->readUnsignedShort()I

    move-result v9

    .line 359
    const/high16 v10, 0x3f800000    # 1.0f

    .line 360
    move-object/from16 v0, p0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lo/প;->ʰ(I)V

    .line 362
    const/4 v11, 0x0

    .line 363
    invoke-virtual/range {p0 .. p0}, Lo/প;->getPosition()I

    move-result v12

    .line 364
    :goto_0
    sub-int v0, v12, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_5

    .line 365
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lo/প;->setPosition(I)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Lo/প;->getPosition()I

    move-result v13

    .line 367
    invoke-virtual/range {p0 .. p0}, Lo/প;->readInt()I

    move-result v14

    .line 368
    if-nez v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lo/প;->getPosition()I

    move-result v0

    sub-int v0, v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 370
    goto :goto_3

    .line 372
    :cond_0
    if-lez v14, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childAtomSize should be positive"

    invoke-static {v0, v1}, Lo/ړ;->ˊ(ZLjava/lang/Object;)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Lo/প;->readInt()I

    move-result v15

    .line 374
    sget v0, Lo/ᒶ;->vA:I

    if-ne v15, v0, :cond_2

    .line 375
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lo/ᒷ;->ˏ(Lo/প;I)Landroid/util/Pair;

    move-result-object v16

    .line 376
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object v11, v0

    .line 377
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v1, p5

    iput v0, v1, Lo/ᒷ$if;->wl:I

    .line 378
    goto :goto_2

    :cond_2
    sget v0, Lo/ᒶ;->vJ:I

    if-ne v15, v0, :cond_3

    .line 379
    move-object/from16 v0, p5

    iget-object v0, v0, Lo/ᒷ$if;->wj:[Lo/ᓘ;

    move-object/from16 v1, p0

    invoke-static {v1, v13, v14}, Lo/ᒷ;->ˊ(Lo/প;II)Lo/ᓘ;

    move-result-object v1

    aput-object v1, v0, p6

    goto :goto_2

    .line 381
    :cond_3
    sget v0, Lo/ᒶ;->vT:I

    if-ne v15, v0, :cond_4

    .line 382
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lo/ᒷ;->ᐝ(Lo/প;I)F

    move-result v10

    .line 384
    :cond_4
    :goto_2
    add-int/2addr v12, v14

    .line 385
    goto/16 :goto_0

    .line 387
    :cond_5
    :goto_3
    const-string v0, "video/avc"

    move-wide/from16 v2, p3

    move v4, v8

    move v5, v9

    move v6, v10

    move-object v7, v11

    const/4 v1, -0x1

    invoke-static/range {v0 .. v7}, Lo/ب;->ˊ(Ljava/lang/String;IJIIFLjava/util/List;)Lo/ب;

    move-result-object v0

    move-object/from16 v1, p5

    iput-object v0, v1, Lo/ᒷ$if;->wk:Lo/ب;

    .line 389
    return-void
.end method

.method private static ˋ(Lo/প;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u09aa;)Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
        }
    .end annotation

    .line 269
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lo/প;->setPosition(I)V

    .line 270
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v2

    .line 271
    invoke-static {v2}, Lo/ᒶ;->د(I)I

    move-result v3

    .line 273
    if-nez v3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 275
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v4

    .line 276
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 278
    const/4 v5, 0x1

    .line 279
    invoke-virtual {p0}, Lo/প;->getPosition()I

    move-result v6

    .line 280
    if-nez v3, :cond_1

    const/4 v7, 0x4

    goto :goto_1

    :cond_1
    const/16 v7, 0x8

    .line 281
    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_3

    .line 282
    iget-object v0, p0, Lo/প;->fw:[B

    add-int v1, v6, v8

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 283
    const/4 v5, 0x0

    .line 284
    goto :goto_3

    .line 281
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 288
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 289
    invoke-virtual {p0, v7}, Lo/প;->ʰ(I)V

    .line 290
    const-wide/16 v8, -0x1

    goto :goto_4

    .line 292
    :cond_4
    if-nez v3, :cond_5

    invoke-virtual {p0}, Lo/প;->ϒ()J

    move-result-wide v8

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lo/প;->ӧ()J

    move-result-wide v8

    .line 295
    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static ˋ(Lo/প;II)Lo/ᓘ;
    .locals 9

    .line 446
    add-int/lit8 v2, p1, 0x8

    .line 447
    :goto_0
    sub-int v0, v2, p1

    if-ge v0, p2, :cond_2

    .line 448
    invoke-virtual {p0, v2}, Lo/প;->setPosition(I)V

    .line 449
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v3

    .line 450
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v4

    .line 451
    sget v0, Lo/ᒶ;->vM:I

    if-ne v4, v0, :cond_1

    .line 452
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 453
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v5

    .line 454
    shr-int/lit8 v0, v5, 0x8

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 455
    :goto_1
    and-int/lit16 v7, v5, 0xff

    .line 456
    const/16 v0, 0x10

    new-array v8, v0, [B

    .line 457
    array-length v0, v8

    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1, v0}, Lo/প;->ι([BII)V

    .line 458
    new-instance v0, Lo/ᓘ;

    invoke-direct {v0, v6, v7, v8}, Lo/ᓘ;-><init>(ZI[B)V

    return-object v0

    .line 460
    :cond_1
    add-int/2addr v2, v3

    .line 461
    goto :goto_0

    .line 462
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static ˎ(Lo/প;)I
    .locals 1

    .line 305
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lo/প;->setPosition(I)V

    .line 306
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v0

    return v0
.end method

.method private static ˏ(Lo/প;)J
    .locals 4

    .line 316
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lo/প;->setPosition(I)V

    .line 317
    invoke-virtual {p0}, Lo/প;->readInt()I

    move-result v2

    .line 318
    invoke-static {v2}, Lo/ᒶ;->د(I)I

    move-result v3

    .line 320
    if-nez v3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 321
    invoke-virtual {p0}, Lo/প;->ϒ()J

    move-result-wide v0

    return-wide v0
.end method

.method private static ˏ(Lo/প;I)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u09aa;I)Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
        }
    .end annotation

    .line 393
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lo/প;->setPosition(I)V

    .line 395
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v0, 0x1

    .line 396
    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 399
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 402
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v4, v0, 0x1f

    .line 403
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 404
    invoke-static {p0}, Lo/ܫ;->ͺ(Lo/প;)[B

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v5

    .line 407
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    .line 408
    invoke-static {p0}, Lo/ܫ;->ͺ(Lo/প;)[B

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 410
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static ᐝ(Lo/প;I)F
    .locals 4

    .line 438
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lo/প;->setPosition(I)V

    .line 439
    invoke-virtual {p0}, Lo/প;->ѕ()I

    move-result v2

    .line 440
    invoke-virtual {p0}, Lo/প;->ѕ()I

    move-result v3

    .line 441
    int-to-float v0, v2

    int-to-float v1, v3

    div-float/2addr v0, v1

    return v0
.end method
