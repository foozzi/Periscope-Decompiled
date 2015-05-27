.class public Lorg/spongycastle/crypto/digests/SHA224Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/digests/EncodableDigest;


# static fields
.field static final aGN:[I


# instance fields
.field private aGA:I

.field private aGB:I

.field private aGC:I

.field private aGD:I

.field private aGE:[I

.field private aGI:I

.field private aGJ:I

.field private aGK:I

.field private aGL:I

.field private aGw:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 310
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGN:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 27
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    .line 35
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA224Digest;->reset()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHA224Digest;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 27
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    .line 46
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ˊ(Lorg/spongycastle/crypto/digests/SHA224Digest;)V

    .line 47
    return-void
.end method

.method private ˊ(Lorg/spongycastle/crypto/digests/SHA224Digest;)V
    .locals 5

    .line 51
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->ˊ(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 53
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGA:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGA:I

    .line 54
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGB:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGB:I

    .line 55
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGC:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGC:I

    .line 56
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGD:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGD:I

    .line 57
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGI:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGI:I

    .line 58
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGJ:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGJ:I

    .line 59
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGK:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGK:I

    .line 60
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGL:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGL:I

    .line 62
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGw:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGw:I

    .line 64
    return-void
.end method

.method private ڏ(I)I
    .locals 3

    .line 285
    ushr-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xd

    shl-int/lit8 v2, p1, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x16

    shl-int/lit8 v2, p1, 0xa

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private ઽ(I)I
    .locals 3

    .line 291
    ushr-int/lit8 v0, p1, 0x6

    shl-int/lit8 v1, p1, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xb

    shl-int/lit8 v2, p1, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x19

    shl-int/lit8 v2, p1, 0x7

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private ເ(I)I
    .locals 3

    .line 297
    ushr-int/lit8 v0, p1, 0x7

    shl-int/lit8 v1, p1, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x12

    shl-int/lit8 v2, p1, 0xe

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private ᓰ(I)I
    .locals 3

    .line 303
    ushr-int/lit8 v0, p1, 0x11

    shl-int/lit8 v1, p1, 0xf

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x13

    shl-int/lit8 v2, p1, 0xd

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xa

    xor-int/2addr v0, v1

    return v0
.end method

.method private ᴵ(III)I
    .locals 2

    .line 271
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private ᵎ(III)I
    .locals 2

    .line 279
    and-int v0, p1, p2

    and-int v1, p1, p3

    xor-int/2addr v0, v1

    and-int v1, p2, p3

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    .line 130
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA224Digest;->finish()V

    .line 132
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGA:I

    invoke-static {v0, p1, p2}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 133
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGB:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 134
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGC:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 135
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGD:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 136
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGI:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 137
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGJ:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 138
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGK:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 140
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA224Digest;->reset()V

    .line 142
    const/16 v0, 0x1c

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 88
    const-string v0, "SHA-224"

    return-object v0
.end method

.method public iJ()I
    .locals 1

    .line 93
    const/16 v0, 0x1c

    return v0
.end method

.method public iU()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 322
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA224Digest;)V

    return-object v0
.end method

.method protected iV()V
    .locals 14

    .line 176
    const/16 v4, 0x10

    :goto_0
    const/16 v0, 0x3f

    if-gt v4, v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    add-int/lit8 v2, v4, -0x2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᓰ(I)I

    move-result v1

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    add-int/lit8 v3, v4, -0x7

    aget v2, v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    add-int/lit8 v3, v4, -0xf

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ເ(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    add-int/lit8 v3, v4, -0x10

    aget v2, v2, v3

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 176
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :cond_0
    iget v4, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGA:I

    .line 185
    iget v5, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGB:I

    .line 186
    iget v6, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGC:I

    .line 187
    iget v7, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGD:I

    .line 188
    iget v8, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGI:I

    .line 189
    iget v9, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGJ:I

    .line 190
    iget v10, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGK:I

    .line 191
    iget v11, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGL:I

    .line 194
    const/4 v12, 0x0

    .line 195
    const/4 v13, 0x0

    :goto_1
    const/16 v0, 0x8

    if-ge v13, v0, :cond_1

    .line 198
    invoke-direct {p0, v8}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ઽ(I)I

    move-result v0

    invoke-direct {p0, v8, v9, v10}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᴵ(III)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGN:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    add-int/2addr v11, v0

    .line 199
    add-int/2addr v7, v11

    .line 200
    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ڏ(I)I

    move-result v0

    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᵎ(III)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v11, v0

    .line 201
    add-int/lit8 v12, v12, 0x1

    .line 204
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ઽ(I)I

    move-result v0

    invoke-direct {p0, v7, v8, v9}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᴵ(III)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGN:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    add-int/2addr v10, v0

    .line 205
    add-int/2addr v6, v10

    .line 206
    invoke-direct {p0, v11}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ڏ(I)I

    move-result v0

    invoke-direct {p0, v11, v4, v5}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᵎ(III)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v10, v0

    .line 207
    add-int/lit8 v12, v12, 0x1

    .line 210
    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ઽ(I)I

    move-result v0

    invoke-direct {p0, v6, v7, v8}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᴵ(III)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGN:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    add-int/2addr v9, v0

    .line 211
    add-int/2addr v5, v9

    .line 212
    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ڏ(I)I

    move-result v0

    invoke-direct {p0, v10, v11, v4}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᵎ(III)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v9, v0

    .line 213
    add-int/lit8 v12, v12, 0x1

    .line 216
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ઽ(I)I

    move-result v0

    invoke-direct {p0, v5, v6, v7}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᴵ(III)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGN:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 217
    add-int/2addr v4, v8

    .line 218
    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ڏ(I)I

    move-result v0

    invoke-direct {p0, v9, v10, v11}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᵎ(III)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 219
    add-int/lit8 v12, v12, 0x1

    .line 222
    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ઽ(I)I

    move-result v0

    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᴵ(III)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGN:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 223
    add-int/2addr v11, v7

    .line 224
    invoke-direct {p0, v8}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ڏ(I)I

    move-result v0

    invoke-direct {p0, v8, v9, v10}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᵎ(III)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 225
    add-int/lit8 v12, v12, 0x1

    .line 228
    invoke-direct {p0, v11}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ઽ(I)I

    move-result v0

    invoke-direct {p0, v11, v4, v5}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᴵ(III)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGN:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 229
    add-int/2addr v10, v6

    .line 230
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ڏ(I)I

    move-result v0

    invoke-direct {p0, v7, v8, v9}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᵎ(III)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 231
    add-int/lit8 v12, v12, 0x1

    .line 234
    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ઽ(I)I

    move-result v0

    invoke-direct {p0, v10, v11, v4}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᴵ(III)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGN:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    .line 235
    add-int/2addr v9, v5

    .line 236
    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ڏ(I)I

    move-result v0

    invoke-direct {p0, v6, v7, v8}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᵎ(III)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    .line 237
    add-int/lit8 v12, v12, 0x1

    .line 240
    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ઽ(I)I

    move-result v0

    invoke-direct {p0, v9, v10, v11}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᴵ(III)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGN:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    aget v1, v1, v12

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    .line 241
    add-int/2addr v8, v4

    .line 242
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ڏ(I)I

    move-result v0

    invoke-direct {p0, v5, v6, v7}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ᵎ(III)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    .line 243
    add-int/lit8 v12, v12, 0x1

    .line 195
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 246
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGA:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGA:I

    .line 247
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGB:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGB:I

    .line 248
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGC:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGC:I

    .line 249
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGD:I

    add-int/2addr v0, v7

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGD:I

    .line 250
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGI:I

    add-int/2addr v0, v8

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGI:I

    .line 251
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGJ:I

    add-int/2addr v0, v9

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGJ:I

    .line 252
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGK:I

    add-int/2addr v0, v10

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGK:I

    .line 253
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGL:I

    add-int/2addr v0, v11

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGL:I

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGw:I

    .line 259
    const/4 v13, 0x0

    :goto_2
    const/16 v0, 0x10

    if-ge v13, v0, :cond_2

    .line 261
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    const/4 v1, 0x0

    aput v1, v0, v13

    .line 259
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 263
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 3

    .line 150
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->reset()V

    .line 155
    const v0, -0x3efa6128

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGA:I

    .line 156
    const v0, 0x367cd507

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGB:I

    .line 157
    const v0, 0x3070dd17

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGC:I

    .line 158
    const v0, -0x8f1a6c7

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGD:I

    .line 159
    const v0, -0x3ff4cf

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGI:I

    .line 160
    const v0, 0x68581511

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGJ:I

    .line 161
    const v0, 0x64f98fa7

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGK:I

    .line 162
    const v0, -0x4105b05c

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGL:I

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGw:I

    .line 165
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    array-length v0, v0

    if-eq v2, v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    const/4 v1, 0x0

    aput v1, v0, v2

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method public ˊ(Lorg/spongycastle/util/Memoable;)V
    .locals 2

    .line 327
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    move-object v1, v0

    .line 329
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/digests/SHA224Digest;->ˊ(Lorg/spongycastle/crypto/digests/SHA224Digest;)V

    .line 330
    return-void
.end method

.method protected ۦ(J)V
    .locals 3

    .line 117
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGw:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA224Digest;->iV()V

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 124
    return-void
.end method

.method protected ι([BI)V
    .locals 3

    .line 102
    aget-byte v0, p1, p2

    shl-int/lit8 v2, v0, 0x18

    .line 103
    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v2, v0

    .line 104
    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    .line 105
    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v2, v0

    .line 106
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGE:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGw:I

    aput v2, v0, v1

    .line 108
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA224Digest;->aGw:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA224Digest;->iV()V

    .line 112
    :cond_0
    return-void
.end method
