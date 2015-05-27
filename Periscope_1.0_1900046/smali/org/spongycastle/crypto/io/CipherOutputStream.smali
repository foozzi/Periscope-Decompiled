.class public Lorg/spongycastle/crypto/io/CipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source ""


# instance fields
.field private final aGY:[B

.field private aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

.field private aNq:Lorg/spongycastle/crypto/StreamCipher;

.field private aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

.field private buf:[B


# direct methods
.method private ﹳ(IZ)V
    .locals 2

    .line 157
    move v1, p1

    .line 158
    if-eqz p2, :cond_1

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v1

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->ء(I)I

    move-result v1

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->ء(I)I

    move-result v1

    .line 181
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    array-length v0, v0

    if-ge v0, v1, :cond_5

    .line 183
    :cond_4
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    .line 185
    :cond_5
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 226
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/io/CipherOutputStream;->ﹳ(IZ)V

    .line 227
    const/4 v3, 0x0

    .line 230
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v4

    .line 234
    if-eqz v4, :cond_0

    .line 236
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 238
    :cond_0
    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result v4

    .line 243
    if-eqz v4, :cond_2

    .line 245
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    :cond_2
    :goto_0
    goto :goto_1

    .line 249
    :catch_0
    move-exception v4

    .line 251
    new-instance v3, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;

    const-string v0, "Error finalising cipher data"

    invoke-direct {v3, v0, v4}, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    goto :goto_1

    .line 253
    :catch_1
    move-exception v4

    .line 255
    new-instance v3, Lorg/spongycastle/crypto/io/CipherIOException;

    const-string v0, "Error closing stream: "

    invoke-direct {v3, v0, v4}, Lorg/spongycastle/crypto/io/CipherIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/io/CipherOutputStream;->flush()V

    .line 261
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 270
    goto :goto_2

    .line 263
    :catch_2
    move-exception v4

    .line 266
    if-nez v3, :cond_3

    .line 268
    move-object v3, v4

    .line 271
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 273
    throw v3

    .line 275
    :cond_4
    return-void
.end method

.method public flush()V
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 204
    return-void
.end method

.method public write(I)V
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aGY:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNq:Lorg/spongycastle/crypto/StreamCipher;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNq:Lorg/spongycastle/crypto/StreamCipher;

    int-to-byte v2, p1

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/StreamCipher;->ʽ(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aGY:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/spongycastle/crypto/io/CipherOutputStream;->write([BII)V

    .line 84
    :goto_0
    return-void
.end method

.method public write([B)V
    .locals 2

    .line 103
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/crypto/io/CipherOutputStream;->write([BII)V

    .line 104
    return-void
.end method

.method public write([BII)V
    .locals 7

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lorg/spongycastle/crypto/io/CipherOutputStream;->ﹳ(IZ)V

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNp:Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->ˋ([BII[BI)I

    move-result v6

    .line 127
    if-eqz v6, :cond_0

    .line 129
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 131
    :cond_0
    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNr:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->ˋ([BII[BI)I

    move-result v6

    .line 136
    if-eqz v6, :cond_2

    .line 138
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 140
    :cond_2
    goto :goto_0

    .line 143
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aNq:Lorg/spongycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->ˋ([BII[BI)I

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 147
    :goto_0
    return-void
.end method
