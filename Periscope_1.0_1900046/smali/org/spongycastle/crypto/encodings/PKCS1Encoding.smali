.class public Lorg/spongycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private aEW:Z

.field private aFa:Ljava/security/SecureRandom;

.field private aIA:I

.field private aIB:[B

.field private aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private aIy:Z

.field private aIz:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIA:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIB:[B

    .line 47
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 48
    invoke-direct {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->jn()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIz:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;[B)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIA:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIB:[B

    .line 79
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 80
    invoke-direct {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->jn()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIz:Z

    .line 81
    iput-object p2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIB:[B

    .line 82
    array-length v0, p2

    iput v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIA:I

    .line 83
    return-void
.end method

.method private jn()Z
    .locals 2

    .line 93
    new-instance v0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding$1;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding$1;-><init>(Lorg/spongycastle/crypto/encodings/PKCS1Encoding;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 101
    if-eqz v1, :cond_0

    const-string v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ʹ([BII)[B
    .locals 6

    .line 353
    iget v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIA:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 354
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->ՙ([BII)[B

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v2

    .line 359
    array-length v0, v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->iC()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 361
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "block truncated"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    const/4 v0, 0x0

    aget-byte v3, v2, v0

    .line 366
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIy:Z

    if-eqz v0, :cond_2

    .line 368
    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    .line 370
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "unknown block type"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_2
    const/4 v0, 0x1

    if-eq v3, v0, :cond_3

    .line 377
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "unknown block type"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_3
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIz:Z

    if-eqz v0, :cond_4

    array-length v0, v2

    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->iC()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 383
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "block incorrect size"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_4
    const/4 v4, 0x1

    :goto_0
    array-length v0, v2

    if-eq v4, v0, :cond_7

    .line 393
    aget-byte v5, v2, v4

    .line 395
    if-nez v5, :cond_5

    .line 397
    goto :goto_1

    .line 399
    :cond_5
    const/4 v0, 0x1

    if-ne v3, v0, :cond_6

    const/4 v0, -0x1

    if-eq v5, v0, :cond_6

    .line 401
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "block padding incorrect"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 405
    :cond_7
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 407
    array-length v0, v2

    if-gt v4, v0, :cond_8

    const/16 v0, 0xa

    if-ge v4, v0, :cond_9

    .line 409
    :cond_8
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "no data in block"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_9
    array-length v0, v2

    sub-int/2addr v0, v4

    new-array v5, v0, [B

    .line 414
    array-length v0, v5

    const/4 v1, 0x0

    invoke-static {v2, v4, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    return-object v5
.end method

.method private static ˈ([BI)I
    .locals 6

    .line 234
    const/4 v2, 0x0

    .line 238
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    xor-int/lit8 v0, v0, 0x2

    or-int/lit8 v2, v0, 0x0

    .line 243
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    sub-int v3, v0, v1

    .line 248
    const/4 v4, 0x1

    :goto_0
    if-ge v4, v3, :cond_0

    .line 249
    aget-byte v5, p0, v4

    .line 250
    shr-int/lit8 v0, v5, 0x1

    or-int/2addr v5, v0

    .line 251
    shr-int/lit8 v0, v5, 0x2

    or-int/2addr v5, v0

    .line 252
    shr-int/lit8 v0, v5, 0x4

    or-int/2addr v5, v0

    .line 253
    and-int/lit8 v0, v5, 0x1

    add-int/lit8 v0, v0, -0x1

    or-int/2addr v2, v0

    .line 248
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    :cond_0
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    or-int/2addr v2, v0

    .line 264
    shr-int/lit8 v0, v2, 0x1

    or-int/2addr v2, v0

    .line 265
    shr-int/lit8 v0, v2, 0x2

    or-int/2addr v2, v0

    .line 266
    shr-int/lit8 v0, v2, 0x4

    or-int/2addr v2, v0

    .line 267
    and-int/lit8 v0, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private ՙ([BII)[B
    .locals 7

    .line 285
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIy:Z

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "sorry, this method is only for decryption, not for signing"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v2

    .line 291
    const/4 v3, 0x0

    .line 292
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIB:[B

    if-nez v0, :cond_1

    .line 294
    iget v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIA:I

    new-array v3, v0, [B

    .line 295
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIB:[B

    .line 308
    :goto_0
    array-length v0, v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->iC()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 310
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "block truncated"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIz:Z

    if-eqz v0, :cond_3

    array-length v0, v2

    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->iC()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 319
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "block incorrect size"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIA:I

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->ˈ([BI)I

    move-result v4

    .line 331
    iget v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIA:I

    new-array v5, v0, [B

    .line 332
    const/4 v6, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIA:I

    if-ge v6, v0, :cond_4

    .line 334
    array-length v0, v2

    iget v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIA:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v6

    aget-byte v0, v2, v0

    xor-int/lit8 v1, v4, -0x1

    and-int/2addr v0, v1

    aget-byte v1, v3, v6

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v6

    .line 332
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 337
    :cond_4
    return-object v5
.end method

.method private ﾞ([BII)[B
    .locals 5

    .line 184
    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->iB()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input data too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->iB()I

    move-result v0

    new-array v3, v0, [B

    .line 191
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIy:Z

    if-eqz v0, :cond_2

    .line 193
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-byte v0, v3, v1

    .line 195
    const/4 v4, 0x1

    :goto_0
    array-length v0, v3

    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    if-eq v4, v0, :cond_1

    .line 197
    const/4 v0, -0x1

    aput-byte v0, v3, v4

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    goto :goto_3

    .line 202
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 204
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-byte v0, v3, v1

    .line 210
    const/4 v4, 0x1

    :goto_1
    array-length v0, v3

    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    if-eq v4, v0, :cond_4

    .line 212
    :goto_2
    aget-byte v0, v3, v4

    if-nez v0, :cond_3

    .line 214
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    goto :goto_2

    .line 210
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 219
    :cond_4
    :goto_3
    array-length v0, v3

    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aput-byte v1, v3, v0

    .line 220
    array-length v0, v3

    sub-int/2addr v0, p3

    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v1, v3

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2, v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public iB()I
    .locals 2

    .line 136
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->iB()I

    move-result v1

    .line 138
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aEW:Z

    if-eqz v0, :cond_0

    .line 140
    add-int/lit8 v0, v1, -0xa

    return v0

    .line 144
    :cond_0
    return v1
.end method

.method public iC()I
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->iC()I

    move-result v1

    .line 152
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aEW:Z

    if-eqz v0, :cond_0

    .line 154
    return v1

    .line 158
    :cond_0
    add-int/lit8 v0, v1, -0xa

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 115
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 117
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    .line 119
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aFa:Ljava/security/SecureRandom;

    .line 120
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-object v1, v0

    .line 121
    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aFa:Ljava/security/SecureRandom;

    .line 125
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-object v1, v0

    .line 128
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 130
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aIy:Z

    .line 131
    iput-boolean p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aEW:Z

    .line 132
    return-void
.end method

.method public ˑ([BII)[B
    .locals 1

    .line 168
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->aEW:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->ﾞ([BII)[B

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->ʹ([BII)[B

    move-result-object v0

    return-object v0
.end method
