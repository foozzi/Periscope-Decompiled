.class public Lorg/spongycastle/crypto/engines/DESedeWrapEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Wrapper;


# static fields
.field private static final aJZ:[B


# instance fields
.field private aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

.field private aJW:Lorg/spongycastle/crypto/params/KeyParameter;

.field private aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

.field private aJY:Z

.field aKa:Lorg/spongycastle/crypto/Digest;

.field ayB:[B

.field private iv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJZ:[B

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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aKa:Lorg/spongycastle/crypto/Digest;

    .line 56
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->ayB:[B

    return-void
.end method

.method private ˮ([B)[B
    .locals 5

    .line 317
    const/16 v0, 0x8

    new-array v4, v0, [B

    .line 319
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aKa:Lorg/spongycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 320
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aKa:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->ayB:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 322
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->ayB:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    return-object v4
.end method

.method private static ۥ([B)[B
    .locals 4

    .line 343
    array-length v0, p0

    new-array v2, v0, [B

    .line 344
    const/4 v3, 0x0

    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_0

    .line 346
    array-length v0, p0

    add-int/lit8 v1, v3, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    aput-byte v0, v2, v3

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 348
    :cond_0
    return-object v2
.end method

.method private ᐝ([B[B)Z
    .locals 1

    .line 338
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->ˮ([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, "DESede"

    return-object v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 5

    .line 67
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJY:Z

    .line 68
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    .line 71
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 73
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v4, v0

    .line 74
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 75
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v3

    .line 76
    goto :goto_0

    .line 79
    :cond_0
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 82
    :goto_0
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 84
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 86
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJY:Z

    if-eqz v0, :cond_4

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 94
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

    goto :goto_1

    .line 97
    :cond_1
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_4

    .line 99
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 101
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 103
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJY:Z

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 107
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV is not 8 octets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should not supply an IV for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_4
    :goto_1
    return-void
.end method

.method public ᐨ([BII)[B
    .locals 13

    .line 138
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJY:Z

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    move/from16 v0, p3

    new-array v4, v0, [B

    .line 145
    const/4 v0, 0x0

    move/from16 v1, p3

    invoke-static {p1, p2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->ˮ([B)[B

    move-result-object v5

    .line 151
    array-length v0, v4

    array-length v1, v5

    add-int/2addr v0, v1

    new-array v6, v0, [B

    .line 153
    array-length v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v4, v1, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    array-length v0, v4

    array-length v1, v5

    const/4 v2, 0x0

    invoke-static {v5, v2, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v7

    .line 161
    array-length v0, v6

    rem-int/2addr v0, v7

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not multiple of block length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 168
    array-length v0, v6

    new-array v8, v0, [B

    .line 170
    const/4 v9, 0x0

    :goto_0
    array-length v0, v6

    if-eq v9, v0, :cond_2

    .line 172
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0, v6, v9, v8, v9}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ([BI[BI)I

    .line 170
    add-int/2addr v9, v7

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v0, v0

    array-length v1, v8

    add-int/2addr v0, v1

    new-array v9, v0, [B

    .line 178
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v9, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v0, v0

    array-length v1, v8

    const/4 v2, 0x0

    invoke-static {v8, v2, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    invoke-static {v9}, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->ۥ([B)[B

    move-result-object v10

    .line 187
    new-instance v11, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    sget-object v1, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJZ:[B

    invoke-direct {v11, v0, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 189
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v11}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 191
    const/4 v12, 0x0

    :goto_1
    array-length v0, v10

    if-eq v12, v0, :cond_3

    .line 193
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0, v10, v12, v10, v12}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ([BI[BI)I

    .line 191
    add-int/2addr v12, v7

    goto :goto_1

    .line 196
    :cond_3
    return-object v10
.end method

.method public ﹳ([BII)[B
    .locals 12

    .line 211
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJY:Z

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    if-nez p1, :cond_1

    .line 218
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Null pointer as ciphertext"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v4

    .line 222
    rem-int v0, p3, v4

    if-eqz v0, :cond_2

    .line 224
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ciphertext not multiple of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_2
    new-instance v5, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    sget-object v1, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJZ:[B

    invoke-direct {v5, v0, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 247
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 249
    new-array v6, p3, [B

    .line 251
    const/4 v7, 0x0

    :goto_0
    if-eq v7, p3, :cond_3

    .line 253
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    add-int v1, p2, v7

    invoke-virtual {v0, p1, v1, v6, v7}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ([BI[BI)I

    .line 251
    add-int/2addr v7, v4

    goto :goto_0

    .line 257
    :cond_3
    invoke-static {v6}, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->ۥ([B)[B

    move-result-object v7

    .line 260
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 262
    array-length v0, v7

    add-int/lit8 v0, v0, -0x8

    new-array v8, v0, [B

    .line 264
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v7, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    array-length v0, v7

    add-int/lit8 v0, v0, -0x8

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v7, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 271
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJX:Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 273
    array-length v0, v8

    new-array v9, v0, [B

    .line 275
    const/4 v10, 0x0

    :goto_1
    array-length v0, v9

    if-eq v10, v0, :cond_4

    .line 277
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0, v8, v10, v9, v10}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ([BI[BI)I

    .line 275
    add-int/2addr v10, v4

    goto :goto_1

    .line 282
    :cond_4
    array-length v0, v9

    add-int/lit8 v0, v0, -0x8

    new-array v10, v0, [B

    .line 283
    const/16 v0, 0x8

    new-array v11, v0, [B

    .line 285
    array-length v0, v9

    add-int/lit8 v0, v0, -0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v9, v1, v10, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    array-length v0, v9

    add-int/lit8 v0, v0, -0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v9, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    invoke-direct {p0, v10, v11}, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->ᐝ([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 292
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Checksum inside ciphertext is corrupted"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_5
    return-object v10
.end method
