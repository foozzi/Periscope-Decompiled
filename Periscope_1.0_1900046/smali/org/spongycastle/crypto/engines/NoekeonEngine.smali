.class public Lorg/spongycastle/crypto/engines/NoekeonEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final aKR:[I

.field private static final aKS:[I


# instance fields
.field private aJs:[I

.field private aKT:[I

.field private aKU:[I

.field private aKV:Z

.field private aKW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKR:[I

    .line 23
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKT:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKU:[I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKV:Z

    .line 46
    return-void
.end method

.method private ʻ(I[BI)V
    .locals 2

    .line 253
    move v0, p3

    add-int/lit8 p3, p3, 0x1

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 254
    move v0, p3

    add-int/lit8 p3, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 255
    move v0, p3

    add-int/lit8 p3, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 256
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 257
    return-void
.end method

.method private ʻ([I)V
    .locals 2

    .line 229
    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˁ(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 230
    const/4 v0, 0x2

    aget v0, p1, v0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˁ(II)I

    move-result v0

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 231
    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˁ(II)I

    move-result v0

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 232
    return-void
.end method

.method private ʼ([I)V
    .locals 2

    .line 236
    const/4 v0, 0x1

    aget v0, p1, v0

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˁ(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 237
    const/4 v0, 0x2

    aget v0, p1, v0

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˁ(II)I

    move-result v0

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 238
    const/4 v0, 0x3

    aget v0, p1, v0

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˁ(II)I

    move-result v0

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 239
    return-void
.end method

.method private ˁ(II)I
    .locals 2

    .line 261
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private ˇ([B)V
    .locals 3

    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKT:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐨ([BI)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKT:[I

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐨ([BI)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKT:[I

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐨ([BI)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKT:[I

    const/16 v1, 0xc

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐨ([BI)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 124
    return-void
.end method

.method private ˊ([I[I)V
    .locals 4

    .line 211
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    xor-int v2, v0, v1

    .line 212
    const/16 v0, 0x8

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˁ(II)I

    move-result v0

    const/16 v1, 0x18

    invoke-direct {p0, v2, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˁ(II)I

    move-result v1

    xor-int/2addr v0, v1

    xor-int/2addr v2, v0

    .line 213
    const/4 v0, 0x1

    aget v0, p1, v0

    xor-int/2addr v0, v2

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 214
    const/4 v0, 0x3

    aget v0, p1, v0

    xor-int/2addr v0, v2

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 216
    const/4 v3, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge v3, v0, :cond_0

    .line 218
    aget v0, p1, v3

    aget v1, p2, v3

    xor-int/2addr v0, v1

    aput v0, p1, v3

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    :cond_0
    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    xor-int v2, v0, v1

    .line 222
    const/16 v0, 0x8

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˁ(II)I

    move-result v0

    const/16 v1, 0x18

    invoke-direct {p0, v2, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˁ(II)I

    move-result v1

    xor-int/2addr v0, v1

    xor-int/2addr v2, v0

    .line 223
    const/4 v0, 0x0

    aget v0, p1, v0

    xor-int/2addr v0, v2

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 224
    const/4 v0, 0x2

    aget v0, p1, v0

    xor-int/2addr v0, v2

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 225
    return-void
.end method

.method private ˏ([BI[BI)I
    .locals 4

    .line 132
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐨ([BI)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 133
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐨ([BI)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐨ([BI)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 135
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐨ([BI)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 138
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge v3, v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    sget-object v2, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKS:[I

    aget v2, v2, v3

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 141
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKT:[I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˊ([I[I)V

    .line 142
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ʻ([I)V

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐝ([I)V

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ʼ([I)V

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    sget-object v2, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKS:[I

    aget v2, v2, v3

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 148
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKT:[I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˊ([I[I)V

    .line 150
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, v0, p3, p4}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ʻ(I[BI)V

    .line 151
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ʻ(I[BI)V

    .line 152
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ʻ(I[BI)V

    .line 153
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ʻ(I[BI)V

    .line 155
    const/16 v0, 0x10

    return v0
.end method

.method private ᐝ([BI[BI)I
    .locals 6

    .line 164
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐨ([BI)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 165
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐨ([BI)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 166
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐨ([BI)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 167
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐨ([BI)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 169
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKT:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKU:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKT:[I

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKU:[I

    sget-object v1, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKR:[I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˊ([I[I)V

    .line 173
    const/16 v5, 0x10

    :goto_0
    if-lez v5, :cond_0

    .line 175
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKU:[I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˊ([I[I)V

    .line 176
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    sget-object v2, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKS:[I

    aget v2, v2, v5

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ʻ([I)V

    .line 178
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐝ([I)V

    .line 179
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ʼ([I)V

    .line 173
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKU:[I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˊ([I[I)V

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    sget-object v2, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKS:[I

    aget v2, v2, v5

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 185
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, v0, p3, p4}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ʻ(I[BI)V

    .line 186
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ʻ(I[BI)V

    .line 187
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ʻ(I[BI)V

    .line 188
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aJs:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ʻ(I[BI)V

    .line 190
    const/16 v0, 0x10

    return v0
.end method

.method private ᐝ([I)V
    .locals 5

    .line 195
    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    xor-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    aget v2, p1, v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 196
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 198
    const/4 v0, 0x3

    aget v4, p1, v0

    .line 199
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 200
    const/4 v0, 0x0

    aput v4, p1, v0

    .line 201
    const/4 v0, 0x2

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    xor-int/2addr v1, v2

    const/4 v2, 0x3

    aget v2, p1, v2

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 203
    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    xor-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    aget v2, p1, v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 204
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 205
    return-void
.end method

.method private ᐨ([BI)I
    .locals 3

    .line 245
    move v0, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    move v1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    move v1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 55
    const/16 v0, 0x10

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "Noekeon"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 110
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 3

    .line 89
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKV:Z

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->iG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 96
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 101
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKW:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˏ([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ᐝ([BI[BI)I

    move-result v0

    :goto_0
    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 70
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Noekeon init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKW:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->aKV:Z

    .line 78
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v3, v0

    .line 80
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->ˇ([B)V

    .line 81
    return-void
.end method
