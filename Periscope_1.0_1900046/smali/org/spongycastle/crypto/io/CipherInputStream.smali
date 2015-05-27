.class public Lorg/spongycastle/crypto/io/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field private aEU:I

.field private aNn:Lorg/spongycastle/crypto/SkippingCipher;

.field private aNo:[B

.field private aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

.field private aNq:Lorg/spongycastle/crypto/StreamCipher;

.field private aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

.field private aNs:[B

.field private aNt:I

.field private aNu:Z

.field private aNv:J

.field private aNw:I

.field private buf:[B


# direct methods
.method private jY()I
    .locals 8

    .line 131
    iget-boolean v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNu:Z

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, -0x1

    return v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I

    .line 140
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I

    if-nez v0, :cond_5

    .line 142
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNo:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 143
    const/4 v0, -0x1

    if-ne v6, v0, :cond_2

    .line 145
    invoke-direct {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->jZ()V

    .line 146
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I

    if-nez v0, :cond_1

    .line 148
    const/4 v0, -0x1

    return v0

    .line 150
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I

    return v0

    .line 155
    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v6, v0}, Lorg/spongycastle/crypto/io/CipherInputStream;->ﹳ(IZ)V

    .line 156
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNo:[B

    move v3, v6

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->ˋ([BII[BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I

    goto :goto_1

    .line 160
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNo:[B

    move v3, v6

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->ˋ([BII[BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I

    goto :goto_1

    .line 166
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNq:Lorg/spongycastle/crypto/StreamCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNo:[B

    move v3, v6

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->ˋ([BII[BI)I

    .line 167
    iput v6, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_1
    goto :goto_2

    .line 170
    :catch_0
    move-exception v7

    .line 172
    new-instance v0, Lorg/spongycastle/crypto/io/CipherIOException;

    const-string v1, "Error processing stream "

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/crypto/io/CipherIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 174
    :goto_2
    goto/16 :goto_0

    .line 175
    :cond_5
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I

    return v0
.end method

.method private jZ()V
    .locals 4

    .line 183
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNu:Z

    .line 184
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/io/CipherInputStream;->ﹳ(IZ)V

    .line 185
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I

    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :goto_0
    goto :goto_1

    .line 198
    :catch_0
    move-exception v3

    .line 200
    new-instance v0, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;

    const-string v1, "Error finalising cipher"

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 202
    :catch_1
    move-exception v3

    .line 204
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error finalising cipher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :goto_1
    return-void
.end method

.method private ﹳ(IZ)V
    .locals 2

    .line 342
    move v1, p1

    .line 343
    if-eqz p2, :cond_1

    .line 345
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v1

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v1

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->ء(I)I

    move-result v1

    goto :goto_0

    .line 360
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_3

    .line 362
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->ء(I)I

    move-result v1

    .line 366
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    array-length v0, v0

    if-ge v0, v1, :cond_5

    .line 368
    :cond_4
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    .line 370
    :cond_5
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 331
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I

    iget v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 3

    .line 384
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    iget-boolean v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNu:Z

    if-nez v0, :cond_1

    .line 392
    invoke-direct {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->jZ()V

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v2

    iget-boolean v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNu:Z

    if-nez v0, :cond_0

    .line 392
    invoke-direct {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->jZ()V

    :cond_0
    throw v2

    .line 395
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNw:I

    .line 397
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNv:J

    .line 398
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNs:[B

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNs:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNs:[B

    .line 403
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    .line 408
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNo:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 409
    return-void
.end method

.method public mark(I)V
    .locals 5

    .line 421
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 422
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNn:Lorg/spongycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNn:Lorg/spongycastle/crypto/SkippingCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/SkippingCipher;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNv:J

    .line 427
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNs:[B

    .line 430
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNs:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNw:I

    .line 434
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 469
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNn:Lorg/spongycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0

    .line 474
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    .line 221
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    iget v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I

    if-lt v0, v1, :cond_0

    .line 223
    invoke-direct {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->jY()I

    move-result v0

    if-gez v0, :cond_0

    .line 225
    const/4 v0, -0x1

    return v0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 249
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/crypto/io/CipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3

    .line 273
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    iget v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I

    if-lt v0, v1, :cond_0

    .line 275
    invoke-direct {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->jY()I

    move-result v0

    if-gez v0, :cond_0

    .line 277
    const/4 v0, -0x1

    return v0

    .line 281
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 282
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    .line 284
    return v2
.end method

.method public reset()V
    .locals 3

    .line 444
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNn:Lorg/spongycastle/crypto/SkippingCipher;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cipher must implement SkippingCipher to be used with reset()"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 451
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNn:Lorg/spongycastle/crypto/SkippingCipher;

    iget-wide v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNv:J

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/SkippingCipher;->ו(J)J

    .line 453
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNs:[B

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNs:[B

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    .line 458
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNw:I

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    .line 459
    return-void
.end method

.method public skip(J)J
    .locals 8

    .line 291
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 293
    const-wide/16 v0, 0x0

    return-wide v0

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNn:Lorg/spongycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_3

    .line 298
    invoke-virtual {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->available()I

    move-result v3

    .line 299
    int-to-long v0, v3

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 301
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    .line 303
    return-wide p1

    .line 306
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNt:I

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    .line 308
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    int-to-long v1, v3

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 310
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aNn:Lorg/spongycastle/crypto/SkippingCipher;

    invoke-interface {v0, v4, v5}, Lorg/spongycastle/crypto/SkippingCipher;->skip(J)J

    move-result-wide v6

    .line 312
    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 314
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to skip cipher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_2
    int-to-long v0, v3

    add-long/2addr v0, v4

    return-wide v0

    .line 321
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v3, v0

    .line 322
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aEU:I

    .line 324
    int-to-long v0, v3

    return-wide v0
.end method
