.class public Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# instance fields
.field private aEW:Z

.field private aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private aKF:[B

.field private aPA:[B

.field private aPB:[B

.field private count:I

.field private fU:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 39
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    .line 40
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aKF:[B

    .line 41
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    .line 42
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPB:[B

    .line 43
    return-void
.end method

.method private ˋ(BI)B
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPB:[B

    aget-byte v0, v0, p2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method

.method private ˏ([BI[BI)I
    .locals 7

    .line 165
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 167
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_1

    .line 172
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    if-le v0, v1, :cond_3

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/lit8 v1, v1, -0x2

    aget-byte v2, p1, p2

    iget v3, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/lit8 v3, v3, -0x2

    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˋ(BI)B

    move-result v2

    aput-byte v2, p3, p4

    aput-byte v2, v0, v1

    .line 178
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, p4, 0x1

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    iget v4, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v2, v4}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˋ(BI)B

    move-result v2

    aput-byte v2, p3, v3

    aput-byte v2, v0, v1

    .line 180
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 182
    const/4 v6, 0x2

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    if-ge v6, v0, :cond_2

    .line 184
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    add-int/lit8 v1, v6, -0x2

    add-int v3, p4, v6

    add-int v2, p2, v6

    aget-byte v2, p1, v2

    add-int/lit8 v4, v6, -0x2

    invoke-direct {p0, v2, v4}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˋ(BI)B

    move-result v2

    aput-byte v2, p3, v3

    aput-byte v2, v0, v1

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    goto/16 :goto_3

    .line 187
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    if-nez v0, :cond_5

    .line 189
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 191
    const/4 v6, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    if-ge v6, v0, :cond_4

    .line 193
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    add-int v2, p4, v6

    add-int v1, p2, v6

    aget-byte v1, p1, v1

    invoke-direct {p0, v1, v6}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v2

    aput-byte v1, v0, v6

    .line 191
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 196
    :cond_4
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    goto/16 :goto_3

    .line 198
    :cond_5
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    if-ne v0, v1, :cond_7

    .line 200
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 202
    aget-byte v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˋ(BI)B

    move-result v0

    aput-byte v0, p3, p4

    .line 203
    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 208
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x2

    invoke-static {p3, p4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 213
    const/4 v6, 0x2

    :goto_2
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    if-ge v6, v0, :cond_6

    .line 215
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    add-int/lit8 v1, v6, -0x2

    add-int v3, p4, v6

    add-int v2, p2, v6

    aget-byte v2, p1, v2

    add-int/lit8 v4, v6, -0x2

    invoke-direct {p0, v2, v4}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˋ(BI)B

    move-result v2

    aput-byte v2, p3, v3

    aput-byte v2, v0, v1

    .line 213
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 218
    :cond_6
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    .line 221
    :cond_7
    :goto_3
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    return v0
.end method

.method private ᐝ([BI[BI)I
    .locals 9

    .line 243
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 245
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_1

    .line 250
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    if-le v0, v1, :cond_3

    .line 255
    aget-byte v5, p1, p2

    .line 256
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/lit8 v1, v1, -0x2

    aput-byte v5, v0, v1

    .line 257
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/lit8 v0, v0, -0x2

    invoke-direct {p0, v5, v0}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˋ(BI)B

    move-result v0

    aput-byte v0, p3, p4

    .line 259
    add-int/lit8 v0, p2, 0x1

    aget-byte v5, p1, v0

    .line 260
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/lit8 v1, v1, -0x1

    aput-byte v5, v0, v1

    .line 261
    add-int/lit8 v0, p4, 0x1

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v5, v1}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 263
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 265
    const/4 v6, 0x2

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    if-ge v6, v0, :cond_2

    .line 267
    add-int v0, p2, v6

    aget-byte v5, p1, v0

    .line 268
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    add-int/lit8 v1, v6, -0x2

    aput-byte v5, v0, v1

    .line 269
    add-int v0, p4, v6

    add-int/lit8 v1, v6, -0x2

    invoke-direct {p0, v5, v1}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 265
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 271
    :cond_2
    goto/16 :goto_3

    .line 272
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    if-nez v0, :cond_5

    .line 274
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 276
    const/4 v5, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    if-ge v5, v0, :cond_4

    .line 278
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    add-int v1, p2, v5

    aget-byte v1, p1, v1

    aput-byte v1, v0, v5

    .line 279
    add-int v0, p2, v5

    aget-byte v0, p1, v0

    invoke-direct {p0, v0, v5}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˋ(BI)B

    move-result v0

    aput-byte v0, p3, v5

    .line 276
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 282
    :cond_4
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    goto/16 :goto_3

    .line 284
    :cond_5
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    if-ne v0, v1, :cond_7

    .line 286
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 288
    aget-byte v5, p1, p2

    .line 289
    add-int/lit8 v0, p2, 0x1

    aget-byte v6, p1, v0

    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, v5, v0}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˋ(BI)B

    move-result v0

    aput-byte v0, p3, p4

    .line 291
    add-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v6, v1}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 293
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/lit8 v1, v1, -0x2

    aput-byte v5, v0, v1

    .line 296
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/lit8 v1, v1, -0x1

    aput-byte v6, v0, v1

    .line 298
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 300
    const/4 v7, 0x2

    :goto_2
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    if-ge v7, v0, :cond_6

    .line 302
    add-int v0, p2, v7

    aget-byte v8, p1, v0

    .line 303
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    add-int/lit8 v1, v7, -0x2

    aput-byte v8, v0, v1

    .line 304
    add-int v0, p4, v7

    add-int/lit8 v1, v7, -0x2

    invoke-direct {p0, v8, v1}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 300
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 307
    :cond_6
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    .line 310
    :cond_7
    :goto_3
    iget v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->fU:I

    return v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/OpenPGPCFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 5

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    .line 107
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aPA:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 110
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 1

    .line 96
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEW:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ˏ([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->ᐝ([BI[BI)I

    move-result v0

    :goto_0
    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 128
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEW:Z

    .line 130
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->reset()V

    .line 132
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 133
    return-void
.end method
