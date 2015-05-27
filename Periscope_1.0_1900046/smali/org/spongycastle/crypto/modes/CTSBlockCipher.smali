.class public Lorg/spongycastle/crypto/modes/CTSBlockCipher;
.super Lorg/spongycastle/crypto/BufferedBlockCipher;
.source ""


# instance fields
.field private fU:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 25
    instance-of v0, p1, Lorg/spongycastle/crypto/modes/OFBBlockCipher;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/spongycastle/crypto/modes/SICBlockCipher;

    if-eqz v0, :cond_1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 33
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->fU:I

    .line 35
    iget v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->fU:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    .line 37
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 9

    .line 193
    iget v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 195
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer to small in doFinal"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    .line 199
    iget v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    sub-int v5, v0, v4

    .line 200
    new-array v6, v4, [B

    .line 202
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEW:Z

    if-eqz v0, :cond_6

    .line 204
    iget v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    if-ge v0, v4, :cond_1

    .line 206
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "need at least one block of input for CTS"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v6, v3}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 211
    iget v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    if-le v0, v4, :cond_5

    .line 213
    iget v7, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v0, v0

    if-eq v7, v0, :cond_2

    .line 215
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    sub-int v1, v7, v4

    aget-byte v1, v6, v1

    aput-byte v1, v0, v7

    .line 213
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 218
    :cond_2
    move v7, v4

    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    if-eq v7, v0, :cond_3

    .line 220
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v1, v0, v7

    sub-int v2, v7, v4

    aget-byte v2, v6, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 218
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 223
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    instance-of v0, v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    check-cast v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v7

    .line 227
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v7, v0, v4, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 228
    goto :goto_2

    .line 231
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v0, v1, v4, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 234
    :goto_2
    add-int v0, p2, v4

    const/4 v1, 0x0

    invoke-static {v6, v1, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5

    .line 238
    :cond_5
    const/4 v0, 0x0

    invoke-static {v6, v0, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5

    .line 243
    :cond_6
    iget v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    if-ge v0, v4, :cond_7

    .line 245
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "need at least one block of input for CTS"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_7
    new-array v7, v4, [B

    .line 250
    iget v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    if-le v0, v4, :cond_a

    .line 252
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    instance-of v0, v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    if-eqz v0, :cond_8

    .line 254
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    check-cast v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v8

    .line 256
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v8, v0, v1, v6, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 257
    goto :goto_3

    .line 260
    :cond_8
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v6, v3}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 263
    :goto_3
    move v8, v4

    :goto_4
    iget v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    if-eq v8, v0, :cond_9

    .line 265
    sub-int v0, v8, v4

    sub-int v1, v8, v4

    aget-byte v1, v6, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v2, v2, v8

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    .line 263
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 268
    :cond_9
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v4, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 271
    add-int v0, p2, v4

    const/4 v1, 0x0

    invoke-static {v7, v1, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 275
    :cond_a
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v6, v3}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 277
    const/4 v0, 0x0

    invoke-static {v6, v0, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    :goto_5
    iget v7, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    .line 283
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->reset()V

    .line 285
    return v7
.end method

.method public getOutputSize(I)I
    .locals 1

    .line 72
    iget v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    add-int/2addr v0, p1

    return v0
.end method

.method public ˋ([BII[BI)I
    .locals 8

    .line 126
    if-gez p3, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->getBlockSize()I

    move-result v4

    .line 132
    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->ء(I)I

    move-result v5

    .line 134
    if-lez v5, :cond_1

    .line 136
    add-int v0, p5, v5

    array-length v1, p4

    if-le v0, v1, :cond_1

    .line 138
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    const/4 v6, 0x0

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    sub-int v7, v0, v1

    .line 145
    if-le p3, v7, :cond_2

    .line 147
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    invoke-static {p1, p2, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p4, p5}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/lit8 v6, v0, 0x0

    .line 150
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iput v4, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    .line 154
    sub-int/2addr p3, v7

    .line 155
    add-int/2addr p2, v7

    .line 157
    :goto_0
    if-le p3, v4, :cond_2

    .line 159
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    invoke-static {p1, p2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    add-int v2, p5, v6

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p4, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/2addr v6, v0

    .line 161
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    sub-int/2addr p3, v4

    .line 164
    add-int/2addr p2, v4

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    .line 172
    return v6
.end method

.method public ء(I)I
    .locals 3

    .line 50
    iget v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->aEU:I

    add-int v1, p1, v0

    .line 51
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v2, v1, v0

    .line 53
    if-nez v2, :cond_0

    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v0, v0

    sub-int v0, v1, v0

    return v0

    .line 58
    :cond_0
    sub-int v0, v1, v2

    return v0
.end method
