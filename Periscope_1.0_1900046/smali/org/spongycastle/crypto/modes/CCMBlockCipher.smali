.class public Lorg/spongycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private aEW:Z

.field private aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private aNz:I

.field private aOF:[B

.field private aOG:Lorg/spongycastle/crypto/CipherParameters;

.field private aOH:[B

.field private aOI:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private aOJ:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private aeu:[B

.field private fU:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lorg/spongycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOI:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 34
    new-instance v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lorg/spongycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOJ:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 43
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 44
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->fU:I

    .line 45
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOH:[B

    .line 47
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->fU:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    return-void
.end method

.method private kc()I
    .locals 2

    .line 437
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOI:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOF:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOF:[B

    array-length v1, v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method private kd()Z
    .locals 1

    .line 442
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->kc()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ˊ([BII[B)I
    .locals 11

    .line 350
    new-instance v4, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aNz:I

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v4, v0, v1}, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    .line 352
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOG:Lorg/spongycastle/crypto/CipherParameters;

    invoke-interface {v4, v0}, Lorg/spongycastle/crypto/Mac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 357
    const/16 v0, 0x10

    new-array v5, v0, [B

    .line 359
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->kd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x0

    aget-byte v0, v5, v0

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v5, v1

    .line 364
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, v5, v0

    invoke-interface {v4}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    div-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v5, v1

    .line 366
    const/4 v0, 0x0

    aget-byte v0, v5, v0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aeu:[B

    array-length v1, v1

    rsub-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v5, v1

    .line 368
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aeu:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aeu:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    move v6, p3

    .line 371
    const/4 v7, 0x1

    .line 372
    :goto_0
    if-lez v6, :cond_1

    .line 374
    array-length v0, v5

    sub-int/2addr v0, v7

    and-int/lit16 v1, v6, 0xff

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 375
    ushr-int/lit8 v6, v6, 0x8

    .line 376
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 379
    :cond_1
    array-length v0, v5

    const/4 v1, 0x0

    invoke-interface {v4, v5, v1, v0}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 384
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->kd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 388
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->kc()I

    move-result v9

    .line 389
    const v0, 0xff00

    if-ge v9, v0, :cond_2

    .line 391
    shr-int/lit8 v0, v9, 0x8

    int-to-byte v0, v0

    invoke-interface {v4, v0}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 392
    int-to-byte v0, v9

    invoke-interface {v4, v0}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 394
    const/4 v8, 0x2

    goto :goto_1

    .line 398
    :cond_2
    const/4 v0, -0x1

    invoke-interface {v4, v0}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 399
    const/4 v0, -0x2

    invoke-interface {v4, v0}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 400
    shr-int/lit8 v0, v9, 0x18

    int-to-byte v0, v0

    invoke-interface {v4, v0}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 401
    shr-int/lit8 v0, v9, 0x10

    int-to-byte v0, v0

    invoke-interface {v4, v0}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 402
    shr-int/lit8 v0, v9, 0x8

    int-to-byte v0, v0

    invoke-interface {v4, v0}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 403
    int-to-byte v0, v9

    invoke-interface {v4, v0}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 405
    const/4 v8, 0x6

    .line 408
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOF:[B

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOF:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-interface {v4, v0, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 412
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOI:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 414
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOI:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->ke()[B

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOI:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v4, v0, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 417
    :cond_4
    add-int v0, v8, v9

    rem-int/lit8 v8, v0, 0x10

    .line 418
    if-eqz v8, :cond_5

    .line 420
    move v10, v8

    :goto_2
    const/16 v0, 0x10

    if-eq v10, v0, :cond_5

    .line 422
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 420
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 430
    :cond_5
    invoke-interface {v4, p1, p2, p3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 432
    const/4 v0, 0x0

    invoke-interface {v4, p4, v0}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    move-result v0

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7

    .line 146
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOJ:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->ke()[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOJ:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v3

    move-object v4, p1

    move v5, p2

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->ˎ([BII[BI)I

    move-result v6

    .line 148
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 150
    return v6
.end method

.method public getOutputSize(I)I
    .locals 2

    .line 182
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOJ:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    add-int v1, p1, v0

    .line 184
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aEW:Z

    if-eqz v0, :cond_0

    .line 186
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aNz:I

    add-int/2addr v0, v1

    return v0

    .line 189
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aNz:I

    if-ge v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aNz:I

    sub-int v0, v1, v0

    :goto_0
    return v0
.end method

.method public iH()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 156
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOI:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 157
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOJ:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 158
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 67
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aEW:Z

    .line 70
    instance-of v0, p2, Lorg/spongycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_0

    .line 72
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/AEADParameters;

    move-object v3, v0

    .line 74
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/AEADParameters;->fn()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aeu:[B

    .line 75
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/AEADParameters;->kp()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOF:[B

    .line 76
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/AEADParameters;->iO()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aNz:I

    .line 77
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/AEADParameters;->ko()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v2

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1

    .line 81
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v3, v0

    .line 83
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aeu:[B

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOF:[B

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOH:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aNz:I

    .line 86
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    .line 87
    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to CCM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :goto_0
    if-eqz v2, :cond_2

    .line 96
    iput-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOG:Lorg/spongycastle/crypto/CipherParameters;

    .line 99
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aeu:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aeu:[B

    array-length v0, v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aeu:[B

    array-length v0, v0

    const/16 v1, 0xd

    if-le v0, v1, :cond_4

    .line 101
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nonce must have length from 7 to 13 octets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 105
    return-void
.end method

.method public ˋ([BII[BI)I
    .locals 2

    .line 134
    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 136
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOJ:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public ˎ([BII[BI)I
    .locals 14

    .line 243
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOG:Lorg/spongycastle/crypto/CipherParameters;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CCM cipher unitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aeu:[B

    array-length v5, v0

    .line 249
    rsub-int/lit8 v6, v5, 0xf

    .line 250
    const/4 v0, 0x4

    if-ge v6, v0, :cond_1

    .line 252
    mul-int/lit8 v0, v6, 0x8

    const/4 v1, 0x1

    shl-int v7, v1, v0

    .line 253
    move/from16 v0, p3

    if-lt v0, v7, :cond_1

    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CCM packet too large for choice of q."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->fU:I

    new-array v7, v0, [B

    .line 260
    add-int/lit8 v0, v6, -0x1

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v7, v1

    .line 261
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aeu:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aeu:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    new-instance v8, Lorg/spongycastle/crypto/modes/SICBlockCipher;

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v8, v0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 264
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aEW:Z

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOG:Lorg/spongycastle/crypto/CipherParameters;

    invoke-direct {v1, v2, v7}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-interface {v8, v0, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 267
    move/from16 v10, p2

    .line 268
    move/from16 v11, p5

    .line 270
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aEW:Z

    if-eqz v0, :cond_4

    .line 272
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aNz:I

    add-int v9, p3, v0

    .line 273
    move-object/from16 v0, p4

    array-length v0, v0

    add-int v1, v9, p5

    if-ge v0, v1, :cond_2

    .line 275
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short."

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOH:[B

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->ˊ([BII[B)I

    .line 280
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOH:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOH:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v8, v0, v2, v1, v3}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 282
    :goto_0
    add-int v0, p2, p3

    iget v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->fU:I

    sub-int/2addr v0, v1

    if-ge v10, v0, :cond_3

    .line 284
    move-object/from16 v0, p4

    invoke-interface {v8, p1, v10, v0, v11}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 285
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->fU:I

    add-int/2addr v11, v0

    .line 286
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->fU:I

    add-int/2addr v10, v0

    goto :goto_0

    .line 289
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->fU:I

    new-array v12, v0, [B

    .line 291
    add-int v0, p3, p2

    sub-int/2addr v0, v10

    const/4 v1, 0x0

    invoke-static {p1, v10, v12, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v8, v12, v0, v12, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 295
    add-int v0, p3, p2

    sub-int/2addr v0, v10

    const/4 v1, 0x0

    move-object/from16 v2, p4

    invoke-static {v12, v1, v2, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOH:[B

    add-int v1, p5, p3

    iget v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aNz:I

    const/4 v3, 0x0

    move-object/from16 v4, p4

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    goto/16 :goto_3

    .line 301
    :cond_4
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aNz:I

    move/from16 v1, p3

    if-ge v1, v0, :cond_5

    .line 303
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_5
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aNz:I

    sub-int v9, p3, v0

    .line 306
    move-object/from16 v0, p4

    array-length v0, v0

    add-int v1, v9, p5

    if-ge v0, v1, :cond_6

    .line 308
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short."

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_6
    add-int v0, p2, v9

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOH:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aNz:I

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOH:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOH:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v8, v0, v2, v1, v3}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 315
    iget v12, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aNz:I

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOH:[B

    array-length v0, v0

    if-eq v12, v0, :cond_7

    .line 317
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOH:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v12

    .line 315
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 320
    :cond_7
    :goto_2
    add-int v0, p2, v9

    iget v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->fU:I

    sub-int/2addr v0, v1

    if-ge v10, v0, :cond_8

    .line 322
    move-object/from16 v0, p4

    invoke-interface {v8, p1, v10, v0, v11}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 323
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->fU:I

    add-int/2addr v11, v0

    .line 324
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->fU:I

    add-int/2addr v10, v0

    goto :goto_2

    .line 327
    :cond_8
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->fU:I

    new-array v12, v0, [B

    .line 329
    sub-int v0, v10, p2

    sub-int v0, v9, v0

    const/4 v1, 0x0

    invoke-static {p1, v10, v12, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v8, v12, v0, v12, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 333
    sub-int v0, v10, p2

    sub-int v0, v9, v0

    const/4 v1, 0x0

    move-object/from16 v2, p4

    invoke-static {v12, v1, v2, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->fU:I

    new-array v13, v0, [B

    .line 337
    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v9, v13}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->ˊ([BII[B)I

    .line 339
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOH:[B

    invoke-static {v0, v13}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_9

    .line 341
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "mac check in CCM failed"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_9
    :goto_3
    return v9
.end method

.method public ء(I)I
    .locals 1

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public ᵔ([BII)V
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->aOI:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 121
    return-void
.end method
