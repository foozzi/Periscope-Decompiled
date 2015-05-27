.class public abstract Lo/ҫ;
.super Lo/ڹ;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ҫ$if;,
        Lo/ҫ$ˊ;
    }
.end annotation


# instance fields
.field protected final qK:Landroid/os/Handler;

.field private rA:Landroid/media/MediaCodec;

.field private rB:Z

.field private rC:[Ljava/nio/ByteBuffer;

.field private rD:[Ljava/nio/ByteBuffer;

.field private rE:J

.field private rF:I

.field private rG:I

.field private rH:Z

.field private rI:Z

.field private rJ:I

.field private rK:I

.field private rL:Z

.field private rM:I

.field private rN:I

.field private rO:Z

.field private rP:Z

.field private rQ:Z

.field private rR:Z

.field private rl:J

.field public final rp:Lo/ɛ;

.field private final rq:Lo/ᐴ;

.field private final rr:Z

.field private final rs:Lo/ڒ;

.field private final rt:Lo/ڋ;

.field private final ru:Lo/م;

.field private final rv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/Long;>;"
        }
    .end annotation
.end field

.field private final rw:Landroid/media/MediaCodec$BufferInfo;

.field private final rx:Lo/ҫ$ˊ;

.field private ry:Lo/ب;

.field private rz:Lo/ᐯ;


# direct methods
.method public constructor <init>(Lo/ڒ;Lo/ᐴ;ZLandroid/os/Handler;Lo/ҫ$ˊ;)V
    .locals 2

    .line 229
    invoke-direct {p0}, Lo/ڹ;-><init>()V

    .line 230
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 231
    iput-object p1, p0, Lo/ҫ;->rs:Lo/ڒ;

    .line 232
    iput-object p2, p0, Lo/ҫ;->rq:Lo/ᐴ;

    .line 233
    iput-boolean p3, p0, Lo/ҫ;->rr:Z

    .line 234
    iput-object p4, p0, Lo/ҫ;->qK:Landroid/os/Handler;

    .line 235
    iput-object p5, p0, Lo/ҫ;->rx:Lo/ҫ$ˊ;

    .line 236
    new-instance v0, Lo/ɛ;

    invoke-direct {v0}, Lo/ɛ;-><init>()V

    iput-object v0, p0, Lo/ҫ;->rp:Lo/ɛ;

    .line 237
    new-instance v0, Lo/ڋ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ڋ;-><init>(I)V

    iput-object v0, p0, Lo/ҫ;->rt:Lo/ڋ;

    .line 238
    new-instance v0, Lo/م;

    invoke-direct {v0}, Lo/م;-><init>()V

    iput-object v0, p0, Lo/ҫ;->ru:Lo/م;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ҫ;->rv:Ljava/util/List;

    .line 240
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lo/ҫ;->rw:Landroid/media/MediaCodec$BufferInfo;

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lo/ҫ;->rJ:I

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lo/ҫ;->rK:I

    .line 243
    return-void
.end method

.method private static ˊ(Lo/ڋ;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 4

    .line 686
    iget-object v0, p0, Lo/ڋ;->sI:Lo/ɜ;

    invoke-virtual {v0}, Lo/ɜ;->冖()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    .line 687
    if-nez p1, :cond_0

    .line 688
    return-object v3

    .line 693
    :cond_0
    iget-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    .line 694
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 696
    :cond_1
    iget-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    add-int/2addr v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 697
    return-object v3
.end method

.method static synthetic ˊ(Lo/ҫ;)Lo/ҫ$ˊ;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/ҫ;->rx:Lo/ҫ$ˊ;

    return-object v0
.end method

.method private ˊ(Landroid/media/MediaCodec$CryptoException;)V
    .locals 2

    .line 883
    iget-object v0, p0, Lo/ҫ;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ҫ;->rx:Lo/ҫ$ˊ;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lo/ҫ;->qK:Landroid/os/Handler;

    new-instance v1, Lo/Һ;

    invoke-direct {v1, p0, p1}, Lo/Һ;-><init>(Lo/ҫ;Landroid/media/MediaCodec$CryptoException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 891
    :cond_0
    return-void
.end method

.method private ˊ(Ljava/lang/String;JJ)V
    .locals 8

    .line 895
    iget-object v0, p0, Lo/ҫ;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ҫ;->rx:Lo/ҫ$ˊ;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lo/ҫ;->qK:Landroid/os/Handler;

    new-instance v1, Lo/ӌ;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lo/ӌ;-><init>(Lo/ҫ;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 904
    :cond_0
    return-void
.end method

.method private ˊ(Lo/ҫ$if;)V
    .locals 1

    .line 386
    invoke-direct {p0, p1}, Lo/ҫ;->ˋ(Lo/ҫ$if;)V

    .line 387
    new-instance v0, Lo/ʡ;

    invoke-direct {v0, p1}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private ˋ(Lo/ҫ$if;)V
    .locals 2

    .line 872
    iget-object v0, p0, Lo/ҫ;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ҫ;->rx:Lo/ҫ$ˊ;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lo/ҫ;->qK:Landroid/os/Handler;

    new-instance v1, Lo/ҷ;

    invoke-direct {v1, p0, p1}, Lo/ҷ;-><init>(Lo/ҫ;Lo/ҫ$if;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 880
    :cond_0
    return-void
.end method

.method private ˋ(JJ)Z
    .locals 11

    .line 814
    iget-boolean v0, p0, Lo/ҫ;->rP:Z

    if-eqz v0, :cond_0

    .line 815
    const/4 v0, 0x0

    return v0

    .line 818
    :cond_0
    iget v0, p0, Lo/ҫ;->rG:I

    if-gez v0, :cond_1

    .line 819
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    iget-object v1, p0, Lo/ҫ;->rw:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Lo/ҫ;->Ч()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, Lo/ҫ;->rG:I

    .line 822
    :cond_1
    iget v0, p0, Lo/ҫ;->rG:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 823
    iget-object v0, p0, Lo/ҫ;->ry:Lo/ب;

    iget-object v1, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/ҫ;->ˊ(Lo/ب;Landroid/media/MediaFormat;)V

    .line 824
    iget-object v0, p0, Lo/ҫ;->rp:Lo/ɛ;

    iget v1, v0, Lo/ɛ;->qC:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lo/ɛ;->qC:I

    .line 825
    const/4 v0, 0x1

    return v0

    .line 826
    :cond_2
    iget v0, p0, Lo/ҫ;->rG:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 827
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/ҫ;->rD:[Ljava/nio/ByteBuffer;

    .line 828
    iget-object v0, p0, Lo/ҫ;->rp:Lo/ɛ;

    iget v1, v0, Lo/ɛ;->qD:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lo/ɛ;->qD:I

    .line 829
    const/4 v0, 0x1

    return v0

    .line 830
    :cond_3
    iget v0, p0, Lo/ҫ;->rG:I

    if-gez v0, :cond_4

    .line 831
    const/4 v0, 0x0

    return v0

    .line 834
    :cond_4
    iget-object v0, p0, Lo/ҫ;->rw:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 835
    iget v0, p0, Lo/ҫ;->rK:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 837
    invoke-virtual {p0}, Lo/ҫ;->ʢ()V

    .line 838
    invoke-virtual {p0}, Lo/ҫ;->ʄ()V

    goto :goto_0

    .line 840
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ҫ;->rP:Z

    .line 842
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 845
    :cond_6
    iget-object v0, p0, Lo/ҫ;->rw:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lo/ҫ;->ـ(J)I

    move-result v10

    .line 846
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    iget-object v5, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    iget-object v6, p0, Lo/ҫ;->rD:[Ljava/nio/ByteBuffer;

    iget v7, p0, Lo/ҫ;->rG:I

    aget-object v6, v6, v7

    iget-object v7, p0, Lo/ҫ;->rw:Landroid/media/MediaCodec$BufferInfo;

    iget v8, p0, Lo/ҫ;->rG:I

    const/4 v9, -0x1

    if-eq v10, v9, :cond_7

    const/4 v9, 0x1

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    :goto_1
    invoke-virtual/range {v0 .. v9}, Lo/ҫ;->ˊ(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 848
    const/4 v0, -0x1

    if-eq v10, v0, :cond_8

    .line 849
    iget-object v0, p0, Lo/ҫ;->rv:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 851
    :cond_8
    iget-object v0, p0, Lo/ҫ;->rw:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lo/ҫ;->rl:J

    .line 853
    :goto_2
    const/4 v0, -0x1

    iput v0, p0, Lo/ҫ;->rG:I

    .line 854
    const/4 v0, 0x1

    return v0

    .line 857
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private γ()V
    .locals 8

    .line 514
    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    iget v1, p0, Lo/ҫ;->rM:I

    iget-wide v2, p0, Lo/ҫ;->rl:J

    iget-object v4, p0, Lo/ҫ;->ru:Lo/م;

    iget-object v5, p0, Lo/ҫ;->rt:Lo/ڋ;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lo/ڒ;->ˊ(IJLo/م;Lo/ڋ;Z)I

    move-result v7

    .line 515
    const/4 v0, -0x4

    if-ne v7, v0, :cond_0

    .line 516
    iget-object v0, p0, Lo/ҫ;->ru:Lo/م;

    invoke-virtual {p0, v0}, Lo/ҫ;->ˊ(Lo/م;)V

    .line 518
    :cond_0
    return-void
.end method

.method private ε()V
    .locals 8

    .line 521
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 522
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    iget v1, p0, Lo/ҫ;->rM:I

    iget-wide v2, p0, Lo/ҫ;->rl:J

    iget-object v4, p0, Lo/ҫ;->ru:Lo/م;

    iget-object v5, p0, Lo/ҫ;->rt:Lo/ڋ;

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lo/ڒ;->ˊ(IJLo/م;Lo/ڋ;Z)I

    move-result v7

    .line 525
    const/4 v0, -0x5

    if-ne v7, v0, :cond_1

    .line 526
    invoke-direct {p0}, Lo/ҫ;->κ()V

    .line 528
    :cond_1
    return-void
.end method

.method private κ()V
    .locals 2

    .line 531
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ҫ;->rE:J

    .line 532
    const/4 v0, -0x1

    iput v0, p0, Lo/ҫ;->rF:I

    .line 533
    const/4 v0, -0x1

    iput v0, p0, Lo/ҫ;->rG:I

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ҫ;->rR:Z

    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ҫ;->rQ:Z

    .line 536
    iget-object v0, p0, Lo/ҫ;->rv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 539
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    iget v0, p0, Lo/ҫ;->rK:I

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ҫ;->rL:Z

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {p0}, Lo/ҫ;->ʢ()V

    .line 544
    invoke-virtual {p0}, Lo/ҫ;->ʄ()V

    .line 546
    :goto_0
    iget-boolean v0, p0, Lo/ҫ;->rI:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ҫ;->ry:Lo/ب;

    if-eqz v0, :cond_1

    .line 549
    const/4 v0, 0x1

    iput v0, p0, Lo/ҫ;->rJ:I

    .line 551
    :cond_1
    return-void
.end method

.method private Ϛ()Z
    .locals 6

    .line 795
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/ҫ;->rE:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ـ(J)I
    .locals 4

    .line 907
    iget-object v0, p0, Lo/ҫ;->rv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 908
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 909
    iget-object v0, p0, Lo/ҫ;->rv:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 910
    return v3

    .line 908
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 913
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private ᵕ(Z)Z
    .locals 14

    .line 561
    iget-boolean v0, p0, Lo/ҫ;->rO:Z

    if-nez v0, :cond_0

    iget v0, p0, Lo/ҫ;->rK:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 565
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 568
    :cond_1
    iget v0, p0, Lo/ҫ;->rF:I

    if-gez v0, :cond_3

    .line 569
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lo/ҫ;->rF:I

    .line 570
    iget v0, p0, Lo/ҫ;->rF:I

    if-gez v0, :cond_2

    .line 571
    const/4 v0, 0x0

    return v0

    .line 573
    :cond_2
    iget-object v0, p0, Lo/ҫ;->rt:Lo/ڋ;

    iget-object v1, p0, Lo/ҫ;->rC:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lo/ҫ;->rF:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    .line 574
    iget-object v0, p0, Lo/ҫ;->rt:Lo/ڋ;

    iget-object v0, v0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 577
    :cond_3
    iget v0, p0, Lo/ҫ;->rK:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 580
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    iget v1, p0, Lo/ҫ;->rF:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 581
    const/4 v0, -0x1

    iput v0, p0, Lo/ҫ;->rF:I

    .line 582
    const/4 v0, 0x2

    iput v0, p0, Lo/ҫ;->rK:I

    .line 583
    const/4 v0, 0x0

    return v0

    .line 587
    :cond_4
    iget-boolean v0, p0, Lo/ҫ;->rQ:Z

    if-eqz v0, :cond_5

    .line 589
    const/4 v7, -0x3

    goto :goto_1

    .line 593
    :cond_5
    iget v0, p0, Lo/ҫ;->rJ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 594
    const/4 v8, 0x0

    :goto_0
    iget-object v0, p0, Lo/ҫ;->ry:Lo/ب;

    iget-object v0, v0, Lo/ب;->sG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_6

    .line 595
    iget-object v0, p0, Lo/ҫ;->ry:Lo/ب;

    iget-object v0, v0, Lo/ب;->sG:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v9, v0

    .line 596
    iget-object v0, p0, Lo/ҫ;->rt:Lo/ڋ;

    iget-object v0, v0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 594
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 598
    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Lo/ҫ;->rJ:I

    .line 600
    :cond_7
    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    iget v1, p0, Lo/ҫ;->rM:I

    iget-wide v2, p0, Lo/ҫ;->rl:J

    iget-object v4, p0, Lo/ҫ;->ru:Lo/م;

    iget-object v5, p0, Lo/ҫ;->rt:Lo/ڋ;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lo/ڒ;->ˊ(IJLo/م;Lo/ڋ;Z)I

    move-result v7

    .line 601
    if-eqz p1, :cond_8

    iget v0, p0, Lo/ҫ;->rN:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, -0x2

    if-ne v7, v0, :cond_8

    .line 602
    const/4 v0, 0x2

    iput v0, p0, Lo/ҫ;->rN:I

    .line 606
    :cond_8
    :goto_1
    const/4 v0, -0x2

    if-ne v7, v0, :cond_9

    .line 607
    const/4 v0, 0x0

    return v0

    .line 609
    :cond_9
    const/4 v0, -0x5

    if-ne v7, v0, :cond_a

    .line 610
    invoke-direct {p0}, Lo/ҫ;->κ()V

    .line 611
    const/4 v0, 0x1

    return v0

    .line 613
    :cond_a
    const/4 v0, -0x4

    if-ne v7, v0, :cond_c

    .line 614
    iget v0, p0, Lo/ҫ;->rJ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 617
    iget-object v0, p0, Lo/ҫ;->rt:Lo/ڋ;

    iget-object v0, v0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 618
    const/4 v0, 0x1

    iput v0, p0, Lo/ҫ;->rJ:I

    .line 620
    :cond_b
    iget-object v0, p0, Lo/ҫ;->ru:Lo/م;

    invoke-virtual {p0, v0}, Lo/ҫ;->ˊ(Lo/م;)V

    .line 621
    const/4 v0, 0x1

    return v0

    .line 623
    :cond_c
    const/4 v0, -0x1

    if-ne v7, v0, :cond_e

    .line 624
    iget v0, p0, Lo/ҫ;->rJ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 628
    iget-object v0, p0, Lo/ҫ;->rt:Lo/ڋ;

    iget-object v0, v0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 629
    const/4 v0, 0x1

    iput v0, p0, Lo/ҫ;->rJ:I

    .line 631
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ҫ;->rO:Z

    .line 633
    :try_start_0
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    iget v1, p0, Lo/ҫ;->rF:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 634
    const/4 v0, -0x1

    iput v0, p0, Lo/ҫ;->rF:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    goto :goto_2

    .line 635
    :catch_0
    move-exception v8

    .line 636
    invoke-direct {p0, v8}, Lo/ҫ;->ˊ(Landroid/media/MediaCodec$CryptoException;)V

    .line 637
    new-instance v0, Lo/ʡ;

    invoke-direct {v0, v8}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 639
    :goto_2
    const/4 v0, 0x0

    return v0

    .line 641
    :cond_e
    iget-boolean v0, p0, Lo/ҫ;->rR:Z

    if-eqz v0, :cond_11

    .line 644
    iget-object v0, p0, Lo/ҫ;->rt:Lo/ڋ;

    invoke-virtual {v0}, Lo/ڋ;->צ()Z

    move-result v0

    if-nez v0, :cond_10

    .line 645
    iget-object v0, p0, Lo/ҫ;->rt:Lo/ڋ;

    iget-object v0, v0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 646
    iget v0, p0, Lo/ҫ;->rJ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 649
    const/4 v0, 0x1

    iput v0, p0, Lo/ҫ;->rJ:I

    .line 651
    :cond_f
    const/4 v0, 0x1

    return v0

    .line 653
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ҫ;->rR:Z

    .line 655
    :cond_11
    iget-object v0, p0, Lo/ҫ;->rt:Lo/ڋ;

    invoke-virtual {v0}, Lo/ڋ;->ւ()Z

    move-result v8

    .line 656
    invoke-direct {p0, v8}, Lo/ҫ;->ᵣ(Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/ҫ;->rQ:Z

    .line 657
    iget-boolean v0, p0, Lo/ҫ;->rQ:Z

    if-eqz v0, :cond_12

    .line 658
    const/4 v0, 0x0

    return v0

    .line 661
    :cond_12
    :try_start_1
    iget-object v0, p0, Lo/ҫ;->rt:Lo/ڋ;

    iget-object v0, v0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 662
    iget-object v0, p0, Lo/ҫ;->rt:Lo/ڋ;

    iget v0, v0, Lo/ڋ;->size:I

    sub-int v10, v9, v0

    .line 663
    iget-object v0, p0, Lo/ҫ;->rt:Lo/ڋ;

    iget-wide v11, v0, Lo/ڋ;->sJ:J

    .line 664
    iget-object v0, p0, Lo/ҫ;->rt:Lo/ڋ;

    invoke-virtual {v0}, Lo/ڋ;->ח()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 665
    iget-object v0, p0, Lo/ҫ;->rv:Ljava/util/List;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_13
    if-eqz v8, :cond_14

    .line 668
    iget-object v0, p0, Lo/ҫ;->rt:Lo/ڋ;

    invoke-static {v0, v10}, Lo/ҫ;->ˊ(Lo/ڋ;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v13

    .line 670
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    iget v1, p0, Lo/ҫ;->rF:I

    move-object v3, v13

    move-wide v4, v11

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 671
    goto :goto_3

    .line 672
    :cond_14
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    iget v1, p0, Lo/ҫ;->rF:I

    move v3, v9

    move-wide v4, v11

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 674
    :goto_3
    const/4 v0, -0x1

    iput v0, p0, Lo/ҫ;->rF:I

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ҫ;->rL:Z

    .line 676
    const/4 v0, 0x0

    iput v0, p0, Lo/ҫ;->rJ:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 680
    goto :goto_4

    .line 677
    :catch_1
    move-exception v9

    .line 678
    invoke-direct {p0, v9}, Lo/ҫ;->ˊ(Landroid/media/MediaCodec$CryptoException;)V

    .line 679
    new-instance v0, Lo/ʡ;

    invoke-direct {v0, v9}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 681
    :goto_4
    const/4 v0, 0x1

    return v0
.end method

.method private ᵣ(Z)Z
    .locals 3

    .line 701
    iget-boolean v0, p0, Lo/ҫ;->rH:Z

    if-nez v0, :cond_0

    .line 702
    const/4 v0, 0x0

    return v0

    .line 704
    :cond_0
    iget-object v0, p0, Lo/ҫ;->rq:Lo/ᐴ;

    invoke-interface {v0}, Lo/ᐴ;->getState()I

    move-result v2

    .line 705
    if-nez v2, :cond_1

    .line 706
    new-instance v0, Lo/ʡ;

    iget-object v1, p0, Lo/ҫ;->rq:Lo/ᐴ;

    invoke-interface {v1}, Lo/ᐴ;->ᒌ()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 708
    :cond_1
    const/4 v0, 0x4

    if-eq v2, v0, :cond_3

    if-nez p1, :cond_2

    iget-boolean v0, p0, Lo/ҫ;->rr:Z

    if-nez v0, :cond_3

    .line 710
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 712
    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected onStopped()V
    .locals 0

    .line 486
    return-void
.end method

.method protected seekTo(J)V
    .locals 1

    .line 471
    iput-wide p1, p0, Lo/ҫ;->rl:J

    .line 472
    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    invoke-interface {v0, p1, p2}, Lo/ڒ;->ﹳ(J)V

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Lo/ҫ;->rN:I

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ҫ;->rO:Z

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ҫ;->rP:Z

    .line 476
    return-void
.end method

.method protected ɛ()V
    .locals 0

    .line 481
    return-void
.end method

.method protected ɜ()V
    .locals 5

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ҫ;->ry:Lo/ب;

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ҫ;->rz:Lo/ᐯ;

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lo/ҫ;->ʢ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 410
    :try_start_1
    iget-boolean v0, p0, Lo/ҫ;->rH:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lo/ҫ;->rq:Lo/ᐴ;

    invoke-interface {v0}, Lo/ᐴ;->close()V

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ҫ;->rH:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    :cond_0
    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    iget v1, p0, Lo/ҫ;->rM:I

    invoke-interface {v0, v1}, Lo/ڒ;->ג(I)V

    .line 416
    goto :goto_0

    .line 415
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    iget v1, p0, Lo/ҫ;->rM:I

    invoke-interface {v0, v1}, Lo/ڒ;->ג(I)V

    throw v2

    .line 417
    :goto_0
    goto :goto_2

    .line 409
    :catchall_1
    move-exception v3

    .line 410
    :try_start_2
    iget-boolean v0, p0, Lo/ҫ;->rH:Z

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lo/ҫ;->rq:Lo/ᐴ;

    invoke-interface {v0}, Lo/ᐴ;->close()V

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ҫ;->rH:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 415
    :cond_1
    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    iget v1, p0, Lo/ҫ;->rM:I

    invoke-interface {v0, v1}, Lo/ڒ;->ג(I)V

    .line 416
    goto :goto_1

    .line 415
    :catchall_2
    move-exception v4

    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    iget v1, p0, Lo/ҫ;->rM:I

    invoke-interface {v0, v1}, Lo/ڒ;->ג(I)V

    throw v4

    :goto_1
    throw v3

    .line 418
    :goto_2
    return-void
.end method

.method protected final ʄ()V
    .locals 15

    .line 320
    invoke-virtual {p0}, Lo/ҫ;->ʈ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lo/ҫ;->ry:Lo/ب;

    iget-object v6, v0, Lo/ب;->mimeType:Ljava/lang/String;

    .line 325
    const/4 v7, 0x0

    .line 326
    const/4 v8, 0x0

    .line 327
    iget-object v0, p0, Lo/ҫ;->rz:Lo/ᐯ;

    if-eqz v0, :cond_6

    .line 328
    iget-object v0, p0, Lo/ҫ;->rq:Lo/ᐴ;

    if-nez v0, :cond_1

    .line 329
    new-instance v0, Lo/ʡ;

    const-string v1, "Media requires a DrmSessionManager"

    invoke-direct {v0, v1}, Lo/ʡ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_1
    iget-boolean v0, p0, Lo/ҫ;->rH:Z

    if-nez v0, :cond_2

    .line 332
    iget-object v0, p0, Lo/ҫ;->rq:Lo/ᐴ;

    iget-object v1, p0, Lo/ҫ;->rz:Lo/ᐯ;

    invoke-interface {v0, v1}, Lo/ᐴ;->ˊ(Lo/ᐯ;)V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ҫ;->rH:Z

    .line 335
    :cond_2
    iget-object v0, p0, Lo/ҫ;->rq:Lo/ᐴ;

    invoke-interface {v0}, Lo/ᐴ;->getState()I

    move-result v9

    .line 336
    if-nez v9, :cond_3

    .line 337
    new-instance v0, Lo/ʡ;

    iget-object v1, p0, Lo/ҫ;->rq:Lo/ᐴ;

    invoke-interface {v1}, Lo/ᐴ;->ᒌ()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 338
    :cond_3
    const/4 v0, 0x3

    if-eq v9, v0, :cond_4

    const/4 v0, 0x4

    if-ne v9, v0, :cond_5

    .line 340
    :cond_4
    iget-object v0, p0, Lo/ҫ;->rq:Lo/ᐴ;

    invoke-interface {v0}, Lo/ᐴ;->ᐹ()Landroid/media/MediaCrypto;

    move-result-object v7

    .line 341
    iget-object v0, p0, Lo/ҫ;->rq:Lo/ᐴ;

    invoke-interface {v0, v6}, Lo/ᐴ;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v8

    goto :goto_0

    .line 344
    :cond_5
    return-void

    .line 348
    :cond_6
    :goto_0
    const/4 v9, 0x0

    .line 350
    :try_start_0
    invoke-virtual {p0, v6, v8}, Lo/ҫ;->ˋ(Ljava/lang/String;Z)Lo/ʄ;
    :try_end_0
    .catch Lo/ԁ$ˊ; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v9, v0

    .line 354
    goto :goto_1

    .line 351
    :catch_0
    move-exception v10

    .line 352
    new-instance v0, Lo/ҫ$if;

    iget-object v1, p0, Lo/ҫ;->ry:Lo/ب;

    const v2, -0xc34e

    invoke-direct {v0, v1, v10, v2}, Lo/ҫ$if;-><init>(Lo/ب;Ljava/lang/Throwable;I)V

    invoke-direct {p0, v0}, Lo/ҫ;->ˊ(Lo/ҫ$if;)V

    .line 356
    :goto_1
    if-nez v9, :cond_7

    .line 357
    new-instance v0, Lo/ҫ$if;

    iget-object v1, p0, Lo/ҫ;->ry:Lo/ب;

    const/4 v2, 0x0

    const v3, -0xc34f

    invoke-direct {v0, v1, v2, v3}, Lo/ҫ$if;-><init>(Lo/ب;Ljava/lang/Throwable;I)V

    invoke-direct {p0, v0}, Lo/ҫ;->ˊ(Lo/ҫ$if;)V

    .line 361
    :cond_7
    iget-object v10, v9, Lo/ʄ;->name:Ljava/lang/String;

    .line 362
    iget-boolean v0, v9, Lo/ʄ;->qI:Z

    iput-boolean v0, p0, Lo/ҫ;->rB:Z

    .line 364
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 365
    invoke-static {v10}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    .line 366
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    iget-object v1, p0, Lo/ҫ;->ry:Lo/ب;

    invoke-virtual {v1}, Lo/ب;->ԅ()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v10, v1, v7}, Lo/ҫ;->ˊ(Landroid/media/MediaCodec;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V

    .line 367
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 369
    move-object v0, p0

    move-object v1, v10

    move-wide v2, v13

    sub-long v4, v13, v11

    invoke-direct/range {v0 .. v5}, Lo/ҫ;->ˊ(Ljava/lang/String;JJ)V

    .line 371
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/ҫ;->rC:[Ljava/nio/ByteBuffer;

    .line 372
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/ҫ;->rD:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    goto :goto_2

    .line 373
    :catch_1
    move-exception v11

    .line 374
    new-instance v0, Lo/ҫ$if;

    iget-object v1, p0, Lo/ҫ;->ry:Lo/ب;

    invoke-direct {v0, v1, v11, v10}, Lo/ҫ$if;-><init>(Lo/ب;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/ҫ;->ˊ(Lo/ҫ$if;)V

    .line 376
    :goto_2
    invoke-virtual {p0}, Lo/ҫ;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_3

    :cond_8
    const-wide/16 v0, -0x1

    :goto_3
    iput-wide v0, p0, Lo/ҫ;->rE:J

    .line 378
    const/4 v0, -0x1

    iput v0, p0, Lo/ҫ;->rF:I

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Lo/ҫ;->rG:I

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ҫ;->rR:Z

    .line 381
    iget-object v0, p0, Lo/ҫ;->rp:Lo/ɛ;

    iget v1, v0, Lo/ɛ;->qA:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lo/ɛ;->qA:I

    .line 382
    return-void
.end method

.method protected ʈ()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ҫ;->ry:Lo/ب;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final ʡ()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected ʢ()V
    .locals 6

    .line 421
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 422
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ҫ;->rE:J

    .line 423
    const/4 v0, -0x1

    iput v0, p0, Lo/ҫ;->rF:I

    .line 424
    const/4 v0, -0x1

    iput v0, p0, Lo/ҫ;->rG:I

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ҫ;->rQ:Z

    .line 426
    iget-object v0, p0, Lo/ҫ;->rv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ҫ;->rC:[Ljava/nio/ByteBuffer;

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ҫ;->rD:[Ljava/nio/ByteBuffer;

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ҫ;->rI:Z

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ҫ;->rL:Z

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ҫ;->rB:Z

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lo/ҫ;->rJ:I

    .line 433
    const/4 v0, 0x0

    iput v0, p0, Lo/ҫ;->rK:I

    .line 434
    iget-object v0, p0, Lo/ҫ;->rp:Lo/ɛ;

    iget v1, v0, Lo/ɛ;->qB:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lo/ɛ;->qB:I

    .line 436
    :try_start_0
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 439
    :try_start_1
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    .line 442
    goto :goto_0

    .line 441
    :catchall_0
    move-exception v3

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    throw v3

    .line 443
    :goto_0
    goto :goto_2

    .line 438
    :catchall_1
    move-exception v4

    .line 439
    :try_start_2
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    .line 442
    goto :goto_1

    .line 441
    :catchall_2
    move-exception v5

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    throw v5

    :goto_1
    throw v4

    .line 445
    :cond_0
    :goto_2
    return-void
.end method

.method protected ˉ(J)I
    .locals 2

    .line 248
    :try_start_0
    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    invoke-interface {v0, p1, p2}, Lo/ڒ;->ᐧ(J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 249
    if-nez v1, :cond_0

    .line 250
    const/4 v0, 0x0

    return v0

    .line 254
    :cond_0
    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    new-instance v0, Lo/ʡ;

    invoke-direct {v0, v1}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 256
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    invoke-interface {v0}, Lo/ڒ;->getTrackCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 260
    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    invoke-interface {v0, v1}, Lo/ڒ;->ϊ(I)Lo/ڕ;

    move-result-object v0

    iget-object v0, v0, Lo/ڕ;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lo/ҫ;->ᴵ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iput v1, p0, Lo/ҫ;->rM:I

    .line 262
    const/4 v0, 0x1

    return v0

    .line 256
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method protected ˊ(JJ)V
    .locals 2

    .line 491
    :try_start_0
    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    invoke-interface {v0, p1, p2}, Lo/ڒ;->ᐨ(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lo/ҫ;->rN:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lo/ҫ;->rN:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lo/ҫ;->rN:I

    .line 494
    invoke-direct {p0}, Lo/ҫ;->ε()V

    .line 495
    iget-object v0, p0, Lo/ҫ;->ry:Lo/ب;

    if-nez v0, :cond_2

    .line 496
    invoke-direct {p0}, Lo/ҫ;->γ()V

    .line 498
    :cond_2
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lo/ҫ;->ʈ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    invoke-virtual {p0}, Lo/ҫ;->ʄ()V

    .line 501
    :cond_3
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    .line 502
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lo/ҫ;->ˋ(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 503
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/ҫ;->ᵕ(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 504
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ҫ;->ᵕ(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 507
    :cond_5
    iget-object v0, p0, Lo/ҫ;->rp:Lo/ɛ;

    invoke-virtual {v0}, Lo/ɛ;->ⅈ()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    goto :goto_3

    .line 508
    :catch_0
    move-exception v1

    .line 509
    new-instance v0, Lo/ʡ;

    invoke-direct {v0, v1}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 511
    :goto_3
    return-void
.end method

.method protected ˊ(JZ)V
    .locals 2

    .line 283
    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    iget v1, p0, Lo/ҫ;->rM:I

    invoke-interface {v0, v1, p1, p2}, Lo/ڒ;->ˏ(IJ)V

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lo/ҫ;->rN:I

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ҫ;->rO:Z

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ҫ;->rP:Z

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ҫ;->rQ:Z

    .line 288
    iput-wide p1, p0, Lo/ҫ;->rl:J

    .line 289
    return-void
.end method

.method protected ˊ(Landroid/media/MediaCodec;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 2

    .line 315
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 316
    return-void
.end method

.method protected ˊ(Lo/ب;Landroid/media/MediaFormat;)V
    .locals 0

    .line 751
    return-void
.end method

.method protected ˊ(Lo/م;)V
    .locals 4

    .line 722
    iget-object v3, p0, Lo/ҫ;->ry:Lo/ب;

    .line 723
    iget-object v0, p1, Lo/م;->ry:Lo/ب;

    iput-object v0, p0, Lo/ҫ;->ry:Lo/ب;

    .line 724
    iget-object v0, p1, Lo/م;->rz:Lo/ᐯ;

    iput-object v0, p0, Lo/ҫ;->rz:Lo/ᐯ;

    .line 725
    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ҫ;->rA:Landroid/media/MediaCodec;

    iget-boolean v1, p0, Lo/ҫ;->rB:Z

    iget-object v2, p0, Lo/ҫ;->ry:Lo/ب;

    invoke-virtual {p0, v0, v1, v3, v2}, Lo/ҫ;->ˊ(Landroid/media/MediaCodec;ZLo/ب;Lo/ب;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ҫ;->rI:Z

    .line 727
    const/4 v0, 0x1

    iput v0, p0, Lo/ҫ;->rJ:I

    goto :goto_0

    .line 729
    :cond_0
    iget-boolean v0, p0, Lo/ҫ;->rL:Z

    if-eqz v0, :cond_1

    .line 731
    const/4 v0, 0x1

    iput v0, p0, Lo/ҫ;->rK:I

    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {p0}, Lo/ҫ;->ʢ()V

    .line 735
    invoke-virtual {p0}, Lo/ҫ;->ʄ()V

    .line 738
    :goto_0
    return-void
.end method

.method protected abstract ˊ(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
.end method

.method protected ˊ(Landroid/media/MediaCodec;ZLo/ب;Lo/ب;)Z
    .locals 1

    .line 770
    const/4 v0, 0x0

    return v0
.end method

.method protected ˋ(Ljava/lang/String;Z)Lo/ʄ;
    .locals 1

    .line 301
    invoke-static {p1, p2}, Lo/ԁ;->ˋ(Ljava/lang/String;Z)Lo/ʄ;

    move-result-object v0

    return-object v0
.end method

.method protected Ϋ()V
    .locals 1

    .line 449
    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    invoke-interface {v0}, Lo/ڒ;->release()V

    .line 450
    return-void
.end method

.method protected final ν()I
    .locals 1

    .line 791
    iget v0, p0, Lo/ҫ;->rN:I

    return v0
.end method

.method protected Ч()J
    .locals 2

    .line 804
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected ᴵ(Ljava/lang/String;)Z
    .locals 1

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method protected ﮈ()Z
    .locals 1

    .line 775
    iget-boolean v0, p0, Lo/ҫ;->rP:Z

    return v0
.end method

.method protected ﺓ()Z
    .locals 1

    .line 780
    iget-object v0, p0, Lo/ҫ;->ry:Lo/ب;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/ҫ;->rQ:Z

    if-nez v0, :cond_1

    iget v0, p0, Lo/ҫ;->rN:I

    if-nez v0, :cond_0

    iget v0, p0, Lo/ҫ;->rG:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lo/ҫ;->Ϛ()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected ﻤ()J
    .locals 2

    .line 459
    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    iget v1, p0, Lo/ҫ;->rM:I

    invoke-interface {v0, v1}, Lo/ڒ;->ϊ(I)Lo/ڕ;

    move-result-object v0

    iget-wide v0, v0, Lo/ڕ;->re:J

    return-wide v0
.end method

.method protected ﻥ()J
    .locals 4

    .line 464
    iget-object v0, p0, Lo/ҫ;->rs:Lo/ڒ;

    invoke-interface {v0}, Lo/ڒ;->ﻥ()J

    move-result-wide v2

    .line 465
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x3

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo/ҫ;->ｆ()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method protected ｆ()J
    .locals 2

    .line 454
    iget-wide v0, p0, Lo/ҫ;->rl:J

    return-wide v0
.end method
