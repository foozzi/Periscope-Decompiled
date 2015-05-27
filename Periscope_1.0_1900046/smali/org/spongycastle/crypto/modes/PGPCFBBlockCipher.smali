.class public Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;
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

.field private aPC:[B

.field private aPD:Z

.field private count:I

.field private fU:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Z)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 39
    iput-boolean p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPD:Z

    .line 41
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    .line 42
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aKF:[B

    .line 43
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    .line 44
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPB:[B

    .line 45
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPC:[B

    .line 46
    return-void
.end method

.method private ʽ([BI[BI)I
    .locals 6

    .line 218
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 220
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    if-nez v0, :cond_4

    .line 225
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x2

    array-length v1, p3

    if-le v0, v1, :cond_1

    .line 227
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 232
    const/4 v5, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    if-ge v5, v0, :cond_2

    .line 234
    add-int v0, p4, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aKF:[B

    aget-byte v1, v1, v5

    invoke-direct {p0, v1, v5}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 232
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    const/4 v2, 0x0

    invoke-static {p3, p4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 241
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p4

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aKF:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v2, v2, -0x2

    aget-byte v1, v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 242
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aKF:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 244
    add-int/lit8 v0, p4, 0x2

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    const/4 v3, 0x0

    invoke-static {p3, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 248
    const/4 v5, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    if-ge v5, v0, :cond_3

    .line 250
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    add-int v1, p2, v5

    aget-byte v1, p1, v1

    invoke-direct {p0, v1, v5}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 248
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 253
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    const/4 v3, 0x0

    invoke-static {p3, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    .line 257
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 259
    :cond_4
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_7

    .line 261
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_5

    .line 263
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 268
    const/4 v5, 0x0

    :goto_2
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    if-ge v5, v0, :cond_6

    .line 270
    add-int v0, p4, v5

    add-int v1, p2, v5

    aget-byte v1, p1, v1

    invoke-direct {p0, v1, v5}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 268
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 273
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    const/4 v2, 0x0

    invoke-static {p3, p4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    :cond_7
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    return v0
.end method

.method private ˋ(BI)B
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPB:[B

    aget-byte v0, v0, p2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method

.method private ˏ([BI[BI)I
    .locals 6

    .line 387
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 389
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_1

    .line 394
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 398
    const/4 v5, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    if-ge v5, v0, :cond_2

    .line 400
    add-int v0, p4, v5

    add-int v1, p2, v5

    aget-byte v1, p1, v1

    invoke-direct {p0, v1, v5}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 398
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 403
    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    if-ge v5, v0, :cond_3

    .line 405
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    add-int v1, p4, v5

    aget-byte v1, p3, v1

    aput-byte v1, v0, v5

    .line 403
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 408
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    return v0
.end method

.method private ͺ([BI[BI)I
    .locals 6

    .line 298
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 300
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_1

    .line 305
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    if-nez v0, :cond_3

    .line 310
    const/4 v5, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    if-ge v5, v0, :cond_2

    .line 312
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    add-int v1, p2, v5

    aget-byte v1, p1, v1

    aput-byte v1, v0, v5

    .line 310
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 317
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    .line 319
    const/4 v0, 0x0

    return v0

    .line 321
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    if-ne v0, v1, :cond_5

    .line 324
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPC:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPC:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 329
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPC:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 331
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 333
    const/4 v5, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v0, v0, -0x2

    if-ge v5, v0, :cond_4

    .line 335
    add-int v0, p4, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPC:[B

    add-int/lit8 v2, v5, 0x2

    aget-byte v1, v1, v2

    invoke-direct {p0, v1, v5}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 333
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 338
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPC:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    .line 342
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v0, v0, -0x2

    return v0

    .line 344
    :cond_5
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_7

    .line 347
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPC:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    add-int/lit8 v0, p4, 0x0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPC:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v2, v2, -0x2

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 350
    add-int/lit8 v0, p4, 0x1

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPC:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 352
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPC:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 356
    const/4 v5, 0x0

    :goto_2
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v0, v0, -0x2

    if-ge v5, v0, :cond_6

    .line 358
    add-int v0, p4, v5

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPC:[B

    add-int/lit8 v2, v5, 0x2

    aget-byte v1, v1, v2

    invoke-direct {p0, v1, v5}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 356
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 361
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPC:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    :cond_7
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    return v0
.end method

.method private ᐝ([BI[BI)I
    .locals 6

    .line 431
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 433
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_1

    .line 438
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPB:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 442
    const/4 v5, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    if-ge v5, v0, :cond_2

    .line 444
    add-int v0, p4, v5

    add-int v1, p2, v5

    aget-byte v1, p1, v1

    invoke-direct {p0, v1, v5}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ˋ(BI)B

    move-result v1

    aput-byte v1, p3, v0

    .line 442
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 447
    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    if-ge v5, v0, :cond_3

    .line 449
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    add-int v1, p2, v5

    aget-byte v1, p1, v1

    aput-byte v1, v0, v5

    .line 447
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 452
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->fU:I

    return v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 2

    .line 66
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPD:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PGPCFBwithIV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PGPCFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 3

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    .line 124
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    array-length v0, v0

    if-eq v2, v0, :cond_1

    .line 126
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPD:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    goto :goto_1

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPA:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aKF:[B

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 124
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 137
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 1

    .line 106
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aPD:Z

    if-eqz v0, :cond_1

    .line 108
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEW:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ʽ([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ͺ([BI[BI)I

    move-result v0

    :goto_0
    return v0

    .line 112
    :cond_1
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEW:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ˏ([BI[BI)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->ᐝ([BI[BI)I

    move-result v0

    :goto_1
    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 7

    .line 155
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEW:Z

    .line 157
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    .line 159
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v4, v0

    .line 160
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v5

    .line 162
    array-length v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aKF:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 165
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aKF:[B

    array-length v1, v1

    array-length v2, v5

    sub-int/2addr v1, v2

    array-length v2, v5

    const/4 v3, 0x0

    invoke-static {v5, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aKF:[B

    array-length v0, v0

    array-length v1, v5

    sub-int/2addr v0, v1

    if-ge v6, v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aKF:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v6

    .line 166
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 173
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aKF:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v5, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->reset()V

    .line 178
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 179
    goto :goto_2

    .line 182
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->reset()V

    .line 184
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 186
    :goto_2
    return-void
.end method
