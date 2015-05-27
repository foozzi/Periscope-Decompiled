.class public Lo/ᒭ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ס$if;
.implements Lo/ڒ;
.implements Lo/ᒬ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᒭ$if;,
        Lo/ᒭ$ˊ;
    }
.end annotation


# instance fields
.field private volatile rz:Lo/ᐯ;

.field private final tF:Lo/ϒ;

.field private uA:Ljava/io/IOException;

.field private uB:Z

.field private uC:I

.field private uD:J

.field private uE:Z

.field private uF:I

.field private uG:I

.field private final ub:Lo/ᒎ;

.field private final uc:Lo/ѕ;

.field private final ud:I

.field private final ue:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<Lo/\u14ad$\u02ca;>;"
        }
    .end annotation
.end field

.field private final uf:I

.field private final ug:Z

.field private volatile uh:Z

.field private volatile ui:Lo/ᒲ;

.field private uj:Z

.field private uk:I

.field private ul:[Lo/ڕ;

.field private um:J

.field private un:[Z

.field private uo:[Z

.field private uq:[Z

.field private ur:I

.field private final uri:Landroid/net/Uri;

.field private us:J

.field private ut:J

.field private uu:J

.field private uv:Z

.field private uw:J

.field private ux:J

.field private uy:Lo/ס;

.field private uz:Lo/ᒭ$if;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lo/ϒ;Lo/ᒎ;II)V
    .locals 7

    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lo/ᒭ;-><init>(Landroid/net/Uri;Lo/ϒ;Lo/ᒎ;III)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lo/ϒ;Lo/ᒎ;III)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lo/ᒭ;->uri:Landroid/net/Uri;

    .line 128
    iput-object p2, p0, Lo/ᒭ;->tF:Lo/ϒ;

    .line 129
    iput-object p3, p0, Lo/ᒭ;->ub:Lo/ᒎ;

    .line 130
    iput p4, p0, Lo/ᒭ;->ur:I

    .line 131
    iput p5, p0, Lo/ᒭ;->ud:I

    .line 132
    iput p6, p0, Lo/ᒭ;->uf:I

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    .line 134
    new-instance v0, Lo/ѕ;

    const/high16 v1, 0x40000

    invoke-direct {v0, v1}, Lo/ѕ;-><init>(I)V

    iput-object v0, p0, Lo/ᒭ;->uc:Lo/ѕ;

    .line 135
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ᒭ;->uu:J

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒭ;->ug:Z

    .line 137
    invoke-interface {p3, p0}, Lo/ᒎ;->ˊ(Lo/ᒬ;)V

    .line 138
    return-void
.end method

.method static synthetic ˊ(Lo/ᒭ;)I
    .locals 2

    .line 43
    iget v0, p0, Lo/ᒭ;->uF:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/ᒭ;->uF:I

    return v0
.end method

.method private ᒲ()Z
    .locals 2

    .line 383
    invoke-direct {p0}, Lo/ᒭ;->ᒳ()V

    .line 384
    invoke-direct {p0}, Lo/ᒭ;->ᓛ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x0

    return v0

    .line 387
    :cond_0
    iget-boolean v0, p0, Lo/ᒭ;->uj:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/ᒭ;->ᓖ()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 388
    :goto_0
    if-nez v1, :cond_2

    .line 389
    invoke-direct {p0}, Lo/ᒭ;->ᒶ()V

    .line 391
    :cond_2
    return v1
.end method

.method private ᒳ()V
    .locals 7

    .line 406
    iget-boolean v0, p0, Lo/ᒭ;->uB:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/ᒭ;->uE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ᒭ;->uy:Lo/ס;

    invoke-virtual {v0}, Lo/ס;->ƨ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    :cond_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lo/ᒭ;->uA:Ljava/io/IOException;

    if-eqz v0, :cond_8

    .line 411
    iget-object v0, p0, Lo/ᒭ;->uz:Lo/ᒭ$if;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 412
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/ᒭ;->uD:J

    sub-long v4, v0, v2

    .line 413
    iget v0, p0, Lo/ᒭ;->uC:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lo/ᒭ;->ⁱ(J)J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_7

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᒭ;->uA:Ljava/io/IOException;

    .line 415
    iget-boolean v0, p0, Lo/ᒭ;->uj:Z

    if-nez v0, :cond_4

    .line 419
    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 420
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒭ$ˊ;

    invoke-virtual {v0}, Lo/ᒭ$ˊ;->clear()V

    .line 419
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 422
    :cond_3
    invoke-direct {p0}, Lo/ᒭ;->ᒷ()Lo/ᒭ$if;

    move-result-object v0

    iput-object v0, p0, Lo/ᒭ;->uz:Lo/ᒭ$if;

    goto :goto_3

    .line 423
    :cond_4
    iget-object v0, p0, Lo/ᒭ;->ui:Lo/ᒲ;

    invoke-interface {v0}, Lo/ᒲ;->ᚆ()Z

    move-result v0

    if-nez v0, :cond_6

    .line 428
    const/4 v6, 0x0

    :goto_2
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 429
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒭ$ˊ;

    invoke-virtual {v0}, Lo/ᒭ$ˊ;->clear()V

    .line 428
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 431
    :cond_5
    invoke-direct {p0}, Lo/ᒭ;->ᒷ()Lo/ᒭ$if;

    move-result-object v0

    iput-object v0, p0, Lo/ᒭ;->uz:Lo/ᒭ$if;

    .line 434
    iget-wide v0, p0, Lo/ᒭ;->us:J

    iput-wide v0, p0, Lo/ᒭ;->uw:J

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒭ;->uv:Z

    .line 440
    :cond_6
    :goto_3
    iget v0, p0, Lo/ᒭ;->uF:I

    iput v0, p0, Lo/ᒭ;->uG:I

    .line 441
    iget-object v0, p0, Lo/ᒭ;->uy:Lo/ס;

    iget-object v1, p0, Lo/ᒭ;->uz:Lo/ᒭ$if;

    invoke-virtual {v0, v1, p0}, Lo/ס;->ˊ(Lo/ס$ˋ;Lo/ס$if;)V

    .line 443
    :cond_7
    return-void

    .line 449
    :cond_8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ᒭ;->ux:J

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᒭ;->uv:Z

    .line 452
    iget-boolean v0, p0, Lo/ᒭ;->uj:Z

    if-nez v0, :cond_9

    .line 453
    invoke-direct {p0}, Lo/ᒭ;->ᒷ()Lo/ᒭ$if;

    move-result-object v0

    iput-object v0, p0, Lo/ᒭ;->uz:Lo/ᒭ$if;

    goto :goto_4

    .line 455
    :cond_9
    invoke-direct {p0}, Lo/ᒭ;->ᓛ()Z

    move-result v0

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 456
    iget-wide v0, p0, Lo/ᒭ;->um:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lo/ᒭ;->uu:J

    iget-wide v2, p0, Lo/ᒭ;->um:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒭ;->uE:Z

    .line 458
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ᒭ;->uu:J

    .line 459
    return-void

    .line 461
    :cond_a
    iget-wide v0, p0, Lo/ᒭ;->uu:J

    invoke-direct {p0, v0, v1}, Lo/ᒭ;->ᵔ(J)Lo/ᒭ$if;

    move-result-object v0

    iput-object v0, p0, Lo/ᒭ;->uz:Lo/ᒭ$if;

    .line 462
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ᒭ;->uu:J

    .line 464
    :goto_4
    iget v0, p0, Lo/ᒭ;->uF:I

    iput v0, p0, Lo/ᒭ;->uG:I

    .line 465
    iget-object v0, p0, Lo/ᒭ;->uy:Lo/ס;

    iget-object v1, p0, Lo/ᒭ;->uz:Lo/ᒭ$if;

    invoke-virtual {v0, v1, p0}, Lo/ס;->ˊ(Lo/ס$ˋ;Lo/ס$if;)V

    .line 466
    return-void
.end method

.method private ᒶ()V
    .locals 3

    .line 469
    iget-object v0, p0, Lo/ᒭ;->uA:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    iget-boolean v0, p0, Lo/ᒭ;->uB:Z

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lo/ᒭ;->uA:Ljava/io/IOException;

    throw v0

    .line 476
    :cond_1
    iget v0, p0, Lo/ᒭ;->uf:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 477
    iget v2, p0, Lo/ᒭ;->uf:I

    goto :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Lo/ᒭ;->ui:Lo/ᒲ;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/ᒭ;->ui:Lo/ᒲ;

    invoke-interface {v0}, Lo/ᒲ;->ᚆ()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v2, 0x6

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    .line 483
    :goto_0
    iget v0, p0, Lo/ᒭ;->uC:I

    if-le v0, v2, :cond_4

    .line 484
    iget-object v0, p0, Lo/ᒭ;->uA:Ljava/io/IOException;

    throw v0

    .line 486
    :cond_4
    return-void
.end method

.method private ᒷ()Lo/ᒭ$if;
    .locals 8

    .line 489
    new-instance v0, Lo/ᒭ$if;

    iget-object v1, p0, Lo/ᒭ;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lo/ᒭ;->tF:Lo/ϒ;

    iget-object v3, p0, Lo/ᒭ;->ub:Lo/ᒎ;

    iget-object v4, p0, Lo/ᒭ;->uc:Lo/ѕ;

    iget v5, p0, Lo/ᒭ;->ud:I

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lo/ᒭ$if;-><init>(Landroid/net/Uri;Lo/ϒ;Lo/ᒎ;Lo/ѕ;IJ)V

    return-object v0
.end method

.method private ᒺ()Z
    .locals 2

    .line 498
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 499
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒭ$ˊ;

    invoke-virtual {v0}, Lo/ᒭ$ˊ;->ᒎ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    const/4 v0, 0x0

    return v0

    .line 498
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private ᓖ()Z
    .locals 2

    .line 507
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/ᒭ;->uq:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 508
    iget-object v0, p0, Lo/ᒭ;->uq:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒭ$ˊ;

    invoke-virtual {v0}, Lo/ᒭ$ˊ;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    const/4 v0, 0x1

    return v0

    .line 507
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private ᓘ()V
    .locals 2

    .line 524
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 525
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒭ$ˊ;

    invoke-virtual {v0}, Lo/ᒭ$ˊ;->clear()V

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 527
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᒭ;->uz:Lo/ᒭ$if;

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᒭ;->uA:Ljava/io/IOException;

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒭ;->uC:I

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᒭ;->uB:Z

    .line 531
    return-void
.end method

.method private ᓛ()Z
    .locals 4

    .line 534
    iget-wide v0, p0, Lo/ᒭ;->uu:J

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

    .line 395
    iput-wide p1, p0, Lo/ᒭ;->uu:J

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᒭ;->uE:Z

    .line 397
    iget-object v0, p0, Lo/ᒭ;->uy:Lo/ס;

    invoke-virtual {v0}, Lo/ס;->ƨ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lo/ᒭ;->uy:Lo/ס;

    invoke-virtual {v0}, Lo/ס;->ƫ()V

    goto :goto_0

    .line 400
    :cond_0
    invoke-direct {p0}, Lo/ᒭ;->ᓘ()V

    .line 401
    invoke-direct {p0}, Lo/ᒭ;->ᒳ()V

    .line 403
    :goto_0
    return-void
.end method

.method private ᵔ(J)Lo/ᒭ$if;
    .locals 8

    .line 493
    new-instance v0, Lo/ᒭ$if;

    iget-object v1, p0, Lo/ᒭ;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lo/ᒭ;->tF:Lo/ϒ;

    iget-object v3, p0, Lo/ᒭ;->ub:Lo/ᒎ;

    iget-object v4, p0, Lo/ᒭ;->uc:Lo/ѕ;

    iget v5, p0, Lo/ᒭ;->ud:I

    iget-object v6, p0, Lo/ᒭ;->ui:Lo/ᒲ;

    invoke-interface {v6, p1, p2}, Lo/ᒲ;->ｰ(J)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lo/ᒭ$if;-><init>(Landroid/net/Uri;Lo/ϒ;Lo/ᒎ;Lo/ѕ;IJ)V

    return-object v0
.end method

.method private ᵢ(J)V
    .locals 2

    .line 516
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/ᒭ;->uq:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 517
    iget-object v0, p0, Lo/ᒭ;->uq:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒭ$ˊ;

    invoke-virtual {v0, p1, p2}, Lo/ᒭ$ˊ;->ٴ(J)V

    .line 516
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    :cond_1
    return-void
.end method

.method private ⁱ(J)J
    .locals 4

    .line 538
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getTrackCount()I
    .locals 1

    .line 178
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .line 320
    iget v0, p0, Lo/ᒭ;->ur:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 321
    iget v0, p0, Lo/ᒭ;->ur:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/ᒭ;->ur:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/ᒭ;->uy:Lo/ס;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lo/ᒭ;->uy:Lo/ס;

    invoke-virtual {v0}, Lo/ס;->release()V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᒭ;->uy:Lo/ס;

    .line 325
    :cond_1
    return-void
.end method

.method public ˊ(IJLo/م;Lo/ڋ;Z)I
    .locals 6

    .line 228
    iput-wide p2, p0, Lo/ᒭ;->us:J

    .line 230
    iget-object v0, p0, Lo/ᒭ;->uo:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lo/ᒭ;->uo:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 232
    const/4 v0, -0x5

    return v0

    .line 235
    :cond_0
    if-nez p6, :cond_1

    invoke-direct {p0}, Lo/ᒭ;->ᓛ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    :cond_1
    invoke-direct {p0}, Lo/ᒭ;->ᒶ()V

    .line 237
    const/4 v0, -0x2

    return v0

    .line 240
    :cond_2
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒭ$ˊ;

    move-object v4, v0

    .line 241
    iget-object v0, p0, Lo/ᒭ;->un:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    .line 242
    invoke-virtual {v4}, Lo/ᒭ$ˊ;->ᒑ()Lo/ب;

    move-result-object v0

    iput-object v0, p4, Lo/م;->ry:Lo/ب;

    .line 243
    iget-object v0, p0, Lo/ᒭ;->rz:Lo/ᐯ;

    iput-object v0, p4, Lo/م;->rz:Lo/ᐯ;

    .line 244
    iget-object v0, p0, Lo/ᒭ;->un:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 245
    const/4 v0, -0x4

    return v0

    .line 248
    :cond_3
    invoke-virtual {v4, p5}, Lo/ᒭ$ˊ;->ˊ(Lo/ڋ;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 249
    iget-boolean v0, p0, Lo/ᒭ;->ug:Z

    if-eqz v0, :cond_4

    iget-wide v0, p5, Lo/ڋ;->sJ:J

    iget-wide v2, p0, Lo/ᒭ;->ut:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    .line 250
    :goto_0
    iget v0, p5, Lo/ڋ;->flags:I

    if-eqz v5, :cond_5

    const/high16 v1, 0x8000000

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v0, v1

    iput v0, p5, Lo/ڋ;->flags:I

    .line 251
    iget-boolean v0, p0, Lo/ᒭ;->uv:Z

    if-eqz v0, :cond_6

    .line 253
    iget-wide v0, p0, Lo/ᒭ;->uw:J

    iget-wide v2, p5, Lo/ڋ;->sJ:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᒭ;->ux:J

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᒭ;->uv:Z

    .line 256
    :cond_6
    iget-wide v0, p5, Lo/ڋ;->sJ:J

    iget-wide v2, p0, Lo/ᒭ;->ux:J

    add-long/2addr v0, v2

    iput-wide v0, p5, Lo/ڋ;->sJ:J

    .line 257
    const/4 v0, -0x3

    return v0

    .line 260
    :cond_7
    iget-boolean v0, p0, Lo/ᒭ;->uE:Z

    if-eqz v0, :cond_8

    .line 261
    const/4 v0, -0x1

    return v0

    .line 264
    :cond_8
    invoke-direct {p0}, Lo/ᒭ;->ᒶ()V

    .line 265
    const/4 v0, -0x2

    return v0
.end method

.method public ˊ(Lo/ס$ˋ;)V
    .locals 1

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒭ;->uE:Z

    .line 332
    return-void
.end method

.method public ˊ(Lo/ס$ˋ;Ljava/io/IOException;)V
    .locals 2

    .line 346
    iput-object p2, p0, Lo/ᒭ;->uA:Ljava/io/IOException;

    .line 347
    iget v0, p0, Lo/ᒭ;->uF:I

    iget v1, p0, Lo/ᒭ;->uG:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lo/ᒭ;->uC:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lo/ᒭ;->uC:I

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ᒭ;->uD:J

    .line 350
    invoke-direct {p0}, Lo/ᒭ;->ᒳ()V

    .line 351
    return-void
.end method

.method public ˊ(Lo/ᒲ;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lo/ᒭ;->ui:Lo/ᒲ;

    .line 373
    return-void
.end method

.method public ˋ(Lo/ס$ˋ;)V
    .locals 2

    .line 336
    iget v0, p0, Lo/ᒭ;->uk:I

    if-lez v0, :cond_0

    .line 337
    iget-wide v0, p0, Lo/ᒭ;->uu:J

    invoke-direct {p0, v0, v1}, Lo/ᒭ;->ᵎ(J)V

    goto :goto_0

    .line 339
    :cond_0
    invoke-direct {p0}, Lo/ᒭ;->ᓘ()V

    .line 340
    iget-object v0, p0, Lo/ᒭ;->uc:Lo/ѕ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ѕ;->Ȉ(I)V

    .line 342
    :goto_0
    return-void
.end method

.method public ˏ(IJ)V
    .locals 2

    .line 189
    iget-boolean v0, p0, Lo/ᒭ;->uj:Z

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 190
    iget-object v0, p0, Lo/ᒭ;->uq:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 191
    iget v0, p0, Lo/ᒭ;->uk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ᒭ;->uk:I

    .line 192
    iget-object v0, p0, Lo/ᒭ;->uq:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 193
    iget-object v0, p0, Lo/ᒭ;->un:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 194
    iget v0, p0, Lo/ᒭ;->uk:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 195
    invoke-virtual {p0, p2, p3}, Lo/ᒭ;->ﹳ(J)V

    .line 197
    :cond_1
    return-void
.end method

.method public ϊ(I)Lo/ڕ;
    .locals 1

    .line 183
    iget-boolean v0, p0, Lo/ᒭ;->uj:Z

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 184
    iget-object v0, p0, Lo/ᒭ;->ul:[Lo/ڕ;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public ג(I)V
    .locals 2

    .line 201
    iget-boolean v0, p0, Lo/ᒭ;->uj:Z

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 202
    iget-object v0, p0, Lo/ᒭ;->uq:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 203
    iget v0, p0, Lo/ᒭ;->uk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/ᒭ;->uk:I

    .line 204
    iget-object v0, p0, Lo/ᒭ;->uq:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 205
    iget-object v0, p0, Lo/ᒭ;->uo:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 206
    iget v0, p0, Lo/ᒭ;->uk:I

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lo/ᒭ;->uy:Lo/ס;

    invoke-virtual {v0}, Lo/ס;->ƨ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lo/ᒭ;->uy:Lo/ס;

    invoke-virtual {v0}, Lo/ס;->ƫ()V

    goto :goto_0

    .line 210
    :cond_0
    invoke-direct {p0}, Lo/ᒭ;->ᓘ()V

    .line 211
    iget-object v0, p0, Lo/ᒭ;->uc:Lo/ѕ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ѕ;->Ȉ(I)V

    .line 214
    :cond_1
    :goto_0
    return-void
.end method

.method public ר(I)Lo/ᒳ;
    .locals 2

    .line 357
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒭ$ˊ;

    move-object v1, v0

    .line 358
    if-nez v1, :cond_0

    .line 359
    new-instance v1, Lo/ᒭ$ˊ;

    iget-object v0, p0, Lo/ᒭ;->uc:Lo/ѕ;

    invoke-direct {v1, p0, v0}, Lo/ᒭ$ˊ;-><init>(Lo/ᒭ;Lo/ʎ;)V

    .line 360
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    :cond_0
    return-object v1
.end method

.method public ᐧ(J)Z
    .locals 8

    .line 142
    iget-boolean v0, p0, Lo/ᒭ;->uj:Z

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    return v0

    .line 145
    :cond_0
    iget-object v0, p0, Lo/ᒭ;->uy:Lo/ס;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Lo/ס;

    const-string v1, "Loader:ExtractorSampleSource"

    invoke-direct {v0, v1}, Lo/ס;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/ᒭ;->uy:Lo/ס;

    .line 149
    :cond_1
    invoke-direct {p0}, Lo/ᒭ;->ᒲ()Z

    .line 154
    iget-object v0, p0, Lo/ᒭ;->ui:Lo/ᒲ;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lo/ᒭ;->uh:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lo/ᒭ;->ᒺ()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 156
    new-array v0, v5, [Z

    iput-object v0, p0, Lo/ᒭ;->uq:[Z

    .line 157
    new-array v0, v5, [Z

    iput-object v0, p0, Lo/ᒭ;->uo:[Z

    .line 158
    new-array v0, v5, [Z

    iput-object v0, p0, Lo/ᒭ;->un:[Z

    .line 159
    new-array v0, v5, [Lo/ڕ;

    iput-object v0, p0, Lo/ᒭ;->ul:[Lo/ڕ;

    .line 160
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ᒭ;->um:J

    .line 161
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    .line 162
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒭ$ˊ;

    invoke-virtual {v0}, Lo/ᒭ$ˊ;->ᒑ()Lo/ب;

    move-result-object v7

    .line 163
    iget-object v0, p0, Lo/ᒭ;->ul:[Lo/ڕ;

    new-instance v1, Lo/ڕ;

    iget-object v2, v7, Lo/ب;->mimeType:Ljava/lang/String;

    iget-wide v3, v7, Lo/ب;->re:J

    invoke-direct {v1, v2, v3, v4}, Lo/ڕ;-><init>(Ljava/lang/String;J)V

    aput-object v1, v0, v6

    .line 164
    iget-wide v0, v7, Lo/ب;->re:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, v7, Lo/ب;->re:J

    iget-wide v2, p0, Lo/ᒭ;->um:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 165
    iget-wide v0, v7, Lo/ب;->re:J

    iput-wide v0, p0, Lo/ᒭ;->um:J

    .line 161
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 168
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒭ;->uj:Z

    .line 169
    const/4 v0, 0x1

    return v0

    .line 171
    :cond_4
    invoke-direct {p0}, Lo/ᒭ;->ᒶ()V

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public ᐨ(J)Z
    .locals 2

    .line 218
    iget-boolean v0, p0, Lo/ᒭ;->uj:Z

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 219
    iget v0, p0, Lo/ᒭ;->uk:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 220
    iput-wide p1, p0, Lo/ᒭ;->us:J

    .line 221
    iget-wide v0, p0, Lo/ᒭ;->us:J

    invoke-direct {p0, v0, v1}, Lo/ᒭ;->ᵢ(J)V

    .line 222
    iget-boolean v0, p0, Lo/ᒭ;->uE:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo/ᒭ;->ᒲ()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public ᒯ()V
    .locals 1

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒭ;->uh:Z

    .line 368
    return-void
.end method

.method public ﹳ(J)V
    .locals 4

    .line 270
    iget-boolean v0, p0, Lo/ᒭ;->uj:Z

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 271
    iget v0, p0, Lo/ᒭ;->uk:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 272
    iget-object v0, p0, Lo/ᒭ;->ui:Lo/ᒲ;

    invoke-interface {v0}, Lo/ᒲ;->ᚆ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    const-wide/16 p1, 0x0

    .line 277
    :cond_1
    iput-wide p1, p0, Lo/ᒭ;->ut:J

    .line 278
    invoke-direct {p0}, Lo/ᒭ;->ᓛ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lo/ᒭ;->uu:J

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lo/ᒭ;->us:J

    :goto_1
    cmp-long v0, v0, p1

    if-nez v0, :cond_3

    .line 279
    return-void

    .line 282
    :cond_3
    iput-wide p1, p0, Lo/ᒭ;->us:J

    .line 285
    invoke-direct {p0}, Lo/ᒭ;->ᓛ()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 286
    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v2, :cond_5

    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 287
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒭ$ˊ;

    invoke-virtual {v0, p1, p2}, Lo/ᒭ$ˊ;->ᴵ(J)Z

    move-result v0

    and-int/2addr v2, v0

    .line 286
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 291
    :cond_5
    if-nez v2, :cond_6

    .line 292
    invoke-direct {p0, p1, p2}, Lo/ᒭ;->ᵎ(J)V

    .line 296
    :cond_6
    const/4 v3, 0x0

    :goto_4
    iget-object v0, p0, Lo/ᒭ;->uo:[Z

    array-length v0, v0

    if-ge v3, v0, :cond_7

    .line 297
    iget-object v0, p0, Lo/ᒭ;->uo:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 299
    :cond_7
    return-void
.end method

.method public ﻥ()J
    .locals 5

    .line 303
    iget-boolean v0, p0, Lo/ᒭ;->uE:Z

    if-eqz v0, :cond_0

    .line 304
    const-wide/16 v0, -0x3

    return-wide v0

    .line 305
    :cond_0
    invoke-direct {p0}, Lo/ᒭ;->ᓛ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-wide v0, p0, Lo/ᒭ;->uu:J

    return-wide v0

    .line 308
    :cond_1
    const-wide/high16 v2, -0x8000000000000000L

    .line 309
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 310
    iget-object v0, p0, Lo/ᒭ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒭ$ˊ;

    invoke-virtual {v0}, Lo/ᒭ$ˊ;->ᒬ()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 313
    :cond_2
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    iget-wide v0, p0, Lo/ᒭ;->us:J

    goto :goto_1

    :cond_3
    move-wide v0, v2

    :goto_1
    return-wide v0
.end method
