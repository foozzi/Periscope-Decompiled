.class public Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;
.super Lorg/spongycastle/crypto/BufferedBlockCipher;
.source ""


# virtual methods
.method public doFinal([BI)I
    .locals 9

    .line 196
    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 198
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer to small in doFinal"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    .line 202
    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    sub-int v5, v0, v4

    .line 203
    new-array v6, v4, [B

    .line 205
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEW:Z

    if-eqz v0, :cond_5

    .line 207
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v6, v3}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 209
    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    if-ge v0, v4, :cond_1

    .line 211
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "need at least one block of input for CTS"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    iget v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v0, v0

    if-eq v7, v0, :cond_2

    .line 216
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    sub-int v1, v7, v4

    aget-byte v1, v6, v1

    aput-byte v1, v0, v7

    .line 214
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 219
    :cond_2
    move v7, v4

    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    if-eq v7, v0, :cond_3

    .line 221
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    aget-byte v1, v0, v7

    sub-int v2, v7, v4

    aget-byte v2, v6, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 219
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 224
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    instance-of v0, v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    check-cast v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v7

    .line 228
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v7, v0, v4, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 229
    goto :goto_2

    .line 232
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v0, v1, v4, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 235
    :goto_2
    add-int v0, p2, v4

    const/4 v1, 0x0

    invoke-static {v6, v1, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5

    .line 239
    :cond_5
    new-array v7, v4, [B

    .line 241
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    instance-of v0, v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    if-eqz v0, :cond_6

    .line 243
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    check-cast v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v8

    .line 245
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v8, v0, v1, v6, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 246
    goto :goto_3

    .line 249
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v6, v3}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 252
    :goto_3
    move v8, v4

    :goto_4
    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    if-eq v8, v0, :cond_7

    .line 254
    sub-int v0, v8, v4

    sub-int v1, v8, v4

    aget-byte v1, v6, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    aget-byte v2, v2, v8

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    .line 252
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 257
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v4, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 260
    add-int v0, p2, v4

    const/4 v1, 0x0

    invoke-static {v7, v1, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    :goto_5
    iget v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    .line 265
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->reset()V

    .line 267
    return v7
.end method

.method public getOutputSize(I)I
    .locals 1

    .line 75
    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    add-int/2addr v0, p1

    return v0
.end method

.method public ˋ([BII[BI)I
    .locals 8

    .line 129
    if-gez p3, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->getBlockSize()I

    move-result v4

    .line 135
    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->ء(I)I

    move-result v5

    .line 137
    if-lez v5, :cond_1

    .line 139
    add-int v0, p5, v5

    array-length v1, p4

    if-le v0, v1, :cond_1

    .line 141
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    const/4 v6, 0x0

    .line 146
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    sub-int v7, v0, v1

    .line 148
    if-le p3, v7, :cond_2

    .line 150
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    invoke-static {p1, p2, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p4, p5}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/lit8 v6, v0, 0x0

    .line 153
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iput v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    .line 157
    sub-int/2addr p3, v7

    .line 158
    add-int/2addr p2, v7

    .line 160
    :goto_0
    if-le p3, v4, :cond_2

    .line 162
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    invoke-static {p1, p2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    add-int v2, p5, v6

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p4, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/2addr v6, v0

    .line 164
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    sub-int/2addr p3, v4

    .line 167
    add-int/2addr p2, v4

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    .line 175
    return v6
.end method

.method public ء(I)I
    .locals 3

    .line 53
    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->aEU:I

    add-int v1, p1, v0

    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v2, v1, v0

    .line 56
    if-nez v2, :cond_0

    .line 58
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v0, v0

    sub-int v0, v1, v0

    return v0

    .line 61
    :cond_0
    sub-int v0, v1, v2

    return v0
.end method
