.class public Lorg/spongycastle/jcajce/io/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field private aEU:I

.field private aNt:I

.field private aNu:Z

.field private final aWk:Ljavax/crypto/Cipher;

.field private final aWl:[B

.field private buf:[B


# direct methods
.method private jY()I
    .locals 4

    .line 55
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aNu:Z

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, -0x1

    return v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aEU:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aNt:I

    .line 64
    :goto_0
    iget v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aNt:I

    if-nez v0, :cond_5

    .line 66
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aWl:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 67
    const/4 v0, -0x1

    if-ne v3, v0, :cond_3

    .line 69
    invoke-direct {p0}, Lorg/spongycastle/jcajce/io/CipherInputStream;->nz()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->buf:[B

    .line 70
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->buf:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->buf:[B

    array-length v0, v0

    if-nez v0, :cond_2

    .line 72
    :cond_1
    const/4 v0, -0x1

    return v0

    .line 74
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->buf:[B

    array-length v0, v0

    iput v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aNt:I

    .line 75
    iget v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aNt:I

    return v0

    .line 78
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aWk:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aWl:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->buf:[B

    .line 79
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->buf:[B

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->buf:[B

    array-length v0, v0

    iput v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aNt:I

    .line 83
    :cond_4
    goto :goto_0

    .line 84
    :cond_5
    iget v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aNt:I

    return v0
.end method

.method private nz()[B
    .locals 3

    .line 92
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aNu:Z

    .line 93
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aWk:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 95
    :catch_0
    move-exception v2

    .line 97
    new-instance v0, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;

    const-string v1, "Error finalising cipher"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 173
    iget v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aNt:I

    iget v1, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aEU:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 2

    .line 189
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aNu:Z

    if-nez v0, :cond_1

    .line 197
    invoke-direct {p0}, Lorg/spongycastle/jcajce/io/CipherInputStream;->nz()[B

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v1

    iget-boolean v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aNu:Z

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0}, Lorg/spongycastle/jcajce/io/CipherInputStream;->nz()[B

    :cond_0
    throw v1

    .line 200
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aEU:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aNt:I

    .line 201
    return-void
.end method

.method public mark(I)V
    .locals 0

    .line 205
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    .line 114
    iget v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aEU:I

    iget v1, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aNt:I

    if-lt v0, v1, :cond_0

    .line 116
    invoke-direct {p0}, Lorg/spongycastle/jcajce/io/CipherInputStream;->jY()I

    move-result v0

    if-gez v0, :cond_0

    .line 118
    const/4 v0, -0x1

    return v0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->buf:[B

    iget v1, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aEU:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aEU:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 3

    .line 143
    iget v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aEU:I

    iget v1, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aNt:I

    if-lt v0, v1, :cond_0

    .line 145
    invoke-direct {p0}, Lorg/spongycastle/jcajce/io/CipherInputStream;->jY()I

    move-result v0

    if-gez v0, :cond_0

    .line 147
    const/4 v0, -0x1

    return v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/io/CipherInputStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 152
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->buf:[B

    iget v1, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aEU:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aEU:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aEU:I

    .line 154
    return v2
.end method

.method public reset()V
    .locals 0

    .line 210
    return-void
.end method

.method public skip(J)J
    .locals 3

    .line 160
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 162
    const-wide/16 v0, 0x0

    return-wide v0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/io/CipherInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v2, v0

    .line 166
    iget v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aEU:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/spongycastle/jcajce/io/CipherInputStream;->aEU:I

    .line 167
    int-to-long v0, v2

    return-wide v0
.end method
