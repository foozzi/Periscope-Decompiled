.class Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;
.super Lorg/spongycastle/crypto/PBEParametersGenerator;
.source ""


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aNj:I

.field private aNk:I


# direct methods
.method private ˊ([BI[B)V
    .locals 5

    .line 84
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x1

    .line 86
    array-length v0, p3

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    int-to-byte v1, v3

    aput-byte v1, p1, v0

    .line 87
    ushr-int/lit8 v3, v3, 0x8

    .line 89
    array-length v0, p3

    add-int/lit8 v4, v0, -0x2

    :goto_0
    if-ltz v4, :cond_0

    .line 91
    aget-byte v0, p3, v4

    and-int/lit16 v0, v0, 0xff

    add-int v1, p2, v4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 92
    add-int v0, p2, v4

    int-to-byte v1, v3

    aput-byte v1, p1, v0

    .line 93
    ushr-int/lit8 v3, v3, 0x8

    .line 89
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method private ᐢ(II)[B
    .locals 14

    .line 104
    iget v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNk:I

    new-array v4, v0, [B

    .line 105
    move/from16 v0, p2

    new-array v5, v0, [B

    .line 107
    const/4 v6, 0x0

    :goto_0
    array-length v0, v4

    if-eq v6, v0, :cond_0

    .line 109
    int-to-byte v0, p1

    aput-byte v0, v4, v6

    .line 107
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aqg:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aqg:[B

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 116
    iget v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNk:I

    iget-object v1, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aqg:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNk:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNk:I

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    new-array v6, v0, [B

    .line 118
    const/4 v7, 0x0

    :goto_1
    array-length v0, v6

    if-eq v7, v0, :cond_1

    .line 120
    iget-object v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aqg:[B

    iget-object v1, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aqg:[B

    array-length v1, v1

    rem-int v1, v7, v1

    aget-byte v0, v0, v1

    aput-byte v0, v6, v7

    .line 118
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 125
    :cond_2
    const/4 v0, 0x0

    new-array v6, v0, [B

    .line 130
    :goto_2
    iget-object v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aFe:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aFe:[B

    array-length v0, v0

    if-eqz v0, :cond_4

    .line 132
    iget v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNk:I

    iget-object v1, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aFe:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNk:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNk:I

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    new-array v7, v0, [B

    .line 134
    const/4 v8, 0x0

    :goto_3
    array-length v0, v7

    if-eq v8, v0, :cond_3

    .line 136
    iget-object v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aFe:[B

    iget-object v1, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aFe:[B

    array-length v1, v1

    rem-int v1, v8, v1

    aget-byte v0, v0, v1

    aput-byte v0, v7, v8

    .line 134
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    goto :goto_4

    .line 141
    :cond_4
    const/4 v0, 0x0

    new-array v7, v0, [B

    .line 144
    :goto_4
    array-length v0, v6

    array-length v1, v7

    add-int/2addr v0, v1

    new-array v8, v0, [B

    .line 146
    array-length v0, v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v6, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    array-length v0, v6

    array-length v1, v7

    const/4 v2, 0x0

    invoke-static {v7, v2, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNk:I

    new-array v9, v0, [B

    .line 150
    iget v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNj:I

    add-int v0, v0, p2

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNj:I

    div-int v10, v0, v1

    .line 152
    const/4 v11, 0x1

    :goto_5
    if-gt v11, v10, :cond_9

    .line 154
    iget v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNj:I

    new-array v12, v0, [B

    .line 156
    iget-object v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 157
    iget-object v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v8

    const/4 v2, 0x0

    invoke-interface {v0, v8, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 158
    iget-object v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v12, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 159
    const/4 v13, 0x1

    :goto_6
    iget v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aFf:I

    if-eq v13, v0, :cond_5

    .line 161
    iget-object v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v12

    const/4 v2, 0x0

    invoke-interface {v0, v12, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 162
    iget-object v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v12, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 159
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 165
    :cond_5
    const/4 v13, 0x0

    :goto_7
    array-length v0, v9

    if-eq v13, v0, :cond_6

    .line 167
    array-length v0, v12

    rem-int v0, v13, v0

    aget-byte v0, v12, v0

    aput-byte v0, v9, v11

    .line 165
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 170
    :cond_6
    const/4 v13, 0x0

    :goto_8
    array-length v0, v8

    iget v1, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNk:I

    div-int/2addr v0, v1

    if-eq v13, v0, :cond_7

    .line 172
    iget v0, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNk:I

    mul-int/2addr v0, v13

    invoke-direct {p0, v8, v0, v9}, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->ˊ([BI[B)V

    .line 170
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 175
    :cond_7
    if-ne v11, v10, :cond_8

    .line 177
    add-int/lit8 v0, v11, -0x1

    iget v1, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNj:I

    mul-int/2addr v0, v1

    array-length v1, v5

    add-int/lit8 v2, v11, -0x1

    iget v3, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNj:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v12, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    .line 181
    :cond_8
    add-int/lit8 v0, v11, -0x1

    iget v1, p0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->aNj:I

    mul-int/2addr v0, v1

    array-length v1, v12

    const/4 v2, 0x0

    invoke-static {v12, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 185
    :cond_9
    return-object v5
.end method


# virtual methods
.method public ر(I)Lorg/spongycastle/crypto/CipherParameters;
    .locals 3

    .line 198
    div-int/lit8 p1, p1, 0x8

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->ᐢ(II)[B

    move-result-object v2

    .line 202
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v0
.end method

.method public ڎ(I)Lorg/spongycastle/crypto/CipherParameters;
    .locals 3

    .line 238
    div-int/lit8 p1, p1, 0x8

    .line 240
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->ᐢ(II)[B

    move-result-object v2

    .line 242
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v0
.end method

.method public ᵙ(II)Lorg/spongycastle/crypto/CipherParameters;
    .locals 5

    .line 218
    div-int/lit8 p1, p1, 0x8

    .line 219
    div-int/lit8 p2, p2, 0x8

    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->ᐢ(II)[B

    move-result-object v3

    .line 223
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;->ᐢ(II)[B

    move-result-object v4

    .line 225
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2, p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    return-object v0
.end method
