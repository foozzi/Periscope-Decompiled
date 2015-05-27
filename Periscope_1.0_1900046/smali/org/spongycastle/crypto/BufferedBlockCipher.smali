.class public Lorg/spongycastle/crypto/BufferedBlockCipher;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public aEU:I

.field public aEW:Z

.field public aEX:Lorg/spongycastle/crypto/BlockCipher;

.field protected aEY:Z

.field protected aEZ:Z

.field public buf:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 40
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    .line 46
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v2

    .line 47
    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 49
    if-lez v3, :cond_0

    const-string v0, "PGP"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEZ:Z

    .line 51
    iget-boolean v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEZ:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/spongycastle/crypto/StreamCipher;

    if-eqz v0, :cond_2

    .line 53
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEY:Z

    goto :goto_2

    .line 57
    :cond_2
    if-lez v3, :cond_3

    const-string v0, "OpenPGP"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEY:Z

    .line 59
    :goto_2
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 8

    .line 264
    const/4 v5, 0x0

    .line 266
    :try_start_0
    iget v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 268
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short for doFinal()"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    if-eqz v0, :cond_2

    .line 273
    iget-boolean v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEY:Z

    if-nez v0, :cond_1

    .line 275
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "data not block size aligned"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 279
    iget v5, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    .line 281
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_2
    move v6, v5

    .line 288
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->reset()V

    return v6

    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->reset()V

    throw v7
.end method

.method public getBlockSize()I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputSize(I)I
    .locals 1

    .line 140
    iget v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    add-int/2addr v0, p1

    return v0
.end method

.method public iH()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public reset()V
    .locals 3

    .line 301
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    .line 311
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 312
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 85
    iput-boolean p1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEW:Z

    .line 87
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->reset()V

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 90
    return-void
.end method

.method public ˋ([BII[BI)I
    .locals 8

    .line 192
    if-gez p3, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v4

    .line 198
    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/BufferedBlockCipher;->ء(I)I

    move-result v5

    .line 200
    if-lez v5, :cond_1

    .line 202
    add-int v0, p5, v5

    array-length v1, p4

    if-le v0, v1, :cond_1

    .line 204
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    const/4 v6, 0x0

    .line 209
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    sub-int v7, v0, v1

    .line 211
    if-le p3, v7, :cond_2

    .line 213
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    invoke-static {p1, p2, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p4, p5}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/lit8 v6, v0, 0x0

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    .line 218
    sub-int/2addr p3, v7

    .line 219
    add-int/2addr p2, v7

    .line 221
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v0, v0

    if-le p3, v0, :cond_2

    .line 223
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    add-int v1, p5, v6

    invoke-interface {v0, p1, p2, p4, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/2addr v6, v0

    .line 225
    sub-int/2addr p3, v4

    .line 226
    add-int/2addr p2, v4

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iget v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    .line 234
    iget v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_3

    .line 236
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    add-int v2, p5, v6

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p4, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/2addr v6, v0

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    .line 240
    :cond_3
    return v6
.end method

.method public ء(I)I
    .locals 5

    .line 113
    iget v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEU:I

    add-int v3, p1, v0

    .line 116
    iget-boolean v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEZ:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, v3, v0

    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int v4, v0, v1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v4, v3, v0

    .line 125
    :goto_0
    sub-int v0, v3, v4

    return v0
.end method
