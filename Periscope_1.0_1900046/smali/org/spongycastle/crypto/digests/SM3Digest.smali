.class public Lorg/spongycastle/crypto/digests/SM3Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source ""


# static fields
.field private static final aHp:[I


# instance fields
.field private aGw:I

.field private aHl:[I

.field private aHm:[I

.field private aHn:[I

.field private aHo:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    const/16 v0, 0x40

    new-array v0, v0, [I

    sput-object v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHp:[I

    .line 37
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge v3, v0, :cond_0

    .line 39
    const v4, 0x79cc4519

    .line 40
    sget-object v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHp:[I

    shl-int v1, v4, v3

    rsub-int/lit8 v2, v3, 0x20

    ushr-int v2, v4, v2

    or-int/2addr v1, v2

    aput v1, v0, v3

    .line 37
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_0
    const/16 v3, 0x10

    :goto_1
    const/16 v0, 0x40

    if-ge v3, v0, :cond_1

    .line 44
    rem-int/lit8 v4, v3, 0x20

    .line 45
    const v5, 0x7a879d8a

    .line 46
    sget-object v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHp:[I

    shl-int v1, v5, v4

    rsub-int/lit8 v2, v4, 0x20

    ushr-int v2, v5, v2

    or-int/2addr v1, v2

    aput v1, v0, v3

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 48
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHm:[I

    .line 29
    const/16 v0, 0x44

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHn:[I

    .line 30
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHo:[I

    .line 56
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->reset()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SM3Digest;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHm:[I

    .line 29
    const/16 v0, 0x44

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHn:[I

    .line 30
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHo:[I

    .line 67
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SM3Digest;->ˊ(Lorg/spongycastle/crypto/digests/SM3Digest;)V

    .line 68
    return-void
.end method

.method private ˊ(Lorg/spongycastle/crypto/digests/SM3Digest;)V
    .locals 5

    .line 72
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SM3Digest;->aHm:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHm:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHm:[I

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v0, p1, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    .line 75
    return-void
.end method

.method private ᓵ(I)I
    .locals 4

    .line 223
    shl-int/lit8 v0, p1, 0x9

    ushr-int/lit8 v1, p1, 0x17

    or-int v2, v0, v1

    .line 224
    shl-int/lit8 v0, p1, 0x11

    ushr-int/lit8 v1, p1, 0xf

    or-int v3, v0, v1

    .line 225
    xor-int v0, p1, v2

    xor-int/2addr v0, v3

    return v0
.end method

.method private ᔿ(I)I
    .locals 4

    .line 230
    shl-int/lit8 v0, p1, 0xf

    ushr-int/lit8 v1, p1, 0x11

    or-int v2, v0, v1

    .line 231
    shl-int/lit8 v0, p1, 0x17

    ushr-int/lit8 v1, p1, 0x9

    or-int v3, v0, v1

    .line 232
    xor-int v0, p1, v2

    xor-int/2addr v0, v3

    return v0
.end method

.method private ᵔ(III)I
    .locals 1

    .line 237
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private ᵢ(III)I
    .locals 2

    .line 242
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private ⁱ(III)I
    .locals 1

    .line 247
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private ﹶ(III)I
    .locals 2

    .line 252
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    .line 125
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->finish()V

    .line 127
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x0

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 128
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 129
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 130
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 131
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 132
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 133
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x1c

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 136
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->reset()V

    .line 138
    const/16 v0, 0x20

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "SM3"

    return-object v0
.end method

.method public iJ()I
    .locals 1

    .line 84
    const/16 v0, 0x20

    return v0
.end method

.method public iU()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 90
    new-instance v0, Lorg/spongycastle/crypto/digests/SM3Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SM3Digest;-><init>(Lorg/spongycastle/crypto/digests/SM3Digest;)V

    return-object v0
.end method

.method protected iV()V
    .locals 19

    .line 258
    const/4 v4, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge v4, v0, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHn:[I

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/digests/SM3Digest;->aHm:[I

    aget v1, v1, v4

    aput v1, v0, v4

    .line 258
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    :cond_0
    const/16 v4, 0x10

    :goto_1
    const/16 v0, 0x44

    if-ge v4, v0, :cond_1

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHn:[I

    add-int/lit8 v1, v4, -0x3

    aget v5, v0, v1

    .line 265
    shl-int/lit8 v0, v5, 0xf

    ushr-int/lit8 v1, v5, 0x11

    or-int v6, v0, v1

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHn:[I

    add-int/lit8 v1, v4, -0xd

    aget v7, v0, v1

    .line 267
    shl-int/lit8 v0, v7, 0x7

    ushr-int/lit8 v1, v7, 0x19

    or-int v8, v0, v1

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHn:[I

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/digests/SM3Digest;->aHn:[I

    add-int/lit8 v2, v4, -0x10

    aget v1, v1, v2

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/digests/SM3Digest;->aHn:[I

    add-int/lit8 v3, v4, -0x9

    aget v2, v2, v3

    xor-int/2addr v1, v2

    xor-int/2addr v1, v6

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lorg/spongycastle/crypto/digests/SM3Digest;->ᔿ(I)I

    move-result v1

    xor-int/2addr v1, v8

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/digests/SM3Digest;->aHn:[I

    add-int/lit8 v3, v4, -0x6

    aget v2, v2, v3

    xor-int/2addr v1, v2

    aput v1, v0, v4

    .line 262
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 270
    :cond_1
    const/4 v4, 0x0

    :goto_2
    const/16 v0, 0x40

    if-ge v4, v0, :cond_2

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHo:[I

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/digests/SM3Digest;->aHn:[I

    aget v1, v1, v4

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/digests/SM3Digest;->aHn:[I

    add-int/lit8 v3, v4, 0x4

    aget v2, v2, v3

    xor-int/2addr v1, v2

    aput v1, v0, v4

    .line 270
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 275
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x0

    aget v4, v0, v1

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x1

    aget v5, v0, v1

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x2

    aget v6, v0, v1

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x3

    aget v7, v0, v1

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x4

    aget v8, v0, v1

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x5

    aget v9, v0, v1

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x6

    aget v10, v0, v1

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x7

    aget v11, v0, v1

    .line 285
    const/4 v12, 0x0

    :goto_3
    const/16 v0, 0x10

    if-ge v12, v0, :cond_3

    .line 287
    shl-int/lit8 v0, v4, 0xc

    ushr-int/lit8 v1, v4, 0x14

    or-int v13, v0, v1

    .line 288
    add-int v0, v13, v8

    sget-object v1, Lorg/spongycastle/crypto/digests/SM3Digest;->aHp:[I

    aget v1, v1, v12

    add-int v14, v0, v1

    .line 289
    shl-int/lit8 v0, v14, 0x7

    ushr-int/lit8 v1, v14, 0x19

    or-int v15, v0, v1

    .line 290
    xor-int v16, v15, v13

    .line 291
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/SM3Digest;->ᵔ(III)I

    move-result v0

    add-int/2addr v0, v7

    add-int v0, v0, v16

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/digests/SM3Digest;->aHo:[I

    aget v1, v1, v12

    add-int v17, v0, v1

    .line 292
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10}, Lorg/spongycastle/crypto/digests/SM3Digest;->ⁱ(III)I

    move-result v0

    add-int/2addr v0, v11

    add-int/2addr v0, v15

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/digests/SM3Digest;->aHn:[I

    aget v1, v1, v12

    add-int v18, v0, v1

    .line 293
    move v7, v6

    .line 294
    shl-int/lit8 v0, v5, 0x9

    ushr-int/lit8 v1, v5, 0x17

    or-int v6, v0, v1

    .line 295
    move v5, v4

    .line 296
    move/from16 v4, v17

    .line 297
    move v11, v10

    .line 298
    shl-int/lit8 v0, v9, 0x13

    ushr-int/lit8 v1, v9, 0xd

    or-int v10, v0, v1

    .line 299
    move v9, v8

    .line 300
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SM3Digest;->ᓵ(I)I

    move-result v8

    .line 285
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 304
    :cond_3
    const/16 v12, 0x10

    :goto_4
    const/16 v0, 0x40

    if-ge v12, v0, :cond_4

    .line 306
    shl-int/lit8 v0, v4, 0xc

    ushr-int/lit8 v1, v4, 0x14

    or-int v13, v0, v1

    .line 307
    add-int v0, v13, v8

    sget-object v1, Lorg/spongycastle/crypto/digests/SM3Digest;->aHp:[I

    aget v1, v1, v12

    add-int v14, v0, v1

    .line 308
    shl-int/lit8 v0, v14, 0x7

    ushr-int/lit8 v1, v14, 0x19

    or-int v15, v0, v1

    .line 309
    xor-int v16, v15, v13

    .line 310
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/SM3Digest;->ᵢ(III)I

    move-result v0

    add-int/2addr v0, v7

    add-int v0, v0, v16

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/digests/SM3Digest;->aHo:[I

    aget v1, v1, v12

    add-int v17, v0, v1

    .line 311
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10}, Lorg/spongycastle/crypto/digests/SM3Digest;->ﹶ(III)I

    move-result v0

    add-int/2addr v0, v11

    add-int/2addr v0, v15

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/digests/SM3Digest;->aHn:[I

    aget v1, v1, v12

    add-int v18, v0, v1

    .line 312
    move v7, v6

    .line 313
    shl-int/lit8 v0, v5, 0x9

    ushr-int/lit8 v1, v5, 0x17

    or-int v6, v0, v1

    .line 314
    move v5, v4

    .line 315
    move/from16 v4, v17

    .line 316
    move v11, v10

    .line 317
    shl-int/lit8 v0, v9, 0x13

    ushr-int/lit8 v1, v9, 0xd

    or-int v10, v0, v1

    .line 318
    move v9, v8

    .line 319
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SM3Digest;->ᓵ(I)I

    move-result v8

    .line 304
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 322
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    xor-int/2addr v1, v4

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    xor-int/2addr v1, v5

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x2

    aget v1, v0, v1

    xor-int/2addr v1, v6

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x3

    aget v1, v0, v1

    xor-int/2addr v1, v7

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x4

    aget v1, v0, v1

    xor-int/2addr v1, v8

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x5

    aget v1, v0, v1

    xor-int/2addr v1, v9

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x6

    aget v1, v0, v1

    xor-int/2addr v1, v10

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const/4 v1, 0x7

    aget v1, v0, v1

    xor-int/2addr v1, v11

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 331
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    .line 332
    return-void
.end method

.method public reset()V
    .locals 3

    .line 107
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->reset()V

    .line 109
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const v1, 0x7380166f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const v1, 0x4914b2b9

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const v1, 0x172442d7

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const v1, -0x2575fa00

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const v1, -0x5690cf44

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const v1, 0x163138aa

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 115
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const v1, -0x1c7211b3

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 116
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHl:[I

    const v1, -0x4f04f1b2

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    .line 119
    return-void
.end method

.method public ˊ(Lorg/spongycastle/util/Memoable;)V
    .locals 2

    .line 95
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/SM3Digest;

    move-object v1, v0

    .line 97
    invoke-super {p0, v1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->ˊ(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 98
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/digests/SM3Digest;->ˊ(Lorg/spongycastle/crypto/digests/SM3Digest;)V

    .line 99
    return-void
.end method

.method protected ۦ(J)V
    .locals 4

    .line 163
    iget v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHm:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 167
    iget v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    .line 169
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->iV()V

    .line 172
    :cond_0
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 174
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHm:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 175
    iget v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHm:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 180
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHm:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    long-to-int v2, p1

    aput v2, v0, v1

    .line 181
    return-void
.end method

.method protected ι([BI)V
    .locals 4

    .line 147
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int v3, v0, v1

    .line 152
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aHm:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    aput v3, v0, v1

    .line 153
    iget v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    .line 155
    iget v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->aGw:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->iV()V

    .line 159
    :cond_0
    return-void
.end method
