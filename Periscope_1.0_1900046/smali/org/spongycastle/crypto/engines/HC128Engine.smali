.class public Lorg/spongycastle/crypto/engines/HC128Engine;
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKr:[I

    .line 27
    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKs:[I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKt:I

    .line 202
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->buf:[B

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKu:I

    return-void
.end method

.method private init()V
    .locals 7

    .line 115
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->key:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be 128 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKu:I

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKt:I

    .line 124
    const/16 v0, 0x500

    new-array v5, v0, [I

    .line 126
    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge v6, v0, :cond_1

    .line 128
    shr-int/lit8 v0, v6, 0x2

    aget v1, v5, v0

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->key:[B

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v3, v6, 0x3

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v5, v0

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-static {v5, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->iv:[B

    array-length v0, v0

    if-ge v6, v0, :cond_2

    const/16 v0, 0x10

    if-ge v6, v0, :cond_2

    .line 134
    shr-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, 0x8

    aget v1, v5, v0

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->iv:[B

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v3, v6, 0x3

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v5, v0

    .line 132
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 136
    :cond_2
    const/16 v0, 0x8

    const/16 v1, 0xc

    const/4 v2, 0x4

    invoke-static {v5, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    const/16 v6, 0x10

    :goto_2
    const/16 v0, 0x500

    if-ge v6, v0, :cond_3

    .line 140
    add-int/lit8 v0, v6, -0x2

    aget v0, v5, v0

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->Ῑ(I)I

    move-result v0

    add-int/lit8 v1, v6, -0x7

    aget v1, v5, v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v6, -0xf

    aget v1, v5, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->Ῐ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v6, -0x10

    aget v1, v5, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    aput v0, v5, v6

    .line 138
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 143
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKr:[I

    const/16 v1, 0x100

    const/4 v2, 0x0

    const/16 v3, 0x200

    invoke-static {v5, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKs:[I

    const/16 v1, 0x300

    const/4 v2, 0x0

    const/16 v3, 0x200

    invoke-static {v5, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    const/4 v6, 0x0

    :goto_3
    const/16 v0, 0x200

    if-ge v6, v0, :cond_4

    .line 148
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKr:[I

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->jy()I

    move-result v1

    aput v1, v0, v6

    .line 146
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 150
    :cond_4
    const/4 v6, 0x0

    :goto_4
    const/16 v0, 0x200

    if-ge v6, v0, :cond_5

    .line 152
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKs:[I

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->jy()I

    move-result v1

    aput v1, v0, v6

    .line 150
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 155
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKt:I

    .line 156
    return-void
.end method

.method private jy()I
    .locals 8

    .line 94
    iget v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKt:I

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->ⅹ(I)I

    move-result v6

    .line 96
    iget v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKt:I

    const/16 v1, 0x200

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKr:[I

    aget v1, v0, v6

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKr:[I

    const/4 v3, 0x3

    invoke-static {v6, v3}, Lorg/spongycastle/crypto/engines/HC128Engine;->ʸ(II)I

    move-result v3

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKr:[I

    const/16 v4, 0xa

    invoke-static {v6, v4}, Lorg/spongycastle/crypto/engines/HC128Engine;->ʸ(II)I

    move-result v4

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKr:[I

    const/16 v5, 0x1ff

    invoke-static {v6, v5}, Lorg/spongycastle/crypto/engines/HC128Engine;->ʸ(II)I

    move-result v5

    aget v4, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/HC128Engine;->ʴ(III)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKr:[I

    const/16 v1, 0xc

    invoke-static {v6, v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->ʸ(II)I

    move-result v1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->Ὶ(I)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKr:[I

    aget v1, v1, v6

    xor-int v7, v0, v1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKs:[I

    aget v1, v0, v6

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKs:[I

    const/4 v3, 0x3

    invoke-static {v6, v3}, Lorg/spongycastle/crypto/engines/HC128Engine;->ʸ(II)I

    move-result v3

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKs:[I

    const/16 v4, 0xa

    invoke-static {v6, v4}, Lorg/spongycastle/crypto/engines/HC128Engine;->ʸ(II)I

    move-result v4

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKs:[I

    const/16 v5, 0x1ff

    invoke-static {v6, v5}, Lorg/spongycastle/crypto/engines/HC128Engine;->ʸ(II)I

    move-result v5

    aget v4, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/HC128Engine;->ˆ(III)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKs:[I

    const/16 v1, 0xc

    invoke-static {v6, v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->ʸ(II)I

    move-result v1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->Ί(I)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKs:[I

    aget v1, v1, v6

    xor-int v7, v0, v1

    .line 106
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKt:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->ℴ(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKt:I

    .line 107
    return v7
.end method

.method private jz()B
    .locals 4

    .line 207
    iget v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKu:I

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->jy()I

    move-result v3

    .line 210
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->buf:[B

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 211
    shr-int/lit8 v3, v3, 0x8

    .line 212
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->buf:[B

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 213
    shr-int/lit8 v3, v3, 0x8

    .line 214
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->buf:[B

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 215
    shr-int/lit8 v3, v3, 0x8

    .line 216
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->buf:[B

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKu:I

    aget-byte v3, v0, v1

    .line 219
    iget v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKu:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKu:I

    .line 220
    return v3
.end method

.method private static rotateLeft(II)I
    .locals 2

    .line 57
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static rotateRight(II)I
    .locals 2

    .line 64
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private ʴ(III)I
    .locals 2

    .line 44
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {p3, v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static ʸ(II)I
    .locals 1

    .line 89
    sub-int v0, p0, p1

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->ⅹ(I)I

    move-result v0

    return v0
.end method

.method private ˆ(III)I
    .locals 2

    .line 50
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {p3, v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static Ῐ(I)I
    .locals 2

    .line 32
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x12

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private static Ῑ(I)I
    .locals 2

    .line 38
    const/16 v0, 0x11

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x13

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xa

    xor-int/2addr v0, v1

    return v0
.end method

.method private Ὶ(I)I
    .locals 4

    .line 69
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKs:[I

    and-int/lit16 v1, p1, 0xff

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKs:[I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private Ί(I)I
    .locals 4

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKr:[I

    and-int/lit16 v1, p1, 0xff

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aKr:[I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private static ℴ(I)I
    .locals 1

    .line 79
    and-int/lit16 v0, p0, 0x3ff

    return v0
.end method

.method private static ⅹ(I)I
    .locals 1

    .line 84
    and-int/lit16 v0, p0, 0x1ff

    return v0
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 1

    .line 160
    const-string v0, "HC-128"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 252
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->init()V

    .line 253
    return-void
.end method

.method public ʽ(B)B
    .locals 1

    .line 257
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->jz()B

    move-result v0

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 175
    move-object v3, p2

    .line 177
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 179
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->iv:[B

    .line 180
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    goto :goto_0

    .line 184
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->iv:[B

    .line 187
    :goto_0
    instance-of v0, v3, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 189
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->key:[B

    .line 190
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->init()V

    goto :goto_1

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter passed to HC128 init - "

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

    .line 199
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aJn:Z

    .line 200
    return-void
.end method

.method public ˋ([BII[BI)I
    .locals 4

    .line 226
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->aJn:Z

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->iG()Ljava/lang/String;

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

    .line 232
    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 234
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1
    add-int v0, p5, p3

    array-length v1, p4

    if-le v0, v1, :cond_2

    .line 239
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_3

    .line 244
    add-int v0, p5, v3

    add-int v1, p2, v3

    aget-byte v1, p1, v1

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->jz()B

    move-result v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    :cond_3
    return p3
.end method
