.class public abstract Lorg/spongycastle/math/raw/Nat192;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static qv()[I
    .locals 1

    .line 149
    const/4 v0, 0x6

    new-array v0, v0, [I

    return-object v0
.end method

.method public static qw()[I
    .locals 1

    .line 154
    const/16 v0, 0xc

    new-array v0, v0, [I

    return-object v0
.end method

.method public static ʹ([I)V
    .locals 2

    .line 961
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 962
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, p0, v1

    .line 963
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v0, p0, v1

    .line 964
    const/4 v0, 0x0

    const/4 v1, 0x3

    aput v0, p0, v1

    .line 965
    const/4 v0, 0x0

    const/4 v1, 0x4

    aput v0, p0, v1

    .line 966
    const/4 v0, 0x0

    const/4 v1, 0x5

    aput v0, p0, v1

    .line 967
    return-void
.end method

.method public static ʻ([II)I
    .locals 4

    .line 202
    if-nez p1, :cond_0

    .line 204
    const/4 v0, 0x0

    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 206
    :cond_0
    shr-int/lit8 v2, p1, 0x5

    .line 207
    if-ltz v2, :cond_1

    const/4 v0, 0x6

    if-lt v2, v0, :cond_2

    .line 209
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 211
    :cond_2
    and-int/lit8 v3, p1, 0x1f

    .line 212
    aget v0, p0, v2

    ushr-int/2addr v0, v3

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static ʾ([I[I[I)I
    .locals 8

    .line 37
    const-wide/16 v6, 0x0

    .line 38
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x0

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 39
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 40
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 41
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 42
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 43
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 44
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 45
    long-to-int v0, v6

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 46
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 47
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x3

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 48
    long-to-int v0, v6

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 49
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 50
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 51
    long-to-int v0, v6

    const/4 v1, 0x4

    aput v0, p2, v1

    .line 52
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 53
    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 54
    long-to-int v0, v6

    const/4 v1, 0x5

    aput v0, p2, v1

    .line 55
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 56
    long-to-int v0, v6

    return v0
.end method

.method public static ʿ([I[I[I)V
    .locals 23

    .line 273
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 274
    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 275
    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 276
    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 277
    const/4 v0, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 278
    const/4 v0, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 281
    const-wide/16 v18, 0x0

    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v20, v0, v2

    .line 282
    mul-long v0, v20, v6

    add-long v18, v18, v0

    .line 283
    move-wide/from16 v0, v18

    long-to-int v0, v0

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 284
    const/16 v0, 0x20

    ushr-long v18, v18, v0

    .line 285
    mul-long v0, v20, v8

    add-long v18, v18, v0

    .line 286
    move-wide/from16 v0, v18

    long-to-int v0, v0

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 287
    const/16 v0, 0x20

    ushr-long v18, v18, v0

    .line 288
    mul-long v0, v20, v10

    add-long v18, v18, v0

    .line 289
    move-wide/from16 v0, v18

    long-to-int v0, v0

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 290
    const/16 v0, 0x20

    ushr-long v18, v18, v0

    .line 291
    mul-long v0, v20, v12

    add-long v18, v18, v0

    .line 292
    move-wide/from16 v0, v18

    long-to-int v0, v0

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 293
    const/16 v0, 0x20

    ushr-long v18, v18, v0

    .line 294
    mul-long v0, v20, v14

    add-long v18, v18, v0

    .line 295
    move-wide/from16 v0, v18

    long-to-int v0, v0

    const/4 v1, 0x4

    aput v0, p2, v1

    .line 296
    const/16 v0, 0x20

    ushr-long v18, v18, v0

    .line 297
    mul-long v0, v20, v16

    add-long v18, v18, v0

    .line 298
    move-wide/from16 v0, v18

    long-to-int v0, v0

    const/4 v1, 0x5

    aput v0, p2, v1

    .line 299
    const/16 v0, 0x20

    ushr-long v18, v18, v0

    .line 300
    move-wide/from16 v0, v18

    long-to-int v0, v0

    const/4 v1, 0x6

    aput v0, p2, v1

    .line 303
    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 305
    const-wide/16 v19, 0x0

    aget v0, p0, v18

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v21, v0, v2

    .line 306
    mul-long v0, v21, v6

    add-int/lit8 v2, v18, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 307
    add-int/lit8 v0, v18, 0x0

    move-wide/from16 v1, v19

    long-to-int v1, v1

    aput v1, p2, v0

    .line 308
    const/16 v0, 0x20

    ushr-long v19, v19, v0

    .line 309
    mul-long v0, v21, v8

    add-int/lit8 v2, v18, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 310
    add-int/lit8 v0, v18, 0x1

    move-wide/from16 v1, v19

    long-to-int v1, v1

    aput v1, p2, v0

    .line 311
    const/16 v0, 0x20

    ushr-long v19, v19, v0

    .line 312
    mul-long v0, v21, v10

    add-int/lit8 v2, v18, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 313
    add-int/lit8 v0, v18, 0x2

    move-wide/from16 v1, v19

    long-to-int v1, v1

    aput v1, p2, v0

    .line 314
    const/16 v0, 0x20

    ushr-long v19, v19, v0

    .line 315
    mul-long v0, v21, v12

    add-int/lit8 v2, v18, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 316
    add-int/lit8 v0, v18, 0x3

    move-wide/from16 v1, v19

    long-to-int v1, v1

    aput v1, p2, v0

    .line 317
    const/16 v0, 0x20

    ushr-long v19, v19, v0

    .line 318
    mul-long v0, v21, v14

    add-int/lit8 v2, v18, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 319
    add-int/lit8 v0, v18, 0x4

    move-wide/from16 v1, v19

    long-to-int v1, v1

    aput v1, p2, v0

    .line 320
    const/16 v0, 0x20

    ushr-long v19, v19, v0

    .line 321
    mul-long v0, v21, v16

    add-int/lit8 v2, v18, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 322
    add-int/lit8 v0, v18, 0x5

    move-wide/from16 v1, v19

    long-to-int v1, v1

    aput v1, p2, v0

    .line 323
    const/16 v0, 0x20

    ushr-long v19, v19, v0

    .line 324
    add-int/lit8 v0, v18, 0x6

    move-wide/from16 v1, v19

    long-to-int v1, v1

    aput v1, p2, v0

    .line 303
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 326
    :cond_0
    return-void
.end method

.method public static ˈ([I[I[I)I
    .locals 25

    .line 388
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 389
    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 390
    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 391
    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 392
    const/4 v0, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 393
    const/4 v0, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 395
    const-wide/16 v18, 0x0

    .line 396
    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 398
    const-wide/16 v21, 0x0

    aget v0, p0, v20

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v23, v0, v2

    .line 399
    mul-long v0, v23, v6

    add-int/lit8 v2, v20, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 400
    add-int/lit8 v0, v20, 0x0

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 401
    const/16 v0, 0x20

    ushr-long v21, v21, v0

    .line 402
    mul-long v0, v23, v8

    add-int/lit8 v2, v20, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 403
    add-int/lit8 v0, v20, 0x1

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 404
    const/16 v0, 0x20

    ushr-long v21, v21, v0

    .line 405
    mul-long v0, v23, v10

    add-int/lit8 v2, v20, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 406
    add-int/lit8 v0, v20, 0x2

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 407
    const/16 v0, 0x20

    ushr-long v21, v21, v0

    .line 408
    mul-long v0, v23, v12

    add-int/lit8 v2, v20, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 409
    add-int/lit8 v0, v20, 0x3

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 410
    const/16 v0, 0x20

    ushr-long v21, v21, v0

    .line 411
    mul-long v0, v23, v14

    add-int/lit8 v2, v20, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 412
    add-int/lit8 v0, v20, 0x4

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 413
    const/16 v0, 0x20

    ushr-long v21, v21, v0

    .line 414
    mul-long v0, v23, v16

    add-int/lit8 v2, v20, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 415
    add-int/lit8 v0, v20, 0x5

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 416
    const/16 v0, 0x20

    ushr-long v21, v21, v0

    .line 417
    add-int/lit8 v0, v20, 0x6

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v18

    add-long v21, v21, v0

    .line 418
    add-int/lit8 v0, v20, 0x6

    move-wide/from16 v1, v21

    long-to-int v1, v1

    aput v1, p2, v0

    .line 419
    const/16 v0, 0x20

    ushr-long v18, v21, v0

    .line 396
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 421
    :cond_0
    move-wide/from16 v0, v18

    long-to-int v0, v0

    return v0
.end method

.method public static ˈ([I[I)Z
    .locals 3

    .line 173
    const/4 v2, 0x5

    :goto_0
    if-ltz v2, :cond_1

    .line 175
    aget v0, p0, v2

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 177
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ˉ([I[I[I)I
    .locals 8

    .line 827
    const-wide/16 v6, 0x0

    .line 828
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x0

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 829
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 830
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 831
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 832
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 833
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 834
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 835
    long-to-int v0, v6

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 836
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 837
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x3

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 838
    long-to-int v0, v6

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 839
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 840
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 841
    long-to-int v0, v6

    const/4 v1, 0x4

    aput v0, p2, v1

    .line 842
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 843
    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 844
    long-to-int v0, v6

    const/4 v1, 0x5

    aput v0, p2, v1

    .line 845
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 846
    long-to-int v0, v6

    return v0
.end method

.method public static ˉ([I[I)Z
    .locals 5

    .line 217
    const/4 v2, 0x5

    :goto_0
    if-ltz v2, :cond_2

    .line 219
    aget v0, p0, v2

    const/high16 v1, -0x80000000

    xor-int v3, v0, v1

    .line 220
    aget v0, p1, v2

    const/high16 v1, -0x80000000

    xor-int v4, v0, v1

    .line 221
    if-ge v3, v4, :cond_0

    .line 222
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_0
    if-le v3, v4, :cond_1

    .line 224
    const/4 v0, 0x1

    return v0

    .line 217
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 226
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static ˊ(IJ[II)I
    .locals 14

    .line 527
    const-wide/16 v6, 0x0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 528
    const-wide v0, 0xffffffffL

    and-long v10, p1, v0

    .line 529
    mul-long v0, v8, v10

    add-int/lit8 v2, p4, 0x0

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 530
    add-int/lit8 v0, p4, 0x0

    long-to-int v1, v6

    aput v1, p3, v0

    .line 531
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 532
    const/16 v0, 0x20

    ushr-long v12, p1, v0

    .line 533
    mul-long v0, v8, v12

    add-long/2addr v0, v10

    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 534
    add-int/lit8 v0, p4, 0x1

    long-to-int v1, v6

    aput v1, p3, v0

    .line 535
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 536
    add-int/lit8 v0, p4, 0x2

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v12

    add-long/2addr v6, v0

    .line 537
    add-int/lit8 v0, p4, 0x2

    long-to-int v1, v6

    aput v1, p3, v0

    .line 538
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 539
    add-int/lit8 v0, p4, 0x3

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 540
    add-int/lit8 v0, p4, 0x3

    long-to-int v1, v6

    aput v1, p3, v0

    .line 541
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 542
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    move-object/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[III)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static ˊ([II[II)I
    .locals 8

    .line 109
    const-wide/16 v6, 0x0

    .line 110
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 111
    add-int/lit8 v0, p1, 0x0

    long-to-int v1, v6

    aput v1, p0, v0

    .line 112
    add-int/lit8 v0, p3, 0x0

    long-to-int v1, v6

    aput v1, p2, v0

    .line 113
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 114
    add-int/lit8 v0, p1, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 115
    add-int/lit8 v0, p1, 0x1

    long-to-int v1, v6

    aput v1, p0, v0

    .line 116
    add-int/lit8 v0, p3, 0x1

    long-to-int v1, v6

    aput v1, p2, v0

    .line 117
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 118
    add-int/lit8 v0, p1, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 119
    add-int/lit8 v0, p1, 0x2

    long-to-int v1, v6

    aput v1, p0, v0

    .line 120
    add-int/lit8 v0, p3, 0x2

    long-to-int v1, v6

    aput v1, p2, v0

    .line 121
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 122
    add-int/lit8 v0, p1, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 123
    add-int/lit8 v0, p1, 0x3

    long-to-int v1, v6

    aput v1, p0, v0

    .line 124
    add-int/lit8 v0, p3, 0x3

    long-to-int v1, v6

    aput v1, p2, v0

    .line 125
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 126
    add-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 127
    add-int/lit8 v0, p1, 0x4

    long-to-int v1, v6

    aput v1, p0, v0

    .line 128
    add-int/lit8 v0, p3, 0x4

    long-to-int v1, v6

    aput v1, p2, v0

    .line 129
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 130
    add-int/lit8 v0, p1, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 131
    add-int/lit8 v0, p1, 0x5

    long-to-int v1, v6

    aput v1, p0, v0

    .line 132
    add-int/lit8 v0, p3, 0x5

    long-to-int v1, v6

    aput v1, p2, v0

    .line 133
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 134
    long-to-int v0, v6

    return v0
.end method

.method public static ˊ([II[III)I
    .locals 8

    .line 85
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 86
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 87
    add-int/lit8 v0, p3, 0x0

    long-to-int v1, v6

    aput v1, p2, v0

    .line 88
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 89
    add-int/lit8 v0, p1, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 90
    add-int/lit8 v0, p3, 0x1

    long-to-int v1, v6

    aput v1, p2, v0

    .line 91
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 92
    add-int/lit8 v0, p1, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 93
    add-int/lit8 v0, p3, 0x2

    long-to-int v1, v6

    aput v1, p2, v0

    .line 94
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 95
    add-int/lit8 v0, p1, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 96
    add-int/lit8 v0, p3, 0x3

    long-to-int v1, v6

    aput v1, p2, v0

    .line 97
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 98
    add-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 99
    add-int/lit8 v0, p3, 0x4

    long-to-int v1, v6

    aput v1, p2, v0

    .line 100
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 101
    add-int/lit8 v0, p1, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 102
    add-int/lit8 v0, p3, 0x5

    long-to-int v1, v6

    aput v1, p2, v0

    .line 103
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 104
    long-to-int v0, v6

    return v0
.end method

.method public static ˊ(I[II[II[II)J
    .locals 22

    .line 467
    const-wide/16 v6, 0x0

    move/from16 v0, p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 468
    add-int/lit8 v0, p2, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 469
    mul-long v0, v8, v10

    add-int/lit8 v2, p4, 0x0

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 470
    add-int/lit8 v0, p6, 0x0

    long-to-int v1, v6

    aput v1, p5, v0

    .line 471
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 472
    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 473
    mul-long v0, v8, v12

    add-long/2addr v0, v10

    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 474
    add-int/lit8 v0, p6, 0x1

    long-to-int v1, v6

    aput v1, p5, v0

    .line 475
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 476
    add-int/lit8 v0, p2, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 477
    mul-long v0, v8, v14

    add-long/2addr v0, v12

    add-int/lit8 v2, p4, 0x2

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 478
    add-int/lit8 v0, p6, 0x2

    long-to-int v1, v6

    aput v1, p5, v0

    .line 479
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 480
    add-int/lit8 v0, p2, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 481
    mul-long v0, v8, v16

    add-long/2addr v0, v14

    add-int/lit8 v2, p4, 0x3

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 482
    add-int/lit8 v0, p6, 0x3

    long-to-int v1, v6

    aput v1, p5, v0

    .line 483
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 484
    add-int/lit8 v0, p2, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 485
    mul-long v0, v8, v18

    add-long v0, v0, v16

    add-int/lit8 v2, p4, 0x4

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 486
    add-int/lit8 v0, p6, 0x4

    long-to-int v1, v6

    aput v1, p5, v0

    .line 487
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 488
    add-int/lit8 v0, p2, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v20, v0, v2

    .line 489
    mul-long v0, v8, v20

    add-long v0, v0, v18

    add-int/lit8 v2, p4, 0x5

    aget v2, p3, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 490
    add-int/lit8 v0, p6, 0x5

    long-to-int v1, v6

    aput v1, p5, v0

    .line 491
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 492
    add-long v6, v6, v20

    .line 493
    return-wide v6
.end method

.method public static ˊ([II[II[II)Z
    .locals 7

    .line 159
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/raw/Nat192;->ˋ([II[II)Z

    move-result v6

    .line 160
    if-eqz v6, :cond_0

    .line 162
    invoke-static/range {p0 .. p5}, Lorg/spongycastle/math/raw/Nat192;->ˎ([II[II[II)I

    goto :goto_0

    .line 166
    :cond_0
    move-object v0, p2

    move v1, p3

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat192;->ˎ([II[II[II)I

    .line 168
    :goto_0
    return v6
.end method

.method public static ˋ(II[II)I
    .locals 12

    .line 550
    const-wide/16 v6, 0x0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 551
    mul-long v0, v10, v8

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 552
    add-int/lit8 v0, p3, 0x0

    long-to-int v1, v6

    aput v1, p2, v0

    .line 553
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 554
    add-int/lit8 v0, p3, 0x1

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v10

    add-long/2addr v6, v0

    .line 555
    add-int/lit8 v0, p3, 0x1

    long-to-int v1, v6

    aput v1, p2, v0

    .line 556
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 557
    add-int/lit8 v0, p3, 0x2

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 558
    add-int/lit8 v0, p3, 0x2

    long-to-int v1, v6

    aput v1, p2, v0

    .line 559
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 560
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x3

    invoke-static {v0, p2, p3, v1}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[III)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static ˋ([II[II[II)V
    .locals 23

    .line 330
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 331
    add-int/lit8 v0, p3, 0x1

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 332
    add-int/lit8 v0, p3, 0x2

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 333
    add-int/lit8 v0, p3, 0x3

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 334
    add-int/lit8 v0, p3, 0x4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 335
    add-int/lit8 v0, p3, 0x5

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 338
    const-wide/16 v18, 0x0

    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v20, v0, v2

    .line 339
    mul-long v0, v20, v6

    add-long v18, v18, v0

    .line 340
    add-int/lit8 v0, p5, 0x0

    move-wide/from16 v1, v18

    long-to-int v1, v1

    aput v1, p4, v0

    .line 341
    const/16 v0, 0x20

    ushr-long v18, v18, v0

    .line 342
    mul-long v0, v20, v8

    add-long v18, v18, v0

    .line 343
    add-int/lit8 v0, p5, 0x1

    move-wide/from16 v1, v18

    long-to-int v1, v1

    aput v1, p4, v0

    .line 344
    const/16 v0, 0x20

    ushr-long v18, v18, v0

    .line 345
    mul-long v0, v20, v10

    add-long v18, v18, v0

    .line 346
    add-int/lit8 v0, p5, 0x2

    move-wide/from16 v1, v18

    long-to-int v1, v1

    aput v1, p4, v0

    .line 347
    const/16 v0, 0x20

    ushr-long v18, v18, v0

    .line 348
    mul-long v0, v20, v12

    add-long v18, v18, v0

    .line 349
    add-int/lit8 v0, p5, 0x3

    move-wide/from16 v1, v18

    long-to-int v1, v1

    aput v1, p4, v0

    .line 350
    const/16 v0, 0x20

    ushr-long v18, v18, v0

    .line 351
    mul-long v0, v20, v14

    add-long v18, v18, v0

    .line 352
    add-int/lit8 v0, p5, 0x4

    move-wide/from16 v1, v18

    long-to-int v1, v1

    aput v1, p4, v0

    .line 353
    const/16 v0, 0x20

    ushr-long v18, v18, v0

    .line 354
    mul-long v0, v20, v16

    add-long v18, v18, v0

    .line 355
    add-int/lit8 v0, p5, 0x5

    move-wide/from16 v1, v18

    long-to-int v1, v1

    aput v1, p4, v0

    .line 356
    const/16 v0, 0x20

    ushr-long v18, v18, v0

    .line 357
    add-int/lit8 v0, p5, 0x6

    move-wide/from16 v1, v18

    long-to-int v1, v1

    aput v1, p4, v0

    .line 360
    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 362
    add-int/lit8 p5, p5, 0x1

    .line 363
    const-wide/16 v19, 0x0

    add-int v0, p1, v18

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v21, v0, v2

    .line 364
    mul-long v0, v21, v6

    add-int/lit8 v2, p5, 0x0

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 365
    add-int/lit8 v0, p5, 0x0

    move-wide/from16 v1, v19

    long-to-int v1, v1

    aput v1, p4, v0

    .line 366
    const/16 v0, 0x20

    ushr-long v19, v19, v0

    .line 367
    mul-long v0, v21, v8

    add-int/lit8 v2, p5, 0x1

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 368
    add-int/lit8 v0, p5, 0x1

    move-wide/from16 v1, v19

    long-to-int v1, v1

    aput v1, p4, v0

    .line 369
    const/16 v0, 0x20

    ushr-long v19, v19, v0

    .line 370
    mul-long v0, v21, v10

    add-int/lit8 v2, p5, 0x2

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 371
    add-int/lit8 v0, p5, 0x2

    move-wide/from16 v1, v19

    long-to-int v1, v1

    aput v1, p4, v0

    .line 372
    const/16 v0, 0x20

    ushr-long v19, v19, v0

    .line 373
    mul-long v0, v21, v12

    add-int/lit8 v2, p5, 0x3

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 374
    add-int/lit8 v0, p5, 0x3

    move-wide/from16 v1, v19

    long-to-int v1, v1

    aput v1, p4, v0

    .line 375
    const/16 v0, 0x20

    ushr-long v19, v19, v0

    .line 376
    mul-long v0, v21, v14

    add-int/lit8 v2, p5, 0x4

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 377
    add-int/lit8 v0, p5, 0x4

    move-wide/from16 v1, v19

    long-to-int v1, v1

    aput v1, p4, v0

    .line 378
    const/16 v0, 0x20

    ushr-long v19, v19, v0

    .line 379
    mul-long v0, v21, v16

    add-int/lit8 v2, p5, 0x5

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 380
    add-int/lit8 v0, p5, 0x5

    move-wide/from16 v1, v19

    long-to-int v1, v1

    aput v1, p4, v0

    .line 381
    const/16 v0, 0x20

    ushr-long v19, v19, v0

    .line 382
    add-int/lit8 v0, p5, 0x6

    move-wide/from16 v1, v19

    long-to-int v1, v1

    aput v1, p4, v0

    .line 360
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 384
    :cond_0
    return-void
.end method

.method public static ˋ([II[II)Z
    .locals 5

    .line 231
    const/4 v2, 0x5

    :goto_0
    if-ltz v2, :cond_2

    .line 233
    add-int v0, p1, v2

    aget v0, p0, v0

    const/high16 v1, -0x80000000

    xor-int v3, v0, v1

    .line 234
    add-int v0, p3, v2

    aget v0, p2, v0

    const/high16 v1, -0x80000000

    xor-int v4, v0, v1

    .line 235
    if-ge v3, v4, :cond_0

    .line 236
    const/4 v0, 0x0

    return v0

    .line 237
    :cond_0
    if-le v3, v4, :cond_1

    .line 238
    const/4 v0, 0x1

    return v0

    .line 231
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 240
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static ˌ([I[I)I
    .locals 8

    .line 899
    const-wide/16 v6, 0x0

    .line 900
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 901
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 902
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 903
    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 904
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 905
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 906
    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 907
    long-to-int v0, v6

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 908
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 909
    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 910
    long-to-int v0, v6

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 911
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 912
    const/4 v0, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 913
    long-to-int v0, v6

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 914
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 915
    const/4 v0, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 916
    long-to-int v0, v6

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 917
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 918
    long-to-int v0, v6

    return v0
.end method

.method public static ˎ([II[II[II)I
    .locals 8

    .line 851
    const-wide/16 v6, 0x0

    .line 852
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 853
    add-int/lit8 v0, p5, 0x0

    long-to-int v1, v6

    aput v1, p4, v0

    .line 854
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 855
    add-int/lit8 v0, p1, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 856
    add-int/lit8 v0, p5, 0x1

    long-to-int v1, v6

    aput v1, p4, v0

    .line 857
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 858
    add-int/lit8 v0, p1, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 859
    add-int/lit8 v0, p5, 0x2

    long-to-int v1, v6

    aput v1, p4, v0

    .line 860
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 861
    add-int/lit8 v0, p1, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 862
    add-int/lit8 v0, p5, 0x3

    long-to-int v1, v6

    aput v1, p4, v0

    .line 863
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 864
    add-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 865
    add-int/lit8 v0, p5, 0x4

    long-to-int v1, v6

    aput v1, p4, v0

    .line 866
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 867
    add-int/lit8 v0, p1, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 868
    add-int/lit8 v0, p5, 0x5

    long-to-int v1, v6

    aput v1, p4, v0

    .line 869
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 870
    long-to-int v0, v6

    return v0
.end method

.method public static ˎ([II[II)V
    .locals 38

    .line 711
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    .line 714
    const/4 v8, 0x0

    .line 716
    const/4 v10, 0x5

    const/16 v11, 0xc

    .line 719
    :cond_0
    move v0, v10

    add-int/lit8 v10, v10, -0x1

    add-int v0, v0, p1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 720
    mul-long v14, v12, v12

    .line 721
    add-int/lit8 v11, v11, -0x1

    add-int v0, p3, v11

    shl-int/lit8 v1, v8, 0x1f

    const/16 v2, 0x21

    ushr-long v2, v14, v2

    long-to-int v2, v2

    or-int/2addr v1, v2

    aput v1, p2, v0

    .line 722
    add-int/lit8 v11, v11, -0x1

    add-int v0, p3, v11

    const/4 v1, 0x1

    ushr-long v1, v14, v1

    long-to-int v1, v1

    aput v1, p2, v0

    .line 723
    long-to-int v8, v14

    .line 725
    if-gtz v10, :cond_0

    .line 728
    mul-long v12, v4, v4

    .line 729
    shl-int/lit8 v0, v8, 0x1f

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x21

    ushr-long v2, v12, v2

    or-long v6, v0, v2

    .line 730
    add-int/lit8 v0, p3, 0x0

    long-to-int v1, v12

    aput v1, p2, v0

    .line 731
    const/16 v0, 0x20

    ushr-long v0, v12, v0

    long-to-int v0, v0

    and-int/lit8 v8, v0, 0x1

    .line 735
    add-int/lit8 v0, p1, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 736
    add-int/lit8 v0, p3, 0x2

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 739
    mul-long v0, v10, v4

    add-long/2addr v6, v0

    .line 740
    long-to-int v9, v6

    .line 741
    add-int/lit8 v0, p3, 0x1

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 742
    ushr-int/lit8 v8, v9, 0x1f

    .line 743
    const/16 v0, 0x20

    ushr-long v0, v6, v0

    add-long/2addr v12, v0

    .line 746
    add-int/lit8 v0, p1, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 747
    add-int/lit8 v0, p3, 0x3

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 748
    add-int/lit8 v0, p3, 0x4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 750
    mul-long v0, v14, v4

    add-long/2addr v12, v0

    .line 751
    long-to-int v9, v12

    .line 752
    add-int/lit8 v0, p3, 0x2

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 753
    ushr-int/lit8 v8, v9, 0x1f

    .line 754
    const/16 v0, 0x20

    ushr-long v0, v12, v0

    mul-long v2, v14, v10

    add-long/2addr v0, v2

    add-long v16, v16, v0

    .line 755
    const/16 v0, 0x20

    ushr-long v0, v16, v0

    add-long v18, v18, v0

    .line 756
    const-wide v0, 0xffffffffL

    and-long v16, v16, v0

    .line 759
    add-int/lit8 v0, p1, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v20, v0, v2

    .line 760
    add-int/lit8 v0, p3, 0x5

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v22, v0, v2

    .line 761
    add-int/lit8 v0, p3, 0x6

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v24, v0, v2

    .line 763
    mul-long v0, v20, v4

    add-long v16, v16, v0

    .line 764
    move-wide/from16 v0, v16

    long-to-int v9, v0

    .line 765
    add-int/lit8 v0, p3, 0x3

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 766
    ushr-int/lit8 v8, v9, 0x1f

    .line 767
    const/16 v0, 0x20

    ushr-long v0, v16, v0

    mul-long v2, v20, v10

    add-long/2addr v0, v2

    add-long v18, v18, v0

    .line 768
    const/16 v0, 0x20

    ushr-long v0, v18, v0

    mul-long v2, v20, v14

    add-long/2addr v0, v2

    add-long v22, v22, v0

    .line 769
    const-wide v0, 0xffffffffL

    and-long v18, v18, v0

    .line 770
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    add-long v24, v24, v0

    .line 771
    const-wide v0, 0xffffffffL

    and-long v22, v22, v0

    .line 774
    add-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v26, v0, v2

    .line 775
    add-int/lit8 v0, p3, 0x7

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v28, v0, v2

    .line 776
    add-int/lit8 v0, p3, 0x8

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v30, v0, v2

    .line 778
    mul-long v0, v26, v4

    add-long v18, v18, v0

    .line 779
    move-wide/from16 v0, v18

    long-to-int v9, v0

    .line 780
    add-int/lit8 v0, p3, 0x4

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 781
    ushr-int/lit8 v8, v9, 0x1f

    .line 782
    const/16 v0, 0x20

    ushr-long v0, v18, v0

    mul-long v2, v26, v10

    add-long/2addr v0, v2

    add-long v22, v22, v0

    .line 783
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    mul-long v2, v26, v14

    add-long/2addr v0, v2

    add-long v24, v24, v0

    .line 784
    const-wide v0, 0xffffffffL

    and-long v22, v22, v0

    .line 785
    const/16 v0, 0x20

    ushr-long v0, v24, v0

    mul-long v2, v26, v20

    add-long/2addr v0, v2

    add-long v28, v28, v0

    .line 786
    const-wide v0, 0xffffffffL

    and-long v24, v24, v0

    .line 787
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    add-long v30, v30, v0

    .line 788
    const-wide v0, 0xffffffffL

    and-long v28, v28, v0

    .line 791
    add-int/lit8 v0, p1, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v32, v0, v2

    .line 792
    add-int/lit8 v0, p3, 0x9

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v34, v0, v2

    .line 793
    add-int/lit8 v0, p3, 0xa

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v36, v0, v2

    .line 795
    mul-long v0, v32, v4

    add-long v22, v22, v0

    .line 796
    move-wide/from16 v0, v22

    long-to-int v9, v0

    .line 797
    add-int/lit8 v0, p3, 0x5

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 798
    ushr-int/lit8 v8, v9, 0x1f

    .line 799
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    mul-long v2, v32, v10

    add-long/2addr v0, v2

    add-long v24, v24, v0

    .line 800
    const/16 v0, 0x20

    ushr-long v0, v24, v0

    mul-long v2, v32, v14

    add-long/2addr v0, v2

    add-long v28, v28, v0

    .line 801
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    mul-long v2, v32, v20

    add-long/2addr v0, v2

    add-long v30, v30, v0

    .line 802
    const/16 v0, 0x20

    ushr-long v0, v30, v0

    mul-long v2, v32, v26

    add-long/2addr v0, v2

    add-long v34, v34, v0

    .line 803
    const/16 v0, 0x20

    ushr-long v0, v34, v0

    add-long v36, v36, v0

    .line 806
    move-wide/from16 v0, v24

    long-to-int v9, v0

    .line 807
    add-int/lit8 v0, p3, 0x6

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 808
    ushr-int/lit8 v8, v9, 0x1f

    .line 809
    move-wide/from16 v0, v28

    long-to-int v9, v0

    .line 810
    add-int/lit8 v0, p3, 0x7

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 811
    ushr-int/lit8 v8, v9, 0x1f

    .line 812
    move-wide/from16 v0, v30

    long-to-int v9, v0

    .line 813
    add-int/lit8 v0, p3, 0x8

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 814
    ushr-int/lit8 v8, v9, 0x1f

    .line 815
    move-wide/from16 v0, v34

    long-to-int v9, v0

    .line 816
    add-int/lit8 v0, p3, 0x9

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 817
    ushr-int/lit8 v8, v9, 0x1f

    .line 818
    move-wide/from16 v0, v36

    long-to-int v9, v0

    .line 819
    add-int/lit8 v0, p3, 0xa

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 820
    ushr-int/lit8 v8, v9, 0x1f

    .line 821
    add-int/lit8 v0, p3, 0xb

    aget v0, p2, v0

    const/16 v1, 0x20

    shr-long v1, v36, v1

    long-to-int v1, v1

    add-int v9, v0, v1

    .line 822
    add-int/lit8 v0, p3, 0xb

    shl-int/lit8 v1, v9, 0x1

    or-int/2addr v1, v8

    aput v1, p2, v0

    .line 823
    return-void
.end method

.method public static ᐨ([I)Z
    .locals 3

    .line 245
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 247
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v0, 0x6

    if-ge v2, v0, :cond_2

    .line 251
    aget v0, p0, v2

    if-eqz v0, :cond_1

    .line 253
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static ι([I[I[I)I
    .locals 8

    .line 13
    const-wide/16 v6, 0x0

    .line 14
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x0

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 15
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 16
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 17
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 18
    long-to-int v0, v6

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 19
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 20
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 21
    long-to-int v0, v6

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 22
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 23
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x3

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 24
    long-to-int v0, v6

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 25
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 26
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 27
    long-to-int v0, v6

    const/4 v1, 0x4

    aput v0, p2, v1

    .line 28
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 29
    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 30
    long-to-int v0, v6

    const/4 v1, 0x5

    aput v0, p2, v1

    .line 31
    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    .line 32
    long-to-int v0, v6

    return v0
.end method

.method public static ι([I[I)V
    .locals 38

    .line 595
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    .line 598
    const/4 v8, 0x0

    .line 600
    const/4 v10, 0x5

    const/16 v11, 0xc

    .line 603
    :cond_0
    move v0, v10

    add-int/lit8 v10, v10, -0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 604
    mul-long v14, v12, v12

    .line 605
    add-int/lit8 v11, v11, -0x1

    shl-int/lit8 v0, v8, 0x1f

    const/16 v1, 0x21

    ushr-long v1, v14, v1

    long-to-int v1, v1

    or-int/2addr v0, v1

    aput v0, p1, v11

    .line 606
    add-int/lit8 v11, v11, -0x1

    const/4 v0, 0x1

    ushr-long v0, v14, v0

    long-to-int v0, v0

    aput v0, p1, v11

    .line 607
    long-to-int v8, v14

    .line 609
    if-gtz v10, :cond_0

    .line 612
    mul-long v12, v4, v4

    .line 613
    shl-int/lit8 v0, v8, 0x1f

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x21

    ushr-long v2, v12, v2

    or-long v6, v0, v2

    .line 614
    long-to-int v0, v12

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 615
    const/16 v0, 0x20

    ushr-long v0, v12, v0

    long-to-int v0, v0

    and-int/lit8 v8, v0, 0x1

    .line 619
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 620
    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    .line 623
    mul-long v0, v10, v4

    add-long/2addr v6, v0

    .line 624
    long-to-int v9, v6

    .line 625
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 626
    ushr-int/lit8 v8, v9, 0x1f

    .line 627
    const/16 v0, 0x20

    ushr-long v0, v6, v0

    add-long/2addr v12, v0

    .line 630
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 631
    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    .line 632
    const/4 v0, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 634
    mul-long v0, v14, v4

    add-long/2addr v12, v0

    .line 635
    long-to-int v9, v12

    .line 636
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 637
    ushr-int/lit8 v8, v9, 0x1f

    .line 638
    const/16 v0, 0x20

    ushr-long v0, v12, v0

    mul-long v2, v14, v10

    add-long/2addr v0, v2

    add-long v16, v16, v0

    .line 639
    const/16 v0, 0x20

    ushr-long v0, v16, v0

    add-long v18, v18, v0

    .line 640
    const-wide v0, 0xffffffffL

    and-long v16, v16, v0

    .line 643
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v20, v0, v2

    .line 644
    const/4 v0, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v22, v0, v2

    .line 645
    const/4 v0, 0x6

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v24, v0, v2

    .line 647
    mul-long v0, v20, v4

    add-long v16, v16, v0

    .line 648
    move-wide/from16 v0, v16

    long-to-int v9, v0

    .line 649
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 650
    ushr-int/lit8 v8, v9, 0x1f

    .line 651
    const/16 v0, 0x20

    ushr-long v0, v16, v0

    mul-long v2, v20, v10

    add-long/2addr v0, v2

    add-long v18, v18, v0

    .line 652
    const/16 v0, 0x20

    ushr-long v0, v18, v0

    mul-long v2, v20, v14

    add-long/2addr v0, v2

    add-long v22, v22, v0

    .line 653
    const-wide v0, 0xffffffffL

    and-long v18, v18, v0

    .line 654
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    add-long v24, v24, v0

    .line 655
    const-wide v0, 0xffffffffL

    and-long v22, v22, v0

    .line 658
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v26, v0, v2

    .line 659
    const/4 v0, 0x7

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v28, v0, v2

    .line 660
    const/16 v0, 0x8

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v30, v0, v2

    .line 662
    mul-long v0, v26, v4

    add-long v18, v18, v0

    .line 663
    move-wide/from16 v0, v18

    long-to-int v9, v0

    .line 664
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 665
    ushr-int/lit8 v8, v9, 0x1f

    .line 666
    const/16 v0, 0x20

    ushr-long v0, v18, v0

    mul-long v2, v26, v10

    add-long/2addr v0, v2

    add-long v22, v22, v0

    .line 667
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    mul-long v2, v26, v14

    add-long/2addr v0, v2

    add-long v24, v24, v0

    .line 668
    const-wide v0, 0xffffffffL

    and-long v22, v22, v0

    .line 669
    const/16 v0, 0x20

    ushr-long v0, v24, v0

    mul-long v2, v26, v20

    add-long/2addr v0, v2

    add-long v28, v28, v0

    .line 670
    const-wide v0, 0xffffffffL

    and-long v24, v24, v0

    .line 671
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    add-long v30, v30, v0

    .line 672
    const-wide v0, 0xffffffffL

    and-long v28, v28, v0

    .line 675
    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v32, v0, v2

    .line 676
    const/16 v0, 0x9

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v34, v0, v2

    .line 677
    const/16 v0, 0xa

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v36, v0, v2

    .line 679
    mul-long v0, v32, v4

    add-long v22, v22, v0

    .line 680
    move-wide/from16 v0, v22

    long-to-int v9, v0

    .line 681
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 682
    ushr-int/lit8 v8, v9, 0x1f

    .line 683
    const/16 v0, 0x20

    ushr-long v0, v22, v0

    mul-long v2, v32, v10

    add-long/2addr v0, v2

    add-long v24, v24, v0

    .line 684
    const/16 v0, 0x20

    ushr-long v0, v24, v0

    mul-long v2, v32, v14

    add-long/2addr v0, v2

    add-long v28, v28, v0

    .line 685
    const/16 v0, 0x20

    ushr-long v0, v28, v0

    mul-long v2, v32, v20

    add-long/2addr v0, v2

    add-long v30, v30, v0

    .line 686
    const/16 v0, 0x20

    ushr-long v0, v30, v0

    mul-long v2, v32, v26

    add-long/2addr v0, v2

    add-long v34, v34, v0

    .line 687
    const/16 v0, 0x20

    ushr-long v0, v34, v0

    add-long v36, v36, v0

    .line 690
    move-wide/from16 v0, v24

    long-to-int v9, v0

    .line 691
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x6

    aput v0, p1, v1

    .line 692
    ushr-int/lit8 v8, v9, 0x1f

    .line 693
    move-wide/from16 v0, v28

    long-to-int v9, v0

    .line 694
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/4 v1, 0x7

    aput v0, p1, v1

    .line 695
    ushr-int/lit8 v8, v9, 0x1f

    .line 696
    move-wide/from16 v0, v30

    long-to-int v9, v0

    .line 697
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0x8

    aput v0, p1, v1

    .line 698
    ushr-int/lit8 v8, v9, 0x1f

    .line 699
    move-wide/from16 v0, v34

    long-to-int v9, v0

    .line 700
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0x9

    aput v0, p1, v1

    .line 701
    ushr-int/lit8 v8, v9, 0x1f

    .line 702
    move-wide/from16 v0, v36

    long-to-int v9, v0

    .line 703
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0xa

    aput v0, p1, v1

    .line 704
    ushr-int/lit8 v8, v9, 0x1f

    .line 705
    const/16 v0, 0xb

    aget v0, p1, v0

    const/16 v1, 0x20

    shr-long v1, v36, v1

    long-to-int v1, v1

    add-int v9, v0, v1

    .line 706
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v8

    const/16 v1, 0xb

    aput v0, p1, v1

    .line 707
    return-void
.end method

.method public static ﹳ([I)Z
    .locals 2

    .line 261
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x6

    if-ge v1, v0, :cond_1

    .line 263
    aget v0, p0, v1

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    return v0

    .line 261
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ﹳ(Ljava/math/BigInteger;)[I
    .locals 4

    .line 185
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-le v0, v1, :cond_1

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 190
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v2

    .line 191
    const/4 v3, 0x0

    .line 192
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    aput v1, v2, v0

    .line 195
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 197
    :cond_2
    return-object v2
.end method

.method public static ﾞ([I)Ljava/math/BigInteger;
    .locals 5

    .line 947
    const/16 v0, 0x18

    new-array v2, v0, [B

    .line 948
    const/4 v3, 0x0

    :goto_0
    const/4 v0, 0x6

    if-ge v3, v0, :cond_1

    .line 950
    aget v4, p0, v3

    .line 951
    if-eqz v4, :cond_0

    .line 953
    rsub-int/lit8 v0, v3, 0x5

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v4, v2, v0}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 948
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 956
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method
