.class public Lorg/spongycastle/crypto/macs/GOST28147Mac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private aEU:I

.field private aGd:[B

.field private aJE:[I

.field private aNH:Z

.field private aNy:[B

.field private aNz:I

.field private buf:[B

.field private fU:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->fU:I

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNz:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNH:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aJE:[I

    .line 25
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aGd:[B

    .line 38
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNy:[B

    .line 40
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    .line 42
    return-void

    nop

    :array_0
    .array-data 1
        0x9t
        0x6t
        0x3t
        0x2t
        0x8t
        0xbt
        0x1t
        0x7t
        0xat
        0x4t
        0xet
        0xft
        0xct
        0x0t
        0xdt
        0x5t
        0x3t
        0x7t
        0xet
        0x9t
        0x8t
        0xat
        0xft
        0x0t
        0x5t
        0x2t
        0x6t
        0xct
        0xbt
        0x4t
        0xdt
        0x1t
        0xet
        0x4t
        0x6t
        0x2t
        0xbt
        0x3t
        0xdt
        0x8t
        0xct
        0xft
        0x5t
        0xat
        0x0t
        0x7t
        0x1t
        0x9t
        0xet
        0x7t
        0xat
        0xct
        0xdt
        0x1t
        0x3t
        0x9t
        0x0t
        0x2t
        0xbt
        0x4t
        0xft
        0x8t
        0x5t
        0x6t
        0xbt
        0x5t
        0x1t
        0x9t
        0x8t
        0xdt
        0xft
        0x0t
        0xet
        0x4t
        0x2t
        0x3t
        0xct
        0x7t
        0xat
        0x6t
        0x3t
        0xat
        0xdt
        0xct
        0x1t
        0x2t
        0x0t
        0xbt
        0x7t
        0x5t
        0x9t
        0x4t
        0x8t
        0xft
        0xet
        0x6t
        0x1t
        0xdt
        0x2t
        0x9t
        0x7t
        0xat
        0x6t
        0x0t
        0x8t
        0xct
        0x4t
        0x5t
        0xft
        0x3t
        0xbt
        0xet
        0xbt
        0xat
        0xft
        0x5t
        0x0t
        0xct
        0xet
        0x8t
        0x6t
        0x2t
        0x3t
        0x9t
        0x1t
        0x7t
        0xdt
        0x4t
    .end array-data
.end method

.method private ˋ([BI[B)[B
    .locals 4

    .line 170
    array-length v0, p1

    sub-int/2addr v0, p2

    new-array v2, v0, [B

    .line 172
    array-length v0, p3

    const/4 v1, 0x0

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    const/4 v3, 0x0

    :goto_0
    array-length v0, p3

    if-eq v3, v0, :cond_0

    .line 176
    aget-byte v0, v2, v3

    aget-byte v1, p3, v3

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-object v2
.end method

.method private ˏ(I[BI)V
    .locals 2

    .line 162
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 163
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 164
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 165
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 166
    return-void
.end method

.method private ˏ([I[BI[BI)V
    .locals 6

    .line 130
    invoke-direct {p0, p2, p3}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ـ([BI)I

    move-result v1

    .line 131
    add-int/lit8 v0, p3, 0x4

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ـ([BI)I

    move-result v2

    .line 133
    const/4 v4, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge v4, v0, :cond_1

    .line 135
    const/4 v5, 0x0

    :goto_1
    const/16 v0, 0x8

    if-ge v5, v0, :cond_0

    .line 137
    move v3, v1

    .line 138
    aget v0, p1, v5

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ᒻ(II)I

    move-result v0

    xor-int v1, v2, v0

    .line 139
    move v2, v3

    .line 135
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 133
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0, v1, p4, p5}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ˏ(I[BI)V

    .line 144
    add-int/lit8 v0, p5, 0x4

    invoke-direct {p0, v2, p4, v0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ˏ(I[BI)V

    .line 145
    return-void
.end method

.method private ـ([BI)I
    .locals 3

    .line 152
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private ᐪ([B)[I
    .locals 4

    .line 47
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key length invalid. Key needs to be 32 byte - 256 bit!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    const/16 v0, 0x8

    new-array v2, v0, [I

    .line 53
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x8

    if-eq v3, v0, :cond_1

    .line 55
    mul-int/lit8 v0, v3, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ـ([BI)I

    move-result v0

    aput v0, v2, v3

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_1
    return-object v2
.end method

.method private ᒻ(II)I
    .locals 5

    .line 106
    add-int v3, p2, p1

    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aGd:[B

    shr-int/lit8 v1, v3, 0x0

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x0

    aget-byte v0, v0, v1

    shl-int/lit8 v4, v0, 0x0

    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aGd:[B

    shr-int/lit8 v1, v3, 0x4

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x10

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v4, v0

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aGd:[B

    shr-int/lit8 v1, v3, 0x8

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x20

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v4, v0

    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aGd:[B

    shr-int/lit8 v1, v3, 0xc

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x30

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0xc

    add-int/2addr v4, v0

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aGd:[B

    shr-int/lit8 v1, v3, 0x10

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x40

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v4, v0

    .line 115
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aGd:[B

    shr-int/lit8 v1, v3, 0x14

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x50

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x14

    add-int/2addr v4, v0

    .line 116
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aGd:[B

    shr-int/lit8 v1, v3, 0x18

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x60

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v4, v0

    .line 117
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aGd:[B

    shr-int/lit8 v1, v3, 0x1c

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x70

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x1c

    add-int/2addr v4, v0

    .line 119
    shl-int/lit8 v0, v4, 0xb

    ushr-int/lit8 v1, v4, 0x15

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7

    .line 257
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    iget v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->fU:I

    if-ge v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 260
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v0, v0

    new-array v6, v0, [B

    .line 264
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNy:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iget-boolean v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNH:Z

    if-eqz v0, :cond_1

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNH:Z

    goto :goto_1

    .line 272
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNy:[B

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ˋ([BI[B)[B

    move-result-object v6

    .line 275
    :goto_1
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aJE:[I

    move-object v2, v6

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNy:[B

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ˏ([I[BI[BI)V

    .line 277
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNy:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNy:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNz:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNz:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->reset()V

    .line 281
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNz:I

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "GOST28147Mac"

    return-object v0
.end method

.method public iO()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNz:I

    return v0
.end method

.method public reset()V
    .locals 3

    .line 289
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNH:Z

    .line 297
    return-void
.end method

.method public update(B)V
    .locals 7

    .line 185
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 187
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v0, v0

    new-array v6, v0, [B

    .line 188
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNy:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iget-boolean v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNH:Z

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNH:Z

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNy:[B

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ˋ([BI[B)[B

    move-result-object v6

    .line 199
    :goto_0
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aJE:[I

    move-object v2, v6

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNy:[B

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ˏ([I[BI[BI)V

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    .line 203
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    aput-byte p1, v0, v1

    .line 204
    return-void
.end method

.method public update([BII)V
    .locals 8

    .line 209
    if-gez p3, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->fU:I

    iget v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    sub-int v6, v0, v1

    .line 216
    if-le p3, v6, :cond_2

    .line 218
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    invoke-static {p1, p2, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v0, v0

    new-array v7, v0, [B

    .line 221
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNy:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iget-boolean v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNH:Z

    if-eqz v0, :cond_1

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNH:Z

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNy:[B

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ˋ([BI[B)[B

    move-result-object v7

    .line 232
    :goto_0
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aJE:[I

    move-object v2, v7

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNy:[B

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ˏ([I[BI[BI)V

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    .line 235
    sub-int/2addr p3, v6

    .line 236
    add-int/2addr p2, v6

    .line 238
    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->fU:I

    if-le p3, v0, :cond_2

    .line 240
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNy:[B

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ˋ([BI[B)[B

    move-result-object v7

    .line 241
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aJE:[I

    move-object v2, v7

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aNy:[B

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ˏ([I[BI[BI)V

    .line 243
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->fU:I

    sub-int/2addr p3, v0

    .line 244
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->fU:I

    add-int/2addr p2, v0

    goto :goto_1

    .line 248
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aEU:I

    .line 251
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 6

    .line 65
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->reset()V

    .line 66
    iget v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->buf:[B

    .line 67
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    if-eqz v0, :cond_1

    .line 69
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    move-object v5, v0

    .line 74
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->li()[B

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aGd:[B

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->li()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ᐪ([B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aJE:[I

    .line 83
    :cond_0
    goto :goto_0

    .line 84
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_2

    .line 86
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->ᐪ([B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/GOST28147Mac;->aJE:[I

    goto :goto_0

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to GOST28147 init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :goto_0
    return-void
.end method
