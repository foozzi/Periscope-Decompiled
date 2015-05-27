.class public Lorg/spongycastle/crypto/engines/IDEAEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# instance fields
.field private aJE:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IDEAEngine;->aJE:[I

    .line 32
    return-void
.end method

.method private ˀ(II)I
    .locals 3

    .line 128
    if-nez p1, :cond_0

    .line 130
    const v0, 0x10001

    sub-int p1, v0, p2

    goto :goto_1

    .line 132
    :cond_0
    if-nez p2, :cond_1

    .line 134
    const v0, 0x10001

    sub-int p1, v0, p1

    goto :goto_1

    .line 138
    :cond_1
    mul-int v2, p1, p2

    .line 140
    const v0, 0xffff

    and-int p2, v2, v0

    .line 141
    ushr-int/lit8 p1, v2, 0x10

    .line 142
    sub-int v0, p2, p1

    if-ge p2, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    add-int p1, v0, v1

    .line 145
    :goto_1
    const v0, 0xffff

    and-int/2addr v0, p1

    return v0
.end method

.method private ˋ(Z[B)[I
    .locals 1

    .line 348
    if-eqz p1, :cond_0

    .line 350
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ᐠ([B)[I

    move-result-object v0

    return-object v0

    .line 354
    :cond_0
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ᐠ([B)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ˎ([I)[I

    move-result-object v0

    return-object v0
.end method

.method private ˎ([I[BI[BI)V
    .locals 11

    .line 156
    const/4 v9, 0x0

    .line 158
    invoke-direct {p0, p2, p3}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ᐧ([BI)I

    move-result v3

    .line 159
    add-int/lit8 v0, p3, 0x2

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ᐧ([BI)I

    move-result v4

    .line 160
    add-int/lit8 v0, p3, 0x4

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ᐧ([BI)I

    move-result v5

    .line 161
    add-int/lit8 v0, p3, 0x6

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ᐧ([BI)I

    move-result v6

    .line 163
    const/4 v10, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v10, v0, :cond_0

    .line 165
    move v0, v9

    add-int/lit8 v9, v9, 0x1

    aget v0, p1, v0

    invoke-direct {p0, v3, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ˀ(II)I

    move-result v3

    .line 166
    move v0, v9

    add-int/lit8 v9, v9, 0x1

    aget v0, p1, v0

    add-int/2addr v4, v0

    .line 167
    const v0, 0xffff

    and-int/2addr v4, v0

    .line 168
    move v0, v9

    add-int/lit8 v9, v9, 0x1

    aget v0, p1, v0

    add-int/2addr v5, v0

    .line 169
    const v0, 0xffff

    and-int/2addr v5, v0

    .line 170
    move v0, v9

    add-int/lit8 v9, v9, 0x1

    aget v0, p1, v0

    invoke-direct {p0, v6, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ˀ(II)I

    move-result v6

    .line 172
    move v7, v4

    .line 173
    move v8, v5

    .line 174
    xor-int/2addr v5, v3

    .line 175
    xor-int/2addr v4, v6

    .line 177
    move v0, v9

    add-int/lit8 v9, v9, 0x1

    aget v0, p1, v0

    invoke-direct {p0, v5, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ˀ(II)I

    move-result v5

    .line 178
    add-int/2addr v4, v5

    .line 179
    const v0, 0xffff

    and-int/2addr v4, v0

    .line 181
    move v0, v9

    add-int/lit8 v9, v9, 0x1

    aget v0, p1, v0

    invoke-direct {p0, v4, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ˀ(II)I

    move-result v4

    .line 182
    add-int/2addr v5, v4

    .line 183
    const v0, 0xffff

    and-int/2addr v5, v0

    .line 185
    xor-int/2addr v3, v4

    .line 186
    xor-int/2addr v6, v5

    .line 187
    xor-int/2addr v4, v8

    .line 188
    xor-int/2addr v5, v7

    .line 163
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 191
    :cond_0
    move v0, v9

    add-int/lit8 v9, v9, 0x1

    aget v0, p1, v0

    invoke-direct {p0, v3, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ˀ(II)I

    move-result v0

    move/from16 v1, p5

    invoke-direct {p0, v0, p4, v1}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ᐝ(I[BI)V

    .line 192
    move v0, v9

    add-int/lit8 v9, v9, 0x1

    aget v0, p1, v0

    add-int/2addr v0, v5

    add-int/lit8 v1, p5, 0x2

    invoke-direct {p0, v0, p4, v1}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ᐝ(I[BI)V

    .line 193
    move v0, v9

    add-int/lit8 v9, v9, 0x1

    aget v0, p1, v0

    add-int/2addr v0, v4

    add-int/lit8 v1, p5, 0x4

    invoke-direct {p0, v0, p4, v1}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ᐝ(I[BI)V

    .line 194
    aget v0, p1, v9

    invoke-direct {p0, v6, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ˀ(II)I

    move-result v0

    add-int/lit8 v1, p5, 0x6

    invoke-direct {p0, v0, p4, v1}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ᐝ(I[BI)V

    .line 195
    return-void
.end method

.method private ˎ([I)[I
    .locals 9

    .line 297
    const/16 v5, 0x34

    .line 298
    const/16 v0, 0x34

    new-array v6, v0, [I

    .line 299
    const/4 v7, 0x0

    .line 301
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ⅽ(I)I

    move-result v1

    .line 302
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x1

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ײַ(I)I

    move-result v2

    .line 303
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x2

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ײַ(I)I

    move-result v3

    .line 304
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x3

    aget v0, p1, v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ⅽ(I)I

    move-result v4

    .line 305
    add-int/lit8 v5, v5, -0x1

    aput v4, v6, v5

    .line 306
    add-int/lit8 v5, v5, -0x1

    aput v3, v6, v5

    .line 307
    add-int/lit8 v5, v5, -0x1

    aput v2, v6, v5

    .line 308
    add-int/lit8 v5, v5, -0x1

    aput v1, v6, v5

    .line 310
    const/4 v8, 0x1

    :goto_0
    const/16 v0, 0x8

    if-ge v8, v0, :cond_0

    .line 312
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget v1, p1, v0

    .line 313
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget v2, p1, v0

    .line 314
    add-int/lit8 v5, v5, -0x1

    aput v2, v6, v5

    .line 315
    add-int/lit8 v5, v5, -0x1

    aput v1, v6, v5

    .line 317
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget v0, p1, v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ⅽ(I)I

    move-result v1

    .line 318
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ײַ(I)I

    move-result v2

    .line 319
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ײַ(I)I

    move-result v3

    .line 320
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget v0, p1, v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ⅽ(I)I

    move-result v4

    .line 321
    add-int/lit8 v5, v5, -0x1

    aput v4, v6, v5

    .line 322
    add-int/lit8 v5, v5, -0x1

    aput v2, v6, v5

    .line 323
    add-int/lit8 v5, v5, -0x1

    aput v3, v6, v5

    .line 324
    add-int/lit8 v5, v5, -0x1

    aput v1, v6, v5

    .line 310
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 327
    :cond_0
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget v1, p1, v0

    .line 328
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget v2, p1, v0

    .line 329
    add-int/lit8 v5, v5, -0x1

    aput v2, v6, v5

    .line 330
    add-int/lit8 v5, v5, -0x1

    aput v1, v6, v5

    .line 332
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget v0, p1, v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ⅽ(I)I

    move-result v1

    .line 333
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ײַ(I)I

    move-result v2

    .line 334
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ײַ(I)I

    move-result v3

    .line 335
    aget v0, p1, v7

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ⅽ(I)I

    move-result v4

    .line 336
    add-int/lit8 v5, v5, -0x1

    aput v4, v6, v5

    .line 337
    add-int/lit8 v5, v5, -0x1

    aput v3, v6, v5

    .line 338
    add-int/lit8 v5, v5, -0x1

    aput v2, v6, v5

    .line 339
    add-int/lit8 v5, v5, -0x1

    aput v1, v6, v5

    .line 341
    return-object v6
.end method

.method private ᐝ(I[BI)V
    .locals 2

    .line 111
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 112
    add-int/lit8 v0, p3, 0x1

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 113
    return-void
.end method

.method private ᐠ([B)[I
    .locals 5

    .line 206
    const/16 v0, 0x34

    new-array v3, v0, [I

    .line 208
    array-length v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 210
    const/16 v0, 0x10

    new-array v4, v0, [B

    .line 212
    array-length v0, v4

    array-length v1, p1

    sub-int/2addr v0, v1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    move-object p1, v4

    .line 217
    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v4, v0, :cond_1

    .line 219
    mul-int/lit8 v0, v4, 0x2

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ᐧ([BI)I

    move-result v0

    aput v0, v3, v4

    .line 217
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 222
    :cond_1
    const/16 v4, 0x8

    :goto_1
    const/16 v0, 0x34

    if-ge v4, v0, :cond_4

    .line 224
    and-int/lit8 v0, v4, 0x7

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    .line 226
    add-int/lit8 v0, v4, -0x7

    aget v0, v3, v0

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x9

    add-int/lit8 v1, v4, -0x6

    aget v1, v3, v1

    shr-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    aput v0, v3, v4

    goto :goto_2

    .line 228
    :cond_2
    and-int/lit8 v0, v4, 0x7

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 230
    add-int/lit8 v0, v4, -0x7

    aget v0, v3, v0

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x9

    add-int/lit8 v1, v4, -0xe

    aget v1, v3, v1

    shr-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    aput v0, v3, v4

    goto :goto_2

    .line 234
    :cond_3
    add-int/lit8 v0, v4, -0xf

    aget v0, v3, v0

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x9

    add-int/lit8 v1, v4, -0xe

    aget v1, v3, v1

    shr-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    aput v0, v3, v4

    .line 222
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 238
    :cond_4
    return-object v3
.end method

.method private ᐧ([BI)I
    .locals 3

    .line 103
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private ⅽ(I)I
    .locals 6

    .line 252
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 254
    return p1

    .line 257
    :cond_0
    const/4 v2, 0x1

    .line 258
    const v0, 0x10001

    div-int v3, v0, p1

    .line 259
    const v0, 0x10001

    rem-int v5, v0, p1

    .line 261
    :goto_0
    const/4 v0, 0x1

    if-eq v5, v0, :cond_2

    .line 263
    div-int v4, p1, v5

    .line 264
    rem-int/2addr p1, v5

    .line 265
    mul-int v0, v3, v4

    add-int/2addr v0, v2

    const v1, 0xffff

    and-int v2, v0, v1

    .line 266
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 268
    return v2

    .line 270
    :cond_1
    div-int v4, v5, p1

    .line 271
    rem-int/2addr v5, p1

    .line 272
    mul-int v0, v2, v4

    add-int/2addr v0, v3

    const v1, 0xffff

    and-int v3, v0, v1

    goto :goto_0

    .line 275
    :cond_2
    rsub-int/lit8 v0, v3, 0x1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 63
    const/16 v0, 0x8

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "IDEA"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 94
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 6

    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IDEAEngine;->aJE:[I

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IDEA engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 79
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 84
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IDEAEngine;->aJE:[I

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ˎ([I[BI[BI)V

    .line 89
    const/16 v0, 0x8

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 46
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ˋ(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IDEAEngine;->aJE:[I

    .line 50
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to IDEA init - "

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
.end method

.method ײַ(I)I
    .locals 2

    .line 286
    rsub-int/lit8 v0, p1, 0x0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method
