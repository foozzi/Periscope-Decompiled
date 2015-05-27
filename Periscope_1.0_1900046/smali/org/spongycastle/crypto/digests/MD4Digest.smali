.class public Lorg/spongycastle/crypto/digests/MD4Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source ""


# instance fields
.field private aGA:I

.field private aGB:I

.field private aGC:I

.field private aGD:I

.field private aGE:[I

.field private aGw:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 20
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    .line 28
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/MD4Digest;->reset()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/MD4Digest;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 20
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    .line 39
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˊ(Lorg/spongycastle/crypto/digests/MD4Digest;)V

    .line 40
    return-void
.end method

.method private rotateLeft(II)I
    .locals 2

    .line 168
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private ˊ(I[BI)V
    .locals 2

    .line 95
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 96
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 97
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 98
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 99
    return-void
.end method

.method private ˊ(Lorg/spongycastle/crypto/digests/MD4Digest;)V
    .locals 5

    .line 44
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->ˊ(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 46
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD4Digest;->aGA:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGA:I

    .line 47
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD4Digest;->aGB:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGB:I

    .line 48
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD4Digest;->aGC:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGC:I

    .line 49
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD4Digest;->aGD:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGD:I

    .line 51
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD4Digest;->aGw:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGw:I

    .line 53
    return-void
.end method

.method private ˌ(III)I
    .locals 2

    .line 179
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private ˍ(III)I
    .locals 2

    .line 187
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private ˑ(III)I
    .locals 1

    .line 195
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    .line 105
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/MD4Digest;->finish()V

    .line 107
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGA:I

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˊ(I[BI)V

    .line 108
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGB:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˊ(I[BI)V

    .line 109
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGC:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˊ(I[BI)V

    .line 110
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGD:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˊ(I[BI)V

    .line 112
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/MD4Digest;->reset()V

    .line 114
    const/16 v0, 0x10

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "MD4"

    return-object v0
.end method

.method public iJ()I
    .locals 1

    .line 62
    const/16 v0, 0x10

    return v0
.end method

.method public iU()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 282
    new-instance v0, Lorg/spongycastle/crypto/digests/MD4Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/MD4Digest;-><init>(Lorg/spongycastle/crypto/digests/MD4Digest;)V

    return-object v0
.end method

.method protected iV()V
    .locals 8

    .line 200
    iget v3, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGA:I

    .line 201
    iget v4, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGB:I

    .line 202
    iget v5, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGC:I

    .line 203
    iget v6, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGD:I

    .line 208
    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 209
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v6

    .line 210
    invoke-direct {p0, v6, v3, v4}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v5

    .line 211
    invoke-direct {p0, v5, v6, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 212
    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 213
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v6

    .line 214
    invoke-direct {p0, v6, v3, v4}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v5

    .line 215
    invoke-direct {p0, v5, v6, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 216
    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 217
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v6

    .line 218
    invoke-direct {p0, v6, v3, v4}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v5

    .line 219
    invoke-direct {p0, v5, v6, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 220
    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xc

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 221
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v6

    .line 222
    invoke-direct {p0, v6, v3, v4}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v5

    .line 223
    invoke-direct {p0, v5, v6, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˌ(III)I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 228
    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 229
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v6

    .line 230
    invoke-direct {p0, v6, v3, v4}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v5

    .line 231
    invoke-direct {p0, v5, v6, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xc

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 232
    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 233
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v6

    .line 234
    invoke-direct {p0, v6, v3, v4}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v5

    .line 235
    invoke-direct {p0, v5, v6, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 236
    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 237
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v6

    .line 238
    invoke-direct {p0, v6, v3, v4}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v5

    .line 239
    invoke-direct {p0, v5, v6, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 240
    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 241
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v6

    .line 242
    invoke-direct {p0, v6, v3, v4}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v5

    .line 243
    invoke-direct {p0, v5, v6, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˍ(III)I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x5a827999

    add-int/2addr v0, v1

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 248
    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 249
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v6

    .line 250
    invoke-direct {p0, v6, v3, v4}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v5

    .line 251
    invoke-direct {p0, v5, v6, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xc

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 252
    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 253
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v6

    .line 254
    invoke-direct {p0, v6, v3, v4}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v5

    .line 255
    invoke-direct {p0, v5, v6, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 256
    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 257
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v6

    .line 258
    invoke-direct {p0, v6, v3, v4}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v5

    .line 259
    invoke-direct {p0, v5, v6, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 260
    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 261
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v6

    .line 262
    invoke-direct {p0, v6, v3, v4}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v5

    .line 263
    invoke-direct {p0, v5, v6, v3}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˑ(III)I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 265
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGA:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGA:I

    .line 266
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGB:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGB:I

    .line 267
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGC:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGC:I

    .line 268
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGD:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGD:I

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGw:I

    .line 274
    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    array-length v0, v0

    if-eq v7, v0, :cond_0

    .line 276
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v1, 0x0

    aput v1, v0, v7

    .line 274
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 278
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 122
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->reset()V

    .line 124
    const v0, 0x67452301

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGA:I

    .line 125
    const v0, -0x10325477

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGB:I

    .line 126
    const v0, -0x67452302

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGC:I

    .line 127
    const v0, 0x10325476

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGD:I

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGw:I

    .line 131
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    array-length v0, v0

    if-eq v2, v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/4 v1, 0x0

    aput v1, v0, v2

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method public ˊ(Lorg/spongycastle/util/Memoable;)V
    .locals 2

    .line 287
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/MD4Digest;

    move-object v1, v0

    .line 289
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/digests/MD4Digest;->ˊ(Lorg/spongycastle/crypto/digests/MD4Digest;)V

    .line 290
    return-void
.end method

.method protected ۦ(J)V
    .locals 3

    .line 81
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGw:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/MD4Digest;->iV()V

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 88
    return-void
.end method

.method protected ι([BI)V
    .locals 5

    .line 69
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGE:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGw:I

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

    .line 72
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD4Digest;->aGw:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/MD4Digest;->iV()V

    .line 76
    :cond_0
    return-void
.end method
