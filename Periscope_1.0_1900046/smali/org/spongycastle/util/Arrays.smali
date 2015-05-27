.class public final Lorg/spongycastle/util/Arrays;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static copyOf([BI)[B
    .locals 4

    .line 606
    new-array v3, p1, [B

    .line 608
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 610
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 614
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    :goto_0
    return-object v3
.end method

.method public static copyOf([II)[I
    .locals 4

    .line 638
    new-array v3, p1, [I

    .line 640
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 642
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 646
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    :goto_0
    return-object v3
.end method

.method public static copyOf([JI)[J
    .locals 4

    .line 654
    new-array v3, p1, [J

    .line 656
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 658
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 662
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    :goto_0
    return-object v3
.end method

.method public static copyOfRange([BII)[B
    .locals 4

    .line 697
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->ﹲ(II)I

    move-result v2

    .line 699
    new-array v3, v2, [B

    .line 701
    array-length v0, p0

    sub-int/2addr v0, p1

    if-ge v0, v2, :cond_0

    .line 703
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 707
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 710
    :goto_0
    return-object v3
.end method

.method public static copyOfRange([III)[I
    .locals 4

    .line 715
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->ﹲ(II)I

    move-result v2

    .line 717
    new-array v3, v2, [I

    .line 719
    array-length v0, p0

    sub-int/2addr v0, p1

    if-ge v0, v2, :cond_0

    .line 721
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 725
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 728
    :goto_0
    return-object v3
.end method

.method public static copyOfRange([JII)[J
    .locals 4

    .line 733
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->ﹲ(II)I

    move-result v2

    .line 735
    new-array v3, v2, [J

    .line 737
    array-length v0, p0

    sub-int/2addr v0, p1

    if-ge v0, v2, :cond_0

    .line 739
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 743
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    :goto_0
    return-object v3
.end method

.method public static fill([BB)V
    .locals 2

    .line 262
    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 264
    aput-byte p1, p0, v1

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method

.method public static fill([JJ)V
    .locals 2

    .line 282
    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 284
    aput-wide p1, p0, v1

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    :cond_0
    return-void
.end method

.method public static fill([SS)V
    .locals 2

    .line 292
    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 294
    aput-short p1, p0, v1

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method public static hashCode([B)I
    .locals 3

    .line 310
    if-nez p0, :cond_0

    .line 312
    const/4 v0, 0x0

    return v0

    .line 315
    :cond_0
    array-length v1, p0

    .line 316
    add-int/lit8 v2, v1, 0x1

    .line 318
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 320
    mul-int/lit16 v2, v2, 0x101

    .line 321
    aget-byte v0, p0, v1

    xor-int/2addr v2, v0

    goto :goto_0

    .line 324
    :cond_1
    return v2
.end method

.method public static hashCode([C)I
    .locals 3

    .line 348
    if-nez p0, :cond_0

    .line 350
    const/4 v0, 0x0

    return v0

    .line 353
    :cond_0
    array-length v1, p0

    .line 354
    add-int/lit8 v2, v1, 0x1

    .line 356
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 358
    mul-int/lit16 v2, v2, 0x101

    .line 359
    aget-char v0, p0, v1

    xor-int/2addr v2, v0

    goto :goto_0

    .line 362
    :cond_1
    return v2
.end method

.method public static hashCode([I)I
    .locals 3

    .line 379
    if-nez p0, :cond_0

    .line 381
    const/4 v0, 0x0

    return v0

    .line 384
    :cond_0
    array-length v1, p0

    .line 385
    add-int/lit8 v2, v1, 0x1

    .line 387
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 389
    mul-int/lit16 v2, v2, 0x101

    .line 390
    aget v0, p0, v1

    xor-int/2addr v2, v0

    goto :goto_0

    .line 393
    :cond_1
    return v2
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 3

    .line 460
    if-nez p0, :cond_0

    .line 462
    const/4 v0, 0x0

    return v0

    .line 465
    :cond_0
    array-length v1, p0

    .line 466
    add-int/lit8 v2, v1, 0x1

    .line 468
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 470
    mul-int/lit16 v2, v2, 0x101

    .line 471
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v2, v0

    goto :goto_0

    .line 474
    :cond_1
    return v2
.end method

.method public static hashCode([S)I
    .locals 4

    .line 441
    if-nez p0, :cond_0

    .line 443
    const/4 v0, 0x0

    return v0

    .line 446
    :cond_0
    array-length v2, p0

    .line 447
    add-int/lit8 v3, v2, 0x1

    .line 449
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 451
    mul-int/lit16 v3, v3, 0x101

    .line 452
    aget-short v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr v3, v0

    goto :goto_0

    .line 455
    :cond_1
    return v3
.end method

.method public static ʳ([B[B)[B
    .locals 3

    .line 492
    if-nez p0, :cond_0

    .line 494
    const/4 v0, 0x0

    return-object v0

    .line 496
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_2

    .line 498
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0

    .line 500
    :cond_2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    return-object p1
.end method

.method public static ʾ([II)Z
    .locals 2

    .line 248
    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 250
    aget v0, p0, v1

    if-ne v0, p1, :cond_0

    .line 252
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ʿ([J)[J
    .locals 4

    .line 553
    if-nez p0, :cond_0

    .line 555
    const/4 v0, 0x0

    return-object v0

    .line 557
    :cond_0
    array-length v0, p0

    new-array v3, v0, [J

    .line 559
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    return-object v3
.end method

.method public static ˊ([C[C)Z
    .locals 3

    .line 49
    if-ne p0, p1, :cond_0

    .line 51
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 56
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_2
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 61
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_3
    const/4 v2, 0x0

    :goto_0
    array-length v0, p0

    if-eq v2, v0, :cond_5

    .line 66
    aget-char v0, p0, v2

    aget-char v1, p1, v2

    if-eq v0, v1, :cond_4

    .line 68
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public static ˊ([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 4

    .line 593
    if-nez p0, :cond_0

    .line 595
    const/4 v0, 0x0

    return-object v0

    .line 597
    :cond_0
    array-length v0, p0

    new-array v3, v0, [Ljava/math/BigInteger;

    .line 599
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    return-object v3
.end method

.method public static ˊ([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .locals 4

    .line 670
    new-array v3, p1, [Ljava/math/BigInteger;

    .line 672
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 674
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 678
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    :goto_0
    return-object v3
.end method

.method public static ˊ([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .locals 4

    .line 751
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->ﹲ(II)I

    move-result v2

    .line 753
    new-array v3, v2, [Ljava/math/BigInteger;

    .line 755
    array-length v0, p0

    sub-int/2addr v0, p1

    if-ge v0, v2, :cond_0

    .line 757
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 761
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    :goto_0
    return-object v3
.end method

.method public static ˊ([[B)[[B
    .locals 3

    .line 506
    if-nez p0, :cond_0

    .line 508
    const/4 v0, 0x0

    return-object v0

    .line 511
    :cond_0
    array-length v0, p0

    new-array v1, v0, [[B

    .line 513
    const/4 v2, 0x0

    :goto_0
    array-length v0, v1

    if-eq v2, v0, :cond_1

    .line 515
    aget-object v0, p0, v2

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    aput-object v0, v1, v2

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 518
    :cond_1
    return-object v1
.end method

.method public static ˋ([III)I
    .locals 3

    .line 398
    if-nez p0, :cond_0

    .line 400
    const/4 v0, 0x0

    return v0

    .line 403
    :cond_0
    move v1, p2

    .line 404
    add-int/lit8 v2, v1, 0x1

    .line 406
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 408
    mul-int/lit16 v2, v2, 0x101

    .line 409
    add-int v0, p1, v1

    aget v0, p0, v0

    xor-int/2addr v2, v0

    goto :goto_0

    .line 412
    :cond_1
    return v2
.end method

.method public static ˋ([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5

    .line 204
    if-ne p0, p1, :cond_0

    .line 206
    const/4 v0, 0x1

    return v0

    .line 208
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 210
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 212
    :cond_2
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 214
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_3
    const/4 v2, 0x0

    :goto_0
    array-length v0, p0

    if-eq v2, v0, :cond_6

    .line 218
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    .line 219
    if-nez v3, :cond_4

    .line 221
    if-eqz v4, :cond_5

    .line 223
    const/4 v0, 0x0

    return v0

    .line 226
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 228
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static ˋ([SS)Z
    .locals 2

    .line 236
    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 238
    aget-short v0, p0, v1

    if-ne v0, p1, :cond_0

    .line 240
    const/4 v0, 0x1

    return v0

    .line 236
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ˋ([BB)[B
    .locals 4

    .line 914
    if-nez p0, :cond_0

    .line 916
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    return-object v0

    .line 919
    :cond_0
    array-length v2, p0

    .line 920
    add-int/lit8 v0, v2, 0x1

    new-array v3, v0, [B

    .line 921
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 922
    const/4 v0, 0x0

    aput-byte p1, v3, v0

    .line 923
    return-object v3
.end method

.method public static ˋ([[[B)[[[B
    .locals 3

    .line 523
    if-nez p0, :cond_0

    .line 525
    const/4 v0, 0x0

    return-object v0

    .line 528
    :cond_0
    array-length v0, p0

    new-array v1, v0, [[[B

    .line 530
    const/4 v2, 0x0

    :goto_0
    array-length v0, v1

    if-eq v2, v0, :cond_1

    .line 532
    aget-object v0, p0, v2

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->ˊ([[B)[[B

    move-result-object v0

    aput-object v0, v1, v2

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_1
    return-object v1
.end method

.method public static ˎ([[S)I
    .locals 4

    .line 429
    const/4 v2, 0x0

    .line 431
    const/4 v3, 0x0

    :goto_0
    array-length v0, p0

    if-eq v3, v0, :cond_0

    .line 433
    mul-int/lit16 v0, v2, 0x101

    aget-object v1, p0, v3

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([S)I

    move-result v1

    add-int v2, v0, v1

    .line 431
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    :cond_0
    return v2
.end method

.method public static ˎ([[[S)I
    .locals 4

    .line 417
    const/4 v2, 0x0

    .line 419
    const/4 v3, 0x0

    :goto_0
    array-length v0, p0

    if-eq v3, v0, :cond_0

    .line 421
    mul-int/lit16 v0, v2, 0x101

    aget-object v1, p0, v3

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->ˎ([[S)I

    move-result v1

    add-int v2, v0, v1

    .line 419
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 424
    :cond_0
    return v2
.end method

.method public static ˎ([B[B[B[B)[B
    .locals 4

    .line 866
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 868
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v3, v0, [B

    .line 870
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 871
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 872
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    const/4 v2, 0x0

    invoke-static {p3, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 875
    return-object v3

    .line 877
    :cond_0
    if-nez p3, :cond_1

    .line 879
    invoke-static {p0, p1, p2}, Lorg/spongycastle/util/Arrays;->ˏ([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 881
    :cond_1
    if-nez p2, :cond_2

    .line 883
    invoke-static {p0, p1, p3}, Lorg/spongycastle/util/Arrays;->ˏ([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 885
    :cond_2
    if-nez p1, :cond_3

    .line 887
    invoke-static {p0, p2, p3}, Lorg/spongycastle/util/Arrays;->ˏ([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 891
    :cond_3
    invoke-static {p1, p2, p3}, Lorg/spongycastle/util/Arrays;->ˏ([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static ˏ([J[J)Z
    .locals 5

    .line 176
    if-ne p0, p1, :cond_0

    .line 178
    const/4 v0, 0x1

    return v0

    .line 181
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 183
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 186
    :cond_2
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 188
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_3
    const/4 v4, 0x0

    :goto_0
    array-length v0, p0

    if-eq v4, v0, :cond_5

    .line 193
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 195
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 199
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public static ˏ([B[B[B)[B
    .locals 4

    .line 844
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 846
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v3, v0, [B

    .line 848
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 852
    return-object v3

    .line 854
    :cond_0
    if-nez p1, :cond_1

    .line 856
    invoke-static {p0, p2}, Lorg/spongycastle/util/Arrays;->ﹶ([B[B)[B

    move-result-object v0

    return-object v0

    .line 860
    :cond_1
    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->ﹶ([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static І([B)[B
    .locals 4

    .line 479
    if-nez p0, :cond_0

    .line 481
    const/4 v0, 0x0

    return-object v0

    .line 483
    :cond_0
    array-length v0, p0

    new-array v3, v0, [B

    .line 485
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    return-object v3
.end method

.method public static ՙ([I[I)Z
    .locals 3

    .line 146
    if-ne p0, p1, :cond_0

    .line 148
    const/4 v0, 0x1

    return v0

    .line 151
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 153
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 156
    :cond_2
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 158
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_3
    const/4 v2, 0x0

    :goto_0
    array-length v0, p0

    if-eq v2, v0, :cond_5

    .line 163
    aget v0, p0, v2

    aget v1, p1, v2

    if-eq v0, v1, :cond_4

    .line 165
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public static י([I)[I
    .locals 4

    .line 540
    if-nez p0, :cond_0

    .line 542
    const/4 v0, 0x0

    return-object v0

    .line 544
    :cond_0
    array-length v0, p0

    new-array v3, v0, [I

    .line 546
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    return-object v3
.end method

.method public static ۥ([B)[B
    .locals 4

    .line 956
    if-nez p0, :cond_0

    .line 958
    const/4 v0, 0x0

    return-object v0

    .line 961
    :cond_0
    const/4 v1, 0x0

    array-length v2, p0

    .line 962
    new-array v3, v2, [B

    .line 964
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 966
    move v0, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, p0, v0

    aput-byte v0, v3, v2

    goto :goto_0

    .line 969
    :cond_1
    return-object v3
.end method

.method public static ᐝ([J[J)[J
    .locals 3

    .line 566
    if-nez p0, :cond_0

    .line 568
    const/4 v0, 0x0

    return-object v0

    .line 570
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_2

    .line 572
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->ʿ([J)[J

    move-result-object v0

    return-object v0

    .line 574
    :cond_2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    return-object p1
.end method

.method public static ᐝ([S)[S
    .locals 4

    .line 580
    if-nez p0, :cond_0

    .line 582
    const/4 v0, 0x0

    return-object v0

    .line 584
    :cond_0
    array-length v0, p0

    new-array v3, v0, [S

    .line 586
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    return-object v3
.end method

.method private static ﹲ(II)I
    .locals 4

    .line 769
    sub-int v2, p1, p0

    .line 770
    if-gez v2, :cond_0

    .line 772
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 773
    const-string v0, " > "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 774
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_0
    return v2
.end method

.method public static ﹶ([B[B)[B
    .locals 4

    .line 823
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 825
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v3, v0, [B

    .line 827
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 828
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    return-object v3

    .line 832
    :cond_0
    if-eqz p1, :cond_1

    .line 834
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0

    .line 838
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static ﹺ([B[B)Z
    .locals 3

    .line 79
    if-ne p0, p1, :cond_0

    .line 81
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 86
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_2
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 91
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_3
    const/4 v2, 0x0

    :goto_0
    array-length v0, p0

    if-eq v2, v0, :cond_5

    .line 96
    aget-byte v0, p0, v2

    aget-byte v1, p1, v2

    if-eq v0, v1, :cond_4

    .line 98
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public static ｰ([B[B)Z
    .locals 4

    .line 117
    if-ne p0, p1, :cond_0

    .line 119
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 124
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_2
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 129
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_3
    const/4 v2, 0x0

    .line 134
    const/4 v3, 0x0

    :goto_0
    array-length v0, p0

    if-eq v3, v0, :cond_4

    .line 136
    aget-byte v0, p0, v3

    aget-byte v1, p1, v3

    xor-int/2addr v0, v1

    or-int/2addr v2, v0

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_4
    if-nez v2, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
