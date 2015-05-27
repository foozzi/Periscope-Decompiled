.class public Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private aEU:I

.field private aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

.field private aNP:Lorg/spongycastle/crypto/params/KeyParameter;

.field private aNQ:Lorg/spongycastle/crypto/params/KeyParameter;

.field private aNy:[B

.field private aNz:I

.field private buf:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2

    .line 43
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/spongycastle/crypto/BlockCipher;ILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;ILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/crypto/engines/DESEngine;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher must be instance of DESEngine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 111
    iput-object p3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    .line 112
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNz:I

    .line 114
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNy:[B

    .line 116
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 2

    .line 57
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/spongycastle/crypto/BlockCipher;ILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    .line 58
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7

    .line 241
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 243
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    if-nez v0, :cond_0

    .line 248
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    if-ge v0, v5, :cond_2

    .line 250
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 251
    iget v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    goto :goto_0

    .line 256
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    if-ne v0, v5, :cond_1

    .line 258
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    .line 262
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/paddings/BlockCipherPadding;->ᵢ([BI)I

    .line 265
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 268
    new-instance v6, Lorg/spongycastle/crypto/engines/DESEngine;

    invoke-direct {v6}, Lorg/spongycastle/crypto/engines/DESEngine;-><init>()V

    .line 270
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNP:Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v0}, Lorg/spongycastle/crypto/engines/DESEngine;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 271
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNy:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNy:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v2, v1, v3}, Lorg/spongycastle/crypto/engines/DESEngine;->ˊ([BI[BI)I

    .line 273
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNQ:Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v1, 0x1

    invoke-virtual {v6, v1, v0}, Lorg/spongycastle/crypto/engines/DESEngine;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 274
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNy:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNy:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v2, v1, v3}, Lorg/spongycastle/crypto/engines/DESEngine;->ˊ([BI[BI)I

    .line 277
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNy:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNz:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->reset()V

    .line 281
    iget v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNz:I

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 122
    const-string v0, "ISO9797Alg3"

    return-object v0
.end method

.method public iO()I
    .locals 1

    .line 183
    iget v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNz:I

    return v0
.end method

.method public reset()V
    .locals 3

    .line 293
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 295
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    .line 303
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 304
    return-void
.end method

.method public update(B)V
    .locals 5

    .line 189
    iget v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    aput-byte p1, v0, v1

    .line 196
    return-void
.end method

.method public update([BII)V
    .locals 8

    .line 204
    if-gez p3, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 210
    const/4 v6, 0x0

    .line 211
    iget v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    sub-int v7, v5, v0

    .line 213
    if-le p3, v7, :cond_1

    .line 215
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    invoke-static {p1, p2, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/lit8 v6, v0, 0x0

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    .line 220
    sub-int/2addr p3, v7

    .line 221
    add-int/2addr p2, v7

    .line 223
    :goto_0
    if-le p3, v5, :cond_1

    .line 225
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNy:[B

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/2addr v6, v0

    .line 227
    sub-int/2addr p3, v5

    .line 228
    add-int/2addr p2, v5

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iget v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEU:I

    .line 235
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 6

    .line 127
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->reset()V

    .line 129
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params must be an instance of KeyParameter or ParametersWithIV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 143
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v3, v0

    goto :goto_0

    .line 147
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v3, v0

    .line 151
    :goto_0
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    .line 153
    array-length v0, v5

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 155
    new-instance v4, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {v4, v5, v0, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 156
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-direct {v0, v5, v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNP:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 157
    iput-object v4, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNQ:Lorg/spongycastle/crypto/params/KeyParameter;

    goto :goto_1

    .line 159
    :cond_2
    array-length v0, v5

    const/16 v1, 0x18

    if-ne v0, v1, :cond_3

    .line 161
    new-instance v4, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {v4, v5, v0, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 162
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-direct {v0, v5, v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNP:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 163
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    const/16 v1, 0x10

    const/16 v2, 0x8

    invoke-direct {v0, v5, v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aNQ:Lorg/spongycastle/crypto/params/KeyParameter;

    goto :goto_1

    .line 167
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key must be either 112 or 168 bit long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :goto_1
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_4

    .line 173
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v2, p1

    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_2

    .line 177
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 179
    :goto_2
    return-void
.end method
