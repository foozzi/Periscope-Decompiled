.class final Lo/ᒯ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᒯ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "if"
.end annotation


# instance fields
.field private uU:I

.field private uV:[J

.field private uW:[I

.field private uX:[I

.field private uY:[J

.field private uZ:[[B

.field private va:I

.field private vb:I

.field private vc:I

.field private vd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const/16 v0, 0x3e8

    iput v0, p0, Lo/ᒯ$if;->uU:I

    .line 459
    iget v0, p0, Lo/ᒯ$if;->uU:I

    new-array v0, v0, [J

    iput-object v0, p0, Lo/ᒯ$if;->uV:[J

    .line 460
    iget v0, p0, Lo/ᒯ$if;->uU:I

    new-array v0, v0, [J

    iput-object v0, p0, Lo/ᒯ$if;->uY:[J

    .line 461
    iget v0, p0, Lo/ᒯ$if;->uU:I

    new-array v0, v0, [I

    iput-object v0, p0, Lo/ᒯ$if;->uX:[I

    .line 462
    iget v0, p0, Lo/ᒯ$if;->uU:I

    new-array v0, v0, [I

    iput-object v0, p0, Lo/ᒯ$if;->uW:[I

    .line 463
    iget v0, p0, Lo/ᒯ$if;->uU:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lo/ᒯ$if;->uZ:[[B

    .line 464
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒯ$if;->vb:I

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒯ$if;->vc:I

    .line 474
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒯ$if;->vd:I

    .line 475
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒯ$if;->va:I

    .line 476
    return-void
.end method

.method public declared-synchronized ˊ(JIJI[B)V
    .locals 11

    monitor-enter p0

    .line 608
    :try_start_0
    iget-object v0, p0, Lo/ᒯ$if;->uY:[J

    iget v1, p0, Lo/ᒯ$if;->vd:I

    aput-wide p1, v0, v1

    .line 609
    iget-object v0, p0, Lo/ᒯ$if;->uV:[J

    iget v1, p0, Lo/ᒯ$if;->vd:I

    aput-wide p4, v0, v1

    .line 610
    iget-object v0, p0, Lo/ᒯ$if;->uW:[I

    iget v1, p0, Lo/ᒯ$if;->vd:I

    aput p6, v0, v1

    .line 611
    iget-object v0, p0, Lo/ᒯ$if;->uX:[I

    iget v1, p0, Lo/ᒯ$if;->vd:I

    aput p3, v0, v1

    .line 612
    iget-object v0, p0, Lo/ᒯ$if;->uZ:[[B

    iget v1, p0, Lo/ᒯ$if;->vd:I

    aput-object p7, v0, v1

    .line 614
    iget v0, p0, Lo/ᒯ$if;->va:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ᒯ$if;->va:I

    .line 615
    iget v0, p0, Lo/ᒯ$if;->va:I

    iget v1, p0, Lo/ᒯ$if;->uU:I

    if-ne v0, v1, :cond_0

    .line 617
    iget v0, p0, Lo/ᒯ$if;->uU:I

    add-int/lit16 v3, v0, 0x3e8

    .line 618
    new-array v4, v3, [J

    .line 619
    new-array v5, v3, [J

    .line 620
    new-array v6, v3, [I

    .line 621
    new-array v7, v3, [I

    .line 622
    new-array v8, v3, [[B

    .line 623
    iget v0, p0, Lo/ᒯ$if;->uU:I

    iget v1, p0, Lo/ᒯ$if;->vc:I

    sub-int v9, v0, v1

    .line 624
    iget-object v0, p0, Lo/ᒯ$if;->uV:[J

    iget v1, p0, Lo/ᒯ$if;->vc:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 625
    iget-object v0, p0, Lo/ᒯ$if;->uY:[J

    iget v1, p0, Lo/ᒯ$if;->vc:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v5, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    iget-object v0, p0, Lo/ᒯ$if;->uX:[I

    iget v1, p0, Lo/ᒯ$if;->vc:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v6, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    iget-object v0, p0, Lo/ᒯ$if;->uW:[I

    iget v1, p0, Lo/ᒯ$if;->vc:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    iget-object v0, p0, Lo/ᒯ$if;->uZ:[[B

    iget v1, p0, Lo/ᒯ$if;->vc:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 629
    iget v10, p0, Lo/ᒯ$if;->vc:I

    .line 630
    iget-object v0, p0, Lo/ᒯ$if;->uV:[J

    const/4 v1, 0x0

    invoke-static {v0, v1, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    iget-object v0, p0, Lo/ᒯ$if;->uY:[J

    const/4 v1, 0x0

    invoke-static {v0, v1, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
    iget-object v0, p0, Lo/ᒯ$if;->uX:[I

    const/4 v1, 0x0

    invoke-static {v0, v1, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    iget-object v0, p0, Lo/ᒯ$if;->uW:[I

    const/4 v1, 0x0

    invoke-static {v0, v1, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    iget-object v0, p0, Lo/ᒯ$if;->uZ:[[B

    const/4 v1, 0x0

    invoke-static {v0, v1, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    iput-object v4, p0, Lo/ᒯ$if;->uV:[J

    .line 636
    iput-object v5, p0, Lo/ᒯ$if;->uY:[J

    .line 637
    iput-object v6, p0, Lo/ᒯ$if;->uX:[I

    .line 638
    iput-object v7, p0, Lo/ᒯ$if;->uW:[I

    .line 639
    iput-object v8, p0, Lo/ᒯ$if;->uZ:[[B

    .line 640
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒯ$if;->vc:I

    .line 641
    iget v0, p0, Lo/ᒯ$if;->uU:I

    iput v0, p0, Lo/ᒯ$if;->vd:I

    .line 642
    iget v0, p0, Lo/ᒯ$if;->uU:I

    iput v0, p0, Lo/ᒯ$if;->va:I

    .line 643
    iput v3, p0, Lo/ᒯ$if;->uU:I

    .line 644
    goto :goto_0

    .line 645
    :cond_0
    iget v0, p0, Lo/ᒯ$if;->vd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ᒯ$if;->vd:I

    .line 646
    iget v0, p0, Lo/ᒯ$if;->vd:I

    iget v1, p0, Lo/ᒯ$if;->uU:I

    if-ne v0, v1, :cond_1

    .line 648
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒯ$if;->vd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ˋ(Lo/ڋ;Lo/ᒯ$ˊ;)Z
    .locals 2

    monitor-enter p0

    .line 531
    :try_start_0
    iget v0, p0, Lo/ᒯ$if;->va:I

    if-nez v0, :cond_0

    .line 532
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 534
    :cond_0
    iget-object v0, p0, Lo/ᒯ$if;->uY:[J

    iget v1, p0, Lo/ᒯ$if;->vc:I

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lo/ڋ;->sJ:J

    .line 535
    iget-object v0, p0, Lo/ᒯ$if;->uW:[I

    iget v1, p0, Lo/ᒯ$if;->vc:I

    aget v0, v0, v1

    iput v0, p1, Lo/ڋ;->size:I

    .line 536
    iget-object v0, p0, Lo/ᒯ$if;->uX:[I

    iget v1, p0, Lo/ᒯ$if;->vc:I

    aget v0, v0, v1

    iput v0, p1, Lo/ڋ;->flags:I

    .line 537
    iget-object v0, p0, Lo/ᒯ$if;->uV:[J

    iget v1, p0, Lo/ᒯ$if;->vc:I

    aget-wide v0, v0, v1

    iput-wide v0, p2, Lo/ᒯ$ˊ;->oR:J

    .line 538
    iget-object v0, p0, Lo/ᒯ$if;->uZ:[[B

    iget v1, p0, Lo/ᒯ$if;->vc:I

    aget-object v0, v0, v1

    iput-object v0, p2, Lo/ᒯ$ˊ;->ve:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ᚁ()J
    .locals 5

    monitor-enter p0

    .line 549
    :try_start_0
    iget v0, p0, Lo/ᒯ$if;->va:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/ᒯ$if;->va:I

    .line 550
    iget v4, p0, Lo/ᒯ$if;->vc:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lo/ᒯ$if;->vc:I

    .line 551
    iget v0, p0, Lo/ᒯ$if;->vb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ᒯ$if;->vb:I

    .line 552
    iget v0, p0, Lo/ᒯ$if;->vc:I

    iget v1, p0, Lo/ᒯ$if;->uU:I

    if-ne v0, v1, :cond_0

    .line 554
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒯ$if;->vc:I

    .line 556
    :cond_0
    iget v0, p0, Lo/ᒯ$if;->va:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lo/ᒯ$if;->uV:[J

    iget v1, p0, Lo/ᒯ$if;->vc:I

    aget-wide v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/ᒯ$if;->uW:[I

    aget v0, v0, v4

    int-to-long v0, v0

    iget-object v2, p0, Lo/ᒯ$if;->uV:[J

    aget-wide v2, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v2

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized ﹺ(J)J
    .locals 8

    monitor-enter p0

    .line 567
    :try_start_0
    iget v0, p0, Lo/ᒯ$if;->va:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᒯ$if;->uY:[J

    iget v1, p0, Lo/ᒯ$if;->vc:I

    aget-wide v0, v0, v1

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 568
    :cond_0
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 571
    :cond_1
    iget v0, p0, Lo/ᒯ$if;->vd:I

    if-nez v0, :cond_2

    iget v0, p0, Lo/ᒯ$if;->uU:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lo/ᒯ$if;->vd:I

    :goto_0
    add-int/lit8 v2, v0, -0x1

    .line 572
    iget-object v0, p0, Lo/ᒯ$if;->uY:[J

    aget-wide v3, v0, v2

    .line 573
    cmp-long v0, p1, v3

    if-lez v0, :cond_3

    .line 574
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 579
    :cond_3
    const/4 v5, 0x0

    .line 580
    const/4 v6, -0x1

    .line 581
    iget v7, p0, Lo/ᒯ$if;->vc:I

    .line 582
    :goto_1
    iget v0, p0, Lo/ᒯ$if;->vd:I

    if-eq v7, v0, :cond_6

    .line 583
    iget-object v0, p0, Lo/ᒯ$if;->uY:[J

    aget-wide v0, v0, v7

    cmp-long v0, v0, p1

    if-lez v0, :cond_4

    .line 585
    goto :goto_2

    .line 586
    :cond_4
    iget-object v0, p0, Lo/ᒯ$if;->uX:[I

    aget v0, v0, v7

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 588
    move v6, v5

    .line 590
    :cond_5
    add-int/lit8 v0, v7, 0x1

    iget v1, p0, Lo/ᒯ$if;->uU:I

    rem-int v7, v0, v1

    .line 591
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 594
    :cond_6
    :goto_2
    const/4 v0, -0x1

    if-ne v6, v0, :cond_7

    .line 595
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 598
    :cond_7
    iget v0, p0, Lo/ᒯ$if;->va:I

    sub-int/2addr v0, v6

    iput v0, p0, Lo/ᒯ$if;->va:I

    .line 599
    iget v0, p0, Lo/ᒯ$if;->vc:I

    add-int/2addr v0, v6

    iget v1, p0, Lo/ᒯ$if;->uU:I

    rem-int/2addr v0, v1

    iput v0, p0, Lo/ᒯ$if;->vc:I

    .line 600
    iget v0, p0, Lo/ᒯ$if;->vb:I

    add-int/2addr v0, v6

    iput v0, p0, Lo/ᒯ$if;->vb:I

    .line 601
    iget-object v0, p0, Lo/ᒯ$if;->uV:[J

    iget v1, p0, Lo/ᒯ$if;->vc:I

    aget-wide v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
