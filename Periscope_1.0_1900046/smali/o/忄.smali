.class public Lo/忄;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ס$if;
.implements Lo/ڒ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/忄$if;
    }
.end annotation


# instance fields
.field private final qK:Landroid/os/Handler;

.field private uA:Ljava/io/IOException;

.field private uB:Z

.field private uC:I

.field private uD:J

.field private uE:Z

.field private final uK:Lo/ʎ;

.field private final ud:I

.field private final uf:I

.field private final ug:Z

.field private uj:Z

.field private uk:I

.field private ul:[Lo/ڕ;

.field private uo:[Z

.field private uq:[Z

.field private ur:I

.field private us:J

.field private ut:J

.field private uu:J

.field private uy:Lo/ס;

.field private final yM:Lo/Ỵ;

.field private final yN:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<Lo/\u1f36;>;"
        }
    .end annotation
.end field

.field private final yO:J

.field private final yP:I

.field private final yQ:Lo/忄$if;

.field private yR:I

.field private yS:[Lo/ب;

.field private yT:Lo/ব;

.field private yU:Lo/ｕ;

.field private yV:Lo/र;

.field private yW:J


# direct methods
.method public constructor <init>(Lo/Ỵ;ZIIJLandroid/os/Handler;Lo/忄$if;I)V
    .locals 11

    .line 104
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    const/4 v10, 0x3

    invoke-direct/range {v0 .. v10}, Lo/忄;-><init>(Lo/Ỵ;ZIIJLandroid/os/Handler;Lo/忄$if;II)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lo/Ỵ;ZIIJLandroid/os/Handler;Lo/忄$if;II)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lo/忄;->yM:Lo/Ỵ;

    .line 114
    iput-boolean p2, p0, Lo/忄;->ug:Z

    .line 115
    iput p3, p0, Lo/忄;->ur:I

    .line 116
    iput p4, p0, Lo/忄;->ud:I

    .line 117
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p5

    iput-wide v0, p0, Lo/忄;->yO:J

    .line 118
    iput p10, p0, Lo/忄;->uf:I

    .line 119
    iput-object p7, p0, Lo/忄;->qK:Landroid/os/Handler;

    .line 120
    iput-object p8, p0, Lo/忄;->yQ:Lo/忄$if;

    .line 121
    iput p9, p0, Lo/忄;->yP:I

    .line 122
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/忄;->uu:J

    .line 123
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    .line 124
    new-instance v0, Lo/ѕ;

    const/high16 v1, 0x40000

    invoke-direct {v0, v1}, Lo/ѕ;-><init>(I)V

    iput-object v0, p0, Lo/忄;->uK:Lo/ʎ;

    .line 125
    return-void
.end method

.method static synthetic ˊ(Lo/忄;)I
    .locals 1

    .line 43
    iget v0, p0, Lo/忄;->yP:I

    return v0
.end method

.method private ˊ(JIILo/ব;JJ)V
    .locals 12

    .line 538
    iget-object v0, p0, Lo/忄;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/忄;->yQ:Lo/忄$if;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lo/忄;->qK:Landroid/os/Handler;

    new-instance v1, Lo/אּ;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lo/אּ;-><init>(Lo/忄;JIILo/ব;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 547
    :cond_0
    return-void
.end method

.method private ˊ(JIILo/ব;JJJJ)V
    .locals 16

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/忄;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/忄;->yQ:Lo/忄$if;

    if-eqz v0, :cond_0

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/忄;->qK:Landroid/os/Handler;

    new-instance v1, Lo/ﮋ;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-direct/range {v1 .. v15}, Lo/ﮋ;-><init>(Lo/忄;JIILo/ব;JJJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 561
    :cond_0
    return-void
.end method

.method private ˊ(Ljava/io/IOException;)V
    .locals 2

    .line 575
    iget-object v0, p0, Lo/忄;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/忄;->yQ:Lo/忄$if;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lo/忄;->qK:Landroid/os/Handler;

    new-instance v1, Lo/ﺔ;

    invoke-direct {v1, p0, p1}, Lo/ﺔ;-><init>(Lo/忄;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 583
    :cond_0
    return-void
.end method

.method private ˊ(Lo/ব;IJ)V
    .locals 7

    .line 587
    iget-object v0, p0, Lo/忄;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/忄;->yQ:Lo/忄$if;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lo/忄;->qK:Landroid/os/Handler;

    new-instance v1, Lo/ﺣ;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lo/ﺣ;-><init>(Lo/忄;Lo/ব;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 596
    :cond_0
    return-void
.end method

.method private ˊ(Lo/ἶ;J)V
    .locals 2

    .line 414
    invoke-virtual {p1}, Lo/ἶ;->Ⅴ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/忄;->uq:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 418
    iget-object v0, p0, Lo/忄;->uq:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    .line 419
    invoke-virtual {p1, v1, p2, p3}, Lo/ἶ;->ʻ(IJ)V

    .line 417
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    :cond_2
    return-void
.end method

.method static synthetic ˋ(Lo/忄;)Lo/忄$if;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/忄;->yQ:Lo/忄$if;

    return-object v0
.end method

.method private ˋ(Lo/र;)Z
    .locals 1

    .line 521
    instance-of v0, p1, Lo/ｕ;

    return v0
.end method

.method private ˋ(Lo/ἶ;)Z
    .locals 2

    .line 425
    invoke-virtual {p1}, Lo/ἶ;->Ⅴ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x0

    return v0

    .line 428
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/忄;->uq:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 429
    iget-object v0, p0, Lo/忄;->uq:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lo/ἶ;->ﺒ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    const/4 v0, 0x1

    return v0

    .line 428
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private ˡ(J)V
    .locals 2

    .line 564
    iget-object v0, p0, Lo/忄;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/忄;->yQ:Lo/忄$if;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lo/忄;->qK:Landroid/os/Handler;

    new-instance v1, Lo/ﺏ;

    invoke-direct {v1, p0, p1, p2}, Lo/ﺏ;-><init>(Lo/忄;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    :cond_0
    return-void
.end method

.method private ᒲ()Z
    .locals 2

    .line 219
    invoke-direct {p0}, Lo/忄;->ᒳ()V

    .line 220
    invoke-direct {p0}, Lo/忄;->ᓛ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_1
    iget-boolean v0, p0, Lo/忄;->uj:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lo/忄;->ゞ()Lo/ἶ;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/忄;->ˋ(Lo/ἶ;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 224
    :goto_0
    if-nez v1, :cond_3

    .line 225
    invoke-direct {p0}, Lo/忄;->ᒶ()V

    .line 227
    :cond_3
    return v1
.end method

.method private ᒳ()V
    .locals 14

    .line 471
    iget-boolean v0, p0, Lo/忄;->uB:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/忄;->uE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/忄;->uy:Lo/ס;

    invoke-virtual {v0}, Lo/ס;->ƨ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    :cond_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lo/忄;->uA:Ljava/io/IOException;

    if-eqz v0, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    .line 476
    :goto_0
    if-eqz v10, :cond_4

    .line 477
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/忄;->uD:J

    sub-long v11, v0, v2

    .line 478
    iget v0, p0, Lo/忄;->uC:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lo/忄;->ⁱ(J)J

    move-result-wide v0

    cmp-long v0, v11, v0

    if-ltz v0, :cond_3

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lo/忄;->uA:Ljava/io/IOException;

    .line 480
    iget-object v0, p0, Lo/忄;->uy:Lo/ס;

    iget-object v1, p0, Lo/忄;->yV:Lo/र;

    invoke-virtual {v0, v1, p0}, Lo/ס;->ˊ(Lo/ס$ˋ;Lo/ס$if;)V

    .line 482
    :cond_3
    return-void

    .line 485
    :cond_4
    iget-object v0, p0, Lo/忄;->yU:Lo/ｕ;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/忄;->yU:Lo/ｕ;

    iget-wide v0, v0, Lo/ｕ;->tO:J

    iget-wide v2, p0, Lo/忄;->us:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lo/忄;->yO:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    iget-object v0, p0, Lo/忄;->uK:Lo/ʎ;

    invoke-interface {v0}, Lo/ʎ;->ｱ()I

    move-result v0

    iget v1, p0, Lo/忄;->ud:I

    if-lt v0, v1, :cond_6

    .line 489
    :cond_5
    return-void

    .line 492
    :cond_6
    iget-object v0, p0, Lo/忄;->yM:Lo/Ỵ;

    iget-object v1, p0, Lo/忄;->yU:Lo/ｕ;

    iget-wide v2, p0, Lo/忄;->uu:J

    iget-wide v4, p0, Lo/忄;->us:J

    invoke-virtual/range {v0 .. v5}, Lo/Ỵ;->ˊ(Lo/ｕ;JJ)Lo/र;

    move-result-object v11

    .line 494
    if-nez v11, :cond_7

    .line 495
    return-void

    .line 498
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/忄;->yW:J

    .line 499
    iput-object v11, p0, Lo/忄;->yV:Lo/र;

    .line 500
    iget-object v0, p0, Lo/忄;->yV:Lo/र;

    invoke-direct {p0, v0}, Lo/忄;->ˋ(Lo/र;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 501
    iget-object v0, p0, Lo/忄;->yV:Lo/र;

    check-cast v0, Lo/ｕ;

    move-object v12, v0

    .line 502
    invoke-direct {p0}, Lo/忄;->ᓛ()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 503
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/忄;->uu:J

    .line 505
    :cond_8
    iget-object v13, v12, Lo/ｕ;->zl:Lo/ἶ;

    .line 506
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v13, :cond_a

    .line 507
    :cond_9
    iget-object v0, p0, Lo/忄;->uK:Lo/ʎ;

    invoke-virtual {v13, v0}, Lo/ἶ;->ˊ(Lo/ʎ;)V

    .line 508
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 510
    :cond_a
    move-object v0, p0

    iget-object v1, v12, Lo/ｕ;->tE:Lo/к;

    iget-wide v1, v1, Lo/к;->length:J

    iget v3, v12, Lo/ｕ;->type:I

    iget v4, v12, Lo/ｕ;->tC:I

    iget-object v5, v12, Lo/ｕ;->tD:Lo/ব;

    iget-wide v6, v12, Lo/ｕ;->tN:J

    iget-wide v8, v12, Lo/ｕ;->tO:J

    invoke-direct/range {v0 .. v9}, Lo/忄;->ˊ(JIILo/ব;JJ)V

    .line 512
    iput-object v12, p0, Lo/忄;->yU:Lo/ｕ;

    .line 513
    goto :goto_1

    .line 514
    :cond_b
    move-object v0, p0

    iget-object v1, p0, Lo/忄;->yV:Lo/र;

    iget-object v1, v1, Lo/र;->tE:Lo/к;

    iget-wide v1, v1, Lo/к;->length:J

    iget-object v3, p0, Lo/忄;->yV:Lo/र;

    iget v3, v3, Lo/र;->type:I

    iget-object v4, p0, Lo/忄;->yV:Lo/र;

    iget v4, v4, Lo/र;->tC:I

    iget-object v5, p0, Lo/忄;->yV:Lo/र;

    iget-object v5, v5, Lo/र;->tD:Lo/ব;

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    invoke-direct/range {v0 .. v9}, Lo/忄;->ˊ(JIILo/ব;JJ)V

    .line 517
    :goto_1
    iget-object v0, p0, Lo/忄;->uy:Lo/ס;

    iget-object v1, p0, Lo/忄;->yV:Lo/र;

    invoke-virtual {v0, v1, p0}, Lo/ס;->ˊ(Lo/ס$ˋ;Lo/ס$if;)V

    .line 518
    return-void
.end method

.method private ᒶ()V
    .locals 2

    .line 437
    iget-object v0, p0, Lo/忄;->uA:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/忄;->uB:Z

    if-nez v0, :cond_0

    iget v0, p0, Lo/忄;->uC:I

    iget v1, p0, Lo/忄;->uf:I

    if-le v0, v1, :cond_1

    .line 439
    :cond_0
    iget-object v0, p0, Lo/忄;->uA:Ljava/io/IOException;

    throw v0

    .line 441
    :cond_1
    return-void
.end method

.method private ᓘ()V
    .locals 2

    .line 455
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 456
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ἶ;

    invoke-virtual {v0}, Lo/ἶ;->clear()V

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 459
    invoke-direct {p0}, Lo/忄;->イ()V

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lo/忄;->yU:Lo/ｕ;

    .line 461
    return-void
.end method

.method private ᓛ()Z
    .locals 4

    .line 525
    iget-wide v0, p0, Lo/忄;->uu:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ᵎ(J)V
    .locals 1

    .line 444
    iput-wide p1, p0, Lo/忄;->uu:J

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/忄;->uE:Z

    .line 446
    iget-object v0, p0, Lo/忄;->uy:Lo/ס;

    invoke-virtual {v0}, Lo/ס;->ƨ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lo/忄;->uy:Lo/ס;

    invoke-virtual {v0}, Lo/ס;->ƫ()V

    goto :goto_0

    .line 449
    :cond_0
    invoke-direct {p0}, Lo/忄;->ᓘ()V

    .line 450
    invoke-direct {p0}, Lo/忄;->ᒳ()V

    .line 452
    :goto_0
    return-void
.end method

.method private ⁱ(J)J
    .locals 4

    .line 529
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private ゞ()Lo/ἶ;
    .locals 3

    .line 404
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ἶ;

    move-object v2, v0

    .line 405
    :goto_0
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0, v2}, Lo/忄;->ˋ(Lo/ἶ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ἶ;

    invoke-virtual {v0}, Lo/ἶ;->clear()V

    .line 408
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ἶ;

    move-object v2, v0

    goto :goto_0

    .line 410
    :cond_0
    return-object v2
.end method

.method private イ()V
    .locals 1

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lo/忄;->yV:Lo/र;

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lo/忄;->uA:Ljava/io/IOException;

    .line 466
    const/4 v0, 0x0

    iput v0, p0, Lo/忄;->uC:I

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/忄;->uB:Z

    .line 468
    return-void
.end method


# virtual methods
.method public getTrackCount()I
    .locals 1

    .line 167
    iget-boolean v0, p0, Lo/忄;->uj:Z

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 168
    iget v0, p0, Lo/忄;->yR:I

    return v0
.end method

.method public release()V
    .locals 2

    .line 336
    iget v0, p0, Lo/忄;->ur:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 337
    iget v0, p0, Lo/忄;->ur:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/忄;->ur:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/忄;->uy:Lo/ס;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lo/忄;->uy:Lo/ס;

    invoke-virtual {v0}, Lo/ס;->release()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lo/忄;->uy:Lo/ס;

    .line 341
    :cond_1
    return-void
.end method

.method protected final ˇ(J)I
    .locals 2

    .line 533
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method public ˊ(IJLo/م;Lo/ڋ;Z)I
    .locals 8

    .line 233
    iget-boolean v0, p0, Lo/忄;->uj:Z

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 234
    iput-wide p2, p0, Lo/忄;->us:J

    .line 236
    iget-object v0, p0, Lo/忄;->uo:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lo/忄;->uo:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 238
    const/4 v0, -0x5

    return v0

    .line 241
    :cond_0
    if-eqz p6, :cond_1

    .line 242
    const/4 v0, -0x2

    return v0

    .line 245
    :cond_1
    invoke-direct {p0}, Lo/忄;->ᓛ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-direct {p0}, Lo/忄;->ᒶ()V

    .line 247
    const/4 v0, -0x2

    return v0

    .line 250
    :cond_2
    invoke-direct {p0}, Lo/忄;->ゞ()Lo/ἶ;

    move-result-object v4

    .line 252
    iget-object v0, p0, Lo/忄;->yT:Lo/ব;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/忄;->yT:Lo/ব;

    iget-object v1, v4, Lo/ἶ;->tD:Lo/ব;

    invoke-virtual {v0, v1}, Lo/ব;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 254
    :cond_3
    iget-object v0, v4, Lo/ἶ;->tD:Lo/ব;

    iget v1, v4, Lo/ἶ;->tC:I

    iget-wide v2, v4, Lo/ἶ;->tN:J

    invoke-direct {p0, v0, v1, v2, v3}, Lo/忄;->ˊ(Lo/ব;IJ)V

    .line 255
    iget-object v0, v4, Lo/ἶ;->tD:Lo/ব;

    iput-object v0, p0, Lo/忄;->yT:Lo/ব;

    .line 258
    :cond_4
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 261
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ἶ;

    invoke-virtual {v4, v0}, Lo/ἶ;->ˊ(Lo/ἶ;)V

    .line 264
    :cond_5
    const/4 v5, 0x0

    .line 265
    :goto_0
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v1, v5, 0x1

    if-le v0, v1, :cond_6

    invoke-virtual {v4, p1}, Lo/ἶ;->ﺒ(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 268
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ἶ;

    move-object v4, v0

    goto :goto_0

    .line 271
    :cond_6
    invoke-virtual {v4}, Lo/ἶ;->Ⅴ()Z

    move-result v0

    if-nez v0, :cond_7

    .line 272
    invoke-direct {p0}, Lo/忄;->ᒶ()V

    .line 273
    const/4 v0, -0x2

    return v0

    .line 276
    :cond_7
    invoke-virtual {v4, p1}, Lo/ἶ;->ﭘ(I)Lo/ب;

    move-result-object v6

    .line 277
    if-eqz v6, :cond_8

    iget-object v0, p0, Lo/忄;->yS:[Lo/ب;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lo/ب;->ˊ(Lo/ب;Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 283
    iput-object v6, p4, Lo/م;->ry:Lo/ب;

    .line 284
    iget-object v0, p0, Lo/忄;->yS:[Lo/ب;

    aput-object v6, v0, p1

    .line 285
    const/4 v0, -0x4

    return v0

    .line 288
    :cond_8
    invoke-virtual {v4, p1, p5}, Lo/ἶ;->ˊ(ILo/ڋ;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 289
    iget-boolean v0, p0, Lo/忄;->ug:Z

    if-eqz v0, :cond_9

    iget-wide v0, p5, Lo/ڋ;->sJ:J

    iget-wide v2, p0, Lo/忄;->ut:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_9

    const/4 v7, 0x1

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    .line 290
    :goto_1
    iget v0, p5, Lo/ڋ;->flags:I

    if-eqz v7, :cond_a

    const/high16 v1, 0x8000000

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    :goto_2
    or-int/2addr v0, v1

    iput v0, p5, Lo/ڋ;->flags:I

    .line 291
    const/4 v0, -0x3

    return v0

    .line 294
    :cond_b
    iget-boolean v0, p0, Lo/忄;->uE:Z

    if-eqz v0, :cond_c

    .line 295
    const/4 v0, -0x1

    return v0

    .line 298
    :cond_c
    invoke-direct {p0}, Lo/忄;->ᒶ()V

    .line 299
    const/4 v0, -0x2

    return v0
.end method

.method public ˊ(Lo/ס$ˋ;)V
    .locals 19

    .line 345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 346
    move-object/from16 v0, p0

    iget-wide v0, v0, Lo/忄;->yW:J

    sub-long v16, v14, v0

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/忄;->yM:Lo/Ỵ;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/忄;->yV:Lo/र;

    invoke-virtual {v0, v1}, Lo/Ỵ;->ˊ(Lo/र;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/忄;->yV:Lo/र;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/忄;->ˋ(Lo/र;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    move-object/from16 v0, p1

    check-cast v0, Lo/ｕ;

    move-object/from16 v18, v0

    .line 350
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lo/ｕ;->tQ:Z

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/忄;->uE:Z

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/忄;->yV:Lo/र;

    invoke-virtual {v1}, Lo/र;->ব()J

    move-result-wide v1

    move-object/from16 v3, v18

    iget v3, v3, Lo/ｕ;->type:I

    move-object/from16 v4, v18

    iget v4, v4, Lo/ｕ;->tC:I

    move-object/from16 v5, v18

    iget-object v5, v5, Lo/ｕ;->tD:Lo/ব;

    move-object/from16 v6, v18

    iget-wide v6, v6, Lo/ｕ;->tN:J

    move-object/from16 v8, v18

    iget-wide v8, v8, Lo/ｕ;->tO:J

    move-wide v10, v14

    move-wide/from16 v12, v16

    invoke-direct/range {v0 .. v13}, Lo/忄;->ˊ(JIILo/ব;JJJJ)V

    .line 353
    goto :goto_0

    .line 354
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/忄;->yV:Lo/र;

    invoke-virtual {v1}, Lo/र;->ব()J

    move-result-wide v1

    move-object/from16 v3, p0

    iget-object v3, v3, Lo/忄;->yV:Lo/र;

    iget v3, v3, Lo/र;->type:I

    move-object/from16 v4, p0

    iget-object v4, v4, Lo/忄;->yV:Lo/र;

    iget v4, v4, Lo/र;->tC:I

    move-object/from16 v5, p0

    iget-object v5, v5, Lo/忄;->yV:Lo/र;

    iget-object v5, v5, Lo/र;->tD:Lo/ব;

    move-wide v10, v14

    move-wide/from16 v12, v16

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    invoke-direct/range {v0 .. v13}, Lo/忄;->ˊ(JIILo/ব;JJJJ)V

    .line 357
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/忄;->uB:Z

    if-nez v0, :cond_1

    .line 358
    invoke-direct/range {p0 .. p0}, Lo/忄;->イ()V

    .line 360
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lo/忄;->uk:I

    if-lez v0, :cond_2

    .line 361
    invoke-direct/range {p0 .. p0}, Lo/忄;->ᒳ()V

    goto :goto_1

    .line 363
    :cond_2
    invoke-direct/range {p0 .. p0}, Lo/忄;->ᓘ()V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/忄;->uK:Lo/ʎ;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/ʎ;->Ȉ(I)V

    .line 366
    :goto_1
    return-void
.end method

.method public ˊ(Lo/ס$ˋ;Ljava/io/IOException;)V
    .locals 2

    .line 381
    iget-object v0, p0, Lo/忄;->yM:Lo/Ỵ;

    iget-object v1, p0, Lo/忄;->yV:Lo/र;

    invoke-virtual {v0, v1, p2}, Lo/Ỵ;->ˊ(Lo/र;Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0}, Lo/忄;->イ()V

    goto :goto_0

    .line 385
    :cond_0
    iput-object p2, p0, Lo/忄;->uA:Ljava/io/IOException;

    .line 386
    iget v0, p0, Lo/忄;->uC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/忄;->uC:I

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/忄;->uD:J

    .line 389
    :goto_0
    invoke-direct {p0, p2}, Lo/忄;->ˊ(Ljava/io/IOException;)V

    .line 390
    invoke-direct {p0}, Lo/忄;->ᒳ()V

    .line 391
    return-void
.end method

.method public ˋ(Lo/ס$ˋ;)V
    .locals 2

    .line 370
    iget-object v0, p0, Lo/忄;->yV:Lo/र;

    invoke-virtual {v0}, Lo/र;->ব()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lo/忄;->ˡ(J)V

    .line 371
    iget v0, p0, Lo/忄;->uk:I

    if-lez v0, :cond_0

    .line 372
    iget-wide v0, p0, Lo/忄;->uu:J

    invoke-direct {p0, v0, v1}, Lo/忄;->ᵎ(J)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-direct {p0}, Lo/忄;->ᓘ()V

    .line 375
    iget-object v0, p0, Lo/忄;->uK:Lo/ʎ;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/ʎ;->Ȉ(I)V

    .line 377
    :goto_0
    return-void
.end method

.method public ˏ(IJ)V
    .locals 2

    .line 179
    iget-boolean v0, p0, Lo/忄;->uj:Z

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 180
    iget-object v0, p0, Lo/忄;->uq:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 181
    iget v0, p0, Lo/忄;->uk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/忄;->uk:I

    .line 182
    iget-object v0, p0, Lo/忄;->uq:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 183
    iget-object v0, p0, Lo/忄;->yS:[Lo/ب;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lo/忄;->yT:Lo/ব;

    .line 185
    iget v0, p0, Lo/忄;->uk:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 186
    invoke-virtual {p0, p2, p3}, Lo/忄;->ﹳ(J)V

    .line 188
    :cond_1
    return-void
.end method

.method public ϊ(I)Lo/ڕ;
    .locals 1

    .line 173
    iget-boolean v0, p0, Lo/忄;->uj:Z

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 174
    iget-object v0, p0, Lo/忄;->ul:[Lo/ڕ;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public ג(I)V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lo/忄;->uj:Z

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 193
    iget-object v0, p0, Lo/忄;->uq:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 194
    iget v0, p0, Lo/忄;->uk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/忄;->uk:I

    .line 195
    iget-object v0, p0, Lo/忄;->uq:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 196
    iget-object v0, p0, Lo/忄;->uo:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 197
    iget v0, p0, Lo/忄;->uk:I

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lo/忄;->uy:Lo/ס;

    invoke-virtual {v0}, Lo/ס;->ƨ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lo/忄;->uy:Lo/ס;

    invoke-virtual {v0}, Lo/ס;->ƫ()V

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lo/忄;->ᓘ()V

    .line 202
    iget-object v0, p0, Lo/忄;->uK:Lo/ʎ;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/ʎ;->Ȉ(I)V

    .line 205
    :cond_1
    :goto_0
    return-void
.end method

.method public ᐧ(J)Z
    .locals 8

    .line 129
    iget-boolean v0, p0, Lo/忄;->uj:Z

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ἶ;

    move-object v5, v0

    .line 135
    invoke-virtual {v5}, Lo/ἶ;->Ⅴ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {v5}, Lo/ἶ;->getTrackCount()I

    move-result v0

    iput v0, p0, Lo/忄;->yR:I

    .line 137
    iget v0, p0, Lo/忄;->yR:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lo/忄;->uq:[Z

    .line 138
    iget v0, p0, Lo/忄;->yR:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lo/忄;->uo:[Z

    .line 139
    iget v0, p0, Lo/忄;->yR:I

    new-array v0, v0, [Lo/ب;

    iput-object v0, p0, Lo/忄;->yS:[Lo/ب;

    .line 140
    iget v0, p0, Lo/忄;->yR:I

    new-array v0, v0, [Lo/ڕ;

    iput-object v0, p0, Lo/忄;->ul:[Lo/ڕ;

    .line 141
    const/4 v6, 0x0

    :goto_0
    iget v0, p0, Lo/忄;->yR:I

    if-ge v6, v0, :cond_1

    .line 142
    invoke-virtual {v5, v6}, Lo/ἶ;->ﭘ(I)Lo/ب;

    move-result-object v7

    .line 143
    iget-object v0, p0, Lo/忄;->ul:[Lo/ڕ;

    new-instance v1, Lo/ڕ;

    iget-object v2, v7, Lo/ب;->mimeType:Ljava/lang/String;

    iget-object v3, p0, Lo/忄;->yM:Lo/Ỵ;

    invoke-virtual {v3}, Lo/Ỵ;->ﻤ()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lo/ڕ;-><init>(Ljava/lang/String;J)V

    aput-object v1, v0, v6

    .line 141
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/忄;->uj:Z

    .line 146
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_2
    iget-object v0, p0, Lo/忄;->uy:Lo/ס;

    if-nez v0, :cond_3

    .line 151
    new-instance v0, Lo/ס;

    const-string v1, "Loader:HLS"

    invoke-direct {v0, v1}, Lo/ס;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/忄;->uy:Lo/ס;

    .line 153
    :cond_3
    iget-object v0, p0, Lo/忄;->uy:Lo/ס;

    invoke-virtual {v0}, Lo/ס;->ƨ()Z

    move-result v0

    if-nez v0, :cond_4

    .line 157
    iput-wide p1, p0, Lo/忄;->uu:J

    .line 158
    iput-wide p1, p0, Lo/忄;->us:J

    .line 160
    :cond_4
    invoke-direct {p0}, Lo/忄;->ᒳ()V

    .line 161
    invoke-direct {p0}, Lo/忄;->ᒶ()V

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public ᐨ(J)Z
    .locals 3

    .line 209
    iget-boolean v0, p0, Lo/忄;->uj:Z

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 210
    iget v0, p0, Lo/忄;->uk:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 211
    iput-wide p1, p0, Lo/忄;->us:J

    .line 212
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ἶ;

    iget-wide v1, p0, Lo/忄;->us:J

    invoke-direct {p0, v0, v1, v2}, Lo/忄;->ˊ(Lo/ἶ;J)V

    .line 215
    :cond_1
    iget-boolean v0, p0, Lo/忄;->uE:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lo/忄;->ᒲ()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public ﹳ(J)V
    .locals 3

    .line 304
    iget-boolean v0, p0, Lo/忄;->uj:Z

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 305
    iget v0, p0, Lo/忄;->uk:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 306
    iput-wide p1, p0, Lo/忄;->ut:J

    .line 307
    invoke-direct {p0}, Lo/忄;->ᓛ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lo/忄;->uu:J

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lo/忄;->us:J

    :goto_1
    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    .line 308
    return-void

    .line 312
    :cond_2
    iput-wide p1, p0, Lo/忄;->us:J

    .line 313
    const/4 v2, 0x0

    :goto_2
    iget-object v0, p0, Lo/忄;->uo:[Z

    array-length v0, v0

    if-ge v2, v0, :cond_3

    .line 314
    iget-object v0, p0, Lo/忄;->uo:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 316
    :cond_3
    invoke-direct {p0, p1, p2}, Lo/忄;->ᵎ(J)V

    .line 317
    return-void
.end method

.method public ﻥ()J
    .locals 4

    .line 321
    iget-boolean v0, p0, Lo/忄;->uj:Z

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 322
    iget v0, p0, Lo/忄;->uk:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 323
    invoke-direct {p0}, Lo/忄;->ᓛ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-wide v0, p0, Lo/忄;->uu:J

    return-wide v0

    .line 325
    :cond_1
    iget-boolean v0, p0, Lo/忄;->uE:Z

    if-eqz v0, :cond_2

    .line 326
    const-wide/16 v0, -0x3

    return-wide v0

    .line 328
    :cond_2
    iget-object v0, p0, Lo/忄;->yN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ἶ;

    invoke-virtual {v0}, Lo/ἶ;->ᒬ()J

    move-result-wide v2

    .line 329
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    iget-wide v0, p0, Lo/忄;->us:J

    goto :goto_1

    :cond_3
    move-wide v0, v2

    :goto_1
    return-wide v0
.end method
