.class public Lorg/spongycastle/math/ec/ECAlgorithms;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʻ(Lorg/spongycastle/math/ec/ECCurve;)Z
    .locals 2

    .line 21
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pj()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/math/field/FiniteField;->qr()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ˊ(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3

    .line 117
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 118
    invoke-virtual {p0, v2}, Lorg/spongycastle/math/ec/ECCurve;->ʼ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Point must be on the same curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->ˏ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 5

    .line 64
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 65
    invoke-static {v3, p2}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p2

    .line 68
    instance-of v0, v3, Lorg/spongycastle/math/ec/ECCurve$F2m;

    if-eqz v0, :cond_0

    .line 70
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    move-object v4, v0

    .line 71
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint;->ˌ(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p2, p3}, Lorg/spongycastle/math/ec/ECPoint;->ˌ(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˎ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->po()Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    move-result-object v4

    .line 78
    instance-of v0, v4, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v0, :cond_1

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/spongycastle/math/ec/ECPoint;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    move-object v2, v4

    check-cast v2, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/spongycastle/math/ec/endo/GLVEndomorphism;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˎ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 84
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˋ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˎ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method static ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPointMap;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 18

    .line 263
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 265
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 266
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p3

    .line 268
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/WNafUtil;->ﾌ(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 270
    move-object/from16 v0, p0

    const/4 v1, 0x1

    move-object/from16 v2, p2

    invoke-static {v0, v8, v1, v2}, Lorg/spongycastle/math/ec/WNafUtil;->ˊ(Lorg/spongycastle/math/ec/ECPoint;IZLorg/spongycastle/math/ec/ECPointMap;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 271
    invoke-static/range {p0 .. p0}, Lorg/spongycastle/math/ec/WNafUtil;->ʾ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v10

    .line 272
    invoke-static {v9}, Lorg/spongycastle/math/ec/WNafUtil;->ʾ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v11

    .line 274
    if-eqz v6, :cond_2

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->qg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v12

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v12

    .line 275
    :goto_2
    if-eqz v7, :cond_3

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->qg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    goto :goto_3

    :cond_3
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    .line 276
    :goto_3
    if-eqz v6, :cond_4

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v14

    goto :goto_4

    :cond_4
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->qg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v14

    .line 277
    :goto_4
    if-eqz v7, :cond_5

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v15

    goto :goto_5

    :cond_5
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->qg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v15

    .line 279
    :goto_5
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Lorg/spongycastle/math/ec/WNafUtil;->ˏ(ILjava/math/BigInteger;)[B

    move-result-object v16

    .line 280
    move-object/from16 v0, p3

    invoke-static {v8, v0}, Lorg/spongycastle/math/ec/WNafUtil;->ˏ(ILjava/math/BigInteger;)[B

    move-result-object v17

    .line 282
    move-object v0, v12

    move-object v1, v14

    move-object/from16 v2, v16

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v5, v17

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ([Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B[Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method static ˊ([Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPointMap;[Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 15

    .line 391
    array-length v2, p0

    shl-int/lit8 v3, v2, 0x1

    .line 393
    new-array v4, v3, [Z

    .line 394
    new-array v5, v3, [Lorg/spongycastle/math/ec/WNafPreCompInfo;

    .line 395
    new-array v6, v3, [[B

    .line 397
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_2

    .line 399
    shl-int/lit8 v8, v7, 0x1

    add-int/lit8 v9, v8, 0x1

    .line 401
    aget-object v10, p2, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    aput-boolean v0, v4, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    .line 402
    aget-object v11, p2, v9

    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    aput-boolean v0, v4, v9

    invoke-virtual {v11}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v11

    .line 404
    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/WNafUtil;->ﾌ(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 406
    aget-object v13, p0, v7

    const/4 v0, 0x1

    move-object/from16 v1, p1

    invoke-static {v13, v12, v0, v1}, Lorg/spongycastle/math/ec/WNafUtil;->ˊ(Lorg/spongycastle/math/ec/ECPoint;IZLorg/spongycastle/math/ec/ECPointMap;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v14

    .line 407
    invoke-static {v13}, Lorg/spongycastle/math/ec/WNafUtil;->ʾ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    aput-object v0, v5, v8

    .line 408
    invoke-static {v14}, Lorg/spongycastle/math/ec/WNafUtil;->ʾ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    aput-object v0, v5, v9

    .line 409
    invoke-static {v12, v10}, Lorg/spongycastle/math/ec/WNafUtil;->ˏ(ILjava/math/BigInteger;)[B

    move-result-object v0

    aput-object v0, v6, v8

    .line 410
    invoke-static {v12, v11}, Lorg/spongycastle/math/ec/WNafUtil;->ˏ(ILjava/math/BigInteger;)[B

    move-result-object v0

    aput-object v0, v6, v9

    .line 397
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 413
    :cond_2
    invoke-static {v4, v5, v6}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ([Z[Lorg/spongycastle/math/ec/WNafPreCompInfo;[[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method static ˊ([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 9

    .line 340
    array-length v2, p0

    .line 341
    new-array v3, v2, [Z

    .line 342
    new-array v4, v2, [Lorg/spongycastle/math/ec/WNafPreCompInfo;

    .line 343
    new-array v5, v2, [[B

    .line 345
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    .line 347
    aget-object v7, p1, v6

    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    aput-boolean v0, v3, v6

    invoke-virtual {v7}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v7

    .line 349
    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/WNafUtil;->ﾌ(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 350
    aget-object v0, p0, v6

    const/4 v1, 0x1

    invoke-static {v0, v8, v1}, Lorg/spongycastle/math/ec/WNafUtil;->ˊ(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    aput-object v0, v4, v6

    .line 351
    invoke-static {v8, v7}, Lorg/spongycastle/math/ec/WNafUtil;->ˏ(ILjava/math/BigInteger;)[B

    move-result-object v0

    aput-object v0, v5, v6

    .line 345
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 354
    :cond_1
    invoke-static {v3, v4, v5}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ([Z[Lorg/spongycastle/math/ec/WNafPreCompInfo;[[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method static ˊ([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/spongycastle/math/ec/endo/GLVEndomorphism;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 11

    .line 359
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    .line 361
    array-length v3, p0

    .line 363
    shl-int/lit8 v0, v3, 0x1

    new-array v4, v0, [Ljava/math/BigInteger;

    .line 364
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 366
    aget-object v0, p1, v5

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->ﾞ(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v7

    .line 367
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x0

    aget-object v1, v7, v1

    aput-object v1, v4, v0

    .line 368
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x1

    aget-object v1, v7, v1

    aput-object v1, v4, v0

    .line 364
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 371
    :cond_0
    invoke-interface {p2}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->qk()Lorg/spongycastle/math/ec/ECPointMap;

    move-result-object v5

    .line 372
    invoke-interface {p2}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->ql()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    invoke-static {p0, v5, v4}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ([Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPointMap;[Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 377
    :cond_1
    shl-int/lit8 v0, v3, 0x1

    new-array v6, v0, [Lorg/spongycastle/math/ec/ECPoint;

    .line 378
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v3, :cond_2

    .line 380
    aget-object v9, p0, v7

    invoke-interface {v5, v9}, Lorg/spongycastle/math/ec/ECPointMap;->ͺ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    .line 381
    move v0, v8

    add-int/lit8 v8, v8, 0x1

    aput-object v9, v6, v0

    .line 382
    move v0, v8

    add-int/lit8 v8, v8, 0x1

    aput-object v10, v6, v0

    .line 378
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 385
    :cond_2
    invoke-static {v6, v4}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ([Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B[Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 13

    .line 288
    array-length v0, p2

    move-object/from16 v1, p5

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 290
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 291
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 293
    move-object v5, v4

    .line 294
    const/4 v6, 0x0

    .line 296
    add-int/lit8 v7, v2, -0x1

    :goto_0
    if-ltz v7, :cond_8

    .line 298
    array-length v0, p2

    if-ge v7, v0, :cond_0

    aget-byte v8, p2, v7

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 299
    :goto_1
    move-object/from16 v0, p5

    array-length v0, v0

    if-ge v7, v0, :cond_1

    aget-byte v9, p5, v7

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    .line 301
    :goto_2
    or-int v0, v8, v9

    if-nez v0, :cond_2

    .line 303
    add-int/lit8 v6, v6, 0x1

    .line 304
    goto :goto_5

    .line 307
    :cond_2
    move-object v10, v4

    .line 308
    if-eqz v8, :cond_4

    .line 310
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 311
    if-gez v8, :cond_3

    move-object v12, p1

    goto :goto_3

    :cond_3
    move-object v12, p0

    .line 312
    :goto_3
    ushr-int/lit8 v0, v11, 0x1

    aget-object v0, v12, v0

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    .line 314
    :cond_4
    if-eqz v9, :cond_6

    .line 316
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 317
    if-gez v9, :cond_5

    move-object/from16 v12, p4

    goto :goto_4

    :cond_5
    move-object/from16 v12, p3

    .line 318
    :goto_4
    ushr-int/lit8 v0, v11, 0x1

    aget-object v0, v12, v0

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    .line 321
    :cond_6
    if-lez v6, :cond_7

    .line 323
    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECPoint;->ﺬ(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 324
    const/4 v6, 0x0

    .line 327
    :cond_7
    invoke-virtual {v5, v10}, Lorg/spongycastle/math/ec/ECPoint;->ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 296
    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 330
    :cond_8
    if-lez v6, :cond_9

    .line 332
    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECPoint;->ﺬ(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 335
    :cond_9
    return-object v5
.end method

.method private static ˊ([Z[Lorg/spongycastle/math/ec/WNafPreCompInfo;[[B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 16

    .line 418
    const/4 v2, 0x0

    move-object/from16 v0, p2

    array-length v3, v0

    .line 419
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 421
    aget-object v0, p2, v4

    array-length v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 419
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 424
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 425
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 427
    move-object v6, v5

    .line 428
    const/4 v7, 0x0

    .line 430
    add-int/lit8 v8, v2, -0x1

    :goto_1
    if-ltz v8, :cond_8

    .line 432
    move-object v9, v5

    .line 434
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v3, :cond_5

    .line 436
    aget-object v11, p2, v10

    .line 437
    array-length v0, v11

    if-ge v8, v0, :cond_1

    aget-byte v12, v11, v8

    goto :goto_3

    :cond_1
    const/4 v12, 0x0

    .line 438
    :goto_3
    if-eqz v12, :cond_4

    .line 440
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 441
    aget-object v14, p1, v10

    .line 442
    if-gez v12, :cond_2

    const/4 v0, 0x1

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    :goto_4
    aget-boolean v1, p0, v10

    if-ne v0, v1, :cond_3

    invoke-virtual {v14}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v15

    goto :goto_5

    :cond_3
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->qg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v15

    .line 443
    :goto_5
    ushr-int/lit8 v0, v13, 0x1

    aget-object v0, v15, v0

    invoke-virtual {v9, v0}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 434
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 447
    :cond_5
    if-ne v9, v5, :cond_6

    .line 449
    add-int/lit8 v7, v7, 0x1

    .line 450
    goto :goto_6

    .line 453
    :cond_6
    if-lez v7, :cond_7

    .line 455
    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECPoint;->ﺬ(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 456
    const/4 v7, 0x0

    .line 459
    :cond_7
    invoke-virtual {v6, v9}, Lorg/spongycastle/math/ec/ECPoint;->ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 430
    :goto_6
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_1

    .line 462
    :cond_8
    if-lez v7, :cond_9

    .line 464
    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECPoint;->ﺬ(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 467
    :cond_9
    return-object v6
.end method

.method public static ˊ([Lorg/spongycastle/math/ec/ECFieldElement;II)V
    .locals 7

    .line 134
    new-array v2, p2, [Lorg/spongycastle/math/ec/ECFieldElement;

    .line 135
    aget-object v0, p0, p1

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 137
    const/4 v3, 0x0

    .line 138
    :goto_0
    add-int/lit8 v3, v3, 0x1

    if-ge v3, p2, :cond_0

    .line 140
    add-int/lit8 v0, v3, -0x1

    aget-object v0, v2, v0

    add-int v1, p1, v3

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    aput-object v0, v2, v3

    goto :goto_0

    .line 143
    :cond_0
    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->py()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 145
    :goto_1
    if-lez v3, :cond_1

    .line 147
    move v0, v3

    add-int/lit8 v3, v3, -0x1

    add-int v5, p1, v0

    .line 148
    aget-object v6, p0, v5

    .line 149
    aget-object v0, v2, v3

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    aput-object v0, p0, v5

    .line 150
    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 151
    goto :goto_1

    .line 153
    :cond_1
    aput-object v4, p0, p1

    .line 154
    return-void
.end method

.method static ˋ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 18

    .line 239
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 241
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 242
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p3

    .line 244
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/WNafUtil;->ﾌ(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 245
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/WNafUtil;->ﾌ(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 247
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-static {v0, v8, v1}, Lorg/spongycastle/math/ec/WNafUtil;->ˊ(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v10

    .line 248
    move-object/from16 v0, p2

    const/4 v1, 0x1

    invoke-static {v0, v9, v1}, Lorg/spongycastle/math/ec/WNafUtil;->ˊ(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v11

    .line 250
    if-eqz v6, :cond_2

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->qg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v12

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v12

    .line 251
    :goto_2
    if-eqz v7, :cond_3

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->qg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    goto :goto_3

    :cond_3
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    .line 252
    :goto_3
    if-eqz v6, :cond_4

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v14

    goto :goto_4

    :cond_4
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->qg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v14

    .line 253
    :goto_4
    if-eqz v7, :cond_5

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v15

    goto :goto_5

    :cond_5
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->qg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v15

    .line 255
    :goto_5
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Lorg/spongycastle/math/ec/WNafUtil;->ˏ(ILjava/math/BigInteger;)[B

    move-result-object v16

    .line 256
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lorg/spongycastle/math/ec/WNafUtil;->ˏ(ILjava/math/BigInteger;)[B

    move-result-object v17

    .line 258
    move-object v0, v12

    move-object v1, v14

    move-object/from16 v2, v16

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v5, v17

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ([Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B[Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ˎ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 191
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    return-object p0
.end method

.method public static ˏ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 5

    .line 168
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    .line 169
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 170
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 171
    if-lez v3, :cond_2

    .line 173
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    move-object v2, p0

    .line 177
    :cond_0
    const/4 v4, 0x1

    :goto_0
    if-ge v4, v3, :cond_2

    .line 179
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    .line 180
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v2, p0}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 177
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_3

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pT()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    return-object v0
.end method

.method public static ᐝ(Lorg/spongycastle/math/ec/ECCurve;)Z
    .locals 3

    .line 14
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pj()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v2

    .line 15
    invoke-interface {v2}, Lorg/spongycastle/math/field/FiniteField;->qr()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-interface {v2}, Lorg/spongycastle/math/field/FiniteField;->qq()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/math/ec/ECConstants;->aKc:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, v2, Lorg/spongycastle/math/field/PolynomialExtensionField;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
