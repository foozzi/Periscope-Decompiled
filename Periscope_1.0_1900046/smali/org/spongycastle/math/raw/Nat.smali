.class public abstract Lorg/spongycastle/math/raw/Nat;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ċ(I)[I
    .locals 1

    .line 211
    new-array v0, p0, [I

    return-object v0
.end method

.method public static ʻ(II[I)I
    .locals 8

    .line 183
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long v6, v0, v2

    .line 184
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 185
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 186
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static ʻ(I[II[II)I
    .locals 9

    .line 973
    const-wide/16 v6, 0x0

    .line 974
    const/4 v8, 0x0

    :goto_0
    if-ge v8, p0, :cond_0

    .line 976
    add-int v0, p4, v8

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int v2, p2, v8

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 977
    add-int v0, p4, v8

    long-to-int v1, v6

    aput v1, p3, v0

    .line 978
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 974
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 980
    :cond_0
    long-to-int v0, v6

    return v0
.end method

.method public static ʻ(I[I[I)I
    .locals 4

    .line 346
    const/4 v2, 0x0

    .line 347
    :goto_0
    if-ge v2, p0, :cond_2

    .line 349
    aget v0, p1, v2

    add-int/lit8 v3, v0, 0x1

    .line 350
    aput v3, p2, v2

    .line 351
    add-int/lit8 v2, v2, 0x1

    .line 352
    if-eqz v3, :cond_1

    .line 354
    :goto_1
    if-ge v2, p0, :cond_0

    .line 356
    aget v0, p1, v2

    aput v0, p2, v2

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 359
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 361
    :cond_1
    goto :goto_0

    .line 362
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static ʻ([II)I
    .locals 4

    .line 305
    if-nez p1, :cond_0

    .line 307
    const/4 v0, 0x0

    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 309
    :cond_0
    shr-int/lit8 v2, p1, 0x5

    .line 310
    if-ltz v2, :cond_1

    array-length v0, p0

    if-lt v2, v0, :cond_2

    .line 312
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 314
    :cond_2
    and-int/lit8 v3, p1, 0x1f

    .line 315
    aget v0, p0, v2

    ushr-int/2addr v0, v3

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static ʼ(II[I)I
    .locals 8

    .line 869
    const/4 v0, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long v6, v0, v2

    .line 870
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 871
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 872
    const/4 v0, 0x1

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 873
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 874
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 875
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ˋ(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static ʼ(I[I[I)I
    .locals 9

    .line 961
    const-wide/16 v6, 0x0

    .line 962
    const/4 v8, 0x0

    :goto_0
    if-ge v8, p0, :cond_0

    .line 964
    aget v0, p2, v8

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v2, p1, v8

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 965
    long-to-int v0, v6

    aput v0, p2, v8

    .line 966
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 962
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 968
    :cond_0
    long-to-int v0, v6

    return v0
.end method

.method public static ʾ(I[I)I
    .locals 3

    .line 334
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    .line 336
    aget v0, p1, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v2

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x0

    return v0

    .line 334
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ʿ(I[I)Z
    .locals 3

    .line 393
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 395
    const/4 v0, 0x0

    return v0

    .line 397
    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-ge v2, p0, :cond_2

    .line 399
    aget v0, p1, v2

    if-eqz v0, :cond_1

    .line 401
    const/4 v0, 0x0

    return v0

    .line 397
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static ˈ(I[I)Z
    .locals 2

    .line 409
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 411
    aget v0, p1, v1

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x0

    return v0

    .line 409
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ˉ(I[I)Ljava/math/BigInteger;
    .locals 5

    .line 1019
    shl-int/lit8 v0, p0, 0x2

    new-array v2, v0, [B

    .line 1020
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_1

    .line 1022
    aget v4, p1, v3

    .line 1023
    if-eqz v4, :cond_0

    .line 1025
    add-int/lit8 v0, p0, -0x1

    sub-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v4, v2, v0}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 1020
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1028
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static ˊ(II[II)I
    .locals 8

    .line 166
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v2, p2, p3

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long v6, v0, v2

    .line 167
    long-to-int v0, v6

    aput v0, p2, p3

    .line 168
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 169
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static ˊ(II[II[II)I
    .locals 11

    .line 510
    const-wide/16 v6, 0x0

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 511
    const/4 v10, 0x0

    .line 514
    :cond_0
    add-int v0, p3, v10

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    mul-long/2addr v0, v8

    add-int v2, p5, v10

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 515
    add-int v0, p5, v10

    long-to-int v1, v6

    aput v1, p4, v0

    .line 516
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 518
    add-int/lit8 v10, v10, 0x1

    if-lt v10, p0, :cond_0

    .line 519
    long-to-int v0, v6

    return v0
.end method

.method public static ˊ(II[II[I[II)I
    .locals 13

    .line 468
    const-wide/16 v6, 0x0

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    move/from16 v0, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 469
    const/4 v12, 0x0

    .line 472
    :cond_0
    aget v0, p2, v12

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    mul-long/2addr v0, v8

    aget v2, p4, v12

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    mul-long/2addr v2, v10

    add-long/2addr v0, v2

    add-int v2, p6, v12

    aget v2, p5, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 473
    add-int v0, p6, v12

    long-to-int v1, v6

    aput v1, p5, v0

    .line 474
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 476
    add-int/lit8 v12, v12, 0x1

    if-lt v12, p0, :cond_0

    .line 477
    long-to-int v0, v6

    return v0
.end method

.method public static ˊ(I[III)I
    .locals 4

    .line 381
    move v3, p3

    :goto_0
    if-ge v3, p0, :cond_1

    .line 383
    add-int v1, p2, v3

    aget v0, p1, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v1

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x0

    return v0

    .line 381
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ˊ(I[IIII[II)I
    .locals 5

    .line 628
    move v3, p0

    .line 629
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 631
    add-int v0, p2, v3

    aget v4, p1, v0

    .line 632
    add-int v0, p6, v3

    ushr-int v1, v4, p3

    neg-int v2, p3

    shl-int v2, p4, v2

    or-int/2addr v1, v2

    aput v1, p5, v0

    .line 633
    move p4, v4

    .line 634
    goto :goto_0

    .line 635
    :cond_0
    neg-int v0, p3

    shl-int v0, p4, v0

    return v0
.end method

.method public static ˊ(I[III[I)I
    .locals 4

    .line 721
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 723
    aget v3, p1, v2

    .line 724
    shl-int v0, v3, p2

    neg-int v1, p2

    ushr-int v1, p3, v1

    or-int/2addr v0, v1

    aput v0, p4, v2

    .line 725
    move p3, v3

    .line 721
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 727
    :cond_0
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static ˊ(I[III[II)I
    .locals 5

    .line 685
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_0

    .line 687
    add-int v0, p2, v3

    aget v4, p1, v0

    .line 688
    add-int v0, p5, v3

    shl-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v2, p3, 0x1f

    or-int/2addr v1, v2

    aput v1, p4, v0

    .line 689
    move p3, v4

    .line 685
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 691
    :cond_0
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static ˊ(I[II[I)I
    .locals 4

    .line 674
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 676
    aget v3, p1, v2

    .line 677
    shl-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v1, p2, 0x1f

    or-int/2addr v0, v1

    aput v0, p3, v2

    .line 678
    move p2, v3

    .line 674
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 680
    :cond_0
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static ˊ(I[I[I[I)I
    .locals 9

    .line 13
    const-wide/16 v6, 0x0

    .line 14
    const/4 v8, 0x0

    :goto_0
    if-ge v8, p0, :cond_0

    .line 16
    aget v0, p1, v8

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v2, p2, v8

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 17
    long-to-int v0, v6

    aput v0, p3, v8

    .line 18
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 14
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 20
    :cond_0
    long-to-int v0, v6

    return v0
.end method

.method public static ˋ(I[II)I
    .locals 3

    .line 250
    move v2, p2

    :goto_0
    if-ge v2, p0, :cond_1

    .line 252
    aget v0, p1, v2

    add-int/lit8 v0, v0, -0x1

    aput v0, p1, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 254
    const/4 v0, 0x0

    return v0

    .line 250
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static ˋ(I[III)I
    .locals 4

    .line 589
    move v2, p0

    .line 590
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 592
    aget v3, p1, v2

    .line 593
    ushr-int v0, v3, p2

    neg-int v1, p2

    shl-int v1, p3, v1

    or-int/2addr v0, v1

    aput v0, p1, v2

    .line 594
    move p3, v3

    .line 595
    goto :goto_0

    .line 596
    :cond_0
    neg-int v0, p2

    shl-int v0, p3, v0

    return v0
.end method

.method public static ˋ(I[I[I[I)I
    .locals 9

    .line 71
    const-wide/16 v6, 0x0

    .line 72
    const/4 v8, 0x0

    :goto_0
    if-ge v8, p0, :cond_0

    .line 74
    aget v0, p1, v8

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v2, p2, v8

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    aget v2, p3, v8

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 75
    long-to-int v0, v6

    aput v0, p3, v8

    .line 76
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 72
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 78
    :cond_0
    long-to-int v0, v6

    return v0
.end method

.method public static ˌ(I[I)V
    .locals 2

    .line 1033
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 1035
    const/4 v0, 0x0

    aput v0, p1, v1

    .line 1033
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1037
    :cond_0
    return-void
.end method

.method public static ˎ(I[II)I
    .locals 3

    .line 368
    move v2, p2

    :goto_0
    if-ge v2, p0, :cond_1

    .line 370
    aget v0, p1, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v2

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x0

    return v0

    .line 368
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 375
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ˎ(I[III)I
    .locals 4

    .line 697
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 699
    aget v3, p1, v2

    .line 700
    shl-int v0, v3, p2

    neg-int v1, p2

    ushr-int v1, p3, v1

    or-int/2addr v0, v1

    aput v0, p1, v2

    .line 701
    move p3, v3

    .line 697
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    :cond_0
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static ˎ(I[I[I)I
    .locals 9

    .line 141
    const-wide/16 v6, 0x0

    .line 142
    const/4 v8, 0x0

    :goto_0
    if-ge v8, p0, :cond_0

    .line 144
    aget v0, p1, v8

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v2, p2, v8

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 145
    long-to-int v0, v6

    aput v0, p2, v8

    .line 146
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 148
    :cond_0
    long-to-int v0, v6

    return v0
.end method

.method public static ˎ(I[I[I[I)I
    .locals 9

    .line 821
    const-wide/16 v6, 0x0

    .line 822
    const/4 v8, 0x0

    :goto_0
    if-ge v8, p0, :cond_0

    .line 824
    aget v0, p1, v8

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v2, p2, v8

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 825
    long-to-int v0, v6

    aput v0, p3, v8

    .line 826
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 822
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 828
    :cond_0
    long-to-int v0, v6

    return v0
.end method

.method public static ˏ(I[II)I
    .locals 4

    .line 540
    move v2, p0

    .line 541
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 543
    aget v3, p1, v2

    .line 544
    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v1, p2, 0x1f

    or-int/2addr v0, v1

    aput v0, p1, v2

    .line 545
    move p2, v3

    .line 546
    goto :goto_0

    .line 547
    :cond_0
    shl-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static ˏ(I[I[I)Z
    .locals 3

    .line 275
    add-int/lit8 v2, p0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 277
    aget v0, p1, v2

    aget v1, p2, v2

    if-eq v0, v1, :cond_0

    .line 279
    const/4 v0, 0x0

    return v0

    .line 275
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 282
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ͺ(I[I)[I
    .locals 3

    .line 199
    new-array v2, p0, [I

    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    return-object v2
.end method

.method public static ᐝ(II[I)I
    .locals 8

    .line 49
    const/4 v0, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long v6, v0, v2

    .line 50
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 51
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 52
    const/4 v0, 0x1

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 53
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 54
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 55
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static ᐝ(I[II)I
    .locals 2

    .line 640
    move v0, p0

    .line 641
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 643
    aget v1, p1, v0

    .line 644
    aput p2, p1, v0

    .line 645
    move p2, v1

    .line 646
    goto :goto_0

    .line 647
    :cond_0
    return p2
.end method

.method public static ᐝ(I[II[II)I
    .locals 9

    .line 153
    const-wide/16 v6, 0x0

    .line 154
    const/4 v8, 0x0

    :goto_0
    if-ge v8, p0, :cond_0

    .line 156
    add-int v0, p2, v8

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int v2, p4, v8

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 157
    add-int v0, p4, v8

    long-to-int v1, v6

    aput v1, p3, v0

    .line 158
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 154
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 160
    :cond_0
    long-to-int v0, v6

    return v0
.end method

.method public static ᐝ(I[I[I)Z
    .locals 5

    .line 320
    add-int/lit8 v2, p0, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 322
    aget v0, p1, v2

    const/high16 v1, -0x80000000

    xor-int v3, v0, v1

    .line 323
    aget v0, p2, v2

    const/high16 v1, -0x80000000

    xor-int v4, v0, v1

    .line 324
    if-ge v3, v4, :cond_0

    .line 325
    const/4 v0, 0x0

    return v0

    .line 326
    :cond_0
    if-le v3, v4, :cond_1

    .line 327
    const/4 v0, 0x1

    return v0

    .line 320
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 329
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static ᐝ(ILjava/math/BigInteger;)[I
    .locals 5

    .line 287
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le v0, p0, :cond_1

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 292
    :cond_1
    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v2, v0, 0x5

    .line 293
    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v3

    .line 294
    const/4 v4, 0x0

    .line 295
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    aput v1, v3, v0

    .line 298
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    .line 300
    :cond_2
    return-object v3
.end method

.method public static ι(I[I)I
    .locals 3

    .line 216
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    .line 218
    aget v0, p1, v2

    add-int/lit8 v0, v0, -0x1

    aput v0, p1, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 220
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_1
    const/4 v0, -0x1

    return v0
.end method
