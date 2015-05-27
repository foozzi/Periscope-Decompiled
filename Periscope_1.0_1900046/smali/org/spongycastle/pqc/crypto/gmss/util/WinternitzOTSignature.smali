.class public Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private beF:Lorg/spongycastle/crypto/Digest;

.field private beG:I

.field private beH:I

.field private beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private bfB:I

.field private bfS:[[B

.field private bfT:I

.field private w:I


# direct methods
.method public constructor <init>([BLorg/spongycastle/crypto/Digest;I)V
    .locals 8

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    .line 65
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    .line 67
    new-instance v0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 72
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    .line 73
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    shl-int/lit8 v5, v0, 0x3

    .line 74
    int-to-double v0, v5

    int-to-double v2, p3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfB:I

    .line 76
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfB:I

    shl-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->ĩ(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfT:I

    .line 78
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfB:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfT:I

    int-to-double v1, v1

    int-to-double v3, p3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beH:I

    .line 90
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beH:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfS:[[B

    .line 93
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    new-array v6, v0, [B

    .line 94
    array-length v0, v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beH:I

    if-ge v7, v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfS:[[B

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v1, v6}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->ᵞ([B)[B

    move-result-object v1

    aput-object v1, v0, v7

    .line 98
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public qW()[B
    .locals 9

    .line 117
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beH:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    mul-int/2addr v0, v1

    new-array v4, v0, [B

    .line 119
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    new-array v5, v0, [B

    .line 120
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/4 v1, 0x1

    shl-int v6, v1, v0

    .line 122
    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beH:I

    if-ge v7, v0, :cond_1

    .line 125
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfS:[[B

    aget-object v1, v1, v7

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfS:[[B

    aget-object v2, v2, v7

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 126
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v5, v0, [B

    .line 127
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v5, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 128
    const/4 v8, 0x2

    :goto_1
    if-ge v8, v6, :cond_0

    .line 130
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-interface {v0, v5, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 131
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v5, v0, [B

    .line 132
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v5, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 128
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 134
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    mul-int/2addr v0, v7

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    invoke-static {v5, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 138
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v7, v0, [B

    .line 139
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 140
    return-object v7
.end method

.method public ĩ(I)I
    .locals 3

    .line 394
    const/4 v1, 0x1

    .line 395
    const/4 v2, 0x2

    .line 396
    :goto_0
    if-ge v2, p1, :cond_0

    .line 398
    shl-int/lit8 v2, v2, 0x1

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    :cond_0
    return v1
.end method

.method public וּ([B)[B
    .locals 22

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beH:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    mul-int/2addr v0, v1

    new-array v4, v0, [B

    .line 151
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    new-array v5, v0, [B

    .line 152
    const/4 v6, 0x0

    .line 153
    const/4 v7, 0x0

    .line 154
    const/4 v8, 0x0

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, p1

    array-length v1, v1

    move-object/from16 v2, p1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v5, v0, [B

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v5, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 160
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/16 v1, 0x8

    rem-int v0, v1, v0

    if-nez v0, :cond_5

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/16 v1, 0x8

    div-int v9, v1, v0

    .line 163
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v10, v0, -0x1

    .line 164
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    new-array v11, v0, [B

    .line 167
    const/4 v12, 0x0

    :goto_0
    array-length v0, v5

    if-ge v12, v0, :cond_2

    .line 169
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_1

    .line 171
    aget-byte v0, v5, v12

    and-int v8, v0, v10

    .line 172
    add-int/2addr v7, v8

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfS:[[B

    aget-object v0, v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v11, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    :goto_2
    if-lez v8, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    array-length v1, v11

    const/4 v2, 0x0

    invoke-interface {v0, v11, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v11, v0, [B

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 181
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 183
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    mul-int/2addr v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    invoke-static {v11, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    aget-byte v0, v5, v12

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v12

    .line 185
    add-int/lit8 v6, v6, 0x1

    .line 169
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 167
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 189
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfB:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v0, v1

    sub-int v7, v0, v7

    .line 190
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfT:I

    if-ge v12, v0, :cond_4

    .line 192
    and-int v8, v7, v10

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfS:[[B

    aget-object v0, v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v11, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    :goto_4
    if-lez v8, :cond_3

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    array-length v1, v11

    const/4 v2, 0x0

    invoke-interface {v0, v11, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v11, v0, [B

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 201
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 203
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    mul-int/2addr v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    invoke-static {v11, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v7, v0

    .line 205
    add-int/lit8 v6, v6, 0x1

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v12, v0

    goto :goto_3

    .line 207
    :cond_4
    goto/16 :goto_15

    .line 208
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_f

    .line 210
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    div-int v9, v0, v1

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v10, v0, -0x1

    .line 212
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    new-array v11, v0, [B

    .line 214
    const/4 v14, 0x0

    .line 217
    const/4 v15, 0x0

    :goto_5
    if-ge v15, v9, :cond_9

    .line 219
    const-wide/16 v12, 0x0

    .line 220
    const/16 v16, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v1, v16

    if-ge v1, v0, :cond_6

    .line 222
    aget-byte v0, v5, v14

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v16, 0x3

    shl-int/2addr v0, v1

    int-to-long v0, v0

    xor-long/2addr v12, v0

    .line 223
    add-int/lit8 v14, v14, 0x1

    .line 220
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 225
    :cond_6
    const/16 v16, 0x0

    :goto_7
    move/from16 v0, v16

    const/16 v1, 0x8

    if-ge v0, v1, :cond_8

    .line 227
    int-to-long v0, v10

    and-long/2addr v0, v12

    long-to-int v8, v0

    .line 228
    add-int/2addr v7, v8

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfS:[[B

    aget-object v0, v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v11, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    :goto_8
    if-lez v8, :cond_7

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    array-length v1, v11

    const/4 v2, 0x0

    invoke-interface {v0, v11, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v11, v0, [B

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 237
    add-int/lit8 v8, v8, -0x1

    goto :goto_8

    .line 239
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    mul-int/2addr v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    invoke-static {v11, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long/2addr v12, v0

    .line 241
    add-int/lit8 v6, v6, 0x1

    .line 225
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 217
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 245
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    rem-int v9, v0, v1

    .line 246
    const-wide/16 v12, 0x0

    .line 247
    const/4 v15, 0x0

    :goto_9
    if-ge v15, v9, :cond_a

    .line 249
    aget-byte v0, v5, v14

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v15, 0x3

    shl-int/2addr v0, v1

    int-to-long v0, v0

    xor-long/2addr v12, v0

    .line 250
    add-int/lit8 v14, v14, 0x1

    .line 247
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 252
    :cond_a
    shl-int/lit8 v9, v9, 0x3

    .line 253
    const/4 v15, 0x0

    :goto_a
    if-ge v15, v9, :cond_c

    .line 255
    int-to-long v0, v10

    and-long/2addr v0, v12

    long-to-int v8, v0

    .line 256
    add-int/2addr v7, v8

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfS:[[B

    aget-object v0, v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v11, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    :goto_b
    if-lez v8, :cond_b

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    array-length v1, v11

    const/4 v2, 0x0

    invoke-interface {v0, v11, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v11, v0, [B

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 265
    add-int/lit8 v8, v8, -0x1

    goto :goto_b

    .line 267
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    mul-int/2addr v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    invoke-static {v11, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long/2addr v12, v0

    .line 269
    add-int/lit8 v6, v6, 0x1

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v15, v0

    goto/16 :goto_a

    .line 273
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfB:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v0, v1

    sub-int v7, v0, v7

    .line 274
    const/4 v15, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfT:I

    if-ge v15, v0, :cond_e

    .line 276
    and-int v8, v7, v10

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfS:[[B

    aget-object v0, v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v11, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    :goto_d
    if-lez v8, :cond_d

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    array-length v1, v11

    const/4 v2, 0x0

    invoke-interface {v0, v11, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v11, v0, [B

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 285
    add-int/lit8 v8, v8, -0x1

    goto :goto_d

    .line 287
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    mul-int/2addr v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    invoke-static {v11, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v7, v0

    .line 289
    add-int/lit8 v6, v6, 0x1

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v15, v0

    goto :goto_c

    .line 291
    :cond_e
    goto/16 :goto_15

    .line 292
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/16 v1, 0x39

    if-ge v0, v1, :cond_17

    .line 294
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    shl-int/lit8 v0, v0, 0x3

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    sub-int v9, v0, v1

    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v10, v0, -0x1

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    new-array v11, v0, [B

    .line 298
    const/16 v16, 0x0

    .line 302
    :goto_e
    move/from16 v0, v16

    if-gt v0, v9, :cond_12

    .line 304
    ushr-int/lit8 v17, v16, 0x3

    .line 305
    rem-int/lit8 v19, v16, 0x8

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int v16, v16, v0

    .line 307
    add-int/lit8 v0, v16, 0x7

    ushr-int/lit8 v18, v0, 0x3

    .line 308
    const-wide/16 v12, 0x0

    .line 309
    const/16 v20, 0x0

    .line 310
    move/from16 v21, v17

    :goto_f
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    .line 312
    aget-byte v0, v5, v21

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v20, 0x3

    shl-int/2addr v0, v1

    int-to-long v0, v0

    xor-long/2addr v12, v0

    .line 313
    add-int/lit8 v20, v20, 0x1

    .line 310
    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    .line 316
    :cond_10
    ushr-long v12, v12, v19

    .line 317
    int-to-long v0, v10

    and-long v14, v12, v0

    .line 318
    int-to-long v0, v7

    add-long/2addr v0, v14

    long-to-int v7, v0

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfS:[[B

    aget-object v0, v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v11, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    :goto_10
    const-wide/16 v0, 0x0

    cmp-long v0, v14, v0

    if-lez v0, :cond_11

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    array-length v1, v11

    const/4 v2, 0x0

    invoke-interface {v0, v11, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v11, v0, [B

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 326
    const-wide/16 v0, 0x1

    sub-long/2addr v14, v0

    goto :goto_10

    .line 328
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    mul-int/2addr v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    invoke-static {v11, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    .line 333
    :cond_12
    ushr-int/lit8 v17, v16, 0x3

    .line 334
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    move/from16 v1, v17

    if-ge v1, v0, :cond_15

    .line 336
    rem-int/lit8 v19, v16, 0x8

    .line 337
    const-wide/16 v12, 0x0

    .line 338
    const/16 v20, 0x0

    .line 339
    move/from16 v21, v17

    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    move/from16 v1, v21

    if-ge v1, v0, :cond_13

    .line 341
    aget-byte v0, v5, v21

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v20, 0x3

    shl-int/2addr v0, v1

    int-to-long v0, v0

    xor-long/2addr v12, v0

    .line 342
    add-int/lit8 v20, v20, 0x1

    .line 339
    add-int/lit8 v21, v21, 0x1

    goto :goto_11

    .line 345
    :cond_13
    ushr-long v12, v12, v19

    .line 346
    int-to-long v0, v10

    and-long v14, v12, v0

    .line 347
    int-to-long v0, v7

    add-long/2addr v0, v14

    long-to-int v7, v0

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfS:[[B

    aget-object v0, v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v11, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    :goto_12
    const-wide/16 v0, 0x0

    cmp-long v0, v14, v0

    if-lez v0, :cond_14

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    array-length v1, v11

    const/4 v2, 0x0

    invoke-interface {v0, v11, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v11, v0, [B

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 355
    const-wide/16 v0, 0x1

    sub-long/2addr v14, v0

    goto :goto_12

    .line 357
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    mul-int/2addr v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    invoke-static {v11, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    add-int/lit8 v6, v6, 0x1

    .line 361
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfB:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v0, v1

    sub-int v7, v0, v7

    .line 362
    const/16 v21, 0x0

    :goto_13
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfT:I

    move/from16 v1, v21

    if-ge v1, v0, :cond_17

    .line 364
    and-int v0, v7, v10

    int-to-long v14, v0

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->bfS:[[B

    aget-object v0, v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v11, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    :goto_14
    const-wide/16 v0, 0x0

    cmp-long v0, v14, v0

    if-lez v0, :cond_16

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    array-length v1, v11

    const/4 v2, 0x0

    invoke-interface {v0, v11, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v11, v0, [B

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beF:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 373
    const-wide/16 v0, 0x1

    sub-long/2addr v14, v0

    goto :goto_14

    .line 375
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    mul-int/2addr v0, v6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->beG:I

    const/4 v2, 0x0

    invoke-static {v11, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v7, v0

    .line 377
    add-int/lit8 v6, v6, 0x1

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int v21, v21, v0

    goto/16 :goto_13

    .line 381
    :cond_17
    :goto_15
    return-object v4
.end method
