.class public Lorg/spongycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private aEW:Z

.field private aFa:Ljava/security/SecureRandom;

.field private aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private aIw:[B

.field private aIx:Lorg/spongycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;[B)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 53
    iput-object p3, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIx:Lorg/spongycastle/crypto/Digest;

    .line 54
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    .line 56
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 58
    if-eqz p4, :cond_0

    .line 60
    array-length v0, p4

    const/4 v1, 0x0

    invoke-interface {p2, p4, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;[B)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p2, p3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;[B)V

    .line 44
    return-void
.end method

.method private ˋ([BIII)[B
    .locals 7

    .line 324
    new-array v3, p4, [B

    .line 325
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIx:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v4, v0, [B

    .line 326
    const/4 v0, 0x4

    new-array v5, v0, [B

    .line 327
    const/4 v6, 0x0

    .line 329
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIx:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 331
    :goto_0
    array-length v0, v4

    div-int v0, p4, v0

    if-ge v6, v0, :cond_0

    .line 333
    invoke-direct {p0, v6, v5}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->ˏ(I[B)V

    .line 335
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIx:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 336
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIx:Lorg/spongycastle/crypto/Digest;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-interface {v0, v5, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 337
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIx:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 339
    array-length v0, v4

    mul-int/2addr v0, v6

    array-length v1, v4

    const/4 v2, 0x0

    invoke-static {v4, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 344
    :cond_0
    array-length v0, v4

    mul-int/2addr v0, v6

    if-ge v0, p4, :cond_1

    .line 346
    invoke-direct {p0, v6, v5}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->ˏ(I[B)V

    .line 348
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIx:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 349
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIx:Lorg/spongycastle/crypto/Digest;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-interface {v0, v5, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 350
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIx:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 352
    array-length v0, v4

    mul-int/2addr v0, v6

    array-length v1, v3

    array-length v2, v4

    mul-int/2addr v2, v6

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v4, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    :cond_1
    return-object v3
.end method

.method private ˏ(I[B)V
    .locals 2

    .line 309
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    .line 310
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 311
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    .line 312
    ushr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    .line 313
    return-void
.end method


# virtual methods
.method public iB()I
    .locals 4

    .line 93
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->iB()I

    move-result v3

    .line 95
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aEW:Z

    if-eqz v0, :cond_0

    .line 97
    add-int/lit8 v0, v3, -0x1

    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0

    .line 101
    :cond_0
    return v3
.end method

.method public iC()I
    .locals 4

    .line 107
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->iC()I

    move-result v3

    .line 109
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aEW:Z

    if-eqz v0, :cond_0

    .line 111
    return v3

    .line 115
    :cond_0
    add-int/lit8 v0, v3, -0x1

    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public ʹ([BII)[B
    .locals 9

    .line 208
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v3

    .line 216
    array-length v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->iC()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->iC()I

    move-result v0

    new-array v4, v0, [B

    .line 220
    array-length v0, v4

    array-length v1, v3

    sub-int/2addr v0, v1

    array-length v1, v3

    const/4 v2, 0x0

    invoke-static {v3, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 224
    :cond_0
    move-object v4, v3

    .line 227
    :goto_0
    array-length v0, v4

    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    .line 229
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v0, v0

    array-length v1, v4

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v2, v2

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->ˋ([BIII)[B

    move-result-object v5

    .line 238
    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v0, v0

    if-eq v6, v0, :cond_2

    .line 240
    aget-byte v0, v4, v6

    aget-byte v1, v5, v6

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    .line 238
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 246
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v0, v0

    array-length v1, v4

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, v4, v2, v0, v1}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->ˋ([BIII)[B

    move-result-object v5

    .line 248
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v6, v0

    :goto_2
    array-length v0, v4

    if-eq v6, v0, :cond_3

    .line 250
    aget-byte v0, v4, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v1, v1

    sub-int v1, v6, v1

    aget-byte v1, v5, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    .line 248
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 257
    :cond_3
    const/4 v6, 0x0

    .line 259
    const/4 v7, 0x0

    :goto_3
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v0, v0

    if-eq v7, v0, :cond_5

    .line 261
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    aget-byte v0, v0, v7

    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v1, v1

    add-int/2addr v1, v7

    aget-byte v1, v4, v1

    if-eq v0, v1, :cond_4

    .line 263
    const/4 v6, 0x1

    .line 259
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 267
    :cond_5
    if-eqz v6, :cond_6

    .line 269
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "data hash wrong"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v0, v0

    mul-int/lit8 v7, v0, 0x2

    :goto_4
    array-length v0, v4

    if-eq v7, v0, :cond_8

    .line 279
    aget-byte v0, v4, v7

    if-eqz v0, :cond_7

    .line 281
    goto :goto_5

    .line 277
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 285
    :cond_8
    :goto_5
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_9

    aget-byte v0, v4, v7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 287
    :cond_9
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data start wrong "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 295
    array-length v0, v4

    sub-int/2addr v0, v7

    new-array v8, v0, [B

    .line 297
    array-length v0, v8

    const/4 v1, 0x0

    invoke-static {v4, v7, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    return-object v8
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 75
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 77
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 79
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aFa:Ljava/security/SecureRandom;

    .line 80
    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aFa:Ljava/security/SecureRandom;

    .line 86
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 88
    iput-boolean p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aEW:Z

    .line 89
    return-void
.end method

.method public ˑ([BII)[B
    .locals 1

    .line 125
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aEW:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->ﾞ([BII)[B

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->ʹ([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public ﾞ([BII)[B
    .locals 8

    .line 141
    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->iB()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-array v4, v0, [B

    .line 146
    array-length v0, v4

    sub-int/2addr v0, p3

    invoke-static {p1, p2, v4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    array-length v0, v4

    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    aput-byte v1, v4, v0

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v0, v0

    new-array v5, v0, [B

    .line 167
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 172
    array-length v0, v5

    array-length v1, v4

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, v5, v2, v0, v1}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->ˋ([BIII)[B

    move-result-object v6

    .line 174
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v7, v0

    :goto_0
    array-length v0, v4

    if-eq v7, v0, :cond_0

    .line 176
    aget-byte v0, v4, v7

    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v1, v1

    sub-int v1, v7, v1

    aget-byte v1, v6, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v4, v7

    .line 174
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v0, v0

    array-length v1, v4

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v2, v2

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->ˋ([BIII)[B

    move-result-object v6

    .line 190
    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIw:[B

    array-length v0, v0

    if-eq v7, v0, :cond_1

    .line 192
    aget-byte v0, v4, v7

    aget-byte v1, v6, v7

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v4, v7

    .line 190
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 195
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v0

    return-object v0
.end method
