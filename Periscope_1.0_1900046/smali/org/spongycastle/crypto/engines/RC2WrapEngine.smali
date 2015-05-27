.class public Lorg/spongycastle/crypto/engines/RC2WrapEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Wrapper;


# static fields
.field private static final aJZ:[B


# instance fields
.field private aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

.field private aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

.field private aJY:Z

.field private aKY:Lorg/spongycastle/crypto/CipherParameters;

.field private aKZ:Ljava/security/SecureRandom;

.field aKa:Lorg/spongycastle/crypto/Digest;

.field ayB:[B

.field private iv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJZ:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        -0x23t
        -0x5et
        0x2ct
        0x79t
        -0x18t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aKa:Lorg/spongycastle/crypto/Digest;

    .line 47
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->ayB:[B

    return-void
.end method

.method private ˮ([B)[B
    .locals 5

    .line 362
    const/16 v0, 0x8

    new-array v4, v0, [B

    .line 364
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aKa:Lorg/spongycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 365
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aKa:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->ayB:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 367
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->ayB:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    return-object v4
.end method

.method private ᐝ([B[B)Z
    .locals 1

    .line 383
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->ˮ([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, "RC2"

    return-object v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 57
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJY:Z

    .line 58
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/engines/RC2Engine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    .line 60
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 62
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v3, v0

    .line 63
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aKZ:Ljava/security/SecureRandom;

    .line 64
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 65
    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aKZ:Ljava/security/SecureRandom;

    .line 71
    :goto_0
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 73
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aKY:Lorg/spongycastle/crypto/CipherParameters;

    .line 77
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJY:Z

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV is not 8 octets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should not supply an IV for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aKY:Lorg/spongycastle/crypto/CipherParameters;

    .line 94
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJY:Z

    if-eqz v0, :cond_4

    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    .line 101
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aKZ:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 103
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aKY:Lorg/spongycastle/crypto/CipherParameters;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 107
    :cond_4
    return-void
.end method

.method public ᐨ([BII)[B
    .locals 17

    .line 130
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJY:Z

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    add-int/lit8 v4, p3, 0x1

    .line 136
    rem-int/lit8 v0, v4, 0x8

    if-eqz v0, :cond_1

    .line 138
    rem-int/lit8 v0, v4, 0x8

    rsub-int/lit8 v0, v0, 0x8

    add-int/2addr v4, v0

    .line 141
    :cond_1
    new-array v5, v4, [B

    .line 143
    move/from16 v0, p3

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v5, v1

    .line 144
    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x1

    move/from16 v3, p3

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    array-length v0, v5

    sub-int v0, v0, p3

    add-int/lit8 v0, v0, -0x1

    new-array v6, v0, [B

    .line 148
    array-length v0, v6

    if-lez v0, :cond_2

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aKZ:Ljava/security/SecureRandom;

    invoke-virtual {v0, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 151
    add-int/lit8 v0, p3, 0x1

    array-length v1, v6

    const/4 v2, 0x0

    invoke-static {v6, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->ˮ([B)[B

    move-result-object v7

    .line 158
    array-length v0, v5

    array-length v1, v7

    add-int/2addr v0, v1

    new-array v8, v0, [B

    .line 160
    array-length v0, v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    array-length v0, v5

    array-length v1, v7

    const/4 v2, 0x0

    invoke-static {v7, v2, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    array-length v0, v8

    new-array v9, v0, [B

    .line 167
    array-length v0, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v8, v1, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    array-length v0, v8

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v1

    div-int v10, v0, v1

    .line 170
    array-length v0, v8

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v1

    rem-int v11, v0, v1

    .line 172
    if-eqz v11, :cond_3

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not multiple of block length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 179
    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_4

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    mul-int v13, v12, v0

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0, v9, v13, v9, v13}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ([BI[BI)I

    .line 179
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 187
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    array-length v0, v0

    array-length v1, v9

    add-int/2addr v0, v1

    new-array v12, v0, [B

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v12, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    array-length v0, v0

    array-length v1, v9

    const/4 v2, 0x0

    invoke-static {v9, v2, v12, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    array-length v0, v12

    new-array v13, v0, [B

    .line 195
    const/4 v14, 0x0

    :goto_1
    array-length v0, v12

    if-ge v14, v0, :cond_5

    .line 197
    array-length v0, v12

    add-int/lit8 v1, v14, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, v12, v0

    aput-byte v0, v13, v14

    .line 195
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 204
    :cond_5
    new-instance v14, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aKY:Lorg/spongycastle/crypto/CipherParameters;

    sget-object v1, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJZ:[B

    invoke-direct {v14, v0, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v14}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 208
    const/4 v15, 0x0

    :goto_2
    add-int/lit8 v0, v10, 0x1

    if-ge v15, v0, :cond_6

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    mul-int v16, v15, v0

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v0, v13, v1, v13, v2}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ([BI[BI)I

    .line 208
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 215
    :cond_6
    return-object v13
.end method

.method public ﹳ([BII)[B
    .locals 13

    .line 231
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJY:Z

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    if-nez p1, :cond_1

    .line 238
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Null pointer as ciphertext"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    rem-int v0, p3, v0

    if-eqz v0, :cond_2

    .line 243
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ciphertext not multiple of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2
    new-instance v5, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aKY:Lorg/spongycastle/crypto/CipherParameters;

    sget-object v1, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJZ:[B

    invoke-direct {v5, v0, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 265
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 267
    move/from16 v0, p3

    new-array v6, v0, [B

    .line 269
    const/4 v0, 0x0

    move/from16 v1, p3

    invoke-static {p1, p2, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    const/4 v7, 0x0

    :goto_0
    array-length v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v1

    div-int/2addr v0, v1

    if-ge v7, v0, :cond_3

    .line 273
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    mul-int v8, v7, v0

    .line 275
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0, v6, v8, v6, v8}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ([BI[BI)I

    .line 271
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 279
    :cond_3
    array-length v0, v6

    new-array v7, v0, [B

    .line 281
    const/4 v8, 0x0

    :goto_1
    array-length v0, v6

    if-ge v8, v0, :cond_4

    .line 283
    array-length v0, v6

    add-int/lit8 v1, v8, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, v6, v0

    aput-byte v0, v7, v8

    .line 281
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 288
    :cond_4
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    .line 290
    array-length v0, v7

    add-int/lit8 v0, v0, -0x8

    new-array v8, v0, [B

    .line 292
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v7, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    array-length v0, v7

    add-int/lit8 v0, v0, -0x8

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v7, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aKY:Lorg/spongycastle/crypto/CipherParameters;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 299
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 301
    array-length v0, v8

    new-array v9, v0, [B

    .line 303
    array-length v0, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v8, v1, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    const/4 v10, 0x0

    :goto_2
    array-length v0, v9

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v1

    div-int/2addr v0, v1

    if-ge v10, v0, :cond_5

    .line 307
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    mul-int v11, v10, v0

    .line 309
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0, v9, v11, v9, v11}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ([BI[BI)I

    .line 305
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 316
    :cond_5
    array-length v0, v9

    add-int/lit8 v0, v0, -0x8

    new-array v10, v0, [B

    .line 317
    const/16 v0, 0x8

    new-array v11, v0, [B

    .line 319
    array-length v0, v9

    add-int/lit8 v0, v0, -0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v9, v1, v10, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    array-length v0, v9

    add-int/lit8 v0, v0, -0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v9, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    invoke-direct {p0, v10, v11}, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->ᐝ([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    .line 329
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Checksum inside ciphertext is corrupted"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_6
    array-length v0, v10

    const/4 v1, 0x0

    aget-byte v1, v10, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    if-le v0, v1, :cond_7

    .line 335
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too many pad bytes ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v10

    const/4 v3, 0x0

    aget-byte v3, v10, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_7
    const/4 v0, 0x0

    aget-byte v0, v10, v0

    new-array v12, v0, [B

    .line 341
    array-length v0, v12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v10, v1, v12, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    return-object v12
.end method
