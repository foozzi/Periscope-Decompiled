.class public Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final aIq:Ljava/math/BigInteger;

.field private static final aIr:Ljava/math/BigInteger;

.field private static aIs:[B

.field private static aIt:[B


# instance fields
.field private aEW:Z

.field private aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private aIv:I

.field private abc:I

.field private ajI:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIq:Ljava/math/BigInteger;

    .line 22
    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIr:Ljava/math/BigInteger;

    .line 24
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIs:[B

    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIt:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xet
        0x3t
        0x5t
        0x8t
        0x9t
        0x4t
        0x2t
        0xft
        0x0t
        0xdt
        0xbt
        0x6t
        0x7t
        0xat
        0xct
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x8t
        0xft
        0x6t
        0x1t
        0x5t
        0x2t
        0xbt
        0xct
        0x3t
        0x4t
        0xdt
        0xat
        0xet
        0x9t
        0x0t
        0x7t
    .end array-data
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->abc:I

    .line 38
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 39
    return-void
.end method

.method private ʹ([BII)[B
    .locals 14

    .line 209
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, p1, v1, v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v5

    .line 210
    const/4 v6, 0x1

    .line 211
    iget v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIv:I

    add-int/lit8 v0, v0, 0xd

    div-int/lit8 v7, v0, 0x10

    .line 213
    new-instance v8, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v8, v0, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 215
    sget-object v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIq:Ljava/math/BigInteger;

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIr:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    move-object v9, v8

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->ajI:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIq:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIr:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->ajI:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_0

    .line 225
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "resulting integer iS or (modulus - iS) is not congruent to 6 mod 16"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :goto_0
    invoke-static {v9}, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->ˋ(Ljava/math/BigInteger;)[B

    move-result-object v5

    .line 230
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v5, v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 232
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "invalid forcing byte in block"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x4

    sget-object v2, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIt:[B

    array-length v3, v5

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 236
    sget-object v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIs:[B

    const/4 v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x4

    sget-object v1, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIs:[B

    const/4 v2, 0x1

    aget-byte v2, v5, v2

    and-int/lit8 v2, v2, 0xf

    aget-byte v1, v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v5, v1

    .line 239
    const/4 v10, 0x0

    .line 240
    const/4 v11, 0x0

    .line 242
    array-length v0, v5

    add-int/lit8 v12, v0, -0x1

    :goto_1
    array-length v0, v5

    mul-int/lit8 v1, v7, 0x2

    sub-int/2addr v0, v1

    if-lt v12, v0, :cond_5

    .line 244
    sget-object v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIs:[B

    aget-byte v1, v5, v12

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x4

    sget-object v1, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIs:[B

    aget-byte v2, v5, v12

    and-int/lit8 v2, v2, 0xf

    aget-byte v1, v1, v2

    or-int v13, v0, v1

    .line 247
    add-int/lit8 v0, v12, -0x1

    aget-byte v0, v5, v0

    xor-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_4

    .line 249
    if-nez v10, :cond_3

    .line 251
    const/4 v10, 0x1

    .line 252
    add-int/lit8 v0, v12, -0x1

    aget-byte v0, v5, v0

    xor-int/2addr v0, v13

    and-int/lit16 v6, v0, 0xff

    .line 253
    add-int/lit8 v11, v12, -0x1

    goto :goto_2

    .line 257
    :cond_3
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "invalid tsums in block"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_4
    :goto_2
    add-int/lit8 v12, v12, -0x2

    goto :goto_1

    .line 262
    :cond_5
    const/4 v0, 0x0

    aput-byte v0, v5, v11

    .line 264
    array-length v0, v5

    sub-int/2addr v0, v11

    div-int/lit8 v0, v0, 0x2

    new-array v12, v0, [B

    .line 266
    const/4 v13, 0x0

    :goto_3
    array-length v0, v12

    if-ge v13, v0, :cond_6

    .line 268
    mul-int/lit8 v0, v13, 0x2

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v5, v0

    aput-byte v0, v12, v13

    .line 266
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 271
    :cond_6
    add-int/lit8 v0, v6, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->abc:I

    .line 273
    return-object v12
.end method

.method private static ˋ(Ljava/math/BigInteger;)[B
    .locals 5

    .line 278
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 279
    const/4 v0, 0x0

    aget-byte v0, v3, v0

    if-nez v0, :cond_0

    .line 281
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    new-array v4, v0, [B

    .line 282
    array-length v0, v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    return-object v4

    .line 285
    :cond_0
    return-object v3
.end method

.method private ﾞ([BII)[B
    .locals 9

    .line 152
    iget v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIv:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v3, v0, [B

    .line 153
    iget v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->abc:I

    add-int/lit8 v4, v0, 0x1

    .line 154
    move v5, p3

    .line 155
    iget v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIv:I

    add-int/lit8 v0, v0, 0xd

    div-int/lit8 v6, v0, 0x10

    .line 157
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    .line 159
    sub-int v0, v6, v5

    if-le v7, v0, :cond_0

    .line 161
    add-int v0, p2, p3

    sub-int v1, v6, v7

    sub-int/2addr v0, v1

    array-length v1, v3

    sub-int/2addr v1, v6

    sub-int v2, v6, v7

    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 166
    :cond_0
    array-length v0, v3

    add-int v1, v7, v5

    sub-int/2addr v0, v1

    invoke-static {p1, p2, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    :goto_1
    add-int/2addr v7, v5

    goto :goto_0

    .line 170
    :cond_1
    array-length v0, v3

    mul-int/lit8 v1, v6, 0x2

    sub-int v7, v0, v1

    :goto_2
    array-length v0, v3

    if-eq v7, v0, :cond_2

    .line 172
    array-length v0, v3

    sub-int/2addr v0, v6

    div-int/lit8 v1, v7, 0x2

    add-int/2addr v0, v1

    aget-byte v8, v3, v0

    .line 174
    sget-object v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIs:[B

    and-int/lit16 v1, v8, 0xff

    ushr-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x4

    sget-object v1, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIs:[B

    and-int/lit8 v2, v8, 0xf

    aget-byte v1, v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v3, v7

    .line 176
    add-int/lit8 v0, v7, 0x1

    aput-byte v8, v3, v0

    .line 170
    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    .line 179
    :cond_2
    array-length v0, v3

    mul-int/lit8 v1, v5, 0x2

    sub-int/2addr v0, v1

    aget-byte v1, v3, v0

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 180
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0x4

    or-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 182
    iget v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIv:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v7, v0, 0x8

    .line 183
    const/4 v8, 0x0

    .line 185
    const/16 v0, 0x8

    if-eq v7, v0, :cond_3

    .line 187
    const/4 v0, 0x0

    aget-byte v0, v3, v0

    const/16 v1, 0xff

    ushr-int/2addr v1, v7

    and-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v3, v1

    .line 188
    const/4 v0, 0x0

    aget-byte v0, v3, v0

    const/16 v1, 0x80

    ushr-int/2addr v1, v7

    or-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v3, v1

    goto :goto_3

    .line 192
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-byte v0, v3, v1

    .line 193
    const/4 v0, 0x1

    aget-byte v0, v3, v0

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, v3, v1

    .line 194
    const/4 v8, 0x1

    .line 197
    :goto_3
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v1, v3

    sub-int/2addr v1, v8

    invoke-interface {v0, v3, v8, v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public iB()I
    .locals 3

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->iB()I

    move-result v2

    .line 80
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aEW:Z

    if-eqz v0, :cond_0

    .line 82
    add-int/lit8 v0, v2, 0x1

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 86
    :cond_0
    return v2
.end method

.method public iC()I
    .locals 3

    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->iC()I

    move-result v2

    .line 97
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aEW:Z

    if-eqz v0, :cond_0

    .line 99
    return v2

    .line 103
    :cond_0
    add-int/lit8 v0, v2, 0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 50
    const/4 v1, 0x0

    .line 52
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    .line 56
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-object v1, v0

    .line 57
    goto :goto_0

    .line 60
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-object v1, v0

    .line 63
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIu:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 65
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->ajI:Ljava/math/BigInteger;

    .line 66
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->ajI:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aIv:I

    .line 68
    iput-boolean p1, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aEW:Z

    .line 69
    return-void
.end method

.method public ˑ([BII)[B
    .locals 1

    .line 136
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->aEW:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->ﾞ([BII)[B

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->ʹ([BII)[B

    move-result-object v0

    return-object v0
.end method
