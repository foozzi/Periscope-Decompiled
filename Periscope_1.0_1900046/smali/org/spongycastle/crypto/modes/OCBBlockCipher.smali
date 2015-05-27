.class public Lorg/spongycastle/crypto/modes/OCBBlockCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# instance fields
.field private aEW:Z

.field private aFU:[B

.field private aNz:I

.field private aOF:[B

.field private aOH:[B

.field private aPj:Lorg/spongycastle/crypto/BlockCipher;

.field private aPk:Lorg/spongycastle/crypto/BlockCipher;

.field private aPl:Ljava/util/Vector;

.field private aPm:[B

.field private aPn:[B

.field private aPo:[B

.field private aPp:[B

.field private aPq:[B

.field private aPr:[B

.field private aPs:[B

.field private aPt:I

.field private aPu:I

.field private aPv:J

.field private aPw:J

.field private aPx:[B

.field private aPy:[B

.field private aPz:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPo:[B

    .line 54
    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPp:[B

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPq:[B

    .line 65
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPy:[B

    .line 73
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hashCipher\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hashCipher\' must have a block size of 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    if-nez p2, :cond_2

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'mainCipher\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'mainCipher\' must have a block size of 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hashCipher\' and \'mainCipher\' must be the same algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_4
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPj:Lorg/spongycastle/crypto/BlockCipher;

    .line 99
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPk:Lorg/spongycastle/crypto/BlockCipher;

    .line 100
    return-void
.end method

.method protected static ʽ([B[B)I
    .locals 5

    .line 580
    const/16 v2, 0x10

    .line 581
    const/4 v3, 0x0

    .line 582
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 584
    aget-byte v0, p0, v2

    and-int/lit16 v4, v0, 0xff

    .line 585
    shl-int/lit8 v0, v4, 0x1

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 586
    ushr-int/lit8 v0, v4, 0x7

    and-int/lit8 v3, v0, 0x1

    .line 587
    goto :goto_0

    .line 588
    :cond_0
    return v3
.end method

.method protected static ʾ([B[B)V
    .locals 3

    .line 593
    const/16 v2, 0xf

    :goto_0
    if-ltz v2, :cond_0

    .line 595
    aget-byte v0, p0, v2

    aget-byte v1, p1, v2

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    .line 593
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 597
    :cond_0
    return-void
.end method

.method protected static ᴸ([B)[B
    .locals 5

    .line 542
    const/16 v0, 0x10

    new-array v3, v0, [B

    .line 543
    invoke-static {p0, v3}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʽ([B[B)I

    move-result v4

    .line 548
    const/16 v0, 0xf

    aget-byte v0, v3, v0

    rsub-int/lit8 v1, v4, 0x1

    shl-int/lit8 v1, v1, 0x3

    const/16 v2, 0x87

    ushr-int v1, v2, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    const/16 v1, 0xf

    aput-byte v0, v3, v1

    .line 550
    return-object v3
.end method

.method protected static ᵔ([BI)V
    .locals 1

    .line 555
    const/16 v0, -0x80

    aput-byte v0, p0, p1

    .line 556
    :goto_0
    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 558
    const/4 v0, 0x0

    aput-byte v0, p0, p1

    goto :goto_0

    .line 560
    :cond_0
    return-void
.end method

.method protected static ᵙ(J)I
    .locals 5

    .line 564
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 566
    const/16 v0, 0x40

    return v0

    .line 569
    :cond_0
    const/4 v4, 0x0

    .line 570
    :goto_0
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 572
    add-int/lit8 v4, v4, 0x1

    .line 573
    const/4 v0, 0x1

    ushr-long/2addr p0, v0

    goto :goto_0

    .line 575
    :cond_1
    return v4
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7

    .line 346
    const/4 v5, 0x0

    .line 347
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aEW:Z

    if-nez v0, :cond_1

    .line 349
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    if-ge v0, v1, :cond_0

    .line 351
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    .line 354
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    new-array v5, v0, [B

    .line 355
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    iget v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPt:I

    if-lez v0, :cond_2

    .line 363
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPr:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPt:I

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᵔ([BI)V

    .line 364
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPm:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᴶ([B)V

    .line 370
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    if-lez v0, :cond_5

    .line 372
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aEW:Z

    if-eqz v0, :cond_3

    .line 374
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᵔ([BI)V

    .line 375
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPz:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 378
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPy:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPm:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 380
    const/16 v0, 0x10

    new-array v6, v0, [B

    .line 381
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPj:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPy:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v6, v3}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 383
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    invoke-static {v0, v6}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 385
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    add-int/2addr v1, p2

    if-ge v0, v1, :cond_4

    .line 387
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aEW:Z

    if-nez v0, :cond_5

    .line 393
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᵔ([BI)V

    .line 394
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPz:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 401
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPz:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPy:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 402
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPz:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPn:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 403
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPj:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPz:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPz:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 404
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPz:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aFU:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 406
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aOH:[B

    .line 407
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPz:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aOH:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    iget v6, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    .line 414
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aEW:Z

    if-eqz v0, :cond_7

    .line 416
    array-length v0, p1

    add-int v1, p2, v6

    iget v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_6

    .line 418
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aOH:[B

    add-int v1, p2, v6

    iget v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    add-int/2addr v6, v0

    goto :goto_0

    .line 427
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aOH:[B

    invoke-static {v0, v5}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_8

    .line 429
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "mac check in OCB failed"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_8
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->וֹ(Z)V

    .line 435
    return v6
.end method

.method public getOutputSize(I)I
    .locals 2

    .line 262
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    add-int v1, p1, v0

    .line 263
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aEW:Z

    if-eqz v0, :cond_0

    .line 265
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    add-int/2addr v0, v1

    return v0

    .line 267
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    if-ge v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    sub-int v0, v1, v0

    :goto_0
    return v0
.end method

.method public iH()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPk:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method protected kj()V
    .locals 4

    .line 465
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPv:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPv:J

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᵙ(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʖ(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᴶ([B)V

    .line 466
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPt:I

    .line 467
    return-void
.end method

.method protected ʖ(I)[B
    .locals 2

    .line 453
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPl:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 455
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPl:Ljava/util/Vector;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPl:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᴸ([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPl:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 14

    .line 115
    iget-boolean v5, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aEW:Z

    .line 116
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aEW:Z

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aOH:[B

    .line 122
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/spongycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_2

    .line 124
    move-object/from16 v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/AEADParameters;

    move-object v8, v0

    .line 126
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/AEADParameters;->fn()[B

    move-result-object v7

    .line 127
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/AEADParameters;->kp()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aOF:[B

    .line 129
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/AEADParameters;->iO()I

    move-result v9

    .line 130
    const/16 v0, 0x40

    if-lt v9, v0, :cond_0

    const/16 v0, 0x80

    if-gt v9, v0, :cond_0

    rem-int/lit8 v0, v9, 0x8

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for MAC size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    div-int/lit8 v0, v9, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    .line 136
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/AEADParameters;->ko()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v6

    .line 137
    goto :goto_0

    .line 138
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 140
    move-object/from16 v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v8, v0

    .line 142
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v7

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aOF:[B

    .line 144
    const/16 v0, 0x10

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    .line 145
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v6, v0

    .line 146
    goto :goto_0

    .line 149
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to OCB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :goto_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPr:[B

    .line 153
    if-eqz p1, :cond_4

    const/16 v0, 0x10

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    add-int/lit8 v0, v0, 0x10

    :goto_1
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    .line 155
    if-nez v7, :cond_5

    .line 157
    const/4 v0, 0x0

    new-array v7, v0, [B

    .line 160
    :cond_5
    array-length v0, v7

    const/16 v1, 0xf

    if-le v0, v1, :cond_6

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV must be no more than 15 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_6
    if-eqz v6, :cond_7

    .line 172
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPj:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v6}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 173
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPk:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, v6}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPo:[B

    goto :goto_2

    .line 176
    :cond_7
    if-eq v5, p1, :cond_8

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot change encrypting state without providing key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_8
    :goto_2
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPm:[B

    .line 182
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPj:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPm:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPm:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 184
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPm:[B

    invoke-static {v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᴸ([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPn:[B

    .line 186
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPl:Ljava/util/Vector;

    .line 187
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPl:Ljava/util/Vector;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPn:[B

    invoke-static {v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᴸ([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0, v7}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᔈ([B)I

    move-result v8

    .line 195
    rem-int/lit8 v9, v8, 0x8

    div-int/lit8 v10, v8, 0x8

    .line 196
    if-nez v9, :cond_9

    .line 198
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPq:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 202
    :cond_9
    const/4 v11, 0x0

    :goto_3
    const/16 v0, 0x10

    if-ge v11, v0, :cond_a

    .line 204
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPp:[B

    aget-byte v0, v0, v10

    and-int/lit16 v12, v0, 0xff

    .line 205
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPp:[B

    add-int/lit8 v10, v10, 0x1

    aget-byte v0, v0, v10

    and-int/lit16 v13, v0, 0xff

    .line 206
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPq:[B

    shl-int v1, v12, v9

    rsub-int/lit8 v2, v9, 0x8

    ushr-int v2, v13, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v11

    .line 202
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 210
    :cond_a
    :goto_4
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPt:I

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPv:J

    .line 214
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPw:J

    .line 216
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPx:[B

    .line 217
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aFU:[B

    .line 218
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPq:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPy:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPz:[B

    .line 221
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aOF:[B

    if-eqz v0, :cond_b

    .line 223
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aOF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aOF:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᵔ([BII)V

    .line 225
    :cond_b
    return-void
.end method

.method public ˋ([BII[BI)I
    .locals 5

    .line 320
    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 322
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    const/4 v3, 0x0

    .line 326
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_2

    .line 328
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    add-int v2, p2, v4

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 329
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 331
    add-int v0, p5, v3

    invoke-virtual {p0, p4, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᵎ([BI)V

    .line 332
    add-int/lit8 v3, v3, 0x10

    .line 326
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 336
    :cond_2
    return v3
.end method

.method public ء(I)I
    .locals 2

    .line 272
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    add-int v1, p1, v0

    .line 273
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aEW:Z

    if-nez v0, :cond_1

    .line 275
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    if-ge v1, v0, :cond_0

    .line 277
    const/4 v0, 0x0

    return v0

    .line 279
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    sub-int/2addr v1, v0

    .line 281
    :cond_1
    rem-int/lit8 v0, v1, 0x10

    sub-int v0, v1, v0

    return v0
.end method

.method protected ᔈ([B)I
    .locals 8

    .line 229
    const/16 v0, 0x10

    new-array v4, v0, [B

    .line 230
    array-length v0, v4

    array-length v1, p1

    sub-int/2addr v0, v1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    shl-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v4, v1

    .line 232
    array-length v0, p1

    rsub-int/lit8 v0, v0, 0xf

    aget-byte v1, v4, v0

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 234
    const/16 v0, 0xf

    aget-byte v0, v4, v0

    and-int/lit8 v5, v0, 0x3f

    .line 235
    const/16 v0, 0xf

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    const/16 v1, 0xf

    aput-byte v0, v4, v1

    .line 240
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPo:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPo:[B

    invoke-static {v4, v0}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    const/16 v0, 0x10

    new-array v6, v0, [B

    .line 243
    iput-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPo:[B

    .line 244
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPj:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPo:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v6, v3}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 245
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPp:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v6, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    const/4 v7, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v7, v0, :cond_1

    .line 248
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPp:[B

    add-int/lit8 v1, v7, 0x10

    aget-byte v2, v6, v7

    add-int/lit8 v3, v7, 0x1

    aget-byte v3, v6, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 246
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 252
    :cond_1
    return v5
.end method

.method protected ᗮ([B)V
    .locals 1

    .line 445
    if-eqz p1, :cond_0

    .line 447
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 449
    :cond_0
    return-void
.end method

.method protected ᴶ([B)V
    .locals 5

    .line 534
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPx:[B

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 535
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPr:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPx:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 536
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPj:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPr:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPr:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 537
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aFU:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPr:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 538
    return-void
.end method

.method protected ᵎ([BI)V
    .locals 5

    .line 471
    array-length v0, p1

    add-int/lit8 v1, p2, 0x10

    if-ge v0, v1, :cond_0

    .line 473
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aEW:Z

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPz:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    .line 486
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPy:[B

    iget-wide v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPw:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPw:J

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᵙ(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʖ(I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 488
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPy:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 489
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPk:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 490
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPy:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 492
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aEW:Z

    if-nez v0, :cond_2

    .line 496
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPz:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ʾ([B[B)V

    .line 497
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aNz:I

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    .line 500
    :cond_2
    return-void
.end method

.method public ᵔ([BII)V
    .locals 4

    .line 295
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_1

    .line 297
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPr:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPt:I

    add-int v2, p2, v3

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 298
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPt:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPr:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->kj()V

    .line 295
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 303
    :cond_1
    return-void
.end method

.method protected וֹ(Z)V
    .locals 5

    .line 504
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPj:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 505
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPk:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 507
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPr:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᗮ([B)V

    .line 508
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPs:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᗮ([B)V

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPt:I

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPu:I

    .line 513
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPv:J

    .line 514
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPw:J

    .line 516
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPx:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᗮ([B)V

    .line 517
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aFU:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᗮ([B)V

    .line 518
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPq:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPy:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aPz:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᗮ([B)V

    .line 521
    if-eqz p1, :cond_0

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aOH:[B

    .line 526
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aOF:[B

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aOF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->aOF:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->ᵔ([BII)V

    .line 530
    :cond_1
    return-void
.end method
