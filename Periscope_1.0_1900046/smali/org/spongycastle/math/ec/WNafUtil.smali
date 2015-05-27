.class public abstract Lorg/spongycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final abo:[B

.field private static final bdc:[I

.field private static final ᔆ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/WNafUtil;->bdc:[I

    .line 11
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/math/ec/WNafUtil;->abo:[B

    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/spongycastle/math/ec/WNafUtil;->ᔆ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʻ(I[I)I
    .locals 2

    .line 334
    const/4 v1, 0x0

    .line 335
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 337
    aget v0, p1, v1

    if-ge p0, v0, :cond_0

    .line 339
    goto :goto_1

    .line 335
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x2

    return v0
.end method

.method public static ʾ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .locals 2

    .line 301
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/WNafUtil;->ˋ(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/math/ec/ECPoint;IZLorg/spongycastle/math/ec/ECPointMap;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 10

    .line 348
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 349
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/ec/WNafUtil;->ˊ(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v2

    .line 351
    invoke-interface {p3, p0}, Lorg/spongycastle/math/ec/ECPointMap;->ͺ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 352
    const-string v0, "bc_wnaf"

    invoke-virtual {v1, v3, v0}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/WNafUtil;->ˋ(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v4

    .line 354
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->qh()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 355
    if-eqz v5, :cond_0

    .line 357
    invoke-interface {p3, v5}, Lorg/spongycastle/math/ec/ECPointMap;->ͺ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 358
    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->ι(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 361
    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 362
    array-length v0, v6

    new-array v7, v0, [Lorg/spongycastle/math/ec/ECPoint;

    .line 363
    const/4 v8, 0x0

    :goto_0
    array-length v0, v6

    if-ge v8, v0, :cond_1

    .line 365
    aget-object v0, v6, v8

    invoke-interface {p3, v0}, Lorg/spongycastle/math/ec/ECPointMap;->ͺ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v7, v8

    .line 363
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {v4, v7}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->ˎ([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 369
    if-eqz p2, :cond_3

    .line 371
    array-length v0, v7

    new-array v8, v0, [Lorg/spongycastle/math/ec/ECPoint;

    .line 372
    const/4 v9, 0x0

    :goto_1
    array-length v0, v8

    if-ge v9, v0, :cond_2

    .line 374
    aget-object v0, v7, v9

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pT()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v8, v9

    .line 372
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 376
    :cond_2
    invoke-virtual {v4, v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->ˏ([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 379
    :cond_3
    const-string v0, "bc_wnaf"

    invoke-virtual {v1, v3, v0, v4}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V

    .line 381
    return-object v3
.end method

.method public static ˊ(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .locals 9

    .line 386
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 387
    const-string v0, "bc_wnaf"

    invoke-virtual {v2, p0, v0}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/WNafUtil;->ˋ(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v3

    .line 389
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 390
    if-nez v4, :cond_0

    .line 392
    const/4 v0, 0x1

    new-array v4, v0, [Lorg/spongycastle/math/ec/ECPoint;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    .line 395
    :cond_0
    array-length v5, v4

    .line 396
    add-int/lit8 v0, p1, -0x2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    shl-int v6, v1, v0

    .line 398
    if-ge v5, v6, :cond_4

    .line 400
    invoke-static {v4, v6}, Lorg/spongycastle/math/ec/WNafUtil;->ˊ([Lorg/spongycastle/math/ec/ECPoint;I)[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 401
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    .line 403
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pV()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    goto :goto_1

    .line 407
    :cond_1
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->qh()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 408
    if-nez v7, :cond_2

    .line 410
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 411
    invoke-virtual {v3, v7}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->ι(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 414
    :cond_2
    move v8, v5

    :goto_0
    if-ge v8, v6, :cond_3

    .line 420
    add-int/lit8 v0, v8, -0x1

    aget-object v0, v4, v0

    invoke-virtual {v7, v0}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v4, v8

    .line 414
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 427
    :cond_3
    :goto_1
    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/ECCurve;->ˊ([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 430
    :cond_4
    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->ˎ([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 432
    if-eqz p2, :cond_8

    .line 434
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->qg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 437
    if-nez v7, :cond_5

    .line 439
    const/4 v8, 0x0

    .line 440
    new-array v7, v6, [Lorg/spongycastle/math/ec/ECPoint;

    goto :goto_2

    .line 444
    :cond_5
    array-length v8, v7

    .line 445
    if-ge v8, v6, :cond_6

    .line 447
    invoke-static {v7, v6}, Lorg/spongycastle/math/ec/WNafUtil;->ˊ([Lorg/spongycastle/math/ec/ECPoint;I)[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 451
    :cond_6
    :goto_2
    if-ge v8, v6, :cond_7

    .line 453
    aget-object v0, v4, v8

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pT()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v7, v8

    .line 454
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 457
    :cond_7
    invoke-virtual {v3, v7}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->ˏ([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 460
    :cond_8
    const-string v0, "bc_wnaf"

    invoke-virtual {v2, p0, v0, v3}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V

    .line 462
    return-object v3
.end method

.method private static ˊ([Lorg/spongycastle/math/ec/ECPoint;I)[Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .line 481
    new-array v3, p1, [Lorg/spongycastle/math/ec/ECPoint;

    .line 482
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    return-object v3
.end method

.method public static ˋ(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .locals 1

    .line 306
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_0

    .line 308
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/math/ec/WNafPreCompInfo;

    return-object v0

    .line 311
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/WNafPreCompInfo;-><init>()V

    return-object v0
.end method

.method public static ˎ(ILjava/math/BigInteger;)[I
    .locals 11

    .line 59
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 61
    invoke-static {p1}, Lorg/spongycastle/math/ec/WNafUtil;->ـ(Ljava/math/BigInteger;)[I

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    const/16 v0, 0x10

    if-le p0, v0, :cond_2

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 16]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'k\' must have bitlength < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_4

    .line 74
    sget-object v0, Lorg/spongycastle/math/ec/WNafUtil;->ᔆ:[I

    return-object v0

    .line 77
    :cond_4
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [I

    .line 80
    const/4 v0, 0x1

    shl-int v3, v0, p0

    .line 81
    add-int/lit8 v4, v3, -0x1

    .line 82
    ushr-int/lit8 v5, v3, 0x1

    .line 84
    const/4 v6, 0x0

    .line 85
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 87
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v8, v0, :cond_a

    .line 89
    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-ne v0, v6, :cond_5

    .line 91
    add-int/lit8 v8, v8, 0x1

    .line 92
    goto :goto_0

    .line 95
    :cond_5
    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    and-int v9, v0, v4

    .line 98
    if-eqz v6, :cond_6

    .line 100
    add-int/lit8 v9, v9, 0x1

    .line 103
    :cond_6
    and-int v0, v9, v5

    if-eqz v0, :cond_7

    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    .line 104
    :goto_1
    if-eqz v6, :cond_8

    .line 106
    sub-int/2addr v9, v3

    .line 109
    :cond_8
    if-lez v7, :cond_9

    add-int/lit8 v10, v8, -0x1

    goto :goto_2

    :cond_9
    move v10, v8

    .line 110
    :goto_2
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v1, v9, 0x10

    or-int/2addr v1, v10

    aput v1, v2, v0

    .line 111
    move v8, p0

    .line 112
    goto :goto_0

    .line 115
    :cond_a
    array-length v0, v2

    if-le v0, v7, :cond_b

    .line 117
    invoke-static {v2, v7}, Lorg/spongycastle/math/ec/WNafUtil;->ᐝ([II)[I

    move-result-object v2

    .line 120
    :cond_b
    return-object v2
.end method

.method public static ˏ(ILjava/math/BigInteger;)[B
    .locals 10

    .line 226
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 228
    invoke-static {p1}, Lorg/spongycastle/math/ec/WNafUtil;->ᐧ(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0

    .line 231
    :cond_0
    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    const/16 v0, 0x8

    if-le p0, v0, :cond_2

    .line 233
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 8]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_3

    .line 237
    sget-object v0, Lorg/spongycastle/math/ec/WNafUtil;->abo:[B

    return-object v0

    .line 240
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [B

    .line 243
    const/4 v0, 0x1

    shl-int v3, v0, p0

    .line 244
    add-int/lit8 v4, v3, -0x1

    .line 245
    ushr-int/lit8 v5, v3, 0x1

    .line 247
    const/4 v6, 0x0

    .line 248
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 250
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v8, v0, :cond_9

    .line 252
    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-ne v0, v6, :cond_4

    .line 254
    add-int/lit8 v8, v8, 0x1

    .line 255
    goto :goto_0

    .line 258
    :cond_4
    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    and-int v9, v0, v4

    .line 261
    if-eqz v6, :cond_5

    .line 263
    add-int/lit8 v9, v9, 0x1

    .line 266
    :cond_5
    and-int v0, v9, v5

    if-eqz v0, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    .line 267
    :goto_1
    if-eqz v6, :cond_7

    .line 269
    sub-int/2addr v9, v3

    .line 272
    :cond_7
    if-lez v7, :cond_8

    add-int/lit8 v0, v8, -0x1

    goto :goto_2

    :cond_8
    move v0, v8

    :goto_2
    add-int/2addr v7, v0

    .line 273
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    int-to-byte v1, v9

    aput-byte v1, v2, v0

    .line 274
    move v8, p0

    .line 275
    goto :goto_0

    .line 278
    :cond_9
    array-length v0, v2

    if-le v0, v7, :cond_a

    .line 280
    invoke-static {v2, v7}, Lorg/spongycastle/math/ec/WNafUtil;->ˮ([BI)[B

    move-result-object v2

    .line 283
    :cond_a
    return-object v2
.end method

.method private static ˮ([BI)[B
    .locals 4

    .line 467
    new-array v3, p1, [B

    .line 468
    array-length v0, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    return-object v3
.end method

.method public static ـ(Ljava/math/BigInteger;)[I
    .locals 11

    .line 16
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'k\' must have bitlength < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    .line 22
    sget-object v0, Lorg/spongycastle/math/ec/WNafUtil;->ᔆ:[I

    return-object v0

    .line 25
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 28
    shr-int/lit8 v0, v3, 0x1

    new-array v4, v0, [I

    .line 30
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 32
    add-int/lit8 v6, v3, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x1

    :goto_0
    if-ge v9, v6, :cond_4

    .line 35
    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 37
    add-int/lit8 v8, v8, 0x1

    .line 38
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {p0, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v10, -0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x1

    .line 42
    :goto_1
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v1, v10, 0x10

    or-int/2addr v1, v8

    aput v1, v4, v0

    .line 43
    const/4 v8, 0x1

    .line 44
    add-int/lit8 v9, v9, 0x1

    .line 33
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 47
    :cond_4
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    const/high16 v1, 0x10000

    or-int/2addr v1, v8

    aput v1, v4, v0

    .line 49
    array-length v0, v4

    if-le v0, v7, :cond_5

    .line 51
    invoke-static {v4, v7}, Lorg/spongycastle/math/ec/WNafUtil;->ᐝ([II)[I

    move-result-object v4

    .line 54
    :cond_5
    return-object v4
.end method

.method private static ᐝ([II)[I
    .locals 4

    .line 474
    new-array v3, p1, [I

    .line 475
    array-length v0, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    return-object v3
.end method

.method public static ᐧ(Ljava/math/BigInteger;)[B
    .locals 7

    .line 186
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 188
    sget-object v0, Lorg/spongycastle/math/ec/WNafUtil;->abo:[B

    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 194
    new-array v4, v3, [B

    .line 196
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 198
    const/4 v6, 0x1

    :goto_0
    if-ge v6, v3, :cond_3

    .line 200
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 203
    add-int/lit8 v6, v6, 0x1

    .line 198
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 207
    :cond_3
    add-int/lit8 v0, v3, -0x1

    const/4 v1, 0x1

    aput-byte v1, v4, v0

    .line 209
    return-object v4
.end method

.method public static ᐨ(Ljava/math/BigInteger;)I
    .locals 3

    .line 288
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 294
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 296
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitCount()I

    move-result v0

    return v0
.end method

.method public static ﾌ(I)I
    .locals 1

    .line 322
    sget-object v0, Lorg/spongycastle/math/ec/WNafUtil;->bdc:[I

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/WNafUtil;->ʻ(I[I)I

    move-result v0

    return v0
.end method
