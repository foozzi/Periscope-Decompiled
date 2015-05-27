.class public Lorg/spongycastle/crypto/modes/PaddedBlockCipher;
.super Lorg/spongycastle/crypto/BufferedBlockCipher;
.source ""


# virtual methods
.method public doFinal([BI)I
    .locals 8

    .line 193
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 194
    const/4 v6, 0x0

    .line 196
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEW:Z

    if-eqz v0, :cond_3

    .line 198
    iget v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    if-ne v0, v5, :cond_1

    .line 200
    mul-int/lit8 v0, v5, 0x2

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 202
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v6

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    .line 212
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    sub-int v0, v5, v0

    int-to-byte v7, v0

    .line 214
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    if-ge v0, v5, :cond_2

    .line 216
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    aput-byte v7, v0, v1

    .line 217
    iget v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    add-int v2, p2, v6

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p1, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/2addr v6, v0

    .line 221
    goto :goto_2

    .line 224
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    if-ne v0, v5, :cond_4

    .line 226
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v6

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    goto :goto_1

    .line 231
    :cond_4
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "last block incomplete in decryption"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    add-int/lit8 v1, v5, -0x1

    aget-byte v0, v0, v1

    and-int/lit16 v7, v0, 0xff

    .line 239
    if-ltz v7, :cond_5

    if-le v7, v5, :cond_6

    .line 241
    :cond_5
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "pad block corrupted"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_6
    sub-int/2addr v6, v7

    .line 246
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    :goto_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->reset()V

    .line 251
    return v6
.end method

.method public getOutputSize(I)I
    .locals 4

    .line 45
    iget v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    add-int v2, p1, v0

    .line 46
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v3, v2, v0

    .line 48
    if-nez v3, :cond_1

    .line 50
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEW:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v0, v0

    add-int/2addr v0, v2

    return v0

    .line 55
    :cond_0
    return v2

    .line 58
    :cond_1
    sub-int v0, v2, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public ˋ([BII[BI)I
    .locals 7

    .line 130
    if-gez p3, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->getBlockSize()I

    move-result v3

    .line 136
    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->ء(I)I

    move-result v4

    .line 138
    if-lez v4, :cond_1

    .line 140
    add-int v0, p5, v4

    array-length v1, p4

    if-le v0, v1, :cond_1

    .line 142
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    const/4 v5, 0x0

    .line 147
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    sub-int v6, v0, v1

    .line 149
    if-le p3, v6, :cond_2

    .line 151
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    invoke-static {p1, p2, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p4, p5}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/lit8 v5, v0, 0x0

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    .line 156
    sub-int/2addr p3, v6

    .line 157
    add-int/2addr p2, v6

    .line 159
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v0, v0

    if-le p3, v0, :cond_2

    .line 161
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    add-int v1, p5, v5

    invoke-interface {v0, p1, p2, p4, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/2addr v5, v0

    .line 163
    sub-int/2addr p3, v3

    .line 164
    add-int/2addr p2, v3

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    .line 172
    return v5
.end method

.method public ء(I)I
    .locals 3

    .line 72
    iget v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->aEU:I

    add-int v1, p1, v0

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v2, v1, v0

    .line 75
    if-nez v2, :cond_0

    .line 77
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v0, v0

    sub-int v0, v1, v0

    return v0

    .line 80
    :cond_0
    sub-int v0, v1, v2

    return v0
.end method
