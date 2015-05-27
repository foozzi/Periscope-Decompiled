.class public Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Wrapper;


# instance fields
.field private aJW:Lorg/spongycastle/crypto/params/KeyParameter;

.field private aJY:Z

.field private aLg:Lorg/spongycastle/crypto/BlockCipher;

.field private iv:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    .line 33
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    .line 34
    return-void

    nop

    :array_0
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 40
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->aJY:Z

    .line 42
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 47
    :cond_0
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 49
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    goto :goto_0

    .line 51
    :cond_1
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    .line 53
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    .line 54
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV not equal to 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method public ᐨ([BII)[B
    .locals 12

    .line 72
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->aJY:Z

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    div-int/lit8 v4, p3, 0x8

    .line 79
    mul-int/lit8 v0, v4, 0x8

    if-eq v0, p3, :cond_1

    .line 81
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "wrap data must be a multiple of 8 bytes"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    add-int/2addr v0, p3

    new-array v5, v0, [B

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    new-array v6, v0, [B

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    invoke-static {p1, p2, v5, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 92
    const/4 v7, 0x0

    :goto_0
    const/4 v0, 0x6

    if-eq v7, v0, :cond_4

    .line 94
    const/4 v8, 0x1

    :goto_1
    if-gt v8, v4, :cond_3

    .line 96
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    mul-int/lit8 v0, v8, 0x8

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v1, v1

    const/16 v2, 0x8

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v6, v1, v6, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 100
    mul-int v0, v4, v7

    add-int v9, v0, v8

    .line 101
    const/4 v10, 0x1

    :goto_2
    if-eqz v9, :cond_2

    .line 103
    int-to-byte v11, v9

    .line 105
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    sub-int/2addr v0, v10

    aget-byte v1, v6, v0

    xor-int/2addr v1, v11

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 107
    ushr-int/lit8 v9, v9, 0x8

    .line 101
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 110
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v6, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    mul-int/lit8 v0, v8, 0x8

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-static {v6, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 92
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 115
    :cond_4
    return-object v5
.end method

.method public ﹳ([BII)[B
    .locals 12

    .line 124
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->aJY:Z

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    div-int/lit8 v3, p3, 0x8

    .line 131
    mul-int/lit8 v0, v3, 0x8

    if-eq v0, p3, :cond_1

    .line 133
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    sub-int v0, p3, v0

    new-array v4, v0, [B

    .line 137
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    new-array v5, v0, [B

    .line 138
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    new-array v6, v0, [B

    .line 140
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v1, v1

    sub-int v1, p3, v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->aJW:Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 145
    add-int/lit8 v3, v3, -0x1

    .line 147
    const/4 v7, 0x5

    :goto_0
    if-ltz v7, :cond_4

    .line 149
    move v8, v3

    :goto_1
    const/4 v0, 0x1

    if-lt v8, v0, :cond_3

    .line 151
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    add-int/lit8 v0, v8, -0x1

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v1, v1

    const/16 v2, 0x8

    invoke-static {v4, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    mul-int v0, v3, v7

    add-int v9, v0, v8

    .line 155
    const/4 v10, 0x1

    :goto_2
    if-eqz v9, :cond_2

    .line 157
    int-to-byte v11, v9

    .line 159
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    sub-int/2addr v0, v10

    aget-byte v1, v6, v0

    xor-int/2addr v1, v11

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 161
    ushr-int/lit8 v9, v9, 0x8

    .line 155
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 164
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->aLg:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v6, v1, v6, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 165
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v6, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    add-int/lit8 v0, v8, -0x1

    mul-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-static {v6, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_1

    .line 147
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 170
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v5, v0}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 172
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "checksum failed"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_5
    return-object v4
.end method
