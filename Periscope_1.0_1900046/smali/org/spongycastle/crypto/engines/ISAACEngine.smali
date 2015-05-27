.class public Lorg/spongycastle/crypto/engines/ISAACEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/StreamCipher;


# instance fields
.field private aIZ:[B

.field private aJn:Z

.field private final aKG:I

.field private final aKH:I

.field private aKI:[I

.field private aKJ:[I

.field private aKK:I

.field private aKL:I

.field private aKM:I

.field private aKN:[B

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKG:I

    const/16 v0, 0x100

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKH:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKI:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKJ:[I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKL:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKM:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    .line 28
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKN:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aIZ:[B

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aJn:Z

    return-void
.end method

.method private jC()V
    .locals 7

    .line 193
    iget v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKL:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKM:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKM:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKL:I

    .line 194
    const/4 v4, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge v4, v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKI:[I

    aget v5, v0, v4

    .line 197
    and-int/lit8 v0, v4, 0x3

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 199
    :pswitch_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    shl-int/lit8 v1, v1, 0xd

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    goto :goto_1

    .line 200
    :pswitch_1
    iget v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    ushr-int/lit8 v1, v1, 0x6

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    goto :goto_1

    .line 201
    :pswitch_2
    iget v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    shl-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    goto :goto_1

    .line 202
    :pswitch_3
    iget v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    ushr-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    .line 204
    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKI:[I

    add-int/lit16 v2, v4, 0x80

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    .line 205
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKI:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKI:[I

    ushr-int/lit8 v2, v5, 0x2

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKL:I

    add-int/2addr v1, v2

    move v6, v1

    aput v1, v0, v4

    .line 206
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKJ:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKI:[I

    ushr-int/lit8 v2, v6, 0xa

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    add-int/2addr v1, v5

    iput v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKL:I

    aput v1, v0, v4

    .line 194
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 208
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private ˇ([B)V
    .locals 8

    .line 121
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aIZ:[B

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKI:[I

    if-nez v0, :cond_0

    .line 125
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKI:[I

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKJ:[I

    if-nez v0, :cond_1

    .line 130
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKJ:[I

    .line 136
    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge v3, v0, :cond_2

    .line 138
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKI:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKJ:[I

    const/4 v2, 0x0

    aput v2, v1, v3

    const/4 v1, 0x0

    aput v1, v0, v3

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKM:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKL:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKK:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    .line 146
    array-length v0, p1

    array-length v1, p1

    and-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    new-array v6, v0, [B

    .line 147
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    const/4 v3, 0x0

    :goto_1
    array-length v0, v6

    if-ge v3, v0, :cond_3

    .line 150
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKJ:[I

    ushr-int/lit8 v1, v3, 0x2

    invoke-static {v6, v3}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v2

    aput v2, v0, v1

    .line 148
    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 154
    :cond_3
    const/16 v0, 0x8

    new-array v7, v0, [I

    .line 156
    const/4 v3, 0x0

    :goto_2
    const/16 v0, 0x8

    if-ge v3, v0, :cond_4

    .line 158
    const v0, -0x61c88647

    aput v0, v7, v3

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 161
    :cond_4
    const/4 v3, 0x0

    :goto_3
    const/4 v0, 0x4

    if-ge v3, v0, :cond_5

    .line 163
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/ISAACEngine;->ˏ([I)V

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 166
    :cond_5
    const/4 v3, 0x0

    :goto_4
    const/4 v0, 0x2

    if-ge v3, v0, :cond_a

    .line 168
    const/4 v4, 0x0

    :goto_5
    const/16 v0, 0x100

    if-ge v4, v0, :cond_9

    .line 170
    const/4 v5, 0x0

    :goto_6
    const/16 v0, 0x8

    if-ge v5, v0, :cond_7

    .line 172
    aget v0, v7, v5

    const/4 v1, 0x1

    if-ge v3, v1, :cond_6

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKJ:[I

    add-int v2, v4, v5

    aget v1, v1, v2

    goto :goto_7

    :cond_6
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKI:[I

    add-int v2, v4, v5

    aget v1, v1, v2

    :goto_7
    add-int/2addr v0, v1

    aput v0, v7, v5

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 175
    :cond_7
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/ISAACEngine;->ˏ([I)V

    .line 177
    const/4 v5, 0x0

    :goto_8
    const/16 v0, 0x8

    if-ge v5, v0, :cond_8

    .line 179
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKI:[I

    add-int v1, v4, v5

    aget v2, v7, v5

    aput v2, v0, v1

    .line 177
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 168
    :cond_8
    add-int/lit8 v4, v4, 0x8

    goto :goto_5

    .line 166
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 184
    :cond_a
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/ISAACEngine;->jC()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aJn:Z

    .line 187
    return-void
.end method

.method private ˏ([I)V
    .locals 3

    .line 212
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0xb

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aput v0, p1, v1

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 213
    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    ushr-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    const/4 v0, 0x4

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aput v0, p1, v1

    const/4 v0, 0x2

    aget v0, p1, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 214
    const/4 v0, 0x2

    aget v0, p1, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    const/4 v1, 0x2

    aput v0, p1, v1

    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aput v0, p1, v1

    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 215
    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, 0x4

    aget v1, p1, v1

    ushr-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    const/4 v1, 0x3

    aput v0, p1, v1

    const/4 v0, 0x6

    aget v0, p1, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aput v0, p1, v1

    const/4 v0, 0x4

    aget v0, p1, v0

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 216
    const/4 v0, 0x4

    aget v0, p1, v0

    const/4 v1, 0x5

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    xor-int/2addr v0, v1

    const/4 v1, 0x4

    aput v0, p1, v1

    const/4 v0, 0x7

    aget v0, p1, v0

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    aput v0, p1, v1

    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 217
    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, 0x6

    aget v1, p1, v1

    ushr-int/lit8 v1, v1, 0x4

    xor-int/2addr v0, v1

    const/4 v1, 0x5

    aput v0, p1, v1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x6

    aget v0, p1, v0

    const/4 v1, 0x7

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aput v0, p1, v1

    .line 218
    const/4 v0, 0x6

    aget v0, p1, v0

    const/4 v1, 0x7

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    const/4 v1, 0x6

    aput v0, p1, v1

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    const/4 v0, 0x7

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    aput v0, p1, v1

    .line 219
    const/4 v0, 0x7

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    ushr-int/lit8 v1, v1, 0x9

    xor-int/2addr v0, v1

    const/4 v1, 0x7

    aput v0, p1, v1

    const/4 v0, 0x2

    aget v0, p1, v0

    const/4 v1, 0x7

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aput v0, p1, v1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 220
    return-void
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 1

    .line 110
    const-string v0, "ISAAC"

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aIZ:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/ISAACEngine;->ˇ([B)V

    .line 116
    return-void
.end method

.method public ʽ(B)B
    .locals 3

    .line 61
    iget v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/ISAACEngine;->jC()V

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKJ:[I

    invoke-static {v0}, Lorg/spongycastle/util/Pack;->ⁱ([I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKN:[B

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKN:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v2, v0

    .line 67
    iget v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0x3ff

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    .line 69
    return v2
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 44
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to ISAAC init - "

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

    .line 53
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v3, v0

    .line 54
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/ISAACEngine;->ˇ([B)V

    .line 56
    return-void
.end method

.method public ˋ([BII[BI)I
    .locals 4

    .line 79
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aJn:Z

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/ISAACEngine;->iG()Ljava/lang/String;

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

    .line 84
    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 86
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    add-int v0, p5, p3

    array-length v1, p4

    if-le v0, v1, :cond_2

    .line 91
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_4

    .line 96
    iget v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    if-nez v0, :cond_3

    .line 98
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/ISAACEngine;->jC()V

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKJ:[I

    invoke-static {v0}, Lorg/spongycastle/util/Pack;->ⁱ([I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKN:[B

    .line 101
    :cond_3
    add-int v0, v3, p5

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->aKN:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    aget-byte v1, v1, v2

    add-int v2, v3, p2

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 102
    iget v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0x3ff

    iput v0, p0, Lorg/spongycastle/crypto/engines/ISAACEngine;->index:I

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_4
    return p3
.end method
