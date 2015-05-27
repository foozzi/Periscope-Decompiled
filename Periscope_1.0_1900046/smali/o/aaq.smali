.class public Lo/aaq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ĉ;
.implements Lo/ʢ$ˋ;
.implements Lo/ʭ$if;
.implements Lo/з$if;
.implements Lo/ԅ$if;
.implements Lo/ঌ;
.implements Lo/忄$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aaq$ˎ;,
        Lo/aaq$if;,
        Lo/aaq$ʻ;,
        Lo/aaq$ˊ;,
        Lo/aaq$ˋ;,
        Lo/aaq$ˏ;,
        Lo/aaq$ᐝ;,
        Lo/aaq$aux;
    }
.end annotation


# instance fields
.field private buA:[I

.field private buB:Lo/aaq$ʻ;

.field private buC:Lo/aaq$if;

.field private buD:Lo/aaq$ˋ;

.field private buE:Lo/aaq$ˊ;

.field private final buo:Lo/aaq$aux;

.field private final bup:Lo/ʢ;

.field private final buq:Lo/য;

.field private final bur:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<Lo/aaq$\u02cf;>;"
        }
    .end annotation
.end field

.field private bus:I

.field private but:I

.field private buu:Z

.field private buv:Lo/aaq$ˎ;

.field private buw:Lo/ڹ;

.field private bux:Lo/ব;

.field private buy:[Lo/ก;

.field private buz:[[Ljava/lang/String;

.field private final eN:Landroid/os/Handler;

.field private sj:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lo/aaq$aux;)V
    .locals 3

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lo/aaq;->buo:Lo/aaq$aux;

    .line 215
    const/4 v0, 0x5

    const/16 v1, 0x3e8

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Lo/ʢ$ˊ;->ʾ(III)Lo/ʢ;

    move-result-object v0

    iput-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    .line 216
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0, p0}, Lo/ʢ;->ˊ(Lo/ʢ$ˋ;)V

    .line 217
    new-instance v0, Lo/য;

    iget-object v1, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-direct {v0, v1}, Lo/য;-><init>(Lo/ʢ;)V

    iput-object v0, p0, Lo/aaq;->buq:Lo/য;

    .line 218
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/aaq;->eN:Landroid/os/Handler;

    .line 219
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/aaq;->bur:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 220
    const/4 v0, 0x1

    iput v0, p0, Lo/aaq;->but:I

    .line 221
    const/4 v0, 0x1

    iput v0, p0, Lo/aaq;->bus:I

    .line 222
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lo/aaq;->buA:[I

    .line 224
    iget-object v0, p0, Lo/aaq;->buA:[I

    const/4 v1, -0x1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 225
    return-void
.end method

.method private vF()V
    .locals 5

    .line 583
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0}, Lo/ʢ;->ｔ()Z

    move-result v1

    .line 584
    invoke-virtual {p0}, Lo/aaq;->ｉ()I

    move-result v2

    .line 585
    iget-boolean v0, p0, Lo/aaq;->buu:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/aaq;->but:I

    if-eq v0, v2, :cond_2

    .line 586
    :cond_0
    iget-object v0, p0, Lo/aaq;->bur:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aaq$ˏ;

    move-object v4, v0

    .line 587
    invoke-interface {v4, v1, v2}, Lo/aaq$ˏ;->ˎ(ZI)V

    .line 588
    goto :goto_0

    .line 589
    :cond_1
    iput-boolean v1, p0, Lo/aaq;->buu:Z

    .line 590
    iput v2, p0, Lo/aaq;->but:I

    .line 592
    :cond_2
    return-void
.end method

.method static synthetic ˊ(Lo/aaq;)Lo/aaq$if;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/aaq;->buC:Lo/aaq$if;

    return-object v0
.end method

.method private ᑋ(Z)V
    .locals 4

    .line 595
    iget-object v0, p0, Lo/aaq;->buw:Lo/ڹ;

    if-nez v0, :cond_0

    .line 596
    return-void

    .line 599
    :cond_0
    if-eqz p1, :cond_1

    .line 600
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    iget-object v1, p0, Lo/aaq;->buw:Lo/ڹ;

    iget-object v2, p0, Lo/aaq;->sj:Landroid/view/Surface;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2}, Lo/ʢ;->ˋ(Lo/ʢ$if;ILjava/lang/Object;)V

    goto :goto_0

    .line 603
    :cond_1
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    iget-object v1, p0, Lo/aaq;->buw:Lo/ڹ;

    iget-object v2, p0, Lo/aaq;->sj:Landroid/view/Surface;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2}, Lo/ʢ;->ˊ(Lo/ʢ$if;ILjava/lang/Object;)V

    .line 606
    :goto_0
    return-void
.end method

.method private ﾞ(IZ)V
    .locals 6

    .line 609
    iget-object v0, p0, Lo/aaq;->buy:[Lo/ก;

    if-nez v0, :cond_0

    .line 610
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lo/aaq;->buA:[I

    aget v4, v0, p1

    .line 614
    const/4 v0, -0x1

    if-ne v4, v0, :cond_1

    .line 615
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lo/ʢ;->ᐧ(IZ)V

    goto :goto_0

    .line 616
    :cond_1
    iget-object v0, p0, Lo/aaq;->buy:[Lo/ก;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 617
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0, p1, p2}, Lo/ʢ;->ᐧ(IZ)V

    goto :goto_0

    .line 619
    :cond_2
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0}, Lo/ʢ;->ｔ()Z

    move-result v5

    .line 620
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/ʢ;->ᑊ(Z)V

    .line 621
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lo/ʢ;->ᐧ(IZ)V

    .line 622
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    iget-object v1, p0, Lo/aaq;->buy:[Lo/ก;

    aget-object v1, v1, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2}, Lo/ʢ;->ˊ(Lo/ʢ$if;ILjava/lang/Object;)V

    .line 624
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0, p1, p2}, Lo/ʢ;->ᐧ(IZ)V

    .line 625
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0, v5}, Lo/ʢ;->ᑊ(Z)V

    .line 627
    :goto_0
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 409
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0}, Lo/ʢ;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public prepare()V
    .locals 2

    .line 307
    iget v0, p0, Lo/aaq;->bus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0}, Lo/ʢ;->stop()V

    .line 310
    :cond_0
    iget-object v0, p0, Lo/aaq;->buv:Lo/aaq$ˎ;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lo/aaq;->buv:Lo/aaq$ˎ;

    invoke-virtual {v0}, Lo/aaq$ˎ;->cancel()V

    .line 313
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aaq;->bux:Lo/ব;

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aaq;->buw:Lo/ڹ;

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aaq;->buy:[Lo/ก;

    .line 316
    const/4 v0, 0x2

    iput v0, p0, Lo/aaq;->bus:I

    .line 317
    invoke-direct {p0}, Lo/aaq;->vF()V

    .line 318
    new-instance v0, Lo/aaq$ˎ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/aaq$ˎ;-><init>(Lo/aaq;Lo/aar;)V

    iput-object v0, p0, Lo/aaq;->buv:Lo/aaq$ˎ;

    .line 319
    iget-object v0, p0, Lo/aaq;->buo:Lo/aaq$aux;

    iget-object v1, p0, Lo/aaq;->buv:Lo/aaq$ˎ;

    invoke-interface {v0, p0, v1}, Lo/aaq$aux;->ˊ(Lo/aaq;Lo/aaq$ᐝ;)V

    .line 320
    return-void
.end method

.method public release()V
    .locals 1

    .line 380
    iget-object v0, p0, Lo/aaq;->buv:Lo/aaq$ˎ;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lo/aaq;->buv:Lo/aaq$ˎ;

    invoke-virtual {v0}, Lo/aaq$ˎ;->cancel()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aaq;->buv:Lo/aaq$ˎ;

    .line 384
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lo/aaq;->bus:I

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aaq;->sj:Landroid/view/Surface;

    .line 386
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0}, Lo/ʢ;->release()V

    .line 387
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 376
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0, p1, p2}, Lo/ʢ;->seekTo(J)V

    .line 377
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 256
    iput-object p1, p0, Lo/aaq;->sj:Landroid/view/Surface;

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/aaq;->ᑋ(Z)V

    .line 258
    return-void
.end method

.method public stop()V
    .locals 1

    .line 323
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0}, Lo/ʢ;->stop()V

    .line 324
    return-void
.end method

.method vD()Landroid/os/Handler;
    .locals 1

    .line 425
    iget-object v0, p0, Lo/aaq;->eN:Landroid/os/Handler;

    return-object v0
.end method

.method vE()Lo/ﾏ$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\uff8f$if<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
        }
    .end annotation

    .line 534
    new-instance v0, Lo/aar;

    invoke-direct {v0, p0}, Lo/aar;-><init>(Lo/aaq;)V

    return-object v0
.end method

.method ʼ(Ljava/lang/Exception;)V
    .locals 3

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aaq;->buv:Lo/aaq$ˎ;

    .line 361
    iget-object v0, p0, Lo/aaq;->buD:Lo/aaq$ˋ;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lo/aaq;->buD:Lo/aaq$ˋ;

    invoke-interface {v0, p1}, Lo/aaq$ˋ;->ʻ(Ljava/lang/Exception;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lo/aaq;->bur:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aaq$ˏ;

    move-object v2, v0

    .line 365
    invoke-interface {v2, p1}, Lo/aaq$ˏ;->ᐝ(Ljava/lang/Exception;)V

    .line 366
    goto :goto_0

    .line 367
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lo/aaq;->bus:I

    .line 368
    invoke-direct {p0}, Lo/aaq;->vF()V

    .line 369
    return-void
.end method

.method public ˊ(IIF)V
    .locals 3

    .line 443
    iget-object v0, p0, Lo/aaq;->bur:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aaq$ˏ;

    move-object v2, v0

    .line 444
    invoke-interface {v2, p1, p2, p3}, Lo/aaq$ˏ;->ˊ(IIF)V

    .line 445
    goto :goto_0

    .line 446
    :cond_0
    return-void
.end method

.method public ˊ(IJIILo/ব;II)V
    .locals 9

    .line 557
    iget-object v0, p0, Lo/aaq;->buE:Lo/aaq$ˊ;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lo/aaq;->buE:Lo/aaq$ˊ;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lo/aaq$ˊ;->ˊ(IJIILo/ব;II)V

    .line 561
    :cond_0
    return-void
.end method

.method public ˊ(IJIILo/ব;IIJJ)V
    .locals 13

    .line 566
    iget-object v0, p0, Lo/aaq;->buE:Lo/aaq$ˊ;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lo/aaq;->buE:Lo/aaq$ˊ;

    move v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    invoke-interface/range {v0 .. v12}, Lo/aaq$ˊ;->ˊ(IJIILo/ব;IIJJ)V

    .line 570
    :cond_0
    return-void
.end method

.method public ˊ(ILjava/io/IOException;)V
    .locals 1

    .line 522
    iget-object v0, p0, Lo/aaq;->buD:Lo/aaq$ˋ;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lo/aaq;->buD:Lo/aaq$ˋ;

    invoke-interface {v0, p1, p2}, Lo/aaq$ˋ;->ˊ(ILjava/io/IOException;)V

    .line 525
    :cond_0
    return-void
.end method

.method public ˊ(ILo/ব;II)V
    .locals 1

    .line 464
    iget-object v0, p0, Lo/aaq;->buE:Lo/aaq$ˊ;

    if-nez v0, :cond_0

    .line 465
    return-void

    .line 467
    :cond_0
    if-nez p1, :cond_1

    .line 468
    iput-object p2, p0, Lo/aaq;->bux:Lo/ব;

    .line 469
    iget-object v0, p0, Lo/aaq;->buE:Lo/aaq$ˊ;

    invoke-interface {v0, p2, p3, p4}, Lo/aaq$ˊ;->ˊ(Lo/ব;II)V

    goto :goto_0

    .line 470
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 471
    iget-object v0, p0, Lo/aaq;->buE:Lo/aaq$ˊ;

    invoke-interface {v0, p2, p3, p4}, Lo/aaq$ˊ;->ˋ(Lo/ব;II)V

    .line 473
    :cond_2
    :goto_0
    return-void
.end method

.method public ˊ(Landroid/view/Surface;)V
    .locals 0

    .line 552
    return-void
.end method

.method public ˊ(Lo/aaq$if;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lo/aaq;->buC:Lo/aaq$if;

    .line 253
    return-void
.end method

.method public ˊ(Lo/aaq$ʻ;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lo/aaq;->buB:Lo/aaq$ʻ;

    .line 249
    return-void
.end method

.method public ˊ(Lo/aaq$ˊ;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lo/aaq;->buE:Lo/aaq$ˊ;

    .line 245
    return-void
.end method

.method public ˊ(Lo/aaq$ˋ;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lo/aaq;->buD:Lo/aaq$ˋ;

    .line 241
    return-void
.end method

.method public ˊ(Lo/aaq$ˏ;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lo/aaq;->bur:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public ˊ(Lo/ʡ;)V
    .locals 3

    .line 435
    const/4 v0, 0x1

    iput v0, p0, Lo/aaq;->bus:I

    .line 436
    iget-object v0, p0, Lo/aaq;->bur:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aaq$ˏ;

    move-object v2, v0

    .line 437
    invoke-interface {v2, p1}, Lo/aaq$ˏ;->ᐝ(Ljava/lang/Exception;)V

    .line 438
    goto :goto_0

    .line 439
    :cond_0
    return-void
.end method

.method public ˊ(ZI)V
    .locals 0

    .line 430
    invoke-direct {p0}, Lo/aaq;->vF()V

    .line 431
    return-void
.end method

.method ˊ([[Ljava/lang/String;[Lo/ก;[Lo/ڹ;)V
    .locals 4

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aaq;->buv:Lo/aaq$ˎ;

    .line 330
    if-nez p1, :cond_0

    .line 331
    const/4 v0, 0x5

    new-array p1, v0, [[Ljava/lang/String;

    .line 333
    :cond_0
    if-nez p2, :cond_1

    .line 334
    const/4 v0, 0x5

    new-array p2, v0, [Lo/ก;

    .line 336
    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v2, v0, :cond_5

    .line 337
    aget-object v0, p3, v2

    if-nez v0, :cond_2

    .line 339
    new-instance v0, Lo/ʈ;

    invoke-direct {v0}, Lo/ʈ;-><init>()V

    aput-object v0, p3, v2

    goto :goto_2

    .line 340
    :cond_2
    aget-object v0, p1, v2

    if-nez v0, :cond_4

    .line 343
    aget-object v0, p2, v2

    if-nez v0, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    aget-object v0, p2, v2

    invoke-virtual {v0}, Lo/ก;->getTrackCount()I

    move-result v3

    .line 344
    :goto_1
    new-array v0, v3, [Ljava/lang/String;

    aput-object v0, p1, v2

    .line 336
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    :cond_5
    iput-object p1, p0, Lo/aaq;->buz:[[Ljava/lang/String;

    .line 349
    const/4 v0, 0x0

    aget-object v0, p3, v0

    iput-object v0, p0, Lo/aaq;->buw:Lo/ڹ;

    .line 350
    iput-object p2, p0, Lo/aaq;->buy:[Lo/ก;

    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/aaq;->ᑋ(Z)V

    .line 352
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lo/aaq;->ﾞ(IZ)V

    .line 353
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lo/aaq;->ﾞ(IZ)V

    .line 354
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lo/aaq;->ﾞ(IZ)V

    .line 355
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0, p3}, Lo/ʢ;->ˊ([Lo/ڹ;)V

    .line 356
    const/4 v0, 0x3

    iput v0, p0, Lo/aaq;->bus:I

    .line 357
    return-void
.end method

.method public ˋ(IJJ)V
    .locals 6

    .line 457
    iget-object v0, p0, Lo/aaq;->buE:Lo/aaq$ˊ;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lo/aaq;->buE:Lo/aaq$ˊ;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lo/aaq$ˊ;->ˋ(IJJ)V

    .line 460
    :cond_0
    return-void
.end method

.method public ˋ(Landroid/media/MediaCodec$CryptoException;)V
    .locals 1

    .line 505
    iget-object v0, p0, Lo/aaq;->buD:Lo/aaq$ˋ;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lo/aaq;->buD:Lo/aaq$ˋ;

    invoke-interface {v0, p1}, Lo/aaq$ˋ;->ˋ(Landroid/media/MediaCodec$CryptoException;)V

    .line 508
    :cond_0
    return-void
.end method

.method public ˋ(Ljava/lang/String;JJ)V
    .locals 6

    .line 515
    iget-object v0, p0, Lo/aaq;->buE:Lo/aaq$ˊ;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lo/aaq;->buE:Lo/aaq$ˊ;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lo/aaq$ˊ;->ˋ(Ljava/lang/String;JJ)V

    .line 518
    :cond_0
    return-void
.end method

.method public ˋ(Lo/ۊ$ˋ;)V
    .locals 1

    .line 491
    iget-object v0, p0, Lo/aaq;->buD:Lo/aaq$ˋ;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lo/aaq;->buD:Lo/aaq$ˋ;

    invoke-interface {v0, p1}, Lo/aaq$ˋ;->ˋ(Lo/ۊ$ˋ;)V

    .line 494
    :cond_0
    return-void
.end method

.method public ˋ(Lo/ۊ$ˎ;)V
    .locals 1

    .line 498
    iget-object v0, p0, Lo/aaq;->buD:Lo/aaq$ˋ;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lo/aaq;->buD:Lo/aaq$ˋ;

    invoke-interface {v0, p1}, Lo/aaq$ˋ;->ˋ(Lo/ۊ$ˎ;)V

    .line 501
    :cond_0
    return-void
.end method

.method public ˎ(IJ)V
    .locals 1

    .line 450
    iget-object v0, p0, Lo/aaq;->buE:Lo/aaq$ˊ;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lo/aaq;->buE:Lo/aaq$ˊ;

    invoke-interface {v0, p1, p2, p3}, Lo/aaq$ˊ;->ˎ(IJ)V

    .line 453
    :cond_0
    return-void
.end method

.method public ˎ(Lo/ҫ$if;)V
    .locals 1

    .line 484
    iget-object v0, p0, Lo/aaq;->buD:Lo/aaq$ˋ;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lo/aaq;->buD:Lo/aaq$ˋ;

    invoke-interface {v0, p1}, Lo/aaq$ˋ;->ˎ(Lo/ҫ$if;)V

    .line 487
    :cond_0
    return-void
.end method

.method public ᐝ(IJ)V
    .locals 0

    .line 575
    return-void
.end method

.method public ᑊ(Z)V
    .locals 1

    .line 372
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0, p1}, Lo/ʢ;->ᑊ(Z)V

    .line 373
    return-void
.end method

.method public ⁱ(Ljava/lang/String;)V
    .locals 0

    .line 529
    invoke-virtual {p0, p1}, Lo/aaq;->ﯿ(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method ﯿ(Ljava/lang/String;)V
    .locals 2

    .line 630
    iget-object v0, p0, Lo/aaq;->buB:Lo/aaq$ʻ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aaq;->buA:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 631
    :cond_0
    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Lo/aaq;->buB:Lo/aaq$ʻ;

    invoke-interface {v0, p1}, Lo/aaq$ʻ;->ⁱ(Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method public ｉ()I
    .locals 3

    .line 391
    iget v0, p0, Lo/aaq;->bus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 392
    const/4 v0, 0x2

    return v0

    .line 394
    :cond_0
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0}, Lo/ʢ;->ｉ()I

    move-result v2

    .line 395
    iget v0, p0, Lo/aaq;->bus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/aaq;->bus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 399
    const/4 v0, 0x2

    return v0

    .line 401
    :cond_1
    return v2
.end method

.method public ｖ()J
    .locals 2

    .line 405
    iget-object v0, p0, Lo/aaq;->bup:Lo/ʢ;

    invoke-interface {v0}, Lo/ʢ;->ｖ()J

    move-result-wide v0

    return-wide v0
.end method

.method public ｴ()V
    .locals 0

    .line 547
    return-void
.end method
