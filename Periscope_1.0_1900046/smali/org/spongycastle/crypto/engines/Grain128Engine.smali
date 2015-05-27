.class public Lorg/spongycastle/crypto/engines/Grain128Engine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/StreamCipher;


# instance fields
.field private aIZ:[B

.field private aJn:Z

.field private aKm:[B

.field private aKn:[B

.field private aKo:[I

.field private aKp:[I

.field private aKq:I

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->index:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aJn:Z

    return-void
.end method

.method private js()V
    .locals 5

    .line 100
    const/4 v4, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v4, v0, :cond_0

    .line 102
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grain128Engine;->jv()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKq:I

    .line 103
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grain128Engine;->jt()I

    move-result v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKq:I

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/Grain128Engine;->ˎ([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grain128Engine;->ju()I

    move-result v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKq:I

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/Grain128Engine;->ˎ([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aJn:Z

    .line 107
    return-void
.end method

.method private jt()I
    .locals 22

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x3

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1d

    or-int v4, v0, v1

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xb

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x15

    or-int v5, v0, v1

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xd

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x13

    or-int v6, v0, v1

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x11

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xf

    or-int v7, v0, v1

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x12

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xe

    or-int v8, v0, v1

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x1a

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x6

    or-int v9, v0, v1

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x1b

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x5

    or-int v10, v0, v1

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x8

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int v11, v0, v1

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x10

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int v12, v0, v1

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x18

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int v13, v0, v1

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x1b

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x5

    or-int v14, v0, v1

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x1d

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x3

    or-int v15, v0, v1

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1f

    or-int v16, v0, v1

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x3

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1d

    or-int v17, v0, v1

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x4

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1c

    or-int v18, v0, v1

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x14

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xc

    or-int v19, v0, v1

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x1b

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x5

    or-int v20, v0, v1

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x3

    aget v21, v0, v1

    .line 136
    xor-int v0, v3, v9

    xor-int/2addr v0, v13

    xor-int v0, v0, v20

    xor-int v0, v0, v21

    and-int v1, v4, v17

    xor-int/2addr v0, v1

    and-int v1, v5, v6

    xor-int/2addr v0, v1

    and-int v1, v7, v8

    xor-int/2addr v0, v1

    and-int v1, v10, v14

    xor-int/2addr v0, v1

    and-int v1, v11, v12

    xor-int/2addr v0, v1

    and-int v1, v15, v16

    xor-int/2addr v0, v1

    and-int v1, v18, v19

    xor-int/2addr v0, v1

    return v0
.end method

.method private ju()I
    .locals 9

    .line 147
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    .line 148
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x19

    or-int v4, v0, v1

    .line 149
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1a

    or-int v5, v0, v1

    .line 150
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1a

    or-int v6, v0, v1

    .line 151
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xf

    or-int v7, v0, v1

    .line 152
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v1, 0x3

    aget v8, v0, v1

    .line 154
    xor-int v0, v3, v4

    xor-int/2addr v0, v5

    xor-int/2addr v0, v6

    xor-int/2addr v0, v7

    xor-int/2addr v0, v8

    return v0
.end method

.method private jv()I
    .locals 20

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x2

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1e

    or-int v3, v0, v1

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xc

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x14

    or-int v4, v0, v1

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xf

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x11

    or-int v5, v0, v1

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x4

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1c

    or-int v6, v0, v1

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xd

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x13

    or-int v7, v0, v1

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x2

    aget v8, v0, v1

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x9

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x17

    or-int v9, v0, v1

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x19

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x7

    or-int v10, v0, v1

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x1f

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1

    or-int v11, v0, v1

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x8

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int v12, v0, v1

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xd

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x13

    or-int v13, v0, v1

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x14

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xc

    or-int v14, v0, v1

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xa

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x16

    or-int v15, v0, v1

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x1c

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x4

    or-int v16, v0, v1

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xf

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x11

    or-int v17, v0, v1

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x1d

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x3

    or-int v18, v0, v1

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x1f

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1

    or-int v19, v0, v1

    .line 182
    and-int v0, v4, v12

    and-int v1, v13, v14

    xor-int/2addr v0, v1

    and-int v1, v11, v15

    xor-int/2addr v0, v1

    and-int v1, v16, v17

    xor-int/2addr v0, v1

    and-int v1, v4, v11

    and-int v1, v1, v19

    xor-int/2addr v0, v1

    xor-int v0, v0, v18

    xor-int/2addr v0, v3

    xor-int/2addr v0, v5

    xor-int/2addr v0, v6

    xor-int/2addr v0, v7

    xor-int/2addr v0, v8

    xor-int/2addr v0, v9

    xor-int/2addr v0, v10

    return v0
.end method

.method private jw()V
    .locals 4

    .line 275
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grain128Engine;->jv()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKq:I

    .line 276
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKn:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKq:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 277
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKn:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKq:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 278
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKn:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKq:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 279
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKn:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKq:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 281
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grain128Engine;->jt()I

    move-result v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/Grain128Engine;->ˎ([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    .line 282
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grain128Engine;->ju()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/Grain128Engine;->ˎ([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    .line 283
    return-void
.end method

.method private jx()B
    .locals 3

    .line 297
    iget v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->index:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 299
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grain128Engine;->jw()V

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->index:I

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKn:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->index:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private ˎ([II)[I
    .locals 2

    .line 195
    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 196
    const/4 v0, 0x2

    aget v0, p1, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 197
    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 198
    const/4 v0, 0x3

    aput p2, p1, v0

    .line 200
    return-object p1
.end method

.method private ˏ([B[B)V
    .locals 6

    .line 211
    const/4 v0, -0x1

    const/16 v1, 0xc

    aput-byte v0, p2, v1

    .line 212
    const/4 v0, -0x1

    const/16 v1, 0xd

    aput-byte v0, p2, v1

    .line 213
    const/4 v0, -0x1

    const/16 v1, 0xe

    aput-byte v0, p2, v1

    .line 214
    const/4 v0, -0x1

    const/16 v1, 0xf

    aput-byte v0, p2, v1

    .line 215
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aIZ:[B

    .line 216
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKm:[B

    .line 221
    const/4 v4, 0x0

    .line 222
    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    array-length v0, v0

    if-ge v5, v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aIZ:[B

    add-int/lit8 v2, v4, 0x3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aIZ:[B

    add-int/lit8 v3, v4, 0x2

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aIZ:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aIZ:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    aput v1, v0, v5

    .line 228
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKm:[B

    add-int/lit8 v2, v4, 0x3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKm:[B

    add-int/lit8 v3, v4, 0x2

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKm:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKm:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    aput v1, v0, v5

    .line 231
    add-int/lit8 v4, v4, 0x4

    .line 222
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "Grain-128"

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 265
    const/4 v0, 0x4

    iput v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->index:I

    .line 266
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aIZ:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKm:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/Grain128Engine;->ˏ([B[B)V

    .line 267
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grain128Engine;->js()V

    .line 268
    return-void
.end method

.method public ʽ(B)B
    .locals 3

    .line 287
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aJn:Z

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Grain128Engine;->iG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grain128Engine;->jx()B

    move-result v0

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 8

    .line 56
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Grain-128 Init parameters must include an IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v5, v0

    .line 64
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v6

    .line 66
    if-eqz v6, :cond_1

    array-length v0, v6

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Grain-128  requires exactly 12 bytes of IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_3

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Grain-128 Init parameters must include a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v7, v0

    .line 83
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKm:[B

    .line 84
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aIZ:[B

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKo:[I

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKp:[I

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKn:[B

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aKm:[B

    array-length v1, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v6, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aIZ:[B

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Grain128Engine;->reset()V

    .line 93
    return-void
.end method

.method public ˋ([BII[BI)I
    .locals 4

    .line 239
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/Grain128Engine;->aJn:Z

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Grain128Engine;->iG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 247
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    add-int v0, p5, p3

    array-length v1, p4

    if-le v0, v1, :cond_2

    .line 252
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_3

    .line 257
    add-int v0, p5, v3

    add-int v1, p2, v3

    aget-byte v1, p1, v1

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grain128Engine;->jx()B

    move-result v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    :cond_3
    return p3
.end method
