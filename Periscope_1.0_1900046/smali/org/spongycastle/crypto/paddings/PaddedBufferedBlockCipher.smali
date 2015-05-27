.class public Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;
.super Lorg/spongycastle/crypto/BufferedBlockCipher;
.source ""


# instance fields
.field aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1

    .line 48
    new-instance v0, Lorg/spongycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v0}, Lorg/spongycastle/crypto/paddings/PKCS7Padding;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 34
    iput-object p2, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    .line 36
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEU:I

    .line 38
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 8

    .line 247
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 248
    const/4 v6, 0x0

    .line 250
    iget-boolean v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEW:Z

    if-eqz v0, :cond_2

    .line 252
    iget v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEU:I

    if-ne v0, v5, :cond_1

    .line 254
    mul-int/lit8 v0, v5, 0x2

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 258
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v6

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEU:I

    .line 265
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    iget-object v1, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEU:I

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/paddings/BlockCipherPadding;->ᵢ([BI)I

    .line 267
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    add-int v2, p2, v6

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p1, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/2addr v6, v0

    .line 269
    invoke-virtual {p0}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    goto :goto_1

    .line 273
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEU:I

    if-ne v0, v5, :cond_3

    .line 275
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v6

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEU:I

    goto :goto_0

    .line 280
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 282
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "last block incomplete in decryption"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    iget-object v1, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/paddings/BlockCipherPadding;->ﾟ([B)I

    move-result v0

    sub-int/2addr v6, v0

    .line 289
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-virtual {p0}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 294
    goto :goto_1

    .line 293
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    throw v7

    .line 297
    :goto_1
    return v6
.end method

.method public getOutputSize(I)I
    .locals 4

    .line 96
    iget v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEU:I

    add-int v2, p1, v0

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v3, v2, v0

    .line 99
    if-nez v3, :cond_1

    .line 101
    iget-boolean v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEW:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v0, v0

    add-int/2addr v0, v2

    return v0

    .line 106
    :cond_0
    return v2

    .line 109
    :cond_1
    sub-int v0, v2, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 65
    iput-boolean p1, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEW:Z

    .line 67
    invoke-virtual {p0}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 69
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 76
    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 83
    :goto_0
    return-void
.end method

.method public ˋ([BII[BI)I
    .locals 7

    .line 183
    if-gez p3, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->getBlockSize()I

    move-result v3

    .line 189
    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->ء(I)I

    move-result v4

    .line 191
    if-lez v4, :cond_1

    .line 193
    add-int v0, p5, v4

    array-length v1, p4

    if-le v0, v1, :cond_1

    .line 195
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    const/4 v5, 0x0

    .line 200
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEU:I

    sub-int v6, v0, v1

    .line 202
    if-le p3, v6, :cond_2

    .line 204
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEU:I

    invoke-static {p1, p2, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p4, p5}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/lit8 v5, v0, 0x0

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEU:I

    .line 209
    sub-int/2addr p3, v6

    .line 210
    add-int/2addr p2, v6

    .line 212
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v0, v0

    if-le p3, v0, :cond_2

    .line 214
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    add-int v1, p5, v5

    invoke-interface {v0, p1, p2, p4, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/2addr v5, v0

    .line 216
    sub-int/2addr p3, v3

    .line 217
    add-int/2addr p2, v3

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEU:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iget v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEU:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEU:I

    .line 225
    return v5
.end method

.method public ء(I)I
    .locals 4

    .line 123
    iget v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->aEU:I

    add-int v2, p1, v0

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v3, v2, v0

    .line 126
    if-nez v3, :cond_0

    .line 128
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v0, v0

    sub-int v0, v2, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 131
    :cond_0
    sub-int v0, v2, v3

    return v0
.end method
