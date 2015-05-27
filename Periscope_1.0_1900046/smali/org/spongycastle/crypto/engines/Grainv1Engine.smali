.class public Lorg/spongycastle/crypto/engines/Grainv1Engine;
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
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->index:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aJn:Z

    return-void
.end method

.method private js()V
    .locals 5

    .line 100
    const/4 v4, 0x0

    :goto_0
    const/16 v0, 0xa

    if-ge v4, v0, :cond_0

    .line 102
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->jv()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKq:I

    .line 103
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->jt()I

    move-result v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKq:I

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->ˎ([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->ju()I

    move-result v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKq:I

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->ˎ([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aJn:Z

    .line 107
    return-void
.end method

.method private jt()I
    .locals 16

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x9

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x7

    or-int v4, v0, v1

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xe

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x2

    or-int v5, v0, v1

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xf

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1

    or-int v6, v0, v1

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x5

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xb

    or-int v7, v0, v1

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xc

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x4

    or-int v8, v0, v1

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xf

    or-int v9, v0, v1

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x5

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xb

    or-int v10, v0, v1

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xd

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x3

    or-int v11, v0, v1

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x4

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xc

    or-int v12, v0, v1

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xc

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x4

    or-int v13, v0, v1

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xe

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x2

    or-int v14, v0, v1

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xf

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1

    or-int v15, v0, v1

    .line 130
    xor-int v0, v14, v13

    xor-int/2addr v0, v12

    xor-int/2addr v0, v11

    xor-int/2addr v0, v10

    xor-int/2addr v0, v9

    xor-int/2addr v0, v8

    xor-int/2addr v0, v7

    xor-int/2addr v0, v5

    xor-int/2addr v0, v4

    xor-int/2addr v0, v3

    and-int v1, v15, v13

    xor-int/2addr v0, v1

    and-int v1, v10, v9

    xor-int/2addr v0, v1

    and-int v1, v6, v4

    xor-int/2addr v0, v1

    and-int v1, v13, v12

    and-int/2addr v1, v11

    xor-int/2addr v0, v1

    and-int v1, v9, v8

    and-int/2addr v1, v7

    xor-int/2addr v0, v1

    and-int v1, v15, v11

    and-int/2addr v1, v8

    and-int/2addr v1, v4

    xor-int/2addr v0, v1

    and-int v1, v13, v12

    and-int/2addr v1, v10

    and-int/2addr v1, v9

    xor-int/2addr v0, v1

    and-int v1, v15, v13

    and-int/2addr v1, v7

    and-int/2addr v1, v6

    xor-int/2addr v0, v1

    and-int v1, v15, v13

    and-int/2addr v1, v12

    and-int/2addr v1, v11

    and-int/2addr v1, v10

    xor-int/2addr v0, v1

    and-int v1, v9, v8

    and-int/2addr v1, v7

    and-int/2addr v1, v6

    and-int/2addr v1, v4

    xor-int/2addr v0, v1

    and-int v1, v12, v11

    and-int/2addr v1, v10

    and-int/2addr v1, v9

    and-int/2addr v1, v8

    and-int/2addr v1, v7

    xor-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private ju()I
    .locals 9

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    .line 146
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xd

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x3

    or-int v4, v0, v1

    .line 147
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x9

    or-int v5, v0, v1

    .line 148
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xa

    or-int v6, v0, v1

    .line 149
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xd

    or-int v7, v0, v1

    .line 150
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xe

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x2

    or-int v8, v0, v1

    .line 152
    xor-int v0, v3, v4

    xor-int/2addr v0, v5

    xor-int/2addr v0, v6

    xor-int/2addr v0, v7

    xor-int/2addr v0, v8

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private jv()I
    .locals 15

    .line 162
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xf

    or-int v3, v0, v1

    .line 163
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xe

    or-int v4, v0, v1

    .line 164
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xc

    or-int v5, v0, v1

    .line 165
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x6

    or-int v6, v0, v1

    .line 166
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xf

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1

    or-int v7, v0, v1

    .line 167
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xb

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x5

    or-int v8, v0, v1

    .line 168
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int v9, v0, v1

    .line 169
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xf

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x1

    or-int v10, v0, v1

    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0xd

    or-int v11, v0, v1

    .line 171
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x9

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x7

    or-int v12, v0, v1

    .line 172
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0xe

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x2

    or-int v13, v0, v1

    .line 173
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v1, 0x4

    aget v14, v0, v1

    .line 175
    xor-int v0, v12, v10

    and-int v1, v11, v14

    xor-int/2addr v0, v1

    and-int v1, v13, v14

    xor-int/2addr v0, v1

    and-int v1, v14, v10

    xor-int/2addr v0, v1

    and-int v1, v11, v12

    and-int/2addr v1, v13

    xor-int/2addr v0, v1

    and-int v1, v11, v13

    and-int/2addr v1, v14

    xor-int/2addr v0, v1

    and-int v1, v11, v13

    and-int/2addr v1, v10

    xor-int/2addr v0, v1

    and-int v1, v12, v13

    and-int/2addr v1, v10

    xor-int/2addr v0, v1

    and-int v1, v13, v14

    and-int/2addr v1, v10

    xor-int/2addr v0, v1

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    xor-int/2addr v0, v6

    xor-int/2addr v0, v7

    xor-int/2addr v0, v8

    xor-int/2addr v0, v9

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private jw()V
    .locals 4

    .line 263
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->jv()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKq:I

    .line 264
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKn:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKq:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 265
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKn:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKq:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 267
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->jt()I

    move-result v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->ˎ([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    .line 268
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->ju()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->ˎ([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    .line 269
    return-void
.end method

.method private jx()B
    .locals 3

    .line 283
    iget v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->index:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 285
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->jw()V

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->index:I

    .line 288
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKn:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->index:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private ˎ([II)[I
    .locals 2

    .line 189
    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 190
    const/4 v0, 0x2

    aget v0, p1, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 191
    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 192
    const/4 v0, 0x4

    aget v0, p1, v0

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 193
    const/4 v0, 0x4

    aput p2, p1, v0

    .line 195
    return-object p1
.end method

.method private ˏ([B[B)V
    .locals 6

    .line 206
    const/4 v0, -0x1

    const/16 v1, 0x8

    aput-byte v0, p2, v1

    .line 207
    const/4 v0, -0x1

    const/16 v1, 0x9

    aput-byte v0, p2, v1

    .line 208
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aIZ:[B

    .line 209
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKm:[B

    .line 214
    const/4 v4, 0x0

    .line 215
    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    array-length v0, v0

    if-ge v5, v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aIZ:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aIZ:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    aput v1, v0, v5

    .line 218
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKm:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKm:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    aput v1, v0, v5

    .line 219
    add-int/lit8 v4, v4, 0x2

    .line 215
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "Grain v1"

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 253
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->index:I

    .line 254
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aIZ:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKm:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->ˏ([B[B)V

    .line 255
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->js()V

    .line 256
    return-void
.end method

.method public ʽ(B)B
    .locals 3

    .line 273
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aJn:Z

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->iG()Ljava/lang/String;

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

    .line 278
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->jx()B

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

    const-string v1, "Grain v1 Init parameters must include an IV"

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

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Grain v1 requires exactly 8 bytes of IV"

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

    const-string v1, "Grain v1 Init parameters must include a key"

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

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKm:[B

    .line 84
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aIZ:[B

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKo:[I

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKp:[I

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKn:[B

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aKm:[B

    array-length v1, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v6, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aIZ:[B

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->reset()V

    .line 93
    return-void
.end method

.method public ˋ([BII[BI)I
    .locals 4

    .line 227
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/Grainv1Engine;->aJn:Z

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->iG()Ljava/lang/String;

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

    .line 233
    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 235
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    add-int v0, p5, p3

    array-length v1, p4

    if-le v0, v1, :cond_2

    .line 240
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_3

    .line 245
    add-int v0, p5, v3

    add-int v1, p2, v3

    aget-byte v1, p1, v1

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Grainv1Engine;->jx()B

    move-result v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 243
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    :cond_3
    return p3
.end method
