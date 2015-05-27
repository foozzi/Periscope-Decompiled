.class public Lorg/spongycastle/crypto/engines/IESEngine;
.super Ljava/lang/Object;
.source ""


# instance fields
.field aEW:Z

.field aGf:[B

.field aKA:Lorg/spongycastle/crypto/CipherParameters;

.field aKB:Lorg/spongycastle/crypto/CipherParameters;

.field aKC:Lorg/spongycastle/crypto/params/IESParameters;

.field private aKD:Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

.field private aKE:Lorg/spongycastle/crypto/KeyParser;

.field private aKF:[B

.field aKv:Lorg/spongycastle/crypto/BasicAgreement;

.field aKw:Lorg/spongycastle/crypto/DerivationFunction;

.field aKx:Lorg/spongycastle/crypto/Mac;

.field aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

.field aKz:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;Lorg/spongycastle/crypto/Mac;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKv:Lorg/spongycastle/crypto/BasicAgreement;

    .line 62
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKw:Lorg/spongycastle/crypto/DerivationFunction;

    .line 63
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    .line 64
    invoke-interface {p3}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKz:[B

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;Lorg/spongycastle/crypto/Mac;Lorg/spongycastle/crypto/BufferedBlockCipher;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKv:Lorg/spongycastle/crypto/BasicAgreement;

    .line 85
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKw:Lorg/spongycastle/crypto/DerivationFunction;

    .line 86
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    .line 87
    invoke-interface {p3}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKz:[B

    .line 88
    iput-object p4, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    .line 89
    return-void
.end method

.method private ˎ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 148
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 150
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKF:[B

    .line 151
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/IESParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKC:Lorg/spongycastle/crypto/params/IESParameters;

    goto :goto_0

    .line 155
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKF:[B

    .line 156
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/IESParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKC:Lorg/spongycastle/crypto/params/IESParameters;

    .line 158
    :goto_0
    return-void
.end method

.method private י([BII)[B
    .locals 15

    .line 176
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 179
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-nez v0, :cond_2

    .line 182
    move/from16 v0, p3

    new-array v8, v0, [B

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKC:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/IESParameters;->kP()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v9, v0, [B

    .line 184
    array-length v0, v8

    array-length v1, v9

    add-int/2addr v0, v1

    new-array v7, v0, [B

    .line 186
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKw:Lorg/spongycastle/crypto/DerivationFunction;

    array-length v1, v7

    const/4 v2, 0x0

    invoke-interface {v0, v7, v2, v1}, Lorg/spongycastle/crypto/DerivationFunction;->ᐧ([BII)I

    .line 188
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 190
    array-length v0, v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v7, v1, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    array-length v0, v9

    array-length v1, v8

    const/4 v2, 0x0

    invoke-static {v7, v0, v8, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 195
    :cond_0
    array-length v0, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v7, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    array-length v0, v9

    move/from16 v1, p3

    const/4 v2, 0x0

    invoke-static {v7, v1, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    :goto_0
    move/from16 v0, p3

    new-array v6, v0, [B

    .line 201
    const/4 v11, 0x0

    :goto_1
    move/from16 v0, p3

    if-eq v11, v0, :cond_1

    .line 203
    add-int v0, p2, v11

    aget-byte v0, p1, v0

    aget-byte v1, v8, v11

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v6, v11

    .line 201
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 205
    :cond_1
    move/from16 v10, p3

    goto/16 :goto_3

    .line 210
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKC:Lorg/spongycastle/crypto/params/IESParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/IESWithCipherParameters;->kQ()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v8, v0, [B

    .line 211
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKC:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/IESParameters;->kP()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v9, v0, [B

    .line 212
    array-length v0, v8

    array-length v1, v9

    add-int/2addr v0, v1

    new-array v7, v0, [B

    .line 214
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKw:Lorg/spongycastle/crypto/DerivationFunction;

    array-length v1, v7

    const/4 v2, 0x0

    invoke-interface {v0, v7, v2, v1}, Lorg/spongycastle/crypto/DerivationFunction;->ᐧ([BII)I

    .line 215
    array-length v0, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v7, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    array-length v0, v8

    array-length v1, v9

    const/4 v2, 0x0

    invoke-static {v7, v0, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKF:[B

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v8}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKF:[B

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_2

    .line 225
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v8}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 228
    :goto_2
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v6, v0, [B

    .line 229
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->ˋ([BII[BI)I

    move-result v10

    .line 230
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, v6, v10}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v0

    add-int/2addr v10, v0

    .line 235
    :goto_3
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKC:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/IESParameters;->kO()[B

    move-result-object v11

    .line 236
    const/4 v0, 0x4

    new-array v12, v0, [B

    .line 237
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v0, v0

    if-eqz v0, :cond_4

    if-eqz v11, :cond_4

    .line 239
    array-length v0, v11

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, v12, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 244
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v0

    new-array v13, v0, [B

    .line 246
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v9}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 247
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    array-length v1, v6

    const/4 v2, 0x0

    invoke-interface {v0, v6, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 248
    if-eqz v11, :cond_5

    .line 250
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    array-length v1, v11

    const/4 v2, 0x0

    invoke-interface {v0, v11, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 252
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v0, v0

    if-eqz v0, :cond_6

    .line 254
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    array-length v1, v12

    const/4 v2, 0x0

    invoke-interface {v0, v12, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 256
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    const/4 v1, 0x0

    invoke-interface {v0, v13, v1}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 260
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v0, v0

    add-int/2addr v0, v10

    array-length v1, v13

    add-int/2addr v0, v1

    new-array v14, v0, [B

    .line 261
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v14, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v0, v0

    const/4 v1, 0x0

    invoke-static {v6, v1, v14, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v0, v0

    add-int/2addr v0, v10

    array-length v1, v13

    const/4 v2, 0x0

    invoke-static {v13, v2, v14, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    return-object v14
.end method

.method private ٴ([BII)[B
    .locals 16

    .line 273
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKC:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/IESParameters;->kP()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    move/from16 v1, p3

    if-gt v1, v0, :cond_0

    .line 279
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Length of input must be greater than the MAC"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-nez v0, :cond_3

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v0, v0

    sub-int v0, p3, v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v8, v0, [B

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKC:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/IESParameters;->kP()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v9, v0, [B

    .line 287
    array-length v0, v8

    array-length v1, v9

    add-int/2addr v0, v1

    new-array v7, v0, [B

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKw:Lorg/spongycastle/crypto/DerivationFunction;

    array-length v1, v7

    const/4 v2, 0x0

    invoke-interface {v0, v7, v2, v1}, Lorg/spongycastle/crypto/DerivationFunction;->ᐧ([BII)I

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 293
    array-length v0, v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v7, v1, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    array-length v0, v9

    array-length v1, v8

    const/4 v2, 0x0

    invoke-static {v7, v0, v8, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 298
    :cond_1
    array-length v0, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v7, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    array-length v0, v8

    array-length v1, v9

    const/4 v2, 0x0

    invoke-static {v7, v0, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    :goto_0
    array-length v0, v8

    new-array v6, v0, [B

    .line 304
    const/4 v11, 0x0

    :goto_1
    array-length v0, v8

    if-eq v11, v0, :cond_2

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v0, v0

    add-int v0, v0, p2

    add-int/2addr v0, v11

    aget-byte v0, p1, v0

    aget-byte v1, v8, v11

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v6, v11

    .line 304
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 309
    :cond_2
    array-length v10, v8

    goto/16 :goto_3

    .line 314
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKC:Lorg/spongycastle/crypto/params/IESParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/IESWithCipherParameters;->kQ()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v8, v0, [B

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKC:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/IESParameters;->kP()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v9, v0, [B

    .line 316
    array-length v0, v8

    array-length v1, v9

    add-int/2addr v0, v1

    new-array v7, v0, [B

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKw:Lorg/spongycastle/crypto/DerivationFunction;

    array-length v1, v7

    const/4 v2, 0x0

    invoke-interface {v0, v7, v2, v1}, Lorg/spongycastle/crypto/DerivationFunction;->ᐧ([BII)I

    .line 319
    array-length v0, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v7, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    array-length v0, v8

    array-length v1, v9

    const/4 v2, 0x0

    invoke-static {v7, v0, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKF:[B

    if-eqz v0, :cond_4

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v8}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object/from16 v3, p0

    iget-object v3, v3, Lorg/spongycastle/crypto/engines/IESEngine;->aKF:[B

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_2

    .line 329
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v8}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 332
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v1, v1

    sub-int v1, p3, v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v6, v0, [B

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v2, v2

    add-int v2, v2, p2

    move-object/from16 v3, p0

    iget-object v3, v3, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v3, v3

    sub-int v3, p3, v3

    move-object/from16 v4, p0

    iget-object v4, v4, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->ˋ([BII[BI)I

    move-result v10

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, v6, v10}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v0

    add-int/2addr v10, v0

    .line 339
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKC:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/IESParameters;->kO()[B

    move-result-object v11

    .line 340
    const/4 v0, 0x4

    new-array v12, v0, [B

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v0, v0

    if-eqz v0, :cond_5

    if-eqz v11, :cond_5

    .line 343
    array-length v0, v11

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, v12, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 348
    :cond_5
    add-int v13, p2, p3

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v0

    sub-int v0, v13, v0

    move-object/from16 v1, p1

    invoke-static {v1, v0, v13}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 351
    array-length v0, v14

    new-array v15, v0, [B

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v9}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v1, v1

    add-int v1, v1, p2

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v2, v2

    sub-int v2, p3, v2

    array-length v3, v15

    sub-int/2addr v2, v3

    move-object/from16 v3, p1

    invoke-interface {v0, v3, v1, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 355
    if-eqz v11, :cond_6

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    array-length v1, v11

    const/4 v2, 0x0

    invoke-interface {v0, v11, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 359
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v0, v0

    if-eqz v0, :cond_7

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    array-length v1, v12

    const/4 v2, 0x0

    invoke-interface {v0, v12, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 363
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    const/4 v1, 0x0

    invoke-interface {v0, v15, v1}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 365
    invoke-static {v14, v15}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_8

    .line 367
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Invalid MAC."

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_8
    const/4 v0, 0x0

    invoke-static {v6, v0, v10}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public jA()Lorg/spongycastle/crypto/BufferedBlockCipher;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    return-object v0
.end method

.method public jB()Lorg/spongycastle/crypto/Mac;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKx:Lorg/spongycastle/crypto/Mac;

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/KeyParser;)V
    .locals 1

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aEW:Z

    .line 140
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKA:Lorg/spongycastle/crypto/CipherParameters;

    .line 141
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKE:Lorg/spongycastle/crypto/KeyParser;

    .line 143
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/engines/IESEngine;->ˎ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 144
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;)V
    .locals 1

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aEW:Z

    .line 124
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKB:Lorg/spongycastle/crypto/CipherParameters;

    .line 125
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKD:Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    .line 127
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/engines/IESEngine;->ˎ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 128
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 105
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aEW:Z

    .line 106
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKA:Lorg/spongycastle/crypto/CipherParameters;

    .line 107
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKB:Lorg/spongycastle/crypto/CipherParameters;

    .line 108
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    .line 110
    invoke-direct {p0, p4}, Lorg/spongycastle/crypto/engines/IESEngine;->ˎ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 111
    return-void
.end method

.method public ˑ([BII)[B
    .locals 8

    .line 382
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aEW:Z

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKD:Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKD:Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;->jU()Lorg/spongycastle/crypto/EphemeralKeyPair;

    move-result-object v4

    .line 388
    invoke-virtual {v4}, Lorg/spongycastle/crypto/EphemeralKeyPair;->iK()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKA:Lorg/spongycastle/crypto/CipherParameters;

    .line 389
    invoke-virtual {v4}, Lorg/spongycastle/crypto/EphemeralKeyPair;->iL()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    .line 390
    goto :goto_1

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKE:Lorg/spongycastle/crypto/KeyParser;

    if-eqz v0, :cond_1

    .line 396
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 400
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKE:Lorg/spongycastle/crypto/KeyParser;

    invoke-interface {v0, v4}, Lorg/spongycastle/crypto/KeyParser;->ʿ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKB:Lorg/spongycastle/crypto/CipherParameters;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    goto :goto_0

    .line 402
    :catch_0
    move-exception v5

    .line 404
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to recover ephemeral public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 407
    :goto_0
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    sub-int v5, p3, v0

    .line 408
    add-int v0, p2, v5

    invoke-static {p1, p2, v0}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    .line 413
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKv:Lorg/spongycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKA:Lorg/spongycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/BasicAgreement;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 414
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKv:Lorg/spongycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKB:Lorg/spongycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/BasicAgreement;->ˋ(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v4

    .line 415
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKv:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v0

    invoke-static {v0, v4}, Lorg/spongycastle/util/BigIntegers;->ʻ(ILjava/math/BigInteger;)[B

    move-result-object v5

    .line 419
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v0, v0

    array-length v1, v5

    add-int/2addr v0, v1

    new-array v6, v0, [B

    .line 422
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aGf:[B

    array-length v0, v0

    array-length v1, v5

    const/4 v2, 0x0

    invoke-static {v5, v2, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 427
    :cond_2
    move-object v6, v5

    .line 431
    :goto_2
    new-instance v7, Lorg/spongycastle/crypto/params/KDFParameters;

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKC:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/IESParameters;->kN()[B

    move-result-object v0

    invoke-direct {v7, v6, v0}, Lorg/spongycastle/crypto/params/KDFParameters;-><init>([B[B)V

    .line 432
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aKw:Lorg/spongycastle/crypto/DerivationFunction;

    invoke-interface {v0, v7}, Lorg/spongycastle/crypto/DerivationFunction;->ˊ(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 434
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->aEW:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/engines/IESEngine;->י([BII)[B

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/engines/IESEngine;->ٴ([BII)[B

    move-result-object v0

    :goto_3
    return-object v0
.end method
