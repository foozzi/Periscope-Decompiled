.class public Lorg/spongycastle/crypto/engines/ChaChaEngine;
.super Lorg/spongycastle/crypto/engines/Salsa20Engine;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    .line 25
    return-void
.end method

.method public static ˊ(I[I[I)V
    .locals 19

    .line 120
    move-object/from16 v0, p1

    array-length v0, v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 124
    :cond_0
    move-object/from16 v0, p2

    array-length v0, v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 128
    :cond_1
    rem-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_2

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rounds must be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2
    const/4 v0, 0x0

    aget v2, p1, v0

    .line 134
    const/4 v0, 0x1

    aget v3, p1, v0

    .line 135
    const/4 v0, 0x2

    aget v4, p1, v0

    .line 136
    const/4 v0, 0x3

    aget v5, p1, v0

    .line 137
    const/4 v0, 0x4

    aget v6, p1, v0

    .line 138
    const/4 v0, 0x5

    aget v7, p1, v0

    .line 139
    const/4 v0, 0x6

    aget v8, p1, v0

    .line 140
    const/4 v0, 0x7

    aget v9, p1, v0

    .line 141
    const/16 v0, 0x8

    aget v10, p1, v0

    .line 142
    const/16 v0, 0x9

    aget v11, p1, v0

    .line 143
    const/16 v0, 0xa

    aget v12, p1, v0

    .line 144
    const/16 v0, 0xb

    aget v13, p1, v0

    .line 145
    const/16 v0, 0xc

    aget v14, p1, v0

    .line 146
    const/16 v0, 0xd

    aget v15, p1, v0

    .line 147
    const/16 v0, 0xe

    aget v16, p1, v0

    .line 148
    const/16 v0, 0xf

    aget v17, p1, v0

    .line 150
    move/from16 v18, p0

    :goto_0
    if-lez v18, :cond_3

    .line 152
    add-int/2addr v2, v6

    xor-int v0, v14, v2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v14

    .line 153
    add-int/2addr v10, v14

    xor-int v0, v6, v10

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v6

    .line 154
    add-int/2addr v2, v6

    xor-int v0, v14, v2

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v14

    .line 155
    add-int/2addr v10, v14

    xor-int v0, v6, v10

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v6

    .line 156
    add-int/2addr v3, v7

    xor-int v0, v15, v3

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v15

    .line 157
    add-int/2addr v11, v15

    xor-int v0, v7, v11

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v7

    .line 158
    add-int/2addr v3, v7

    xor-int v0, v15, v3

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v15

    .line 159
    add-int/2addr v11, v15

    xor-int v0, v7, v11

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v7

    .line 160
    add-int/2addr v4, v8

    xor-int v0, v16, v4

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v16

    .line 161
    add-int v12, v12, v16

    xor-int v0, v8, v12

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v8

    .line 162
    add-int/2addr v4, v8

    xor-int v0, v16, v4

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v16

    .line 163
    add-int v12, v12, v16

    xor-int v0, v8, v12

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v8

    .line 164
    add-int/2addr v5, v9

    xor-int v0, v17, v5

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v17

    .line 165
    add-int v13, v13, v17

    xor-int v0, v9, v13

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v9

    .line 166
    add-int/2addr v5, v9

    xor-int v0, v17, v5

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v17

    .line 167
    add-int v13, v13, v17

    xor-int v0, v9, v13

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v9

    .line 168
    add-int/2addr v2, v7

    xor-int v0, v17, v2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v17

    .line 169
    add-int v12, v12, v17

    xor-int v0, v7, v12

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v7

    .line 170
    add-int/2addr v2, v7

    xor-int v0, v17, v2

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v17

    .line 171
    add-int v12, v12, v17

    xor-int v0, v7, v12

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v7

    .line 172
    add-int/2addr v3, v8

    xor-int v0, v14, v3

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v14

    .line 173
    add-int/2addr v13, v14

    xor-int v0, v8, v13

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v8

    .line 174
    add-int/2addr v3, v8

    xor-int v0, v14, v3

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v14

    .line 175
    add-int/2addr v13, v14

    xor-int v0, v8, v13

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v8

    .line 176
    add-int/2addr v4, v9

    xor-int v0, v15, v4

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v15

    .line 177
    add-int/2addr v10, v15

    xor-int v0, v9, v10

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v9

    .line 178
    add-int/2addr v4, v9

    xor-int v0, v15, v4

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v15

    .line 179
    add-int/2addr v10, v15

    xor-int v0, v9, v10

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v9

    .line 180
    add-int/2addr v5, v6

    xor-int v0, v16, v5

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v16

    .line 181
    add-int v11, v11, v16

    xor-int v0, v6, v11

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v6

    .line 182
    add-int/2addr v5, v6

    xor-int v0, v16, v5

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v16

    .line 183
    add-int v11, v11, v16

    xor-int v0, v6, v11

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˁ(II)I

    move-result v6

    .line 150
    add-int/lit8 v18, v18, -0x2

    goto/16 :goto_0

    .line 187
    :cond_3
    const/4 v0, 0x0

    aget v0, p1, v0

    add-int/2addr v0, v2

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 188
    const/4 v0, 0x1

    aget v0, p1, v0

    add-int/2addr v0, v3

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 189
    const/4 v0, 0x2

    aget v0, p1, v0

    add-int/2addr v0, v4

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 190
    const/4 v0, 0x3

    aget v0, p1, v0

    add-int/2addr v0, v5

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 191
    const/4 v0, 0x4

    aget v0, p1, v0

    add-int/2addr v0, v6

    const/4 v1, 0x4

    aput v0, p2, v1

    .line 192
    const/4 v0, 0x5

    aget v0, p1, v0

    add-int/2addr v0, v7

    const/4 v1, 0x5

    aput v0, p2, v1

    .line 193
    const/4 v0, 0x6

    aget v0, p1, v0

    add-int/2addr v0, v8

    const/4 v1, 0x6

    aput v0, p2, v1

    .line 194
    const/4 v0, 0x7

    aget v0, p1, v0

    add-int/2addr v0, v9

    const/4 v1, 0x7

    aput v0, p2, v1

    .line 195
    const/16 v0, 0x8

    aget v0, p1, v0

    add-int/2addr v0, v10

    const/16 v1, 0x8

    aput v0, p2, v1

    .line 196
    const/16 v0, 0x9

    aget v0, p1, v0

    add-int/2addr v0, v11

    const/16 v1, 0x9

    aput v0, p2, v1

    .line 197
    const/16 v0, 0xa

    aget v0, p1, v0

    add-int/2addr v0, v12

    const/16 v1, 0xa

    aput v0, p2, v1

    .line 198
    const/16 v0, 0xb

    aget v0, p1, v0

    add-int/2addr v0, v13

    const/16 v1, 0xb

    aput v0, p2, v1

    .line 199
    const/16 v0, 0xc

    aget v0, p1, v0

    add-int/2addr v0, v14

    const/16 v1, 0xc

    aput v0, p2, v1

    .line 200
    const/16 v0, 0xd

    aget v0, p1, v0

    add-int/2addr v0, v15

    const/16 v1, 0xd

    aput v0, p2, v1

    .line 201
    const/16 v0, 0xe

    aget v0, p1, v0

    add-int v0, v0, v16

    const/16 v1, 0xe

    aput v0, p2, v1

    .line 202
    const/16 v0, 0xf

    aget v0, p1, v0

    add-int v0, v0, v17

    const/16 v1, 0xf

    aput v0, p2, v1

    .line 203
    return-void
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChaCha"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aLI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jo()V
    .locals 3

    .line 34
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/16 v0, 0xc

    aget v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xc

    aput v0, v1, v2

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/16 v1, 0xd

    aget v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 38
    :cond_0
    return-void
.end method

.method protected jp()V
    .locals 3

    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/16 v1, 0xd

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/16 v0, 0xc

    aget v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0xc

    aput v0, v1, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/16 v1, 0xd

    aget v1, v0, v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 51
    :cond_1
    return-void
.end method

.method protected jq()J
    .locals 6

    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/16 v1, 0xd

    aget v0, v0, v1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/16 v3, 0xc

    aget v2, v2, v3

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected jr()V
    .locals 4

    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/4 v2, 0x0

    const/16 v3, 0xd

    aput v2, v1, v3

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 61
    return-void
.end method

.method protected ˏ([B[B)V
    .locals 5

    .line 65
    if-eqz p1, :cond_2

    .line 67
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->iG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires 128 bit or 256 bit key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/16 v1, 0xc

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 80
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 82
    sget-object v3, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aLG:[B

    .line 83
    const/16 v4, 0x10

    goto :goto_0

    .line 87
    :cond_1
    sget-object v3, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aLH:[B

    .line 88
    const/4 v4, 0x0

    .line 91
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    invoke-static {p1, v4}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    add-int/lit8 v1, v4, 0x4

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 93
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    add-int/lit8 v1, v4, 0x8

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    add-int/lit8 v1, v4, 0xc

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 96
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/4 v1, 0x4

    invoke-static {v3, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 98
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/16 v1, 0x8

    invoke-static {v3, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/16 v1, 0xc

    invoke-static {v3, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 103
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    const/4 v1, 0x4

    invoke-static {p2, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 105
    return-void
.end method

.method protected ˡ([B)V
    .locals 3

    .line 109
    iget v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aLI:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aKI:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˊ(I[I[I)V

    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaChaEngine;->aLJ:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->ˏ([I[BI)V

    .line 111
    return-void
.end method
