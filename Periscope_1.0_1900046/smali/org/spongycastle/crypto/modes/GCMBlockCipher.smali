.class public Lorg/spongycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# instance fields
.field private aEU:I

.field private aEW:Z

.field private aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private aFR:[B

.field private aGd:[B

.field private aNz:I

.field private aOF:[B

.field private aOH:[B

.field private aOP:[B

.field private aOU:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

.field private aOV:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

.field private aOW:[B

.field private aOX:[B

.field private aOY:[B

.field private aOZ:[B

.field private aPa:J

.field private aPb:[B

.field private aPc:I

.field private aPd:J

.field private aPe:J

.field private aeu:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p2, :cond_1

    .line 68
    new-instance p2, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;

    invoke-direct {p2}, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;-><init>()V

    .line 71
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 72
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOU:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    .line 73
    return-void
.end method

.method private kg()V
    .locals 5

    .line 247
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOX:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOY:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPd:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPe:J

    .line 254
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    if-lez v0, :cond_1

    .line 256
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOY:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPb:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ˊ([B[BII)V

    .line 257
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPe:J

    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPe:J

    .line 260
    :cond_1
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPe:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 262
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOY:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aGd:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    :cond_2
    return-void
.end method

.method private ki()[B
    .locals 6

    .line 519
    const/16 v4, 0xf

    :goto_0
    const/16 v0, 0xc

    if-lt v4, v0, :cond_1

    .line 521
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOZ:[B

    aget-byte v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v5, v0

    .line 522
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOZ:[B

    aput-byte v5, v0, v4

    .line 524
    if-eqz v5, :cond_0

    .line 526
    goto :goto_1

    .line 519
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 530
    :cond_1
    :goto_1
    const/16 v0, 0x10

    new-array v4, v0, [B

    .line 532
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOZ:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v4, v3}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 533
    return-object v4
.end method

.method private ʻ([B[BI)V
    .locals 4

    .line 498
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    .line 500
    sub-int v0, p3, v2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 501
    invoke-direct {p0, p1, p2, v2, v3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ˊ([B[BII)V

    .line 498
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 503
    :cond_0
    return-void
.end method

.method private static ʾ([B[B)V
    .locals 3

    .line 583
    const/16 v2, 0xf

    :goto_0
    if-ltz v2, :cond_0

    .line 585
    aget-byte v0, p0, v2

    aget-byte v1, p1, v2

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    .line 583
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 587
    :cond_0
    return-void
.end method

.method private ˊ([B[BII)V
    .locals 1

    .line 513
    invoke-static {p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ˋ([B[BII)V

    .line 514
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOU:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;->ᵀ([B)V

    .line 515
    return-void
.end method

.method private static ˋ([B[BII)V
    .locals 2

    .line 591
    :goto_0
    move v0, p3

    add-int/lit8 p3, p3, -0x1

    if-lez v0, :cond_0

    .line 593
    aget-byte v0, p0, p3

    add-int v1, p2, p3

    aget-byte v1, p1, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    goto :goto_0

    .line 595
    :cond_0
    return-void
.end method

.method private ˏ([BII[BI)V
    .locals 5

    .line 486
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ki()[B

    move-result-object v4

    .line 488
    invoke-static {v4, p1, p2, p3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ˋ([B[BII)V

    .line 489
    const/4 v0, 0x0

    invoke-static {v4, v0, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aGd:[B

    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEW:Z

    if-eqz v1, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ˊ([B[BII)V

    .line 493
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPa:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPa:J

    .line 494
    return-void
.end method

.method private ͺ([B[B)V
    .locals 1

    .line 507
    invoke-static {p1, p2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ʾ([B[B)V

    .line 508
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOU:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;->ᵀ([B)V

    .line 509
    return-void
.end method

.method private ᐝ([B[BI)V
    .locals 5

    .line 474
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ki()[B

    move-result-object v4

    .line 476
    invoke-static {v4, p1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ʾ([B[B)V

    .line 477
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {v4, v0, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aGd:[B

    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEW:Z

    if-eqz v1, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ͺ([B[B)V

    .line 481
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPa:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPa:J

    .line 482
    return-void
.end method

.method private static ᔇ([B)V
    .locals 5

    .line 567
    const/4 v2, 0x0

    .line 568
    const/4 v3, 0x0

    .line 571
    :goto_0
    aget-byte v0, p0, v2

    and-int/lit16 v4, v0, 0xff

    .line 572
    ushr-int/lit8 v0, v4, 0x1

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    .line 573
    add-int/lit8 v2, v2, 0x1

    const/16 v0, 0x10

    if-ne v2, v0, :cond_0

    .line 575
    goto :goto_1

    .line 577
    :cond_0
    and-int/lit8 v0, v4, 0x1

    shl-int/lit8 v3, v0, 0x7

    .line 578
    goto :goto_0

    .line 579
    :goto_1
    return-void
.end method

.method private ᴵ([BI)V
    .locals 5

    .line 302
    array-length v0, p1

    add-int/lit8 v1, p2, 0x10

    if-ge v0, v1, :cond_0

    .line 304
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPa:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 308
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->kg()V

    .line 310
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOP:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ᐝ([B[BI)V

    .line 311
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEW:Z

    if-eqz v0, :cond_2

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEU:I

    goto :goto_0

    .line 317
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOP:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOP:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEU:I

    .line 320
    :goto_0
    return-void
.end method

.method private static ι([B[B)V
    .locals 9

    .line 538
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v3

    .line 539
    const/16 v0, 0x10

    new-array v4, v0, [B

    .line 541
    const/4 v5, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge v5, v0, :cond_4

    .line 543
    aget-byte v6, p1, v5

    .line 544
    const/4 v7, 0x7

    :goto_1
    if-ltz v7, :cond_3

    .line 546
    const/4 v0, 0x1

    shl-int/2addr v0, v7

    and-int/2addr v0, v6

    if-eqz v0, :cond_0

    .line 548
    invoke-static {v4, v3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ʾ([B[B)V

    .line 551
    :cond_0
    const/16 v0, 0xf

    aget-byte v0, v3, v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    .line 552
    :goto_2
    invoke-static {v3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ᔇ([B)V

    .line 553
    if-eqz v8, :cond_2

    .line 557
    const/4 v0, 0x0

    aget-byte v0, v3, v0

    xor-int/lit8 v0, v0, -0x1f

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v3, v1

    .line 544
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 541
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 562
    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v4, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    return-void
.end method

.method private וֹ(Z)V
    .locals 3

    .line 443
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 445
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aGd:[B

    .line 446
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOX:[B

    .line 447
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOY:[B

    .line 448
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPb:[B

    .line 449
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    .line 450
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPd:J

    .line 451
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPe:J

    .line 452
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOW:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOZ:[B

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEU:I

    .line 454
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPa:J

    .line 456
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOP:[B

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOP:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 461
    :cond_0
    if-eqz p1, :cond_1

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOH:[B

    .line 466
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOF:[B

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOF:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ᵔ([BII)V

    .line 470
    :cond_2
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 11

    .line 325
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPa:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 327
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->kg()V

    .line 330
    :cond_0
    iget v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEU:I

    .line 331
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEW:Z

    if-nez v0, :cond_2

    .line 333
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    if-ge v6, v0, :cond_1

    .line 335
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    sub-int/2addr v6, v0

    .line 340
    :cond_2
    if-lez v6, :cond_4

    .line 342
    array-length v0, p1

    add-int v1, p2, v6

    if-ge v0, v1, :cond_3

    .line 344
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_3
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOP:[B

    move v3, v6

    move-object v4, p1

    move v5, p2

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ˏ([BII[BI)V

    .line 349
    :cond_4
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPd:J

    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPd:J

    .line 351
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPd:J

    iget-wide v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPe:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 361
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    if-lez v0, :cond_5

    .line 363
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOX:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPb:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ˊ([B[BII)V

    .line 367
    :cond_5
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPe:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 369
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOX:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOY:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ʾ([B[B)V

    .line 373
    :cond_6
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPa:J

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x7f

    add-long/2addr v0, v2

    const/4 v2, 0x7

    ushr-long v7, v0, v2

    .line 376
    const/16 v0, 0x10

    new-array v9, v0, [B

    .line 377
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOV:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

    if-nez v0, :cond_7

    .line 379
    new-instance v0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOV:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

    .line 380
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOV:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aFR:[B

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;->init([B)V

    .line 382
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOV:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

    invoke-interface {v0, v7, v8, v9}, Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;->ˋ(J[B)V

    .line 385
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOX:[B

    invoke-static {v0, v9}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ι([B[B)V

    .line 388
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aGd:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOX:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ʾ([B[B)V

    .line 392
    :cond_8
    const/16 v0, 0x10

    new-array v7, v0, [B

    .line 393
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPd:J

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v7, v2}, Lorg/spongycastle/util/Pack;->ʻ(J[BI)V

    .line 394
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPa:J

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    const/16 v2, 0x8

    invoke-static {v0, v1, v7, v2}, Lorg/spongycastle/util/Pack;->ʻ(J[BI)V

    .line 396
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aGd:[B

    invoke-direct {p0, v0, v7}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ͺ([B[B)V

    .line 399
    const/16 v0, 0x10

    new-array v8, v0, [B

    .line 400
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOW:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v8, v3}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 401
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aGd:[B

    invoke-static {v8, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ʾ([B[B)V

    .line 403
    move v9, v6

    .line 406
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOH:[B

    .line 407
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOH:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v8, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEW:Z

    if-eqz v0, :cond_a

    .line 411
    array-length v0, p1

    add-int v1, p2, v6

    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_9

    .line 413
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_9
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOH:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEU:I

    add-int/2addr v1, p2

    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    add-int/2addr v9, v0

    goto :goto_0

    .line 422
    :cond_a
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    new-array v10, v0, [B

    .line 423
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOP:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    const/4 v2, 0x0

    invoke-static {v0, v6, v10, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOH:[B

    invoke-static {v0, v10}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    .line 426
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "mac check in GCM failed"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_b
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->וֹ(Z)V

    .line 432
    return v9
.end method

.method public getOutputSize(I)I
    .locals 2

    .line 194
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEU:I

    add-int v1, p1, v0

    .line 196
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEW:Z

    if-eqz v0, :cond_0

    .line 198
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    add-int/2addr v0, v1

    return v0

    .line 201
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    if-ge v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    sub-int v0, v1, v0

    :goto_0
    return v0
.end method

.method public iH()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 437
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->וֹ(Z)V

    .line 438
    return-void
.end method

.method public ʿ(B)V
    .locals 4

    .line 220
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPb:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    aput-byte p1, v0, v1

    .line 221
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOX:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPb:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ͺ([B[B)V

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    .line 226
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPd:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPd:J

    .line 228
    :cond_0
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 8

    .line 92
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEW:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOH:[B

    .line 97
    instance-of v0, p2, Lorg/spongycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_2

    .line 99
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/AEADParameters;

    move-object v6, v0

    .line 101
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/AEADParameters;->fn()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aeu:[B

    .line 102
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/AEADParameters;->kp()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOF:[B

    .line 104
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/AEADParameters;->iO()I

    move-result v7

    .line 105
    const/16 v0, 0x20

    if-lt v7, v0, :cond_0

    const/16 v0, 0x80

    if-gt v7, v0, :cond_0

    rem-int/lit8 v0, v7, 0x8

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for MAC size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    div-int/lit8 v0, v7, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    .line 111
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/AEADParameters;->ko()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v5

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 115
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v6, v0

    .line 117
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aeu:[B

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOF:[B

    .line 119
    const/16 v0, 0x10

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    .line 120
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v5, v0

    .line 121
    goto :goto_0

    .line 124
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to GCM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :goto_0
    if-eqz p1, :cond_4

    const/16 v6, 0x10

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    add-int/lit8 v6, v0, 0x10

    .line 128
    :goto_1
    new-array v0, v6, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOP:[B

    .line 130
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aeu:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aeu:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 132
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV must be at least 1 byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_6
    if-eqz v5, :cond_7

    .line 141
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v5}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 143
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aFR:[B

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aFR:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aFR:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 147
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOU:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aFR:[B

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOV:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

    goto :goto_2

    .line 150
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aFR:[B

    if-nez v0, :cond_8

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key must be specified in initial init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_8
    :goto_2
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOW:[B

    .line 157
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aeu:[B

    array-length v0, v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_9

    .line 159
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aeu:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOW:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aeu:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOW:[B

    const/4 v1, 0x1

    const/16 v2, 0xf

    aput-byte v1, v0, v2

    goto :goto_3

    .line 164
    :cond_9
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOW:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aeu:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aeu:[B

    array-length v2, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ʻ([B[BI)V

    .line 165
    const/16 v0, 0x10

    new-array v7, v0, [B

    .line 166
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aeu:[B

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    const/16 v2, 0x8

    invoke-static {v0, v1, v7, v2}, Lorg/spongycastle/util/Pack;->ʻ(J[BI)V

    .line 167
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOW:[B

    invoke-direct {p0, v0, v7}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ͺ([B[B)V

    .line 170
    :goto_3
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aGd:[B

    .line 171
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOX:[B

    .line 172
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOY:[B

    .line 173
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPb:[B

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    .line 175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPd:J

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPe:J

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOW:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOZ:[B

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEU:I

    .line 179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPa:J

    .line 181
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOF:[B

    if-eqz v0, :cond_a

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOF:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ᵔ([BII)V

    .line 185
    :cond_a
    return-void
.end method

.method public ˋ([BII[BI)I
    .locals 5

    .line 281
    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 283
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    const/4 v3, 0x0

    .line 287
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_2

    .line 289
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOP:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEU:I

    add-int v2, p2, v4

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 290
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEU:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEU:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOP:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 292
    add-int v0, p5, v3

    invoke-direct {p0, p4, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ᴵ([BI)V

    .line 293
    add-int/lit8 v3, v3, 0x10

    .line 287
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 297
    :cond_2
    return v3
.end method

.method public ء(I)I
    .locals 2

    .line 206
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEU:I

    add-int v1, p1, v0

    .line 207
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aEW:Z

    if-nez v0, :cond_1

    .line 209
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    if-ge v1, v0, :cond_0

    .line 211
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aNz:I

    sub-int/2addr v1, v0

    .line 215
    :cond_1
    rem-int/lit8 v0, v1, 0x10

    sub-int v0, v1, v0

    return v0
.end method

.method public ᵔ([BII)V
    .locals 5

    .line 232
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_1

    .line 234
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPb:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    add-int v2, p2, v4

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 235
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aOX:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPb:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ͺ([B[B)V

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPc:I

    .line 240
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPd:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->aPd:J

    .line 232
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 243
    :cond_1
    return-void
.end method
