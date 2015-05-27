.class Lo/ᵇ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᵇ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field ո:J

.field ս:Lo/ᵇ$if;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ᵇ$if;->ո:J

    return-void
.end method

.method private ī()V
    .locals 1

    .line 369
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Lo/ᵇ$if;

    invoke-direct {v0}, Lo/ᵇ$if;-><init>()V

    iput-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    .line 372
    :cond_0
    return-void
.end method


# virtual methods
.method clear(I)V
    .locals 6

    .line 375
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 376
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lo/ᵇ$if;->clear(I)V

    goto :goto_0

    .line 380
    :cond_0
    iget-wide v0, p0, Lo/ᵇ$if;->ո:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᵇ$if;->ո:J

    .line 383
    :cond_1
    :goto_0
    return-void
.end method

.method get(I)Z
    .locals 4

    .line 386
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 387
    invoke-direct {p0}, Lo/ᵇ$if;->ī()V

    .line 388
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lo/ᵇ$if;->get(I)Z

    move-result v0

    return v0

    .line 390
    :cond_0
    iget-wide v0, p0, Lo/ᵇ$if;->ո:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()V
    .locals 2

    .line 395
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ᵇ$if;->ո:J

    .line 396
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    invoke-virtual {v0}, Lo/ᵇ$if;->reset()V

    .line 399
    :cond_0
    return-void
.end method

.method set(I)V
    .locals 4

    .line 360
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 361
    invoke-direct {p0}, Lo/ᵇ$if;->ī()V

    .line 362
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lo/ᵇ$if;->set(I)V

    goto :goto_0

    .line 364
    :cond_0
    iget-wide v0, p0, Lo/ᵇ$if;->ո:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᵇ$if;->ո:J

    .line 366
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 462
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lo/ᵇ$if;->ո:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    invoke-virtual {v1}, Lo/ᵇ$if;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lo/ᵇ$if;->ո:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method ʿ(IZ)V
    .locals 11

    .line 402
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 403
    invoke-direct {p0}, Lo/ᵇ$if;->ī()V

    .line 404
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1, p2}, Lo/ᵇ$if;->ʿ(IZ)V

    goto :goto_2

    .line 406
    :cond_0
    iget-wide v0, p0, Lo/ᵇ$if;->ո:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 407
    :goto_0
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    const-wide/16 v2, 0x1

    sub-long v5, v0, v2

    .line 408
    iget-wide v0, p0, Lo/ᵇ$if;->ո:J

    and-long v7, v0, v5

    .line 409
    iget-wide v0, p0, Lo/ᵇ$if;->ո:J

    const-wide/16 v2, -0x1

    xor-long/2addr v2, v5

    and-long/2addr v0, v2

    const/4 v2, 0x1

    shl-long v9, v0, v2

    .line 410
    or-long v0, v7, v9

    iput-wide v0, p0, Lo/ᵇ$if;->ո:J

    .line 411
    if-eqz p2, :cond_2

    .line 412
    invoke-virtual {p0, p1}, Lo/ᵇ$if;->set(I)V

    goto :goto_1

    .line 414
    :cond_2
    invoke-virtual {p0, p1}, Lo/ᵇ$if;->clear(I)V

    .line 416
    :goto_1
    if-nez v4, :cond_3

    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    if-eqz v0, :cond_4

    .line 417
    :cond_3
    invoke-direct {p0}, Lo/ᵇ$if;->ī()V

    .line 418
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lo/ᵇ$if;->ʿ(IZ)V

    .line 421
    :cond_4
    :goto_2
    return-void
.end method

.method ᵓ(I)Z
    .locals 11

    .line 424
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 425
    invoke-direct {p0}, Lo/ᵇ$if;->ī()V

    .line 426
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lo/ᵇ$if;->ᵓ(I)Z

    move-result v0

    return v0

    .line 428
    :cond_0
    const-wide/16 v0, 0x1

    shl-long v4, v0, p1

    .line 429
    iget-wide v0, p0, Lo/ᵇ$if;->ո:J

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 430
    :goto_0
    iget-wide v0, p0, Lo/ᵇ$if;->ո:J

    const-wide/16 v2, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᵇ$if;->ո:J

    .line 431
    const-wide/16 v0, 0x1

    sub-long/2addr v4, v0

    .line 432
    iget-wide v0, p0, Lo/ᵇ$if;->ո:J

    and-long v7, v0, v4

    .line 434
    iget-wide v0, p0, Lo/ᵇ$if;->ո:J

    const-wide/16 v2, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v9

    .line 435
    or-long v0, v7, v9

    iput-wide v0, p0, Lo/ᵇ$if;->ո:J

    .line 436
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    if-eqz v0, :cond_3

    .line 437
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵇ$if;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lo/ᵇ$if;->set(I)V

    .line 440
    :cond_2
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵇ$if;->ᵓ(I)Z

    .line 442
    :cond_3
    return v6
.end method

.method ᵙ(I)I
    .locals 6

    .line 447
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    if-nez v0, :cond_1

    .line 448
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 449
    iget-wide v0, p0, Lo/ᵇ$if;->ո:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 451
    :cond_0
    iget-wide v0, p0, Lo/ᵇ$if;->ո:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 453
    :cond_1
    const/16 v0, 0x40

    if-ge p1, v0, :cond_2

    .line 454
    iget-wide v0, p0, Lo/ᵇ$if;->ո:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 456
    :cond_2
    iget-object v0, p0, Lo/ᵇ$if;->ս:Lo/ᵇ$if;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lo/ᵇ$if;->ᵙ(I)I

    move-result v0

    iget-wide v1, p0, Lo/ᵇ$if;->ո:J

    invoke-static {v1, v2}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
