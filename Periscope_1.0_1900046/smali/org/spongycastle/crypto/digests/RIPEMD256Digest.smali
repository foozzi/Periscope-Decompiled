.class public Lorg/spongycastle/crypto/digests/RIPEMD256Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source ""


# instance fields
.field private aGA:I

.field private aGB:I

.field private aGC:I

.field private aGD:I

.field private aGE:[I

.field private aGH:I

.field private aGI:I

.field private aGJ:I

.field private aGK:I

.field private aGw:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    .line 26
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->reset()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/RIPEMD256Digest;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    .line 37
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(Lorg/spongycastle/crypto/digests/RIPEMD256Digest;)V

    .line 38
    return-void
.end method

.method private ʻ(IIIIII)I
    .locals 2

    .line 268
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐨ(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6d703ef3

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᵛ(II)I

    move-result v0

    return v0
.end method

.method private ʼ(IIIIII)I
    .locals 2

    .line 279
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ﹳ(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5c4dd124

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᵛ(II)I

    move-result v0

    return v0
.end method

.method private ʽ(IIIIII)I
    .locals 2

    .line 290
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ﾞ(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x50a28be6

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᵛ(II)I

    move-result v0

    return v0
.end method

.method private ˊ(IIIIII)I
    .locals 1

    .line 213
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐧ(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᵛ(II)I

    move-result v0

    return v0
.end method

.method private ˊ(I[BI)V
    .locals 2

    .line 97
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 98
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 99
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 100
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 101
    return-void
.end method

.method private ˊ(Lorg/spongycastle/crypto/digests/RIPEMD256Digest;)V
    .locals 5

    .line 42
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->ˊ(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 44
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGH:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGH:I

    .line 45
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGA:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGA:I

    .line 46
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGB:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGB:I

    .line 47
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGC:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGC:I

    .line 48
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGD:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGD:I

    .line 49
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGI:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGI:I

    .line 50
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGJ:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGJ:I

    .line 51
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGK:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGK:I

    .line 53
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGw:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGw:I

    .line 55
    return-void
.end method

.method private ˋ(IIIIII)I
    .locals 2

    .line 224
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐨ(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5a827999

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᵛ(II)I

    move-result v0

    return v0
.end method

.method private ˎ(IIIIII)I
    .locals 2

    .line 235
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ﹳ(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᵛ(II)I

    move-result v0

    return v0
.end method

.method private ˏ(IIIIII)I
    .locals 2

    .line 246
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ﾞ(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, -0x70e44324

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᵛ(II)I

    move-result v0

    return v0
.end method

.method private ᐝ(IIIIII)I
    .locals 1

    .line 257
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐧ(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᵛ(II)I

    move-result v0

    return v0
.end method

.method private ᐧ(III)I
    .locals 1

    .line 169
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private ᐨ(III)I
    .locals 2

    .line 180
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private ᵛ(II)I
    .locals 2

    .line 154
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private ﹳ(III)I
    .locals 1

    .line 191
    xor-int/lit8 v0, p2, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p3

    return v0
.end method

.method private ﾞ(III)I
    .locals 2

    .line 202
    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    .line 107
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->finish()V

    .line 109
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGH:I

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(I[BI)V

    .line 110
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGA:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(I[BI)V

    .line 111
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGB:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(I[BI)V

    .line 112
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGC:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(I[BI)V

    .line 113
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGD:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(I[BI)V

    .line 114
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGI:I

    add-int/lit8 v1, p2, 0x14

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(I[BI)V

    .line 115
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGJ:I

    add-int/lit8 v1, p2, 0x18

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(I[BI)V

    .line 116
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGK:I

    add-int/lit8 v1, p2, 0x1c

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(I[BI)V

    .line 118
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->reset()V

    .line 120
    const/16 v0, 0x20

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "RIPEMD256"

    return-object v0
.end method

.method public iJ()I
    .locals 1

    .line 64
    const/16 v0, 0x20

    return v0
.end method

.method public iU()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 488
    new-instance v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;-><init>(Lorg/spongycastle/crypto/digests/RIPEMD256Digest;)V

    return-object v0
.end method

.method protected iV()V
    .locals 17

    .line 301
    move-object/from16 v0, p0

    iget v7, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGH:I

    .line 302
    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGA:I

    .line 303
    move-object/from16 v0, p0

    iget v11, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGB:I

    .line 304
    move-object/from16 v0, p0

    iget v13, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGC:I

    .line 305
    move-object/from16 v0, p0

    iget v8, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGD:I

    .line 306
    move-object/from16 v0, p0

    iget v10, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGI:I

    .line 307
    move-object/from16 v0, p0

    iget v12, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGJ:I

    .line 308
    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGK:I

    .line 314
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v7

    .line 315
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/16 v6, 0xe

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v13

    .line 316
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v11

    .line 317
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v9

    .line 318
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v7

    .line 319
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v13

    .line 320
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v11

    .line 321
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v9

    .line 322
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v7

    .line 323
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    const/16 v6, 0xd

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v13

    .line 324
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    const/16 v6, 0xe

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v11

    .line 325
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v9

    .line 326
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xc

    aget v5, v5, v6

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v7

    .line 327
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xd

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v13

    .line 328
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v11

    .line 329
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(IIIIII)I

    move-result v9

    .line 331
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v8

    .line 332
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v14

    .line 333
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v12

    .line 334
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v10

    .line 335
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    const/16 v6, 0xd

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v8

    .line 336
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v14

    .line 337
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v12

    .line 338
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v10

    .line 339
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xd

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v8

    .line 340
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v14

    .line 341
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v12

    .line 342
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v10

    .line 343
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/16 v6, 0xe

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v8

    .line 344
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    const/16 v6, 0xe

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v14

    .line 345
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v12

    .line 346
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xc

    aget v5, v5, v6

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʽ(IIIIII)I

    move-result v10

    .line 348
    move v15, v7

    move v7, v8

    move v8, v15

    .line 353
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v7

    .line 354
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v13

    .line 355
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xd

    aget v5, v5, v6

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v11

    .line 356
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/16 v6, 0xd

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v9

    .line 357
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v7

    .line 358
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v13

    .line 359
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v11

    .line 360
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v9

    .line 361
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xc

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v7

    .line 362
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v13

    .line 363
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v11

    .line 364
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v9

    .line 365
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v7

    .line 366
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v13

    .line 367
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    const/16 v6, 0xd

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v11

    .line 368
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˋ(IIIIII)I

    move-result v9

    .line 370
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v8

    .line 371
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    const/16 v6, 0xd

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v14

    .line 372
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v12

    .line 373
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v10

    .line 374
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v8

    .line 375
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xd

    aget v5, v5, v6

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v14

    .line 376
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v12

    .line 377
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v10

    .line 378
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v8

    .line 379
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v14

    .line 380
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v12

    .line 381
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xc

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v10

    .line 382
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v8

    .line 383
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v14

    .line 384
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/16 v6, 0xd

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v12

    .line 385
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʼ(IIIIII)I

    move-result v10

    .line 387
    move v15, v9

    move v9, v10

    move v10, v15

    .line 392
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v7

    .line 393
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    const/16 v6, 0xd

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v13

    .line 394
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v11

    .line 395
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v9

    .line 396
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    const/16 v6, 0xe

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v7

    .line 397
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v13

    .line 398
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    const/16 v6, 0xd

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v11

    .line 399
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v9

    .line 400
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/16 v6, 0xe

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v7

    .line 401
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v13

    .line 402
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0xd

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v11

    .line 403
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v9

    .line 404
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xd

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v7

    .line 405
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v13

    .line 406
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v11

    .line 407
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xc

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˎ(IIIIII)I

    move-result v9

    .line 409
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v8

    .line 410
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v14

    .line 411
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v12

    .line 412
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v10

    .line 413
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v8

    .line 414
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v14

    .line 415
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v12

    .line 416
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    const/16 v6, 0xe

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v10

    .line 417
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v8

    .line 418
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    const/16 v6, 0xd

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v14

    .line 419
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xc

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v12

    .line 420
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/16 v6, 0xe

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v10

    .line 421
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    const/16 v6, 0xd

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v8

    .line 422
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0xd

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v14

    .line 423
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v12

    .line 424
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xd

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ʻ(IIIIII)I

    move-result v10

    .line 426
    move v15, v11

    move v11, v12

    move v12, v15

    .line 431
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v7

    .line 432
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v13

    .line 433
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    const/16 v6, 0xe

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v11

    .line 434
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v9

    .line 435
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0xe

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v7

    .line 436
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v13

    .line 437
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xc

    aget v5, v5, v6

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v11

    .line 438
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v9

    .line 439
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xd

    aget v5, v5, v6

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v7

    .line 440
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    const/16 v6, 0xe

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v13

    .line 441
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v11

    .line 442
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v9

    .line 443
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v11

    move v4, v13

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v7

    .line 444
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v9

    move v4, v11

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v13

    .line 445
    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v7

    move v4, v9

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v11

    .line 446
    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v7

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˏ(IIIIII)I

    move-result v9

    .line 448
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v8

    .line 449
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v14

    .line 450
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v12

    .line 451
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v10

    .line 452
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    const/16 v6, 0xe

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v8

    .line 453
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    const/16 v6, 0xe

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v14

    .line 454
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v12

    .line 455
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0xe

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v10

    .line 456
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v8

    .line 457
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xc

    aget v5, v5, v6

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v14

    .line 458
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v12

    .line 459
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xd

    aget v5, v5, v6

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v10

    .line 460
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v12

    move v4, v14

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v8

    .line 461
    move-object/from16 v0, p0

    move v1, v14

    move v2, v8

    move v3, v10

    move v4, v12

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v14

    .line 462
    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v8

    move v4, v10

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v12

    .line 463
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v14

    move v4, v8

    move-object/from16 v5, p0

    iget-object v5, v5, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ᐝ(IIIIII)I

    move-result v10

    .line 465
    move v15, v13

    move v13, v14

    move v14, v15

    .line 467
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGH:I

    add-int/2addr v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGH:I

    .line 468
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGA:I

    add-int/2addr v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGA:I

    .line 469
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGB:I

    add-int/2addr v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGB:I

    .line 470
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGC:I

    add-int/2addr v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGC:I

    .line 471
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGD:I

    add-int/2addr v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGD:I

    .line 472
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGI:I

    add-int/2addr v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGI:I

    .line 473
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGJ:I

    add-int/2addr v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGJ:I

    .line 474
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGK:I

    add-int/2addr v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGK:I

    .line 479
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGw:I

    .line 480
    const/16 v16, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    array-length v0, v0

    move/from16 v1, v16

    if-eq v1, v0, :cond_0

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v1, 0x0

    aput v1, v0, v16

    .line 480
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 484
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 128
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->reset()V

    .line 130
    const v0, 0x67452301

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGH:I

    .line 131
    const v0, -0x10325477

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGA:I

    .line 132
    const v0, -0x67452302

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGB:I

    .line 133
    const v0, 0x10325476

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGC:I

    .line 134
    const v0, 0x76543210

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGD:I

    .line 135
    const v0, -0x1234568

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGI:I

    .line 136
    const v0, -0x76543211

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGJ:I

    .line 137
    const v0, 0x1234567

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGK:I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGw:I

    .line 141
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    array-length v0, v0

    if-eq v2, v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/4 v1, 0x0

    aput v1, v0, v2

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method public ˊ(Lorg/spongycastle/util/Memoable;)V
    .locals 2

    .line 493
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;

    move-object v1, v0

    .line 495
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->ˊ(Lorg/spongycastle/crypto/digests/RIPEMD256Digest;)V

    .line 496
    return-void
.end method

.method protected ۦ(J)V
    .locals 3

    .line 83
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGw:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->iV()V

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 90
    return-void
.end method

.method protected ι([BI)V
    .locals 5

    .line 71
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGE:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGw:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 74
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->aGw:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD256Digest;->iV()V

    .line 78
    :cond_0
    return-void
.end method
