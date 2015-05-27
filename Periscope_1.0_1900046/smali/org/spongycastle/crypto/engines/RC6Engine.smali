.class public Lorg/spongycastle/crypto/engines/RC6Engine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# instance fields
.field private aEW:Z

.field private aLc:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    .line 51
    return-void
.end method

.method private rotateLeft(II)I
    .locals 2

    .line 320
    shl-int v0, p1, p2

    neg-int v1, p2

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private rotateRight(II)I
    .locals 2

    .line 335
    ushr-int v0, p1, p2

    neg-int v1, p2

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private ˇ([B)V
    .locals 12

    .line 136
    array-length v0, p1

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v4, v0, 0x4

    .line 137
    if-nez v4, :cond_0

    .line 139
    const/4 v4, 0x1

    .line 141
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x4

    new-array v5, v0, [I

    .line 144
    array-length v0, p1

    add-int/lit8 v6, v0, -0x1

    :goto_0
    if-ltz v6, :cond_1

    .line 146
    div-int/lit8 v0, v6, 0x4

    div-int/lit8 v1, v6, 0x4

    aget v1, v5, v1

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, v6

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    aput v1, v5, v0

    .line 144
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 156
    :cond_1
    const/16 v0, 0x2c

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    .line 158
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    const v1, -0x481eae9d

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 159
    const/4 v6, 0x1

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    array-length v0, v0

    if-ge v6, v0, :cond_2

    .line 161
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    add-int/lit8 v2, v6, -0x1

    aget v1, v1, v2

    const v2, -0x61c88647

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 159
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 171
    :cond_2
    array-length v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    array-length v1, v1

    if-le v0, v1, :cond_3

    .line 173
    array-length v0, v5

    mul-int/lit8 v6, v0, 0x3

    goto :goto_2

    .line 177
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    array-length v0, v0

    mul-int/lit8 v6, v0, 0x3

    .line 180
    :goto_2
    const/4 v7, 0x0

    .line 181
    const/4 v8, 0x0

    .line 182
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 184
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v6, :cond_4

    .line 186
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    aget v1, v1, v9

    add-int/2addr v1, v7

    add-int/2addr v1, v8

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v7

    aput v7, v0, v9

    .line 187
    aget v0, v5, v10

    add-int/2addr v0, v7

    add-int/2addr v0, v8

    add-int v1, v7, v8

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v8

    aput v8, v5, v10

    .line 188
    add-int/lit8 v0, v9, 0x1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    array-length v1, v1

    rem-int v9, v0, v1

    .line 189
    add-int/lit8 v0, v10, 0x1

    array-length v1, v5

    rem-int v10, v0, v1

    .line 184
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 191
    :cond_4
    return-void
.end method

.method private ˏ([BI[BI)I
    .locals 11

    .line 200
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐧ([BI)I

    move-result v3

    .line 201
    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐧ([BI)I

    move-result v4

    .line 202
    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐧ([BI)I

    move-result v5

    .line 203
    add-int/lit8 v0, p2, 0xc

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐧ([BI)I

    move-result v6

    .line 206
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/2addr v4, v0

    .line 207
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v6, v0

    .line 210
    const/4 v7, 0x1

    :goto_0
    const/16 v0, 0x14

    if-gt v7, v0, :cond_0

    .line 212
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 214
    mul-int/lit8 v0, v4, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int v8, v4, v0

    .line 215
    const/4 v0, 0x5

    invoke-direct {p0, v8, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v8

    .line 217
    mul-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int v9, v6, v0

    .line 218
    const/4 v0, 0x5

    invoke-direct {p0, v9, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v9

    .line 220
    xor-int/2addr v3, v8

    .line 221
    invoke-direct {p0, v3, v9}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v3

    .line 222
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    mul-int/lit8 v1, v7, 0x2

    aget v0, v0, v1

    add-int/2addr v3, v0

    .line 224
    xor-int/2addr v5, v9

    .line 225
    invoke-direct {p0, v5, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v5

    .line 226
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    mul-int/lit8 v1, v7, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    add-int/2addr v5, v0

    .line 228
    move v10, v3

    .line 229
    move v3, v4

    .line 230
    move v4, v5

    .line 231
    move v5, v6

    .line 232
    move v6, v10

    .line 210
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    const/16 v1, 0x2a

    aget v0, v0, v1

    add-int/2addr v3, v0

    .line 236
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    const/16 v1, 0x2b

    aget v0, v0, v1

    add-int/2addr v5, v0

    .line 239
    invoke-direct {p0, v3, p3, p4}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐝ(I[BI)V

    .line 240
    add-int/lit8 v0, p4, 0x4

    invoke-direct {p0, v4, p3, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐝ(I[BI)V

    .line 241
    add-int/lit8 v0, p4, 0x8

    invoke-direct {p0, v5, p3, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐝ(I[BI)V

    .line 242
    add-int/lit8 v0, p4, 0xc

    invoke-direct {p0, v6, p3, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐝ(I[BI)V

    .line 244
    const/16 v0, 0x10

    return v0
.end method

.method private ᐝ([BI[BI)I
    .locals 11

    .line 254
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐧ([BI)I

    move-result v3

    .line 255
    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐧ([BI)I

    move-result v4

    .line 256
    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐧ([BI)I

    move-result v5

    .line 257
    add-int/lit8 v0, p2, 0xc

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐧ([BI)I

    move-result v6

    .line 260
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    const/16 v1, 0x2b

    aget v0, v0, v1

    sub-int/2addr v5, v0

    .line 261
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    const/16 v1, 0x2a

    aget v0, v0, v1

    sub-int/2addr v3, v0

    .line 264
    const/16 v7, 0x14

    :goto_0
    const/4 v0, 0x1

    if-lt v7, v0, :cond_0

    .line 266
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 268
    move v10, v6

    .line 269
    move v6, v5

    .line 270
    move v5, v4

    .line 271
    move v4, v3

    .line 272
    move v3, v10

    .line 274
    mul-int/lit8 v0, v4, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int v8, v4, v0

    .line 275
    const/4 v0, 0x5

    invoke-direct {p0, v8, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v8

    .line 277
    mul-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int v9, v6, v0

    .line 278
    const/4 v0, 0x5

    invoke-direct {p0, v9, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v9

    .line 280
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    mul-int/lit8 v1, v7, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    sub-int/2addr v5, v0

    .line 281
    invoke-direct {p0, v5, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateRight(II)I

    move-result v5

    .line 282
    xor-int/2addr v5, v9

    .line 284
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    mul-int/lit8 v1, v7, 0x2

    aget v0, v0, v1

    sub-int/2addr v3, v0

    .line 285
    invoke-direct {p0, v3, v9}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateRight(II)I

    move-result v3

    .line 286
    xor-int/2addr v3, v8

    .line 264
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int/2addr v6, v0

    .line 291
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int/2addr v4, v0

    .line 293
    invoke-direct {p0, v3, p3, p4}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐝ(I[BI)V

    .line 294
    add-int/lit8 v0, p4, 0x4

    invoke-direct {p0, v4, p3, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐝ(I[BI)V

    .line 295
    add-int/lit8 v0, p4, 0x8

    invoke-direct {p0, v5, p3, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐝ(I[BI)V

    .line 296
    add-int/lit8 v0, p4, 0xc

    invoke-direct {p0, v6, p3, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐝ(I[BI)V

    .line 298
    const/16 v0, 0x10

    return v0
.end method

.method private ᐝ(I[BI)V
    .locals 3

    .line 357
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge v2, v0, :cond_0

    .line 359
    add-int v0, v2, p3

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 360
    ushr-int/lit8 p1, p1, 0x8

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method

.method private ᐧ([BI)I
    .locals 5

    .line 342
    const/4 v3, 0x0

    .line 344
    const/4 v4, 0x3

    :goto_0
    if-ltz v4, :cond_0

    .line 346
    shl-int/lit8 v0, v3, 0x8

    add-int v1, v4, p2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int v3, v0, v1

    .line 344
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 349
    :cond_0
    return v3
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 60
    const/16 v0, 0x10

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "RC6"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 112
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 3

    .line 91
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/RC6Engine;->getBlockSize()I

    move-result v2

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aLc:[I

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RC6 engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    add-int v0, p2, v2

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 98
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    add-int v0, p4, v2

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 102
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aEW:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC6Engine;->ˏ([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC6Engine;->ᐝ([BI[BI)I

    move-result v0

    :goto_0
    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 75
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to RC6 init - "

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

    .line 80
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v3, v0

    .line 81
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->aEW:Z

    .line 82
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RC6Engine;->ˇ([B)V

    .line 83
    return-void
.end method
