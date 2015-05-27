.class public Lorg/spongycastle/crypto/digests/SHA1Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/digests/EncodableDigest;


# instance fields
.field private aGA:I

.field private aGB:I

.field private aGC:I

.field private aGD:I

.field private aGE:[I

.field private aGI:I

.field private aGw:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 20
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    .line 28
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->reset()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHA1Digest;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 20
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    .line 39
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->ˊ(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    .line 40
    return-void
.end method

.method private ˊ(Lorg/spongycastle/crypto/digests/SHA1Digest;)V
    .locals 5

    .line 61
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGA:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGA:I

    .line 62
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGB:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGB:I

    .line 63
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGC:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGC:I

    .line 64
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGD:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGD:I

    .line 65
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGI:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGI:I

    .line 67
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGw:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGw:I

    .line 69
    return-void
.end method

.method private ՙ(III)I
    .locals 2

    .line 161
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private י(III)I
    .locals 1

    .line 169
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private ٴ(III)I
    .locals 2

    .line 177
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    .line 115
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->finish()V

    .line 117
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGA:I

    invoke-static {v0, p1, p2}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 118
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGB:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 119
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGC:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 120
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGD:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 121
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGI:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 123
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->reset()V

    .line 125
    const/16 v0, 0x14

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "SHA-1"

    return-object v0
.end method

.method public iJ()I
    .locals 1

    .line 78
    const/16 v0, 0x14

    return v0
.end method

.method public iU()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 313
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    return-object v0
.end method

.method protected iV()V
    .locals 10

    .line 185
    const/16 v3, 0x10

    :goto_0
    const/16 v0, 0x50

    if-ge v3, v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    add-int/lit8 v1, v3, -0x3

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    add-int/lit8 v2, v3, -0x8

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    add-int/lit8 v2, v3, -0xe

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    add-int/lit8 v2, v3, -0x10

    aget v1, v1, v2

    xor-int v4, v0, v1

    .line 188
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    shl-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v2, v4, 0x1f

    or-int/2addr v1, v2

    aput v1, v0, v3

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    :cond_0
    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGA:I

    .line 195
    iget v4, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGB:I

    .line 196
    iget v5, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGC:I

    .line 197
    iget v6, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGD:I

    .line 198
    iget v7, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGI:I

    .line 203
    const/4 v8, 0x0

    .line 205
    const/4 v9, 0x0

    :goto_1
    const/4 v0, 0x4

    if-ge v9, v0, :cond_1

    .line 209
    shl-int/lit8 v0, v3, 0x5

    ushr-int/lit8 v1, v3, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/SHA1Digest;->ՙ(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 210
    shl-int/lit8 v0, v4, 0x1e

    ushr-int/lit8 v1, v4, 0x2

    or-int v4, v0, v1

    .line 212
    shl-int/lit8 v0, v7, 0x5

    ushr-int/lit8 v1, v7, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/SHA1Digest;->ՙ(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 213
    shl-int/lit8 v0, v3, 0x1e

    ushr-int/lit8 v1, v3, 0x2

    or-int v3, v0, v1

    .line 215
    shl-int/lit8 v0, v6, 0x5

    ushr-int/lit8 v1, v6, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v7, v3, v4}, Lorg/spongycastle/crypto/digests/SHA1Digest;->ՙ(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    .line 216
    shl-int/lit8 v0, v7, 0x1e

    ushr-int/lit8 v1, v7, 0x2

    or-int v7, v0, v1

    .line 218
    shl-int/lit8 v0, v5, 0x5

    ushr-int/lit8 v1, v5, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v6, v7, v3}, Lorg/spongycastle/crypto/digests/SHA1Digest;->ՙ(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    .line 219
    shl-int/lit8 v0, v6, 0x1e

    ushr-int/lit8 v1, v6, 0x2

    or-int v6, v0, v1

    .line 221
    shl-int/lit8 v0, v4, 0x5

    ushr-int/lit8 v1, v4, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v5, v6, v7}, Lorg/spongycastle/crypto/digests/SHA1Digest;->ՙ(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 222
    shl-int/lit8 v0, v5, 0x1e

    ushr-int/lit8 v1, v5, 0x2

    or-int v5, v0, v1

    .line 205
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 228
    :cond_1
    const/4 v9, 0x0

    :goto_2
    const/4 v0, 0x4

    if-ge v9, v0, :cond_2

    .line 232
    shl-int/lit8 v0, v3, 0x5

    ushr-int/lit8 v1, v3, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/SHA1Digest;->י(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 233
    shl-int/lit8 v0, v4, 0x1e

    ushr-int/lit8 v1, v4, 0x2

    or-int v4, v0, v1

    .line 235
    shl-int/lit8 v0, v7, 0x5

    ushr-int/lit8 v1, v7, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/SHA1Digest;->י(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 236
    shl-int/lit8 v0, v3, 0x1e

    ushr-int/lit8 v1, v3, 0x2

    or-int v3, v0, v1

    .line 238
    shl-int/lit8 v0, v6, 0x5

    ushr-int/lit8 v1, v6, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v7, v3, v4}, Lorg/spongycastle/crypto/digests/SHA1Digest;->י(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    .line 239
    shl-int/lit8 v0, v7, 0x1e

    ushr-int/lit8 v1, v7, 0x2

    or-int v7, v0, v1

    .line 241
    shl-int/lit8 v0, v5, 0x5

    ushr-int/lit8 v1, v5, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v6, v7, v3}, Lorg/spongycastle/crypto/digests/SHA1Digest;->י(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    .line 242
    shl-int/lit8 v0, v6, 0x1e

    ushr-int/lit8 v1, v6, 0x2

    or-int v6, v0, v1

    .line 244
    shl-int/lit8 v0, v4, 0x5

    ushr-int/lit8 v1, v4, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v5, v6, v7}, Lorg/spongycastle/crypto/digests/SHA1Digest;->י(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 245
    shl-int/lit8 v0, v5, 0x1e

    ushr-int/lit8 v1, v5, 0x2

    or-int v5, v0, v1

    .line 228
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 251
    :cond_2
    const/4 v9, 0x0

    :goto_3
    const/4 v0, 0x4

    if-ge v9, v0, :cond_3

    .line 255
    shl-int/lit8 v0, v3, 0x5

    ushr-int/lit8 v1, v3, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/SHA1Digest;->ٴ(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, -0x70e44324

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 256
    shl-int/lit8 v0, v4, 0x1e

    ushr-int/lit8 v1, v4, 0x2

    or-int v4, v0, v1

    .line 258
    shl-int/lit8 v0, v7, 0x5

    ushr-int/lit8 v1, v7, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/SHA1Digest;->ٴ(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, -0x70e44324

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 259
    shl-int/lit8 v0, v3, 0x1e

    ushr-int/lit8 v1, v3, 0x2

    or-int v3, v0, v1

    .line 261
    shl-int/lit8 v0, v6, 0x5

    ushr-int/lit8 v1, v6, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v7, v3, v4}, Lorg/spongycastle/crypto/digests/SHA1Digest;->ٴ(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, -0x70e44324

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    .line 262
    shl-int/lit8 v0, v7, 0x1e

    ushr-int/lit8 v1, v7, 0x2

    or-int v7, v0, v1

    .line 264
    shl-int/lit8 v0, v5, 0x5

    ushr-int/lit8 v1, v5, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v6, v7, v3}, Lorg/spongycastle/crypto/digests/SHA1Digest;->ٴ(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, -0x70e44324

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    .line 265
    shl-int/lit8 v0, v6, 0x1e

    ushr-int/lit8 v1, v6, 0x2

    or-int v6, v0, v1

    .line 267
    shl-int/lit8 v0, v4, 0x5

    ushr-int/lit8 v1, v4, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v5, v6, v7}, Lorg/spongycastle/crypto/digests/SHA1Digest;->ٴ(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, -0x70e44324

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 268
    shl-int/lit8 v0, v5, 0x1e

    ushr-int/lit8 v1, v5, 0x2

    or-int v5, v0, v1

    .line 251
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 274
    :cond_3
    const/4 v9, 0x0

    :goto_4
    const/4 v0, 0x3

    if-gt v9, v0, :cond_4

    .line 278
    shl-int/lit8 v0, v3, 0x5

    ushr-int/lit8 v1, v3, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/SHA1Digest;->י(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, -0x359d3e2a    # -3715189.5f

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 279
    shl-int/lit8 v0, v4, 0x1e

    ushr-int/lit8 v1, v4, 0x2

    or-int v4, v0, v1

    .line 281
    shl-int/lit8 v0, v7, 0x5

    ushr-int/lit8 v1, v7, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/SHA1Digest;->י(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, -0x359d3e2a    # -3715189.5f

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 282
    shl-int/lit8 v0, v3, 0x1e

    ushr-int/lit8 v1, v3, 0x2

    or-int v3, v0, v1

    .line 284
    shl-int/lit8 v0, v6, 0x5

    ushr-int/lit8 v1, v6, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v7, v3, v4}, Lorg/spongycastle/crypto/digests/SHA1Digest;->י(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, -0x359d3e2a    # -3715189.5f

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    .line 285
    shl-int/lit8 v0, v7, 0x1e

    ushr-int/lit8 v1, v7, 0x2

    or-int v7, v0, v1

    .line 287
    shl-int/lit8 v0, v5, 0x5

    ushr-int/lit8 v1, v5, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v6, v7, v3}, Lorg/spongycastle/crypto/digests/SHA1Digest;->י(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, -0x359d3e2a    # -3715189.5f

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    .line 288
    shl-int/lit8 v0, v6, 0x1e

    ushr-int/lit8 v1, v6, 0x2

    or-int v6, v0, v1

    .line 290
    shl-int/lit8 v0, v4, 0x5

    ushr-int/lit8 v1, v4, 0x1b

    or-int/2addr v0, v1

    invoke-direct {p0, v5, v6, v7}, Lorg/spongycastle/crypto/digests/SHA1Digest;->י(III)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, -0x359d3e2a    # -3715189.5f

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 291
    shl-int/lit8 v0, v5, 0x1e

    ushr-int/lit8 v1, v5, 0x2

    or-int v5, v0, v1

    .line 274
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 295
    :cond_4
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGA:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGA:I

    .line 296
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGB:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGB:I

    .line 297
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGC:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGC:I

    .line 298
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGD:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGD:I

    .line 299
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGI:I

    add-int/2addr v0, v7

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGI:I

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGw:I

    .line 305
    const/4 v9, 0x0

    :goto_5
    const/16 v0, 0x10

    if-ge v9, v0, :cond_5

    .line 307
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    const/4 v1, 0x0

    aput v1, v0, v9

    .line 305
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 309
    :cond_5
    return-void
.end method

.method public reset()V
    .locals 3

    .line 133
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->reset()V

    .line 135
    const v0, 0x67452301

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGA:I

    .line 136
    const v0, -0x10325477

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGB:I

    .line 137
    const v0, -0x67452302

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGC:I

    .line 138
    const v0, 0x10325476

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGD:I

    .line 139
    const v0, -0x3c2d1e10

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGI:I

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGw:I

    .line 142
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    array-length v0, v0

    if-eq v2, v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    const/4 v1, 0x0

    aput v1, v0, v2

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public ˊ(Lorg/spongycastle/util/Memoable;)V
    .locals 2

    .line 318
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    move-object v1, v0

    .line 320
    invoke-super {p0, v1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->ˊ(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 321
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->ˊ(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    .line 322
    return-void
.end method

.method protected ۦ(J)V
    .locals 3

    .line 102
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGw:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->iV()V

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 109
    return-void
.end method

.method protected ι([BI)V
    .locals 3

    .line 87
    aget-byte v0, p1, p2

    shl-int/lit8 v2, v0, 0x18

    .line 88
    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v2, v0

    .line 89
    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    .line 90
    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v2, v0

    .line 91
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGE:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGw:I

    aput v2, v0, v1

    .line 93
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->aGw:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->iV()V

    .line 97
    :cond_0
    return-void
.end method
