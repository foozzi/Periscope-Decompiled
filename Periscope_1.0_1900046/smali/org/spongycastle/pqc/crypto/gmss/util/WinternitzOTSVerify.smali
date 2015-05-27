.class public Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private beF:Lorg/spongycastle/crypto/Digest;

.field private w:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    .line 32
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    .line 33
    return-void
.end method


# virtual methods
.method public rf()I
    .locals 6

    .line 40
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v3

    .line 41
    shl-int/lit8 v0, v3, 0x3

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v4, v0, v1

    .line 42
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v0, v4, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->ĩ(I)I

    move-result v5

    .line 43
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v0, v1

    add-int/2addr v4, v0

    .line 45
    mul-int v0, v3, v4

    return v0
.end method

.method public ĩ(I)I
    .locals 3

    .line 334
    const/4 v1, 0x1

    .line 335
    const/4 v2, 0x2

    .line 336
    :goto_0
    if-ge v2, p1, :cond_0

    .line 338
    shl-int/lit8 v2, v2, 0x1

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return v1
.end method

.method public ᵢ([B[B)[B
    .locals 27

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v4

    .line 61
    new-array v5, v4, [B

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, p1

    array-length v1, v1

    move-object/from16 v2, p1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v5, v0, [B

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v5, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 68
    shl-int/lit8 v0, v4, 0x3

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v6, v0, v1

    .line 69
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v0, v6, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->ĩ(I)I

    move-result v7

    .line 70
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v0, v1

    add-int v8, v6, v0

    .line 72
    mul-int v9, v4, v8

    .line 74
    move-object/from16 v0, p2

    array-length v0, v0

    if-eq v9, v0, :cond_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    new-array v10, v9, [B

    .line 81
    const/4 v11, 0x0

    .line 82
    const/4 v12, 0x0

    .line 85
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v1, 0x8

    rem-int v0, v1, v0

    if-nez v0, :cond_6

    .line 87
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v1, 0x8

    div-int v14, v1, v0

    .line 88
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v15, v0, -0x1

    .line 89
    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 92
    const/16 v17, 0x0

    :goto_0
    array-length v0, v5

    move/from16 v1, v17

    if-ge v1, v0, :cond_3

    .line 94
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v0, v14, :cond_2

    .line 96
    aget-byte v0, v5, v17

    and-int v13, v0, v15

    .line 97
    add-int/2addr v11, v13

    .line 99
    mul-int v0, v12, v4

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    :goto_2
    if-ge v13, v15, :cond_1

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    array-length v1, v1

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v1, v0, [B

    move-object/from16 v16, v1

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 106
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 109
    :cond_1
    mul-int v0, v12, v4

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v1, v2, v10, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    aget-byte v0, v5, v17

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v17

    .line 111
    add-int/lit8 v12, v12, 0x1

    .line 94
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 92
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 115
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v0, v6, v0

    sub-int v11, v0, v11

    .line 116
    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v0, v7, :cond_5

    .line 118
    and-int v13, v11, v15

    .line 120
    mul-int v0, v12, v4

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    :goto_4
    if-ge v13, v15, :cond_4

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    array-length v1, v1

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v1, v0, [B

    move-object/from16 v16, v1

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 127
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 129
    :cond_4
    mul-int v0, v12, v4

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v1, v2, v10, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v11, v0

    .line 131
    add-int/lit8 v12, v12, 0x1

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int v17, v17, v0

    goto :goto_3

    .line 133
    :cond_5
    goto/16 :goto_15

    .line 134
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_10

    .line 136
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v14, v4, v0

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v15, v0, -0x1

    .line 138
    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 140
    const/16 v19, 0x0

    .line 143
    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    if-ge v0, v14, :cond_a

    .line 145
    const-wide/16 v17, 0x0

    .line 146
    const/16 v21, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v1, v21

    if-ge v1, v0, :cond_7

    .line 148
    aget-byte v0, v5, v19

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v21, 0x3

    shl-int/2addr v0, v1

    int-to-long v0, v0

    xor-long v17, v17, v0

    .line 149
    add-int/lit8 v19, v19, 0x1

    .line 146
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 151
    :cond_7
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    const/16 v1, 0x8

    if-ge v0, v1, :cond_9

    .line 153
    int-to-long v0, v15

    and-long v0, v0, v17

    long-to-int v13, v0

    .line 154
    add-int/2addr v11, v13

    .line 156
    mul-int v0, v12, v4

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    :goto_8
    if-ge v13, v15, :cond_8

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    array-length v1, v1

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v1, v0, [B

    move-object/from16 v16, v1

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 163
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 166
    :cond_8
    mul-int v0, v12, v4

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v1, v2, v10, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long v17, v17, v0

    .line 168
    add-int/lit8 v12, v12, 0x1

    .line 151
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 143
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_5

    .line 172
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    rem-int v14, v4, v0

    .line 173
    const-wide/16 v17, 0x0

    .line 174
    const/16 v20, 0x0

    :goto_9
    move/from16 v0, v20

    if-ge v0, v14, :cond_b

    .line 176
    aget-byte v0, v5, v19

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v20, 0x3

    shl-int/2addr v0, v1

    int-to-long v0, v0

    xor-long v17, v17, v0

    .line 177
    add-int/lit8 v19, v19, 0x1

    .line 174
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 179
    :cond_b
    shl-int/lit8 v14, v14, 0x3

    .line 180
    const/16 v20, 0x0

    :goto_a
    move/from16 v0, v20

    if-ge v0, v14, :cond_d

    .line 182
    int-to-long v0, v15

    and-long v0, v0, v17

    long-to-int v13, v0

    .line 183
    add-int/2addr v11, v13

    .line 185
    mul-int v0, v12, v4

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    :goto_b
    if-ge v13, v15, :cond_c

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    array-length v1, v1

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v1, v0, [B

    move-object/from16 v16, v1

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 192
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 195
    :cond_c
    mul-int v0, v12, v4

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v1, v2, v10, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long v17, v17, v0

    .line 197
    add-int/lit8 v12, v12, 0x1

    .line 180
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int v20, v20, v0

    goto :goto_a

    .line 201
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v0, v6, v0

    sub-int v11, v0, v11

    .line 202
    const/16 v20, 0x0

    :goto_c
    move/from16 v0, v20

    if-ge v0, v7, :cond_f

    .line 204
    and-int v13, v11, v15

    .line 206
    mul-int v0, v12, v4

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    :goto_d
    if-ge v13, v15, :cond_e

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    array-length v1, v1

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v1, v0, [B

    move-object/from16 v16, v1

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 213
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 216
    :cond_e
    mul-int v0, v12, v4

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v1, v2, v10, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v11, v0

    .line 218
    add-int/lit8 v12, v12, 0x1

    .line 202
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int v20, v20, v0

    goto :goto_c

    .line 220
    :cond_f
    goto/16 :goto_15

    .line 221
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v1, 0x39

    if-ge v0, v1, :cond_18

    .line 223
    shl-int/lit8 v0, v4, 0x3

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    sub-int v14, v0, v1

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v15, v0, -0x1

    .line 225
    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 227
    const/16 v21, 0x0

    .line 231
    :goto_e
    move/from16 v0, v21

    if-gt v0, v14, :cond_13

    .line 233
    ushr-int/lit8 v22, v21, 0x3

    .line 234
    rem-int/lit8 v24, v21, 0x8

    .line 235
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int v21, v21, v0

    .line 236
    add-int/lit8 v0, v21, 0x7

    ushr-int/lit8 v23, v0, 0x3

    .line 237
    const-wide/16 v17, 0x0

    .line 238
    const/16 v25, 0x0

    .line 239
    move/from16 v26, v22

    :goto_f
    move/from16 v0, v26

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    .line 241
    aget-byte v0, v5, v26

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v25, 0x3

    shl-int/2addr v0, v1

    int-to-long v0, v0

    xor-long v17, v17, v0

    .line 242
    add-int/lit8 v25, v25, 0x1

    .line 239
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .line 245
    :cond_11
    ushr-long v17, v17, v24

    .line 246
    int-to-long v0, v15

    and-long v19, v17, v0

    .line 247
    int-to-long v0, v11

    add-long v0, v0, v19

    long-to-int v11, v0

    .line 249
    mul-int v0, v12, v4

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    :goto_10
    int-to-long v0, v15

    cmp-long v0, v19, v0

    if-gez v0, :cond_12

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    array-length v1, v1

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v1, v0, [B

    move-object/from16 v16, v1

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 256
    const-wide/16 v0, 0x1

    add-long v19, v19, v0

    goto :goto_10

    .line 259
    :cond_12
    mul-int v0, v12, v4

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v1, v2, v10, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_e

    .line 264
    :cond_13
    ushr-int/lit8 v22, v21, 0x3

    .line 265
    move/from16 v0, v22

    if-ge v0, v4, :cond_16

    .line 267
    rem-int/lit8 v24, v21, 0x8

    .line 268
    const-wide/16 v17, 0x0

    .line 269
    const/16 v25, 0x0

    .line 270
    move/from16 v26, v22

    :goto_11
    move/from16 v0, v26

    if-ge v0, v4, :cond_14

    .line 272
    aget-byte v0, v5, v26

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v25, 0x3

    shl-int/2addr v0, v1

    int-to-long v0, v0

    xor-long v17, v17, v0

    .line 273
    add-int/lit8 v25, v25, 0x1

    .line 270
    add-int/lit8 v26, v26, 0x1

    goto :goto_11

    .line 276
    :cond_14
    ushr-long v17, v17, v24

    .line 277
    int-to-long v0, v15

    and-long v19, v17, v0

    .line 278
    int-to-long v0, v11

    add-long v0, v0, v19

    long-to-int v11, v0

    .line 280
    mul-int v0, v12, v4

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    :goto_12
    int-to-long v0, v15

    cmp-long v0, v19, v0

    if-gez v0, :cond_15

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    array-length v1, v1

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v1, v0, [B

    move-object/from16 v16, v1

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 287
    const-wide/16 v0, 0x1

    add-long v19, v19, v0

    goto :goto_12

    .line 290
    :cond_15
    mul-int v0, v12, v4

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v1, v2, v10, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    add-int/lit8 v12, v12, 0x1

    .line 294
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v0, v6, v0

    sub-int v11, v0, v11

    .line 295
    const/16 v26, 0x0

    :goto_13
    move/from16 v0, v26

    if-ge v0, v7, :cond_18

    .line 297
    and-int v0, v11, v15

    int-to-long v1, v0

    move-wide/from16 v19, v1

    .line 299
    mul-int v0, v12, v4

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    :goto_14
    int-to-long v0, v15

    cmp-long v0, v19, v0

    if-gez v0, :cond_17

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    array-length v1, v1

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v1, v0, [B

    move-object/from16 v16, v1

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 306
    const-wide/16 v0, 0x1

    add-long v19, v19, v0

    goto :goto_14

    .line 309
    :cond_17
    mul-int v0, v12, v4

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v1, v2, v10, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v11, v0

    .line 311
    add-int/lit8 v12, v12, 0x1

    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int v26, v26, v0

    goto :goto_13

    .line 315
    :cond_18
    :goto_15
    new-array v14, v4, [B

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    array-length v1, v10

    const/4 v2, 0x0

    invoke-interface {v0, v10, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v14, v0, [B

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->beF:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v14, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 320
    return-object v14
.end method
