.class public final Lorg/spongycastle/crypto/engines/CAST6Engine;
.super Lorg/spongycastle/crypto/engines/CAST5Engine;
.source ""


# instance fields
.field protected aJf:[I

.field protected aJg:[I

.field protected aJk:[I

.field protected aJl:[I

.field private aJm:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/CAST5Engine;-><init>()V

    .line 28
    const/16 v0, 0x30

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    .line 29
    const/16 v0, 0x30

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    .line 34
    const/16 v0, 0xc0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    .line 35
    const/16 v0, 0xc0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    .line 41
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 54
    const/16 v0, 0x10

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "CAST6"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 50
    return-void
.end method

.method protected ˇ([B)V
    .locals 14

    .line 69
    const v6, 0x5a827999

    .line 70
    const v7, 0x6ed9eba1

    .line 71
    const/16 v8, 0x13

    .line 72
    const/16 v9, 0x11

    .line 81
    const/4 v10, 0x0

    :goto_0
    const/16 v0, 0x18

    if-ge v10, v0, :cond_1

    .line 83
    const/4 v11, 0x0

    :goto_1
    const/16 v0, 0x8

    if-ge v11, v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    mul-int/lit8 v1, v10, 0x8

    add-int/2addr v1, v11

    aput v6, v0, v1

    .line 86
    add-int/2addr v6, v7

    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    mul-int/lit8 v1, v10, 0x8

    add-int/2addr v1, v11

    aput v8, v0, v1

    .line 89
    add-int/lit8 v0, v8, 0x11

    and-int/lit8 v8, v0, 0x1f

    .line 83
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 81
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 93
    :cond_1
    const/16 v0, 0x40

    new-array v10, v0, [B

    .line 94
    array-length v11, p1

    .line 95
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v10, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    const/4 v12, 0x0

    :goto_2
    const/16 v0, 0x8

    if-ge v12, v0, :cond_2

    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    mul-int/lit8 v1, v12, 0x4

    invoke-virtual {p0, v10, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˍ([BI)I

    move-result v1

    aput v1, v0, v12

    .line 98
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 104
    :cond_2
    const/4 v12, 0x0

    :goto_3
    const/16 v0, 0xc

    if-ge v12, v0, :cond_3

    .line 107
    mul-int/lit8 v0, v12, 0x2

    mul-int/lit8 v13, v0, 0x8

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x6

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    aget v3, v3, v13

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    aget v4, v4, v13

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ﹺ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 109
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x5

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    add-int/lit8 v4, v13, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    add-int/lit8 v5, v13, 0x1

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ｰ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x4

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    add-int/lit8 v4, v13, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    add-int/lit8 v5, v13, 0x2

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ʳ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x3

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    add-int/lit8 v4, v13, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    add-int/lit8 v5, v13, 0x3

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ﹺ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x2

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    add-int/lit8 v4, v13, 0x4

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    add-int/lit8 v5, v13, 0x4

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ｰ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    add-int/lit8 v4, v13, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    add-int/lit8 v5, v13, 0x5

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ʳ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    add-int/lit8 v4, v13, 0x6

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    add-int/lit8 v5, v13, 0x6

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ﹺ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 115
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x7

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    add-int/lit8 v4, v13, 0x7

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    add-int/lit8 v5, v13, 0x7

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ｰ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 118
    mul-int/lit8 v0, v12, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v13, v0, 0x8

    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x6

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    aget v3, v3, v13

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    aget v4, v4, v13

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ﹺ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x5

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    add-int/lit8 v4, v13, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    add-int/lit8 v5, v13, 0x1

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ｰ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x4

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    add-int/lit8 v4, v13, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    add-int/lit8 v5, v13, 0x2

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ʳ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x3

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    add-int/lit8 v4, v13, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    add-int/lit8 v5, v13, 0x3

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ﹺ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x2

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    add-int/lit8 v4, v13, 0x4

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    add-int/lit8 v5, v13, 0x4

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ｰ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    add-int/lit8 v4, v13, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    add-int/lit8 v5, v13, 0x5

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ʳ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 125
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    add-int/lit8 v4, v13, 0x6

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    add-int/lit8 v5, v13, 0x6

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ﹺ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 126
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v1, 0x7

    aget v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJl:[I

    add-int/lit8 v4, v13, 0x7

    aget v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJk:[I

    add-int/lit8 v5, v13, 0x7

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ｰ(III)I

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 129
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    mul-int/lit8 v1, v12, 0x4

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x1f

    aput v2, v0, v1

    .line 130
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    mul-int/lit8 v1, v12, 0x4

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x1f

    aput v2, v0, v1

    .line 131
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    mul-int/lit8 v1, v12, 0x4

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x1f

    aput v2, v0, v1

    .line 132
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    mul-int/lit8 v1, v12, 0x4

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x1f

    aput v2, v0, v1

    .line 136
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    mul-int/lit8 v1, v12, 0x4

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v1

    .line 137
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    mul-int/lit8 v1, v12, 0x4

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v0, v1

    .line 138
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    mul-int/lit8 v1, v12, 0x4

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    aput v2, v0, v1

    .line 139
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    mul-int/lit8 v1, v12, 0x4

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJm:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    .line 104
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 142
    :cond_3
    return-void
.end method

.method protected final ˊ(IIII[I)V
    .locals 5

    .line 228
    const/4 v4, 0x0

    :goto_0
    const/4 v0, 0x6

    if-ge v4, v0, :cond_0

    .line 230
    mul-int/lit8 v3, v4, 0x4

    .line 232
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    aget v0, v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    aget v1, v1, v3

    invoke-virtual {p0, p4, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ﹺ(III)I

    move-result v0

    xor-int/2addr p3, v0

    .line 233
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    add-int/lit8 v1, v3, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, p3, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ｰ(III)I

    move-result v0

    xor-int/2addr p2, v0

    .line 234
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    add-int/lit8 v1, v3, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    add-int/lit8 v2, v3, 0x2

    aget v1, v1, v2

    invoke-virtual {p0, p2, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ʳ(III)I

    move-result v0

    xor-int/2addr p1, v0

    .line 235
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    add-int/lit8 v1, v3, 0x3

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    add-int/lit8 v2, v3, 0x3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ﹺ(III)I

    move-result v0

    xor-int/2addr p4, v0

    .line 228
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 239
    :cond_0
    const/4 v4, 0x6

    :goto_1
    const/16 v0, 0xc

    if-ge v4, v0, :cond_1

    .line 241
    mul-int/lit8 v3, v4, 0x4

    .line 243
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    add-int/lit8 v1, v3, 0x3

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    add-int/lit8 v2, v3, 0x3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ﹺ(III)I

    move-result v0

    xor-int/2addr p4, v0

    .line 244
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    add-int/lit8 v1, v3, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    add-int/lit8 v2, v3, 0x2

    aget v1, v1, v2

    invoke-virtual {p0, p2, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ʳ(III)I

    move-result v0

    xor-int/2addr p1, v0

    .line 245
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    add-int/lit8 v1, v3, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, p3, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ｰ(III)I

    move-result v0

    xor-int/2addr p2, v0

    .line 246
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    aget v0, v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    aget v1, v1, v3

    invoke-virtual {p0, p4, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ﹺ(III)I

    move-result v0

    xor-int/2addr p3, v0

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 250
    :cond_1
    const/4 v0, 0x0

    aput p1, p5, v0

    .line 251
    const/4 v0, 0x1

    aput p2, p5, v0

    .line 252
    const/4 v0, 0x2

    aput p3, p5, v0

    .line 253
    const/4 v0, 0x3

    aput p4, p5, v0

    .line 254
    return-void
.end method

.method protected final ˋ(IIII[I)V
    .locals 5

    .line 268
    const/4 v4, 0x0

    :goto_0
    const/4 v0, 0x6

    if-ge v4, v0, :cond_0

    .line 270
    rsub-int/lit8 v0, v4, 0xb

    mul-int/lit8 v3, v0, 0x4

    .line 272
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    aget v0, v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    aget v1, v1, v3

    invoke-virtual {p0, p4, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ﹺ(III)I

    move-result v0

    xor-int/2addr p3, v0

    .line 273
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    add-int/lit8 v1, v3, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, p3, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ｰ(III)I

    move-result v0

    xor-int/2addr p2, v0

    .line 274
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    add-int/lit8 v1, v3, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    add-int/lit8 v2, v3, 0x2

    aget v1, v1, v2

    invoke-virtual {p0, p2, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ʳ(III)I

    move-result v0

    xor-int/2addr p1, v0

    .line 275
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    add-int/lit8 v1, v3, 0x3

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    add-int/lit8 v2, v3, 0x3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ﹺ(III)I

    move-result v0

    xor-int/2addr p4, v0

    .line 268
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 279
    :cond_0
    const/4 v4, 0x6

    :goto_1
    const/16 v0, 0xc

    if-ge v4, v0, :cond_1

    .line 281
    rsub-int/lit8 v0, v4, 0xb

    mul-int/lit8 v3, v0, 0x4

    .line 283
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    add-int/lit8 v1, v3, 0x3

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    add-int/lit8 v2, v3, 0x3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ﹺ(III)I

    move-result v0

    xor-int/2addr p4, v0

    .line 284
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    add-int/lit8 v1, v3, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    add-int/lit8 v2, v3, 0x2

    aget v1, v1, v2

    invoke-virtual {p0, p2, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ʳ(III)I

    move-result v0

    xor-int/2addr p1, v0

    .line 285
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    add-int/lit8 v1, v3, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, p3, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ｰ(III)I

    move-result v0

    xor-int/2addr p2, v0

    .line 286
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJg:[I

    aget v0, v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CAST6Engine;->aJf:[I

    aget v1, v1, v3

    invoke-virtual {p0, p4, v0, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ﹺ(III)I

    move-result v0

    xor-int/2addr p3, v0

    .line 279
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 290
    :cond_1
    const/4 v0, 0x0

    aput p1, p5, v0

    .line 291
    const/4 v0, 0x1

    aput p2, p5, v0

    .line 292
    const/4 v0, 0x2

    aput p3, p5, v0

    .line 293
    const/4 v0, 0x3

    aput p4, p5, v0

    .line 294
    return-void
.end method

.method protected ˏ([BI[BI)I
    .locals 11

    .line 160
    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 165
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˍ([BI)I

    move-result v7

    .line 166
    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˍ([BI)I

    move-result v8

    .line 167
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˍ([BI)I

    move-result v9

    .line 168
    add-int/lit8 v0, p2, 0xc

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˍ([BI)I

    move-result v10

    .line 170
    move-object v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˊ(IIII[I)V

    .line 173
    const/4 v0, 0x0

    aget v0, v6, v0

    invoke-virtual {p0, v0, p3, p4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˋ(I[BI)V

    .line 174
    const/4 v0, 0x1

    aget v0, v6, v0

    add-int/lit8 v1, p4, 0x4

    invoke-virtual {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˋ(I[BI)V

    .line 175
    const/4 v0, 0x2

    aget v0, v6, v0

    add-int/lit8 v1, p4, 0x8

    invoke-virtual {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˋ(I[BI)V

    .line 176
    const/4 v0, 0x3

    aget v0, v6, v0

    add-int/lit8 v1, p4, 0xc

    invoke-virtual {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˋ(I[BI)V

    .line 178
    const/16 v0, 0x10

    return v0
.end method

.method protected ᐝ([BI[BI)I
    .locals 11

    .line 196
    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 200
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˍ([BI)I

    move-result v7

    .line 201
    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˍ([BI)I

    move-result v8

    .line 202
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˍ([BI)I

    move-result v9

    .line 203
    add-int/lit8 v0, p2, 0xc

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˍ([BI)I

    move-result v10

    .line 205
    move-object v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˋ(IIII[I)V

    .line 208
    const/4 v0, 0x0

    aget v0, v6, v0

    invoke-virtual {p0, v0, p3, p4}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˋ(I[BI)V

    .line 209
    const/4 v0, 0x1

    aget v0, v6, v0

    add-int/lit8 v1, p4, 0x4

    invoke-virtual {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˋ(I[BI)V

    .line 210
    const/4 v0, 0x2

    aget v0, v6, v0

    add-int/lit8 v1, p4, 0x8

    invoke-virtual {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˋ(I[BI)V

    .line 211
    const/4 v0, 0x3

    aget v0, v6, v0

    add-int/lit8 v1, p4, 0xc

    invoke-virtual {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/CAST6Engine;->ˋ(I[BI)V

    .line 213
    const/16 v0, 0x10

    return v0
.end method
