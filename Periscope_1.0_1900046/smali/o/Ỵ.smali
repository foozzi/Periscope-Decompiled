.class public Lo/Ỵ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ỵ$if;,
        Lo/Ỵ$ˊ;
    }
.end annotation


# instance fields
.field private final maxHeight:I

.field private final maxWidth:I

.field re:J

.field private final tF:Lo/ϒ;

.field private final xJ:Lo/イ;

.field private final xK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/\uff5a;>;"
        }
    .end annotation
.end field

.field private final xL:[Lo/ব;

.field private final xM:Lo/ʭ;

.field private final xN:I

.field private final xO:Ljava/lang/String;

.field private final xP:J

.field private final xQ:J

.field private final xR:Lo/ۂ;

.field xS:[B

.field final xT:[Lo/ῗ;

.field final xU:[J

.field final xV:[J

.field xW:Z

.field private xX:I

.field private xY:Landroid/net/Uri;

.field private xZ:[B

.field private ya:Ljava/lang/String;

.field private yb:[B


# direct methods
.method public constructor <init>(Lo/ϒ;Ljava/lang/String;Lo/ゞ;Lo/ʭ;[IIJJLo/ۂ;)V
    .locals 12

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lo/Ỵ;->tF:Lo/ϒ;

    .line 175
    move-object/from16 v0, p4

    iput-object v0, p0, Lo/Ỵ;->xM:Lo/ʭ;

    .line 176
    move/from16 v0, p6

    iput v0, p0, Lo/Ỵ;->xN:I

    .line 177
    move-object/from16 v0, p11

    iput-object v0, p0, Lo/Ỵ;->xR:Lo/ۂ;

    .line 178
    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p7

    iput-wide v0, p0, Lo/Ỵ;->xP:J

    .line 179
    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p9

    iput-wide v0, p0, Lo/Ỵ;->xQ:J

    .line 180
    iget-object v0, p3, Lo/ゞ;->xO:Ljava/lang/String;

    iput-object v0, p0, Lo/Ỵ;->xO:Ljava/lang/String;

    .line 181
    new-instance v0, Lo/イ;

    invoke-direct {v0}, Lo/イ;-><init>()V

    iput-object v0, p0, Lo/Ỵ;->xJ:Lo/イ;

    .line 183
    iget v0, p3, Lo/ゞ;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 184
    new-instance v0, Lo/ｚ;

    const/4 v1, 0x0

    move-object v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lo/ｚ;-><init>(ILjava/lang/String;ILjava/lang/String;II)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/Ỵ;->xK:Ljava/util/List;

    .line 185
    const/16 p5, 0x0

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [Lo/ῗ;

    iput-object v0, p0, Lo/Ỵ;->xT:[Lo/ῗ;

    .line 187
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lo/Ỵ;->xU:[J

    .line 188
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lo/Ỵ;->xV:[J

    .line 189
    move-object v0, p3

    check-cast v0, Lo/ῗ;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lo/Ỵ;->ˊ(ILo/ῗ;)V

    goto :goto_0

    .line 191
    :cond_0
    move-object v0, p3

    check-cast v0, Lo/ἷ;

    iget-object v0, v0, Lo/ἷ;->xK:Ljava/util/List;

    iput-object v0, p0, Lo/Ỵ;->xK:Ljava/util/List;

    .line 192
    iget-object v0, p0, Lo/Ỵ;->xK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 193
    new-array v0, v7, [Lo/ῗ;

    iput-object v0, p0, Lo/Ỵ;->xT:[Lo/ῗ;

    .line 194
    new-array v0, v7, [J

    iput-object v0, p0, Lo/Ỵ;->xU:[J

    .line 195
    new-array v0, v7, [J

    iput-object v0, p0, Lo/Ỵ;->xV:[J

    .line 198
    :goto_0
    iget-object v0, p0, Lo/Ỵ;->xK:Ljava/util/List;

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lo/Ỵ;->ˋ(Ljava/util/List;[I)[Lo/ব;

    move-result-object v0

    iput-object v0, p0, Lo/Ỵ;->xL:[Lo/ব;

    .line 200
    const/4 v7, -0x1

    .line 201
    const/4 v8, -0x1

    .line 203
    const v9, 0x7fffffff

    .line 204
    const/4 v10, 0x0

    :goto_1
    iget-object v0, p0, Lo/Ỵ;->xL:[Lo/ব;

    array-length v0, v0

    if-ge v10, v0, :cond_2

    .line 205
    iget-object v0, p0, Lo/Ỵ;->xL:[Lo/ব;

    aget-object v0, v0, v10

    invoke-direct {p0, v0}, Lo/Ỵ;->ˊ(Lo/ব;)I

    move-result v11

    .line 206
    if-ge v11, v9, :cond_1

    .line 207
    move v9, v11

    .line 208
    iput v10, p0, Lo/Ỵ;->xX:I

    .line 210
    :cond_1
    iget-object v0, p0, Lo/Ỵ;->xL:[Lo/ব;

    aget-object v0, v0, v10

    iget v0, v0, Lo/ব;->width:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 211
    iget-object v0, p0, Lo/Ỵ;->xL:[Lo/ব;

    aget-object v0, v0, v10

    iget v0, v0, Lo/ব;->height:I

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 204
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 214
    :cond_2
    if-lez v7, :cond_3

    move v0, v7

    goto :goto_2

    :cond_3
    const/16 v0, 0x780

    :goto_2
    iput v0, p0, Lo/Ỵ;->maxWidth:I

    .line 215
    if-lez v8, :cond_4

    move v0, v8

    goto :goto_3

    :cond_4
    const/16 v0, 0x438

    :goto_3
    iput v0, p0, Lo/Ỵ;->maxHeight:I

    .line 216
    return-void
.end method

.method public constructor <init>(Lo/ϒ;Ljava/lang/String;Lo/ゞ;Lo/ʭ;[IILo/ۂ;)V
    .locals 12

    .line 147
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v11, p7

    const-wide/16 v7, 0x1388

    const-wide/16 v9, 0x4e20

    invoke-direct/range {v0 .. v11}, Lo/Ỵ;-><init>(Lo/ϒ;Ljava/lang/String;Lo/ゞ;Lo/ʭ;[IIJJLo/ۂ;)V

    .line 150
    return-void
.end method

.method private ˊ(Lo/ব;)I
    .locals 4

    .line 596
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lo/Ỵ;->xK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 597
    iget-object v0, p0, Lo/Ỵ;->xK:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ｚ;

    iget-object v0, v0, Lo/ｚ;->tD:Lo/ব;

    invoke-virtual {v0, p1}, Lo/ব;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    return v3

    .line 596
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 602
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ˊ(Lo/ｕ;J)I
    .locals 11

    .line 409
    invoke-direct {p0}, Lo/Ỵ;->ἷ()V

    .line 410
    if-nez p1, :cond_0

    .line 412
    iget v0, p0, Lo/Ỵ;->xX:I

    return v0

    .line 414
    :cond_0
    iget-object v0, p0, Lo/Ỵ;->xM:Lo/ʭ;

    invoke-interface {v0}, Lo/ʭ;->ﾗ()J

    move-result-wide v4

    .line 415
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    .line 417
    iget v0, p0, Lo/Ỵ;->xX:I

    return v0

    .line 419
    :cond_1
    long-to-float v0, v4

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lo/Ỵ;->ᴊ(I)I

    move-result v6

    .line 421
    iget v0, p0, Lo/Ỵ;->xX:I

    if-ne v6, v0, :cond_2

    .line 423
    iget v0, p0, Lo/Ỵ;->xX:I

    return v0

    .line 427
    :cond_2
    iget v0, p0, Lo/Ỵ;->xN:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-wide v7, p1, Lo/ｕ;->tN:J

    goto :goto_0

    :cond_3
    iget-wide v7, p1, Lo/ｕ;->tO:J

    .line 429
    :goto_0
    sub-long v9, v7, p2

    .line 430
    iget-object v0, p0, Lo/Ỵ;->xU:[J

    iget v1, p0, Lo/Ỵ;->xX:I

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget v0, p0, Lo/Ỵ;->xX:I

    if-le v6, v0, :cond_4

    iget-wide v0, p0, Lo/Ỵ;->xQ:J

    cmp-long v0, v9, v0

    if-ltz v0, :cond_5

    :cond_4
    iget v0, p0, Lo/Ỵ;->xX:I

    if-ge v6, v0, :cond_6

    iget-wide v0, p0, Lo/Ỵ;->xP:J

    cmp-long v0, v9, v0

    if-lez v0, :cond_6

    .line 434
    :cond_5
    return v6

    .line 437
    :cond_6
    iget v0, p0, Lo/Ỵ;->xX:I

    return v0
.end method

.method private ˊ(Landroid/net/Uri;Ljava/lang/String;)Lo/Ỵ$if;
    .locals 9

    .line 480
    new-instance v0, Lo/к;

    move-object v1, p1

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lo/к;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    move-object v8, v0

    .line 481
    new-instance v0, Lo/Ỵ$if;

    iget-object v1, p0, Lo/Ỵ;->tF:Lo/ϒ;

    iget-object v2, p0, Lo/Ỵ;->xS:[B

    invoke-direct {v0, v1, v8, v2, p2}, Lo/Ỵ$if;-><init>(Lo/ϒ;Lo/к;[BLjava/lang/String;)V

    return-object v0
.end method

.method private static ˊ(Lo/ｚ;Ljava/lang/String;)Z
    .locals 4

    .line 563
    iget-object v0, p0, Lo/ｚ;->tD:Lo/ব;

    iget-object v1, v0, Lo/ব;->tL:Ljava/lang/String;

    .line 564
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const/4 v0, 0x0

    return v0

    .line 567
    :cond_0
    const-string v0, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 568
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_2

    .line 569
    aget-object v0, v2, v3

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    const/4 v0, 0x1

    return v0

    .line 568
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 573
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static ˋ(Ljava/util/List;[I)[Lo/ব;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/\uff5a;>;[I)[Lo/\u09ac;"
        }
    .end annotation

    .line 519
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 520
    if-eqz p1, :cond_1

    .line 521
    const/4 v3, 0x0

    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_0

    .line 522
    aget v0, p1, v3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 526
    :cond_1
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 529
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 530
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 531
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    .line 532
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ｚ;

    move-object v6, v0

    .line 533
    iget-object v0, v6, Lo/ｚ;->tD:Lo/ব;

    iget v0, v0, Lo/ব;->height:I

    if-gtz v0, :cond_2

    const-string v0, "avc"

    invoke-static {v6, v0}, Lo/Ỵ;->ˊ(Lo/ｚ;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 535
    :cond_3
    const-string v0, "mp4a"

    invoke-static {v6, v0}, Lo/Ỵ;->ˊ(Lo/ｚ;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 536
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 540
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 544
    move-object v2, v3

    goto :goto_4

    .line 545
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 548
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 553
    :cond_7
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Lo/ব;

    .line 554
    const/4 v6, 0x0

    :goto_5
    array-length v0, v5

    if-ge v6, v0, :cond_8

    .line 555
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ｚ;

    iget-object v0, v0, Lo/ｚ;->tD:Lo/ব;

    aput-object v0, v5, v6

    .line 554
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 558
    :cond_8
    new-instance v0, Lo/ব$if;

    invoke-direct {v0}, Lo/ব$if;-><init>()V

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 559
    return-object v5
.end method

.method private ᴊ(I)I
    .locals 7

    .line 441
    const/4 v4, -0x1

    .line 442
    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lo/Ỵ;->xL:[Lo/ব;

    array-length v0, v0

    if-ge v5, v0, :cond_2

    .line 443
    iget-object v0, p0, Lo/Ỵ;->xL:[Lo/ব;

    aget-object v0, v0, v5

    invoke-direct {p0, v0}, Lo/Ỵ;->ˊ(Lo/ব;)I

    move-result v6

    .line 444
    iget-object v0, p0, Lo/Ỵ;->xU:[J

    aget-wide v0, v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 445
    iget-object v0, p0, Lo/Ỵ;->xL:[Lo/ব;

    aget-object v0, v0, v5

    iget v0, v0, Lo/ব;->tH:I

    if-gt v0, p1, :cond_0

    .line 446
    return v5

    .line 448
    :cond_0
    move v4, v5

    .line 442
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 452
    :cond_2
    const/4 v0, -0x1

    if-eq v4, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 453
    return v4
.end method

.method private ᴷ(I)Z
    .locals 7

    .line 458
    iget-object v0, p0, Lo/Ỵ;->xT:[Lo/ῗ;

    aget-object v4, v0, p1

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lo/Ỵ;->xV:[J

    aget-wide v2, v2, p1

    sub-long v5, v0, v2

    .line 461
    iget v0, v4, Lo/ῗ;->yl:I

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    cmp-long v0, v5, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ᵏ(I)I
    .locals 4

    .line 466
    iget-object v0, p0, Lo/Ỵ;->xT:[Lo/ῗ;

    aget-object v2, v0, p1

    .line 467
    iget-object v0, v2, Lo/ῗ;->ym:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, v2, Lo/ῗ;->ym:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 468
    :goto_0
    iget v0, v2, Lo/ῗ;->yk:I

    add-int/2addr v0, v3

    return v0
.end method

.method private Ỵ()V
    .locals 1

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lo/Ỵ;->xY:Landroid/net/Uri;

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lo/Ỵ;->xZ:[B

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lo/Ỵ;->ya:Ljava/lang/String;

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lo/Ỵ;->yb:[B

    .line 509
    return-void
.end method

.method private ἶ()Z
    .locals 5

    .line 577
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lo/Ỵ;->xU:[J

    array-length v0, v0

    if-ge v4, v0, :cond_1

    .line 578
    iget-object v0, p0, Lo/Ỵ;->xU:[J

    aget-wide v0, v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 579
    const/4 v0, 0x0

    return v0

    .line 577
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 582
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private ἷ()V
    .locals 7

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 587
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lo/Ỵ;->xU:[J

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 588
    iget-object v0, p0, Lo/Ỵ;->xU:[J

    aget-wide v0, v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Ỵ;->xU:[J

    aget-wide v0, v0, v6

    sub-long v0, v4, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 590
    iget-object v0, p0, Lo/Ỵ;->xU:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v6

    .line 587
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 593
    :cond_1
    return-void
.end method

.method private ⅼ(I)Lo/Ỵ$ˊ;
    .locals 10

    .line 472
    iget-object v0, p0, Lo/Ỵ;->xO:Ljava/lang/String;

    iget-object v1, p0, Lo/Ỵ;->xK:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ｚ;

    iget-object v1, v1, Lo/ｚ;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/ป;->ʻ(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 473
    new-instance v0, Lo/к;

    move-object v1, v8

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lo/к;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    move-object v9, v0

    .line 475
    new-instance v0, Lo/Ỵ$ˊ;

    iget-object v1, p0, Lo/Ỵ;->tF:Lo/ϒ;

    iget-object v3, p0, Lo/Ỵ;->xS:[B

    iget-object v4, p0, Lo/Ỵ;->xJ:Lo/イ;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v9

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lo/Ỵ$ˊ;-><init>(Lo/ϒ;Lo/к;[BLo/イ;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public ˊ(Lo/ｕ;JJ)Lo/र;
    .locals 33

    .line 247
    move-object/from16 v0, p0

    iget v0, v0, Lo/Ỵ;->xN:I

    if-nez v0, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget v14, v0, Lo/Ỵ;->xX:I

    .line 249
    const/4 v15, 0x0

    goto :goto_0

    .line 251
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-direct {v0, v1, v2, v3}, Lo/Ỵ;->ˊ(Lo/ｕ;J)I

    move-result v14

    .line 252
    move-object/from16 v0, p0

    iget v0, v0, Lo/Ỵ;->xX:I

    if-eq v14, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lo/Ỵ;->xN:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    .line 256
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/Ỵ;->xL:[Lo/ব;

    aget-object v0, v0, v14

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/Ỵ;->ˊ(Lo/ব;)I

    move-result v16

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/Ỵ;->xT:[Lo/ῗ;

    aget-object v17, v0, v16

    .line 258
    if-nez v17, :cond_2

    .line 260
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lo/Ỵ;->ⅼ(I)Lo/Ỵ$ˊ;

    move-result-object v0

    return-object v0

    .line 263
    :cond_2
    move-object/from16 v0, p0

    iput v14, v0, Lo/Ỵ;->xX:I

    .line 264
    const/16 v18, 0x0

    .line 265
    const/16 v19, 0x0

    .line 266
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/Ỵ;->xW:Z

    if-eqz v0, :cond_5

    .line 267
    if-nez p1, :cond_3

    .line 268
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lo/Ỵ;->ᵏ(I)I

    move-result v18

    goto :goto_2

    .line 270
    :cond_3
    if-eqz v15, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Lo/ｕ;->tP:I

    move/from16 v18, v0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Lo/ｕ;->tP:I

    add-int/lit8 v18, v0, 0x1

    .line 272
    :goto_1
    move-object/from16 v0, v17

    iget v0, v0, Lo/ῗ;->yk:I

    move/from16 v1, v18

    if-ge v1, v0, :cond_8

    .line 274
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lo/Ỵ;->ᵏ(I)I

    move-result v18

    .line 275
    const/16 v19, 0x1

    goto :goto_2

    .line 280
    :cond_5
    if-nez p1, :cond_6

    .line 281
    move-object/from16 v0, v17

    iget-object v0, v0, Lo/ῗ;->ym:Ljava/util/List;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lo/ผ;->ˊ(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v0

    move-object/from16 v1, v17

    iget v1, v1, Lo/ῗ;->yk:I

    add-int v18, v0, v1

    goto :goto_2

    .line 284
    :cond_6
    if-eqz v15, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Lo/ｕ;->tP:I

    move/from16 v18, v0

    goto :goto_2

    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lo/ｕ;->tP:I

    add-int/lit8 v18, v0, 0x1

    .line 289
    :cond_8
    :goto_2
    move-object/from16 v0, v17

    iget v0, v0, Lo/ῗ;->yk:I

    sub-int v20, v18, v0

    .line 290
    move-object/from16 v0, v17

    iget-object v0, v0, Lo/ῗ;->ym:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v20

    if-lt v1, v0, :cond_a

    .line 291
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lo/ῗ;->xW:Z

    if-eqz v0, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lo/Ỵ;->ᴷ(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 292
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lo/Ỵ;->ⅼ(I)Lo/Ỵ$ˊ;

    move-result-object v0

    return-object v0

    .line 294
    :cond_9
    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_a
    move-object/from16 v0, v17

    iget-object v0, v0, Lo/ῗ;->ym:Ljava/util/List;

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ῗ$if;

    move-object/from16 v21, v0

    .line 299
    move-object/from16 v0, v17

    iget-object v0, v0, Lo/ῗ;->xO:Ljava/lang/String;

    move-object/from16 v1, v21

    iget-object v1, v1, Lo/ῗ$if;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/ป;->ʻ(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 302
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lo/ῗ$if;->wH:Z

    if-eqz v0, :cond_d

    .line 303
    move-object/from16 v0, v17

    iget-object v0, v0, Lo/ῗ;->xO:Ljava/lang/String;

    move-object/from16 v1, v21

    iget-object v1, v1, Lo/ῗ$if;->yp:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/ป;->ʻ(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/Ỵ;->xY:Landroid/net/Uri;

    move-object/from16 v1, v23

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 306
    move-object/from16 v0, v21

    iget-object v0, v0, Lo/ῗ$if;->yq:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v1, v2, v0}, Lo/Ỵ;->ˊ(Landroid/net/Uri;Ljava/lang/String;)Lo/Ỵ$if;

    move-result-object v24

    .line 307
    return-object v24

    .line 309
    :cond_b
    move-object/from16 v0, v21

    iget-object v0, v0, Lo/ῗ$if;->yq:Ljava/lang/String;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/Ỵ;->ya:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/ผ;->ʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 310
    move-object/from16 v0, v21

    iget-object v0, v0, Lo/ῗ$if;->yq:Ljava/lang/String;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/Ỵ;->xZ:[B

    move-object/from16 v2, p0

    move-object/from16 v3, v23

    invoke-virtual {v2, v3, v0, v1}, Lo/Ỵ;->ˊ(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 312
    :cond_c
    goto :goto_3

    .line 313
    :cond_d
    invoke-direct/range {p0 .. p0}, Lo/Ỵ;->Ỵ()V

    .line 317
    :goto_3
    new-instance v0, Lo/к;

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    iget v2, v2, Lo/ῗ$if;->yr:I

    int-to-long v2, v2

    move-object/from16 v4, v21

    iget v4, v4, Lo/ῗ$if;->ys:I

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lo/к;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object/from16 v23, v0

    .line 322
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/Ỵ;->xW:Z

    if-eqz v0, :cond_10

    .line 323
    if-nez p1, :cond_e

    .line 324
    const-wide/16 v24, 0x0

    goto :goto_4

    .line 325
    :cond_e
    if-eqz v15, :cond_f

    .line 326
    move-object/from16 v0, p1

    iget-wide v0, v0, Lo/ｕ;->tN:J

    move-wide/from16 v24, v0

    goto :goto_4

    .line 328
    :cond_f
    move-object/from16 v0, p1

    iget-wide v0, v0, Lo/ｕ;->tO:J

    move-wide/from16 v24, v0

    goto :goto_4

    .line 331
    :cond_10
    move-object/from16 v0, v21

    iget-wide v0, v0, Lo/ῗ$if;->tN:J

    move-wide/from16 v24, v0

    .line 333
    :goto_4
    move-object/from16 v0, v21

    iget-wide v0, v0, Lo/ῗ$if;->yo:D

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    add-long v26, v24, v0

    .line 334
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lo/ῗ;->xW:Z

    if-nez v0, :cond_11

    move-object/from16 v0, v17

    iget-object v0, v0, Lo/ῗ;->ym:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move/from16 v1, v20

    if-ne v1, v0, :cond_11

    const/16 v28, 0x1

    goto :goto_5

    :cond_11
    const/16 v28, 0x0

    .line 335
    :goto_5
    const/16 v29, 0x0

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/Ỵ;->xL:[Lo/ব;

    move-object/from16 v1, p0

    iget v1, v1, Lo/Ỵ;->xX:I

    aget-object v30, v0, v1

    .line 340
    if-eqz p1, :cond_12

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lo/ῗ$if;->yn:Z

    if-nez v0, :cond_12

    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ｕ;->tD:Lo/ব;

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lo/ব;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v19, :cond_14

    .line 342
    :cond_12
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v32, Lo/ᘂ;

    move-object/from16 v0, v32

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lo/ᘂ;-><init>(J)V

    goto :goto_6

    :cond_13
    new-instance v32, Lo/Ỳ;

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/Ỵ;->xR:Lo/ۂ;

    move-object/from16 v1, v32

    move-wide/from16 v2, v24

    invoke-direct {v1, v2, v3, v0}, Lo/Ỳ;-><init>(JLo/ۂ;)V

    .line 345
    :goto_6
    new-instance v0, Lo/ἶ;

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-wide/from16 v3, v24

    move-object/from16 v5, v32

    move v6, v15

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lo/ἶ;-><init>(ILo/ব;JLo/ᒎ;Z)V

    move-object/from16 v31, v0

    .line 347
    goto :goto_7

    .line 348
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ｕ;->zl:Lo/ἶ;

    move-object/from16 v31, v0

    .line 351
    :goto_7
    new-instance v0, Lo/ｕ;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/Ỵ;->tF:Lo/ϒ;

    move-object/from16 v2, p0

    iget-object v12, v2, Lo/Ỵ;->xZ:[B

    move-object/from16 v2, p0

    iget-object v13, v2, Lo/Ỵ;->yb:[B

    move-object/from16 v2, v23

    move/from16 v3, v29

    move-object/from16 v4, v30

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    move/from16 v9, v18

    move/from16 v10, v28

    move-object/from16 v11, v31

    invoke-direct/range {v0 .. v13}, Lo/ｕ;-><init>(Lo/ϒ;Lo/к;ILo/ব;JJIZLo/ἶ;[B[B)V

    return-object v0
.end method

.method ˊ(ILo/ῗ;)V
    .locals 3

    .line 512
    iget-object v0, p0, Lo/Ỵ;->xV:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    aput-wide v1, v0, p1

    .line 513
    iget-object v0, p0, Lo/Ỵ;->xT:[Lo/ῗ;

    aput-object p2, v0, p1

    .line 514
    iget-boolean v0, p0, Lo/Ỵ;->xW:Z

    iget-boolean v1, p2, Lo/ῗ;->xW:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/Ỵ;->xW:Z

    .line 515
    iget-wide v0, p2, Lo/ῗ;->re:J

    iput-wide v0, p0, Lo/Ỵ;->re:J

    .line 516
    return-void
.end method

.method ˊ(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 6

    .line 486
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 489
    :cond_0
    move-object v2, p2

    .line 492
    :goto_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 493
    const/16 v0, 0x10

    new-array v4, v0, [B

    .line 494
    array-length v0, v3

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    array-length v0, v3

    add-int/lit8 v5, v0, -0x10

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 495
    :goto_1
    array-length v0, v4

    array-length v1, v3

    sub-int/2addr v0, v1

    add-int/2addr v0, v5

    array-length v1, v3

    sub-int/2addr v1, v5

    invoke-static {v3, v5, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    iput-object p1, p0, Lo/Ỵ;->xY:Landroid/net/Uri;

    .line 499
    iput-object p3, p0, Lo/Ỵ;->xZ:[B

    .line 500
    iput-object p2, p0, Lo/Ỵ;->ya:Ljava/lang/String;

    .line 501
    iput-object v4, p0, Lo/Ỵ;->yb:[B

    .line 502
    return-void
.end method

.method public ˊ(Lo/र;)V
    .locals 4

    .line 363
    instance-of v0, p1, Lo/Ỵ$ˊ;

    if-eqz v0, :cond_0

    .line 364
    move-object v0, p1

    check-cast v0, Lo/Ỵ$ˊ;

    move-object v3, v0

    .line 365
    invoke-virtual {v3}, Lo/Ỵ$ˊ;->শ()[B

    move-result-object v0

    iput-object v0, p0, Lo/Ỵ;->xS:[B

    .line 366
    iget v0, v3, Lo/Ỵ$ˊ;->ye:I

    invoke-virtual {v3}, Lo/Ỵ$ˊ;->ℓ()Lo/ῗ;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/Ỵ;->ˊ(ILo/ῗ;)V

    .line 367
    goto :goto_0

    :cond_0
    instance-of v0, p1, Lo/Ỵ$if;

    if-eqz v0, :cond_1

    .line 368
    move-object v0, p1

    check-cast v0, Lo/Ỵ$if;

    move-object v3, v0

    .line 369
    invoke-virtual {v3}, Lo/Ỵ$if;->শ()[B

    move-result-object v0

    iput-object v0, p0, Lo/Ỵ;->xS:[B

    .line 370
    iget-object v0, v3, Lo/Ỵ$if;->tE:Lo/к;

    iget-object v0, v0, Lo/к;->uri:Landroid/net/Uri;

    iget-object v1, v3, Lo/Ỵ$if;->yc:Ljava/lang/String;

    invoke-virtual {v3}, Lo/Ỵ$if;->ῗ()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lo/Ỵ;->ˊ(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 373
    :cond_1
    :goto_0
    return-void
.end method

.method public ˊ(Lo/र;Ljava/io/IOException;)Z
    .locals 7

    .line 384
    invoke-virtual {p1}, Lo/र;->ব()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    instance-of v0, p1, Lo/Ỵ$ˊ;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lo/չ$ˋ;

    if-eqz v0, :cond_2

    .line 386
    move-object v0, p2

    check-cast v0, Lo/չ$ˋ;

    move-object v4, v0

    .line 387
    iget v5, v4, Lo/չ$ˋ;->responseCode:I

    .line 388
    const/16 v0, 0x194

    if-eq v5, v0, :cond_0

    const/16 v0, 0x19a

    if-ne v5, v0, :cond_2

    .line 389
    :cond_0
    move-object v0, p1

    check-cast v0, Lo/Ỵ$ˊ;

    move-object v6, v0

    .line 390
    iget-object v0, p0, Lo/Ỵ;->xU:[J

    iget v1, v6, Lo/Ỵ$ˊ;->ye:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 391
    invoke-direct {p0}, Lo/Ỵ;->ἶ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    const-string v0, "HlsChunkSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blacklisted playlist ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lo/Ỵ$ˊ;->tE:Lo/к;

    iget-object v2, v2, Lo/к;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v0, 0x1

    return v0

    .line 398
    :cond_1
    const-string v0, "HlsChunkSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Final playlist not blacklisted ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lo/Ỵ$ˊ;->tE:Lo/к;

    iget-object v2, v2, Lo/к;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lo/Ỵ;->xU:[J

    iget v1, v6, Lo/Ỵ$ˊ;->ye:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 401
    const/4 v0, 0x0

    return v0

    .line 405
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public ﻤ()J
    .locals 2

    .line 219
    iget-boolean v0, p0, Lo/Ỵ;->xW:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lo/Ỵ;->re:J

    :goto_0
    return-wide v0
.end method
