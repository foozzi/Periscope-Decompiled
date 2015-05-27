.class public Lorg/spongycastle/crypto/engines/HC256Engine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/StreamCipher;


# instance fields
.field private aJn:Z

.field private aKr:[I

.field private aKs:[I

.field private aKt:I

.field private aKu:I

.field private buf:[B

.field private iv:[B

.field private key:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x400

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKr:[I

    .line 28
    const/16 v0, 0x400

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKs:[I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKt:I

    .line 182
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->buf:[B

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKu:I

    return-void
.end method

.method private init()V
    .locals 9

    .line 70
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->key:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->key:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be 128/256 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The IV must be at least 128 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->key:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    .line 84
    const/16 v0, 0x20

    new-array v5, v0, [B

    .line 86
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->key:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->key:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->key:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->key:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iput-object v5, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->key:[B

    .line 92
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    .line 94
    const/16 v0, 0x20

    new-array v5, v0, [B

    .line 96
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->iv:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->iv:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v1, v1

    array-length v2, v5

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v3, v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v0, v3, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iput-object v5, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->iv:[B

    .line 102
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKu:I

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKt:I

    .line 105
    const/16 v0, 0xa00

    new-array v5, v0, [I

    .line 107
    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0x20

    if-ge v6, v0, :cond_4

    .line 109
    shr-int/lit8 v0, v6, 0x2

    aget v1, v5, v0

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->key:[B

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v3, v6, 0x3

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v5, v0

    .line 107
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 112
    :cond_4
    const/4 v6, 0x0

    :goto_1
    const/16 v0, 0x20

    if-ge v6, v0, :cond_5

    .line 114
    shr-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, 0x8

    aget v1, v5, v0

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->iv:[B

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v3, v6, 0x3

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v5, v0

    .line 112
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 117
    :cond_5
    const/16 v6, 0x10

    :goto_2
    const/16 v0, 0xa00

    if-ge v6, v0, :cond_6

    .line 119
    add-int/lit8 v0, v6, -0x2

    aget v7, v5, v0

    .line 120
    add-int/lit8 v0, v6, -0xf

    aget v8, v5, v0

    .line 121
    const/16 v0, 0x11

    invoke-static {v7, v0}, Lorg/spongycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x13

    invoke-static {v7, v1}, Lorg/spongycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v7, 0xa

    xor-int/2addr v0, v1

    add-int/lit8 v1, v6, -0x7

    aget v1, v5, v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-static {v8, v1}, Lorg/spongycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v1

    const/16 v2, 0x12

    invoke-static {v8, v2}, Lorg/spongycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v8, 0x3

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, v6, -0x10

    aget v1, v5, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    aput v0, v5, v6

    .line 117
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 127
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKr:[I

    const/16 v1, 0x200

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-static {v5, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKs:[I

    const/16 v1, 0x600

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-static {v5, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    const/4 v6, 0x0

    :goto_3
    const/16 v0, 0x1000

    if-ge v6, v0, :cond_7

    .line 132
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC256Engine;->jy()I

    .line 130
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 135
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKt:I

    .line 136
    return-void
.end method

.method private jy()I
    .locals 10

    .line 33
    iget v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKt:I

    and-int/lit16 v6, v0, 0x3ff

    .line 35
    iget v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKt:I

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKr:[I

    add-int/lit8 v1, v6, -0x3

    and-int/lit16 v1, v1, 0x3ff

    aget v8, v0, v1

    .line 38
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKr:[I

    add-int/lit16 v1, v6, -0x3ff

    and-int/lit16 v1, v1, 0x3ff

    aget v9, v0, v1

    .line 39
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKr:[I

    aget v1, v0, v6

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKr:[I

    add-int/lit8 v3, v6, -0xa

    and-int/lit16 v3, v3, 0x3ff

    aget v2, v2, v3

    const/16 v3, 0xa

    invoke-static {v8, v3}, Lorg/spongycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v3

    const/16 v4, 0x17

    invoke-static {v9, v4}, Lorg/spongycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKs:[I

    xor-int v4, v8, v9

    and-int/lit16 v4, v4, 0x3ff

    aget v3, v3, v4

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 43
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKr:[I

    add-int/lit8 v1, v6, -0xc

    and-int/lit16 v1, v1, 0x3ff

    aget v8, v0, v1

    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKs:[I

    and-int/lit16 v1, v8, 0xff

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKs:[I

    shr-int/lit8 v2, v8, 0x8

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKs:[I

    shr-int/lit8 v2, v8, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKs:[I

    shr-int/lit8 v2, v8, 0x18

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x300

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKr:[I

    aget v1, v1, v6

    xor-int v7, v0, v1

    .line 47
    goto/16 :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKs:[I

    add-int/lit8 v1, v6, -0x3

    and-int/lit16 v1, v1, 0x3ff

    aget v8, v0, v1

    .line 51
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKs:[I

    add-int/lit16 v1, v6, -0x3ff

    and-int/lit16 v1, v1, 0x3ff

    aget v9, v0, v1

    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKs:[I

    aget v1, v0, v6

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKs:[I

    add-int/lit8 v3, v6, -0xa

    and-int/lit16 v3, v3, 0x3ff

    aget v2, v2, v3

    const/16 v3, 0xa

    invoke-static {v8, v3}, Lorg/spongycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v3

    const/16 v4, 0x17

    invoke-static {v9, v4}, Lorg/spongycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKr:[I

    xor-int v4, v8, v9

    and-int/lit16 v4, v4, 0x3ff

    aget v3, v3, v4

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 56
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKs:[I

    add-int/lit8 v1, v6, -0xc

    and-int/lit16 v1, v1, 0x3ff

    aget v8, v0, v1

    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKr:[I

    and-int/lit16 v1, v8, 0xff

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKr:[I

    shr-int/lit8 v2, v8, 0x8

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKr:[I

    shr-int/lit8 v2, v8, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKr:[I

    shr-int/lit8 v2, v8, 0x18

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x300

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKs:[I

    aget v1, v1, v6

    xor-int v7, v0, v1

    .line 61
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKt:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0x7ff

    iput v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKt:I

    .line 62
    return v7
.end method

.method private jz()B
    .locals 4

    .line 187
    iget v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKu:I

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC256Engine;->jy()I

    move-result v3

    .line 190
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->buf:[B

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 191
    shr-int/lit8 v3, v3, 0x8

    .line 192
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->buf:[B

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 193
    shr-int/lit8 v3, v3, 0x8

    .line 194
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->buf:[B

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 195
    shr-int/lit8 v3, v3, 0x8

    .line 196
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->buf:[B

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKu:I

    aget-byte v3, v0, v1

    .line 199
    iget v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKu:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aKu:I

    .line 200
    return v3
.end method

.method private static rotateRight(II)I
    .locals 2

    .line 244
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 1

    .line 140
    const-string v0, "HC-256"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 232
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC256Engine;->init()V

    .line 233
    return-void
.end method

.method public ʽ(B)B
    .locals 1

    .line 237
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC256Engine;->jz()B

    move-result v0

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 155
    move-object v3, p2

    .line 157
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 159
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->iv:[B

    .line 160
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    goto :goto_0

    .line 164
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->iv:[B

    .line 167
    :goto_0
    instance-of v0, v3, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 169
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->key:[B

    .line 170
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC256Engine;->init()V

    goto :goto_1

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter passed to HC256 init - "

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

    .line 179
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aJn:Z

    .line 180
    return-void
.end method

.method public ˋ([BII[BI)I
    .locals 4

    .line 206
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/HC256Engine;->aJn:Z

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/HC256Engine;->iG()Ljava/lang/String;

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

    .line 212
    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 214
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    add-int v0, p5, p3

    array-length v1, p4

    if-le v0, v1, :cond_2

    .line 219
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_3

    .line 224
    add-int v0, p5, v3

    add-int v1, p2, v3

    aget-byte v1, p1, v1

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC256Engine;->jz()B

    move-result v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    :cond_3
    return p3
.end method
