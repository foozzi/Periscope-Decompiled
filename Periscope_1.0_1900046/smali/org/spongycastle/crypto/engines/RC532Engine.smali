.class public Lorg/spongycastle/crypto/engines/RC532Engine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# instance fields
.field private aEW:Z

.field private aLb:I

.field private aLc:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0xc

    iput v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLb:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    .line 52
    return-void
.end method

.method private rotateLeft(II)I
    .locals 3

    .line 251
    and-int/lit8 v0, p2, 0x1f

    shl-int v0, p1, v0

    and-int/lit8 v1, p2, 0x1f

    rsub-int/lit8 v1, v1, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private rotateRight(II)I
    .locals 3

    .line 266
    and-int/lit8 v0, p2, 0x1f

    ushr-int v0, p1, v0

    and-int/lit8 v1, p2, 0x1f

    rsub-int/lit8 v1, v1, 0x20

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private ˇ([B)V
    .locals 12

    .line 132
    array-length v0, p1

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v5, v0, [I

    .line 134
    const/4 v6, 0x0

    :goto_0
    array-length v0, p1

    if-eq v6, v0, :cond_0

    .line 136
    div-int/lit8 v0, v6, 0x4

    aget v1, v5, v0

    aget-byte v2, p1, v6

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v3, v6, 0x4

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, v5, v0

    .line 134
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLb:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    .line 147
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    const v1, -0x481eae9d

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 148
    const/4 v6, 0x1

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 150
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    add-int/lit8 v2, v6, -0x1

    aget v1, v1, v2

    const v2, -0x61c88647

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 148
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 160
    :cond_1
    array-length v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 162
    array-length v0, v5

    mul-int/lit8 v6, v0, 0x3

    goto :goto_2

    .line 166
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    array-length v0, v0

    mul-int/lit8 v6, v0, 0x3

    .line 169
    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 170
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 172
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v6, :cond_3

    .line 174
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    aget v1, v1, v9

    add-int/2addr v1, v7

    add-int/2addr v1, v8

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v7

    aput v7, v0, v9

    .line 175
    aget v0, v5, v10

    add-int/2addr v0, v7

    add-int/2addr v0, v8

    add-int v1, v7, v8

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v8

    aput v8, v5, v10

    .line 176
    add-int/lit8 v0, v9, 0x1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    array-length v1, v1

    rem-int v9, v0, v1

    .line 177
    add-int/lit8 v0, v10, 0x1

    array-length v1, v5

    rem-int v10, v0, v1

    .line 172
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 179
    :cond_3
    return-void
.end method

.method private ˏ([BI[BI)I
    .locals 7

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RC532Engine;->ᐧ([BI)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int v4, v0, v1

    .line 197
    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/RC532Engine;->ᐧ([BI)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int v5, v0, v1

    .line 199
    const/4 v6, 0x1

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLb:I

    if-gt v6, v0, :cond_0

    .line 201
    xor-int v0, v4, v5

    invoke-direct {p0, v0, v5}, Lorg/spongycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    mul-int/lit8 v2, v6, 0x2

    aget v1, v1, v2

    add-int v4, v0, v1

    .line 202
    xor-int v0, v5, v4

    invoke-direct {p0, v0, v4}, Lorg/spongycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    mul-int/lit8 v2, v6, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    add-int v5, v0, v1

    .line 199
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0, v4, p3, p4}, Lorg/spongycastle/crypto/engines/RC532Engine;->ᐝ(I[BI)V

    .line 206
    add-int/lit8 v0, p4, 0x4

    invoke-direct {p0, v5, p3, v0}, Lorg/spongycastle/crypto/engines/RC532Engine;->ᐝ(I[BI)V

    .line 208
    const/16 v0, 0x8

    return v0
.end method

.method private ᐝ([BI[BI)I
    .locals 6

    .line 217
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RC532Engine;->ᐧ([BI)I

    move-result v3

    .line 218
    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/RC532Engine;->ᐧ([BI)I

    move-result v4

    .line 220
    iget v5, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLb:I

    :goto_0
    const/4 v0, 0x1

    if-lt v5, v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    mul-int/lit8 v1, v5, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    sub-int v0, v4, v0

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/crypto/engines/RC532Engine;->rotateRight(II)I

    move-result v0

    xor-int v4, v0, v3

    .line 223
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    mul-int/lit8 v1, v5, 0x2

    aget v0, v0, v1

    sub-int v0, v3, v0

    invoke-direct {p0, v0, v4}, Lorg/spongycastle/crypto/engines/RC532Engine;->rotateRight(II)I

    move-result v0

    xor-int v3, v0, v4

    .line 220
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int v0, v3, v0

    invoke-direct {p0, v0, p3, p4}, Lorg/spongycastle/crypto/engines/RC532Engine;->ᐝ(I[BI)V

    .line 227
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLc:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int v0, v4, v0

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/RC532Engine;->ᐝ(I[BI)V

    .line 229
    const/16 v0, 0x8

    return v0
.end method

.method private ᐝ(I[BI)V
    .locals 2

    .line 282
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 283
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 284
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 285
    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 286
    return-void
.end method

.method private ᐧ([BI)I
    .locals 3

    .line 273
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 61
    const/16 v0, 0x8

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "RC5-32"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 110
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 1

    .line 104
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aEW:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC532Engine;->ˏ([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC532Engine;->ᐝ([BI[BI)I

    move-result v0

    :goto_0
    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 76
    instance-of v0, p2, Lorg/spongycastle/crypto/params/RC5Parameters;

    if-eqz v0, :cond_0

    .line 78
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/RC5Parameters;

    move-object v3, v0

    .line 80
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/RC5Parameters;->getRounds()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aLb:I

    .line 82
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/RC5Parameters;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RC532Engine;->ˇ([B)V

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 86
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v3, v0

    .line 88
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RC532Engine;->ˇ([B)V

    .line 89
    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to RC532 init - "

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

    .line 95
    :goto_0
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RC532Engine;->aEW:Z

    .line 96
    return-void
.end method
