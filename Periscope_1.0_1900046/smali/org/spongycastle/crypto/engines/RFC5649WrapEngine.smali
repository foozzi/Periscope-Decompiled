.class public Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Wrapper;


# instance fields
.field private aJW:Lorg/spongycastle/crypto/params/KeyParameter;

.field private aJY:Z

.field private aLg:Lorg/spongycastle/crypto/BlockCipher;

.field private aLh:[B

.field private aLi:[B

.field private aLj:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLh:[B

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLh:[B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLi:[B

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLj:[B

    .line 36
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    .line 37
    return-void

    nop

    :array_0
    .array-data 1
        -0x5at
        0x59t
        0x59t
        -0x5at
    .end array-data
.end method

.method private ᐣ([B)[B
    .locals 6

    .line 77
    array-length v2, p1

    .line 78
    rem-int/lit8 v0, v2, 0x8

    rsub-int/lit8 v0, v0, 0x8

    rem-int/lit8 v3, v0, 0x8

    .line 79
    add-int v0, v2, v3

    new-array v4, v0, [B

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    if-eqz v3, :cond_0

    .line 85
    new-array v5, v3, [B

    .line 86
    const/4 v0, 0x0

    invoke-static {v5, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    :cond_0
    return-object v4
.end method

.method private ᴵ([BII)[B
    .locals 13

    .line 252
    const/16 v0, 0x8

    new-array v3, v0, [B

    .line 253
    array-length v0, v3

    sub-int v0, p3, v0

    new-array v4, v0, [B

    .line 254
    array-length v0, v3

    new-array v5, v0, [B

    .line 255
    array-length v0, v3

    add-int/lit8 v0, v0, 0x8

    new-array v6, v0, [B

    .line 257
    array-length v0, v3

    const/4 v1, 0x0

    invoke-static {p1, p2, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    array-length v0, v3

    add-int/2addr v0, p2

    array-length v1, v3

    sub-int v1, p3, v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 262
    div-int/lit8 v7, p3, 0x8

    .line 263
    add-int/lit8 v7, v7, -0x1

    .line 265
    const/4 v8, 0x5

    :goto_0
    if-ltz v8, :cond_2

    .line 267
    move v9, v7

    :goto_1
    const/4 v0, 0x1

    if-lt v9, v0, :cond_1

    .line 269
    array-length v0, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    add-int/lit8 v0, v9, -0x1

    mul-int/lit8 v0, v0, 0x8

    array-length v1, v3

    const/16 v2, 0x8

    invoke-static {v4, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    mul-int v0, v7, v8

    add-int v10, v0, v9

    .line 273
    const/4 v11, 0x1

    :goto_2
    if-eqz v10, :cond_0

    .line 275
    int-to-byte v12, v10

    .line 277
    array-length v0, v3

    sub-int/2addr v0, v11

    aget-byte v1, v6, v0

    xor-int/2addr v1, v12

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 279
    ushr-int/lit8 v10, v10, 0x8

    .line 273
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v6, v1, v6, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 283
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v6, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    add-int/lit8 v0, v9, -0x1

    mul-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-static {v6, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1

    .line 265
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    .line 289
    :cond_2
    iput-object v5, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLj:[B

    .line 291
    return-object v4
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 41
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aJY:Z

    .line 43
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 45
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 48
    :cond_0
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 50
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    goto :goto_0

    .line 52
    :cond_1
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    .line 54
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLi:[B

    .line 55
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 56
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLi:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV length not equal to 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    :goto_0
    return-void
.end method

.method public ᐨ([BII)[B
    .locals 10

    .line 93
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aJY:Z

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    const/16 v0, 0x8

    new-array v4, v0, [B

    .line 100
    invoke-static {p3}, Lorg/spongycastle/util/Pack;->ﮃ(I)[B

    move-result-object v5

    .line 102
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLi:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLi:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLi:[B

    array-length v0, v0

    array-length v1, v5

    const/4 v2, 0x0

    invoke-static {v5, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    new-array v6, p3, [B

    .line 108
    const/4 v0, 0x0

    invoke-static {p1, p2, v6, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->ᐣ([B)[B

    move-result-object v7

    .line 111
    array-length v0, v7

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 117
    array-length v0, v7

    array-length v1, v4

    add-int/2addr v0, v1

    new-array v8, v0, [B

    .line 118
    array-length v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v4, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    array-length v0, v4

    array-length v1, v7

    const/4 v2, 0x0

    invoke-static {v7, v2, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 122
    const/4 v9, 0x0

    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0, v8, v9, v8, v9}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    add-int/2addr v9, v0

    goto :goto_0

    .line 127
    :cond_1
    return-object v8

    .line 133
    :cond_2
    new-instance v8, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v8, v0}, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 134
    new-instance v9, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v9, v0, v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 135
    const/4 v0, 0x1

    invoke-interface {v8, v0, v9}, Lorg/spongycastle/crypto/Wrapper;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 136
    array-length v0, v7

    invoke-interface {v8, v7, p2, v0}, Lorg/spongycastle/crypto/Wrapper;->ᐨ([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public ﹳ([BII)[B
    .locals 18

    .line 144
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aJY:Z

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    div-int/lit8 v4, p3, 0x8

    .line 151
    mul-int/lit8 v0, v4, 0x8

    move/from16 v1, p3

    if-eq v0, v1, :cond_1

    .line 153
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    .line 158
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "unwrap data must be at least 16 bytes"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_2
    move/from16 v0, p3

    new-array v5, v0, [B

    .line 162
    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    move/from16 v3, p3

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    move/from16 v0, p3

    new-array v6, v0, [B

    .line 166
    const/4 v0, 0x2

    if-ne v4, v0, :cond_4

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 171
    const/4 v8, 0x0

    :goto_0
    array-length v0, v5

    if-ge v8, v0, :cond_3

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0, v5, v8, v6, v8}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    add-int/2addr v8, v0

    goto :goto_0

    .line 177
    :cond_3
    const/16 v0, 0x8

    new-array v0, v0, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLj:[B

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLj:[B

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLj:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v6, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    array-length v0, v6

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLj:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    new-array v7, v0, [B

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLj:[B

    array-length v0, v0

    array-length v1, v7

    const/4 v2, 0x0

    invoke-static {v6, v0, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 185
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->ᴵ([BII)[B

    move-result-object v6

    .line 186
    move-object v7, v6

    .line 190
    :goto_1
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 191
    const/4 v0, 0x4

    new-array v9, v0, [B

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLj:[B

    array-length v1, v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v8, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLj:[B

    array-length v1, v8

    array-length v2, v9

    const/4 v3, 0x0

    invoke-static {v0, v1, v9, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lorg/spongycastle/util/Pack;->יִ([BI)I

    move-result v10

    .line 198
    const/4 v11, 0x1

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;->aLi:[B

    invoke-static {v8, v0}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 203
    const/4 v11, 0x0

    .line 207
    :cond_5
    array-length v12, v7

    .line 208
    add-int/lit8 v13, v12, -0x8

    .line 209
    if-gt v10, v13, :cond_6

    .line 211
    const/4 v11, 0x0

    .line 213
    :cond_6
    if-le v10, v12, :cond_7

    .line 215
    const/4 v11, 0x0

    .line 219
    :cond_7
    sub-int v14, v12, v10

    .line 220
    new-array v15, v14, [B

    .line 221
    new-array v0, v14, [B

    move-object/from16 v16, v0

    .line 222
    array-length v0, v7

    sub-int/2addr v0, v14

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v7, v0, v1, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_8

    .line 225
    const/4 v11, 0x0

    .line 229
    :cond_8
    new-array v0, v10, [B

    move-object/from16 v17, v0

    .line 230
    move-object/from16 v0, v17

    array-length v0, v0

    const/4 v1, 0x0

    move-object/from16 v2, v17

    const/4 v3, 0x0

    invoke-static {v7, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    if-nez v11, :cond_9

    .line 234
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "checksum failed"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_9
    return-object v17
.end method
