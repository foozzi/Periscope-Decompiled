.class public Lorg/spongycastle/util/io/BufferingOutputStream;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field private aEU:I

.field private final bki:Ljava/io/OutputStream;

.field private final buf:[B


# virtual methods
.method public close()V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lorg/spongycastle/util/io/BufferingOutputStream;->flush()V

    .line 106
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bki:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 107
    return-void
.end method

.method public flush()V
    .locals 4

    .line 97
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bki:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    iget v2, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    .line 99
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 100
    return-void
.end method

.method public write(I)V
    .locals 3

    .line 82
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    iget v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 83
    iget v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    iget-object v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/spongycastle/util/io/BufferingOutputStream;->flush()V

    .line 87
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 3

    .line 48
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    iget v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    goto :goto_1

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    sub-int v2, v0, v1

    .line 57
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    iget v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    .line 60
    invoke-virtual {p0}, Lorg/spongycastle/util/io/BufferingOutputStream;->flush()V

    .line 62
    add-int/2addr p2, v2

    .line 63
    sub-int/2addr p3, v2

    .line 64
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v0, v0

    if-lt p3, v0, :cond_1

    .line 66
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bki:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v1, v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 67
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 68
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 71
    :cond_1
    if-lez p3, :cond_2

    .line 73
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    iget v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->aEU:I

    .line 77
    :cond_2
    :goto_1
    return-void
.end method
