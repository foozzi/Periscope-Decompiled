.class public final Lo/ۊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ۊ$ˊ;,
        Lo/ۊ$if;,
        Lo/ۊ$ˎ;,
        Lo/ۊ$ˋ;
    }
.end annotation


# static fields
.field public static sN:Z


# instance fields
.field private sF:I

.field private final sO:Landroid/os/ConditionVariable;

.field private final sP:[J

.field private final sQ:Lo/ۊ$if;

.field private sR:Landroid/media/AudioTrack;

.field private sS:Landroid/media/AudioTrack;

.field private sT:I

.field private sU:I

.field private sV:I

.field private sW:I

.field private sX:I

.field private sY:I

.field private sZ:I

.field private ta:J

.field private tb:J

.field private tc:Z

.field private td:J

.field private te:Ljava/lang/reflect/Method;

.field private tf:J

.field private tg:I

.field private th:J

.field private ti:J

.field private tj:J

.field private tk:F

.field private tl:[B

.field private tm:I

.field private tn:I

.field private to:Z

.field private tp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    const/4 v0, 0x0

    sput-boolean v0, Lo/ۊ;->sN:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lo/ۊ;->sO:Landroid/os/ConditionVariable;

    .line 184
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 186
    :try_start_0
    const-class v0, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lo/ۊ;->te:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v3

    .line 192
    :cond_0
    :goto_0
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 193
    new-instance v0, Lo/ۊ$ˊ;

    invoke-direct {v0}, Lo/ۊ$ˊ;-><init>()V

    iput-object v0, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    goto :goto_1

    .line 195
    :cond_1
    new-instance v0, Lo/ۊ$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ۊ$if;-><init>(Lo/ܚ;)V

    iput-object v0, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    .line 197
    :goto_1
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lo/ۊ;->sP:[J

    .line 198
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lo/ۊ;->tk:F

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lo/ۊ;->tg:I

    .line 200
    return-void
.end method

.method private ʹ(J)J
    .locals 4

    .line 725
    iget-boolean v0, p0, Lo/ۊ;->to:Z

    if-eqz v0, :cond_1

    .line 726
    iget v0, p0, Lo/ۊ;->tp:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x8

    mul-long/2addr v0, p1

    iget v2, p0, Lo/ۊ;->sF:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lo/ۊ;->tp:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 729
    :cond_1
    iget v0, p0, Lo/ۊ;->sV:I

    int-to-long v0, v0

    div-long v0, p1, v0

    return-wide v0
.end method

.method private static ˊ(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 520
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method static synthetic ˊ(Lo/ۊ;)Landroid/os/ConditionVariable;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/ۊ;->sO:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private static ˊ(Landroid/media/AudioTrack;F)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 551
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 552
    return-void
.end method

.method private static ˋ(Landroid/media/AudioTrack;F)V
    .locals 1

    .line 556
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 557
    return-void
.end method

.method private ՙ(J)J
    .locals 4

    .line 734
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lo/ۊ;->sF:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private י(J)J
    .locals 4

    .line 738
    iget v0, p0, Lo/ۊ;->sF:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private ڕ()V
    .locals 2

    .line 609
    iget-object v0, p0, Lo/ۊ;->sR:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 610
    return-void

    .line 614
    :cond_0
    iget-object v1, p0, Lo/ۊ;->sR:Landroid/media/AudioTrack;

    .line 615
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ۊ;->sR:Landroid/media/AudioTrack;

    .line 616
    new-instance v0, Lo/ܪ;

    invoke-direct {v0, p0, v1}, Lo/ܪ;-><init>(Lo/ۊ;Landroid/media/AudioTrack;)V

    invoke-virtual {v0}, Lo/ܪ;->start()V

    .line 622
    return-void
.end method

.method private ڹ()Z
    .locals 1

    .line 626
    invoke-virtual {p0}, Lo/ۊ;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/ۊ;->tg:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ۂ()V
    .locals 14

    .line 631
    iget-object v0, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    invoke-virtual {v0}, Lo/ۊ$if;->र()J

    move-result-wide v6

    .line 632
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 634
    return-void

    .line 636
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    .line 637
    iget-wide v0, p0, Lo/ۊ;->tb:J

    sub-long v0, v8, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 639
    iget-object v0, p0, Lo/ۊ;->sP:[J

    iget v1, p0, Lo/ۊ;->sY:I

    sub-long v2, v6, v8

    aput-wide v2, v0, v1

    .line 640
    iget v0, p0, Lo/ۊ;->sY:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lo/ۊ;->sY:I

    .line 641
    iget v0, p0, Lo/ۊ;->sZ:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 642
    iget v0, p0, Lo/ۊ;->sZ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ۊ;->sZ:I

    .line 644
    :cond_1
    iput-wide v8, p0, Lo/ۊ;->tb:J

    .line 645
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ۊ;->ta:J

    .line 646
    const/4 v10, 0x0

    :goto_0
    iget v0, p0, Lo/ۊ;->sZ:I

    if-ge v10, v0, :cond_2

    .line 647
    iget-wide v0, p0, Lo/ۊ;->ta:J

    iget-object v2, p0, Lo/ۊ;->sP:[J

    aget-wide v2, v2, v10

    iget v4, p0, Lo/ۊ;->sZ:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ۊ;->ta:J

    .line 646
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 653
    :cond_2
    iget-boolean v0, p0, Lo/ۊ;->to:Z

    if-nez v0, :cond_8

    iget-wide v0, p0, Lo/ۊ;->td:J

    sub-long v0, v8, v0

    const-wide/32 v2, 0x7a120

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    .line 654
    iget-object v0, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    invoke-virtual {v0}, Lo/ۊ$if;->ঌ()Z

    move-result v0

    iput-boolean v0, p0, Lo/ۊ;->tc:Z

    .line 655
    iget-boolean v0, p0, Lo/ۊ;->tc:Z

    if-eqz v0, :cond_5

    .line 657
    iget-object v0, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    invoke-virtual {v0}, Lo/ۊ$if;->গ()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v10, v0, v2

    .line 658
    iget-object v0, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    invoke-virtual {v0}, Lo/ۊ$if;->ঢ()J

    move-result-wide v12

    .line 659
    iget-wide v0, p0, Lo/ۊ;->ti:J

    cmp-long v0, v10, v0

    if-gez v0, :cond_3

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ۊ;->tc:Z

    goto/16 :goto_1

    .line 662
    :cond_3
    sub-long v0, v10, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ۊ;->tc:Z

    .line 665
    const-string v0, "AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 668
    :cond_4
    invoke-direct {p0, v12, v13}, Lo/ۊ;->ՙ(J)J

    move-result-wide v0

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ۊ;->tc:Z

    .line 672
    const-string v0, "AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_5
    :goto_1
    iget-object v0, p0, Lo/ۊ;->te:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    .line 681
    :try_start_0
    iget-object v0, p0, Lo/ۊ;->te:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget v2, p0, Lo/ۊ;->sX:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lo/ۊ;->ʹ(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lo/ۊ;->ՙ(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/ۊ;->tj:J

    .line 684
    iget-wide v0, p0, Lo/ۊ;->tj:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lo/ۊ;->tj:J

    .line 686
    iget-wide v0, p0, Lo/ۊ;->tj:J

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 687
    const-string v0, "AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring impossibly large audio latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lo/ۊ;->tj:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ۊ;->tj:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :cond_6
    goto :goto_2

    .line 690
    :catch_0
    move-exception v10

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ۊ;->te:Ljava/lang/reflect/Method;

    .line 695
    :cond_7
    :goto_2
    iput-wide v8, p0, Lo/ۊ;->td:J

    .line 697
    :cond_8
    return-void
.end method

.method private ۊ()V
    .locals 7

    .line 707
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    .line 708
    const/4 v0, 0x1

    if-ne v4, v0, :cond_0

    .line 709
    return-void

    .line 713
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    .line 719
    goto :goto_0

    .line 714
    :catch_0
    move-exception v5

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    .line 719
    goto :goto_0

    .line 718
    :catchall_0
    move-exception v6

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    throw v6

    .line 721
    :goto_0
    new-instance v0, Lo/ۊ$ˋ;

    iget v1, p0, Lo/ۊ;->sF:I

    iget v2, p0, Lo/ۊ;->sT:I

    iget v3, p0, Lo/ۊ;->sX:I

    invoke-direct {v0, v4, v1, v2, v3}, Lo/ۊ$ˋ;-><init>(IIII)V

    throw v0
.end method

.method private ܚ()V
    .locals 2

    .line 742
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ۊ;->ta:J

    .line 743
    const/4 v0, 0x0

    iput v0, p0, Lo/ۊ;->sZ:I

    .line 744
    const/4 v0, 0x0

    iput v0, p0, Lo/ۊ;->sY:I

    .line 745
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ۊ;->tb:J

    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ۊ;->tc:Z

    .line 747
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ۊ;->td:J

    .line 748
    return-void
.end method


# virtual methods
.method public isInitialized()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 1

    .line 561
    invoke-virtual {p0}, Lo/ۊ;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-direct {p0}, Lo/ۊ;->ܚ()V

    .line 563
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 565
    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    .line 391
    invoke-virtual {p0}, Lo/ۊ;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lo/ۊ;->ti:J

    .line 393
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 395
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 603
    invoke-virtual {p0}, Lo/ۊ;->reset()V

    .line 604
    invoke-direct {p0}, Lo/ۊ;->ڕ()V

    .line 605
    return-void
.end method

.method public reset()V
    .locals 5

    .line 573
    invoke-virtual {p0}, Lo/ۊ;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ۊ;->tf:J

    .line 575
    const/4 v0, 0x0

    iput v0, p0, Lo/ۊ;->tn:I

    .line 576
    const/4 v0, 0x0

    iput v0, p0, Lo/ۊ;->tg:I

    .line 577
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ۊ;->tj:J

    .line 578
    invoke-direct {p0}, Lo/ۊ;->ܚ()V

    .line 579
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    .line 580
    const/4 v0, 0x3

    if-ne v3, v0, :cond_0

    .line 581
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 584
    :cond_0
    iget-object v4, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    .line 586
    iget-object v0, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ۊ$if;->ˊ(Landroid/media/AudioTrack;Z)V

    .line 587
    iget-object v0, p0, Lo/ۊ;->sO:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 588
    new-instance v0, Lo/ܚ;

    invoke-direct {v0, p0, v4}, Lo/ܚ;-><init>(Lo/ۊ;Landroid/media/AudioTrack;)V

    invoke-virtual {v0}, Lo/ܚ;->start()V

    .line 599
    :cond_1
    return-void
.end method

.method public ˊ(Ljava/nio/ByteBuffer;IIJ)I
    .locals 11

    .line 422
    if-nez p3, :cond_0

    .line 423
    const/4 v0, 0x2

    return v0

    .line 427
    :cond_0
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2

    iget-boolean v0, p0, Lo/ۊ;->to:Z

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 431
    const/4 v0, 0x0

    return v0

    .line 437
    :cond_1
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    invoke-virtual {v0}, Lo/ۊ$if;->ܬ()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 439
    const/4 v0, 0x0

    return v0

    .line 443
    :cond_2
    const/4 v6, 0x0

    .line 444
    iget v0, p0, Lo/ۊ;->tn:I

    if-nez v0, :cond_6

    .line 445
    iget-boolean v0, p0, Lo/ۊ;->to:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lo/ۊ;->tp:I

    if-nez v0, :cond_3

    .line 446
    iget v0, p0, Lo/ۊ;->sF:I

    invoke-static {p3, v0}, Lo/ٻ;->เ(II)I

    move-result v0

    iput v0, p0, Lo/ۊ;->tp:I

    .line 451
    :cond_3
    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, Lo/ۊ;->ʹ(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lo/ۊ;->ՙ(J)J

    move-result-wide v0

    sub-long v7, p4, v0

    .line 452
    iget v0, p0, Lo/ۊ;->tg:I

    if-nez v0, :cond_4

    .line 453
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lo/ۊ;->th:J

    .line 454
    const/4 v0, 0x1

    iput v0, p0, Lo/ۊ;->tg:I

    goto :goto_0

    .line 457
    :cond_4
    iget-wide v0, p0, Lo/ۊ;->th:J

    iget-wide v2, p0, Lo/ۊ;->tf:J

    invoke-direct {p0, v2, v3}, Lo/ۊ;->ʹ(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lo/ۊ;->ՙ(J)J

    move-result-wide v2

    add-long v9, v0, v2

    .line 459
    iget v0, p0, Lo/ۊ;->tg:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    sub-long v0, v9, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x30d40

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 461
    const-string v0, "AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discontinuity detected [expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, 0x2

    iput v0, p0, Lo/ۊ;->tg:I

    .line 465
    :cond_5
    iget v0, p0, Lo/ۊ;->tg:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 468
    iget-wide v0, p0, Lo/ۊ;->th:J

    sub-long v2, v7, v9

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ۊ;->th:J

    .line 469
    const/4 v0, 0x1

    iput v0, p0, Lo/ۊ;->tg:I

    .line 470
    const/4 v6, 0x1

    .line 475
    :cond_6
    :goto_0
    iget v0, p0, Lo/ۊ;->tn:I

    if-nez v0, :cond_9

    .line 476
    iput p3, p0, Lo/ۊ;->tn:I

    .line 477
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 478
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_9

    .line 480
    iget-object v0, p0, Lo/ۊ;->tl:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lo/ۊ;->tl:[B

    array-length v0, v0

    if-ge v0, p3, :cond_8

    .line 481
    :cond_7
    new-array v0, p3, [B

    iput-object v0, p0, Lo/ۊ;->tl:[B

    .line 483
    :cond_8
    iget-object v0, p0, Lo/ۊ;->tl:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 484
    const/4 v0, 0x0

    iput v0, p0, Lo/ۊ;->tm:I

    .line 488
    :cond_9
    const/4 v7, 0x0

    .line 489
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_b

    .line 491
    iget-wide v0, p0, Lo/ۊ;->tf:J

    iget-object v2, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    invoke-virtual {v2}, Lo/ۊ$if;->ܬ()J

    move-result-wide v2

    iget v4, p0, Lo/ۊ;->sV:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v8, v0

    .line 493
    iget v0, p0, Lo/ۊ;->sX:I

    sub-int v9, v0, v8

    .line 494
    if-lez v9, :cond_a

    .line 495
    iget v0, p0, Lo/ۊ;->tn:I

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 496
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    iget-object v1, p0, Lo/ۊ;->tl:[B

    iget v2, p0, Lo/ۊ;->tm:I

    invoke-virtual {v0, v1, v2, v9}, Landroid/media/AudioTrack;->write([BII)I

    move-result v7

    .line 497
    if-ltz v7, :cond_a

    .line 498
    iget v0, p0, Lo/ۊ;->tm:I

    add-int/2addr v0, v7

    iput v0, p0, Lo/ۊ;->tm:I

    .line 501
    :cond_a
    goto :goto_1

    .line 502
    :cond_b
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    iget v1, p0, Lo/ۊ;->tn:I

    invoke-static {v0, p1, v1}, Lo/ۊ;->ˊ(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 505
    :goto_1
    if-gez v7, :cond_c

    .line 506
    new-instance v0, Lo/ۊ$ˎ;

    invoke-direct {v0, v7}, Lo/ۊ$ˎ;-><init>(I)V

    throw v0

    .line 509
    :cond_c
    iget v0, p0, Lo/ۊ;->tn:I

    sub-int/2addr v0, v7

    iput v0, p0, Lo/ۊ;->tn:I

    .line 510
    iget-wide v0, p0, Lo/ۊ;->tf:J

    int-to-long v2, v7

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ۊ;->tf:J

    .line 511
    iget v0, p0, Lo/ۊ;->tn:I

    if-nez v0, :cond_d

    .line 512
    or-int/lit8 v6, v6, 0x2

    .line 514
    :cond_d
    return v6
.end method

.method public ˊ(Landroid/media/MediaFormat;I)V
    .locals 15

    .line 334
    const-string v0, "channel-count"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 336
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 338
    :pswitch_0
    const/4 v7, 0x4

    .line 339
    goto :goto_1

    .line 341
    :pswitch_1
    const/16 v7, 0xc

    .line 342
    goto :goto_1

    .line 344
    :pswitch_2
    const/16 v7, 0xfc

    .line 345
    goto :goto_1

    .line 347
    :pswitch_3
    const/16 v7, 0x3fc

    .line 348
    goto :goto_1

    .line 350
    :goto_0
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported channel count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :goto_1
    const-string v0, "sample-rate"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    .line 354
    const-string v0, "mime"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 357
    invoke-static {v9}, Lo/দ;->ˡ(Ljava/lang/String;)I

    move-result v10

    .line 358
    const/4 v0, 0x5

    if-eq v10, v0, :cond_0

    const/4 v0, 0x6

    if-ne v10, v0, :cond_1

    :cond_0
    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    .line 359
    :goto_2
    invoke-virtual {p0}, Lo/ۊ;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lo/ۊ;->sF:I

    if-ne v0, v8, :cond_2

    iget v0, p0, Lo/ۊ;->sT:I

    if-ne v0, v7, :cond_2

    iget-boolean v0, p0, Lo/ۊ;->to:Z

    if-nez v0, :cond_2

    if-nez v11, :cond_2

    .line 362
    return-void

    .line 365
    :cond_2
    invoke-virtual {p0}, Lo/ۊ;->reset()V

    .line 367
    iput v10, p0, Lo/ۊ;->sU:I

    .line 368
    iput v8, p0, Lo/ۊ;->sF:I

    .line 369
    iput v7, p0, Lo/ۊ;->sT:I

    .line 370
    iput-boolean v11, p0, Lo/ۊ;->to:Z

    .line 371
    const/4 v0, 0x0

    iput v0, p0, Lo/ۊ;->tp:I

    .line 372
    mul-int/lit8 v0, v6, 0x2

    iput v0, p0, Lo/ۊ;->sV:I

    .line 373
    invoke-static {v8, v7, v10}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lo/ۊ;->sW:I

    .line 374
    iget v0, p0, Lo/ۊ;->sW:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 376
    if-eqz p2, :cond_4

    .line 377
    move/from16 v0, p2

    iput v0, p0, Lo/ۊ;->sX:I

    goto :goto_5

    .line 379
    :cond_4
    iget v0, p0, Lo/ۊ;->sW:I

    mul-int/lit8 v12, v0, 0x4

    .line 380
    const-wide/32 v0, 0x3d090

    invoke-direct {p0, v0, v1}, Lo/ۊ;->י(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lo/ۊ;->sV:I

    mul-int v13, v0, v1

    .line 381
    iget v0, p0, Lo/ۊ;->sW:I

    int-to-long v0, v0

    const-wide/32 v2, 0xb71b0

    invoke-direct {p0, v2, v3}, Lo/ۊ;->י(J)J

    move-result-wide v2

    iget v4, p0, Lo/ۊ;->sV:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v14, v0

    .line 383
    if-ge v12, v13, :cond_5

    move v0, v13

    goto :goto_4

    :cond_5
    if-le v12, v14, :cond_6

    move v0, v14

    goto :goto_4

    :cond_6
    move v0, v12

    :goto_4
    iput v0, p0, Lo/ۊ;->sX:I

    .line 387
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public ˋ(Landroid/media/MediaFormat;)V
    .locals 1

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/ۊ;->ˊ(Landroid/media/MediaFormat;I)V

    .line 324
    return-void
.end method

.method public ן(I)I
    .locals 12

    .line 279
    iget-object v0, p0, Lo/ۊ;->sO:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lo/ۊ;->sF:I

    iget v3, p0, Lo/ۊ;->sT:I

    iget v4, p0, Lo/ۊ;->sU:I

    iget v5, p0, Lo/ۊ;->sX:I

    const/4 v1, 0x3

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    goto :goto_0

    .line 286
    :cond_0
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lo/ۊ;->sF:I

    iget v3, p0, Lo/ۊ;->sT:I

    iget v4, p0, Lo/ۊ;->sU:I

    iget v5, p0, Lo/ۊ;->sX:I

    const/4 v1, 0x3

    const/4 v6, 0x1

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    .line 289
    :goto_0
    invoke-direct {p0}, Lo/ۊ;->ۊ()V

    .line 291
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    .line 292
    sget-boolean v0, Lo/ۊ;->sN:Z

    if-eqz v0, :cond_2

    .line 293
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 296
    iget-object v0, p0, Lo/ۊ;->sR:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ۊ;->sR:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 298
    invoke-direct {p0}, Lo/ۊ;->ڕ()V

    .line 300
    :cond_1
    iget-object v0, p0, Lo/ۊ;->sR:Landroid/media/AudioTrack;

    if-nez v0, :cond_2

    .line 301
    const/16 v8, 0xfa0

    .line 302
    const/4 v9, 0x4

    .line 303
    const/4 v10, 0x2

    .line 304
    const/4 v11, 0x2

    .line 305
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    const/4 v6, 0x0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lo/ۊ;->sR:Landroid/media/AudioTrack;

    .line 312
    :cond_2
    iget-object v0, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    iget-object v1, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    iget-boolean v2, p0, Lo/ۊ;->to:Z

    invoke-virtual {v0, v1, v2}, Lo/ۊ$if;->ˊ(Landroid/media/AudioTrack;Z)V

    .line 313
    iget v0, p0, Lo/ۊ;->tk:F

    invoke-virtual {p0, v0}, Lo/ۊ;->ᐨ(F)V

    .line 315
    return p1
.end method

.method public م()I
    .locals 1

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ۊ;->ן(I)I

    move-result v0

    return v0
.end method

.method public ٵ()V
    .locals 2

    .line 400
    iget v0, p0, Lo/ۊ;->tg:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 401
    const/4 v0, 0x2

    iput v0, p0, Lo/ۊ;->tg:I

    .line 403
    :cond_0
    return-void
.end method

.method public ڋ()Z
    .locals 4

    .line 525
    invoke-virtual {p0}, Lo/ۊ;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lo/ۊ;->tf:J

    invoke-direct {p0, v0, v1}, Lo/ۊ;->ʹ(J)J

    move-result-wide v0

    iget-object v2, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    invoke-virtual {v2}, Lo/ۊ$if;->ܬ()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    invoke-virtual {v0}, Lo/ۊ$if;->ܪ()Z

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

.method public ڒ()Z
    .locals 4

    .line 534
    iget-wide v0, p0, Lo/ۊ;->tf:J

    iget v2, p0, Lo/ۊ;->sW:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ᐨ(F)V
    .locals 2

    .line 539
    iput p1, p0, Lo/ۊ;->tk:F

    .line 540
    invoke-virtual {p0}, Lo/ۊ;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 542
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    invoke-static {v0, p1}, Lo/ۊ;->ˊ(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 544
    :cond_0
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    invoke-static {v0, p1}, Lo/ۊ;->ˋ(Landroid/media/AudioTrack;F)V

    .line 547
    :cond_1
    :goto_0
    return-void
.end method

.method public יִ(Z)J
    .locals 14

    .line 222
    invoke-direct {p0}, Lo/ۊ;->ڹ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 226
    :cond_0
    iget-object v0, p0, Lo/ۊ;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 227
    invoke-direct {p0}, Lo/ۊ;->ۂ()V

    .line 230
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    .line 232
    iget-boolean v0, p0, Lo/ۊ;->tc:Z

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    invoke-virtual {v0}, Lo/ۊ$if;->গ()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long v8, v4, v0

    .line 235
    invoke-direct {p0, v8, v9}, Lo/ۊ;->י(J)J

    move-result-wide v10

    .line 237
    iget-object v0, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    invoke-virtual {v0}, Lo/ۊ$if;->ঢ()J

    move-result-wide v0

    add-long v12, v0, v10

    .line 238
    invoke-direct {p0, v12, v13}, Lo/ۊ;->ՙ(J)J

    move-result-wide v0

    iget-wide v2, p0, Lo/ۊ;->th:J

    add-long v6, v0, v2

    .line 239
    goto :goto_1

    .line 240
    :cond_2
    iget v0, p0, Lo/ۊ;->sZ:I

    if-nez v0, :cond_3

    .line 242
    iget-object v0, p0, Lo/ۊ;->sQ:Lo/ۊ$if;

    invoke-virtual {v0}, Lo/ۊ$if;->र()J

    move-result-wide v0

    iget-wide v2, p0, Lo/ۊ;->th:J

    add-long v6, v0, v2

    goto :goto_0

    .line 247
    :cond_3
    iget-wide v0, p0, Lo/ۊ;->ta:J

    add-long/2addr v0, v4

    iget-wide v2, p0, Lo/ۊ;->th:J

    add-long v6, v0, v2

    .line 249
    :goto_0
    if-nez p1, :cond_4

    .line 250
    iget-wide v0, p0, Lo/ۊ;->tj:J

    sub-long/2addr v6, v0

    .line 254
    :cond_4
    :goto_1
    return-wide v6
.end method
