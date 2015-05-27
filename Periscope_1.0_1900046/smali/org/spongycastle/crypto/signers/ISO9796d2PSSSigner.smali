.class public Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/SignerWithRecovery;


# static fields
.field private static aSg:Ljava/util/Hashtable;


# instance fields
.field private aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aFa:Ljava/security/SecureRandom;

.field private aNg:I

.field private aSh:[B

.field private aSi:I

.field private aSj:I

.field private aSk:[B

.field private aSl:I

.field private aSm:I

.field private aSn:Z

.field private aSo:[B

.field private aSp:[B

.field private aSq:[B

.field private aSr:I

.field private aSs:I

.field private fp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSg:Ljava/util/Hashtable;

    .line 40
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSg:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    const/16 v2, 0x32cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSg:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160"

    const/16 v2, 0x31cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSg:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    const/16 v2, 0x33cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSg:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    const/16 v2, 0x34cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSg:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    const/16 v2, 0x36cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSg:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    const/16 v2, 0x35cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSg:Ljava/util/Hashtable;

    const-string v1, "Whirlpool"

    const/16 v2, 0x37cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method private ˋ([BIII)[B
    .locals 7

    .line 635
    new-array v3, p4, [B

    .line 636
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    new-array v4, v0, [B

    .line 637
    const/4 v0, 0x4

    new-array v5, v0, [B

    .line 638
    const/4 v6, 0x0

    .line 640
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 642
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    div-int v0, p4, v0

    if-ge v6, v0, :cond_0

    .line 644
    invoke-direct {p0, v6, v5}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ˏ(I[B)V

    .line 646
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 647
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-interface {v0, v5, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 648
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 650
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    mul-int/2addr v0, v6

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    const/4 v2, 0x0

    invoke-static {v4, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 655
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    mul-int/2addr v0, v6

    if-ge v0, p4, :cond_1

    .line 657
    invoke-direct {p0, v6, v5}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ˏ(I[B)V

    .line 659
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 660
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-interface {v0, v5, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 661
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 663
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    mul-int/2addr v0, v6

    array-length v1, v3

    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    mul-int/2addr v2, v6

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v4, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    :cond_1
    return-object v3
.end method

.method private ˌ([B[B)Z
    .locals 4

    .line 200
    const/4 v2, 0x1

    .line 202
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSl:I

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 204
    const/4 v2, 0x0

    .line 207
    :cond_0
    const/4 v3, 0x0

    :goto_0
    array-length v0, p2

    if-eq v3, v0, :cond_2

    .line 209
    aget-byte v0, p1, v3

    aget-byte v1, p2, v3

    if-eq v0, v1, :cond_1

    .line 211
    const/4 v2, 0x0

    .line 207
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    :cond_2
    return v2
.end method

.method private ˎ(J[B)V
    .locals 2

    .line 616
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p3, v1

    .line 617
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p3, v1

    .line 618
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p3, v1

    .line 619
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p3, v1

    .line 620
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, p3, v1

    .line 621
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x5

    aput-byte v0, p3, v1

    .line 622
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x6

    aput-byte v0, p3, v1

    .line 623
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x7

    aput-byte v0, p3, v1

    .line 624
    return-void
.end method

.method private ˏ(I[B)V
    .locals 2

    .line 603
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    .line 604
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 605
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    .line 606
    ushr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    .line 607
    return-void
.end method

.method private ᖮ([B)V
    .locals 2

    .line 224
    const/4 v1, 0x0

    :goto_0
    array-length v0, p1

    if-eq v1, v0, :cond_0

    .line 226
    const/4 v0, 0x0

    aput-byte v0, p1, v1

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method public iP()[B
    .locals 14

    .line 395
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v5

    .line 397
    new-array v6, v5, [B

    .line 399
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 401
    const/16 v0, 0x8

    new-array v7, v0, [B

    .line 402
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSl:I

    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v7}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ˎ(J[B)V

    .line 404
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v7

    const/4 v2, 0x0

    invoke-interface {v0, v7, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 406
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSk:[B

    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSl:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 408
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v6

    const/4 v2, 0x0

    invoke-interface {v0, v6, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 412
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSh:[B

    if-eqz v0, :cond_0

    .line 414
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSh:[B

    goto :goto_0

    .line 418
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSm:I

    new-array v8, v0, [B

    .line 419
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 422
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v8

    const/4 v2, 0x0

    invoke-interface {v0, v8, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 424
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v9, v0, [B

    .line 426
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v9, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 428
    const/4 v10, 0x2

    .line 429
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSi:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_1

    .line 431
    const/4 v10, 0x1

    .line 434
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSl:I

    sub-int/2addr v0, v1

    array-length v1, v8

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v10

    add-int/lit8 v11, v0, -0x1

    .line 436
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    const/4 v1, 0x1

    aput-byte v1, v0, v11

    .line 438
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSk:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    add-int/lit8 v2, v11, 0x1

    iget v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSl:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    add-int/lit8 v1, v11, 0x1

    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSl:I

    add-int/2addr v1, v2

    array-length v2, v8

    const/4 v3, 0x0

    invoke-static {v8, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    array-length v0, v9

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v10

    const/4 v2, 0x0

    invoke-direct {p0, v9, v2, v0, v1}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ˋ([BIII)[B

    move-result-object v12

    .line 442
    const/4 v13, 0x0

    :goto_1
    array-length v0, v12

    if-eq v13, v0, :cond_2

    .line 444
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    aget-byte v1, v0, v13

    aget-byte v2, v12, v13

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v13

    .line 442
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 447
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v10

    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    const/4 v3, 0x0

    invoke-static {v9, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSi:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_3

    .line 451
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    goto :goto_2

    .line 455
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSi:I

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 456
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSi:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 459
    :goto_2
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 461
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v13

    .line 463
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSk:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ᖮ([B)V

    .line 464
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ᖮ([B)V

    .line 465
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSl:I

    .line 467
    return-object v13
.end method

.method public reset()V
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSl:I

    .line 370
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSk:[B

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSk:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ᖮ([B)V

    .line 374
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ᖮ([B)V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    .line 379
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSn:Z

    .line 380
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSp:[B

    if-eqz v0, :cond_2

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSp:[B

    .line 383
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSq:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ᖮ([B)V

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSq:[B

    .line 386
    :cond_2
    return-void
.end method

.method public update(B)V
    .locals 3

    .line 329
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSp:[B

    if-nez v0, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSl:I

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSk:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 331
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSk:[B

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSl:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSl:I

    aput-byte p1, v0, v1

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 337
    :goto_0
    return-void
.end method

.method public update([BII)V
    .locals 2

    .line 347
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSp:[B

    if-nez v0, :cond_0

    .line 349
    :goto_0
    if-lez p3, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSl:I

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSk:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 351
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->update(B)V

    .line 352
    add-int/lit8 p2, p2, 0x1

    .line 353
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 357
    :cond_0
    if-lez p3, :cond_1

    .line 359
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 361
    :cond_1
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 5

    .line 142
    iget v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSm:I

    .line 144
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1

    .line 146
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v4, v0

    .line 148
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-object v2, v0

    .line 149
    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFa:Ljava/security/SecureRandom;

    .line 153
    :cond_0
    goto :goto_0

    .line 154
    :cond_1
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithSalt;

    if-eqz v0, :cond_3

    .line 156
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithSalt;

    move-object v4, v0

    .line 158
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithSalt;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-object v2, v0

    .line 159
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithSalt;->getSalt()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSh:[B

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSh:[B

    array-length v3, v0

    .line 161
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSh:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSm:I

    if-eq v0, v1, :cond_2

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fixed salt is of wrong length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2
    goto :goto_0

    .line 168
    :cond_3
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-object v2, v0

    .line 169
    if-eqz p1, :cond_4

    .line 171
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFa:Ljava/security/SecureRandom;

    .line 175
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 177
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSj:I

    .line 179
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSj:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    .line 181
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSi:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_5

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSk:[B

    goto :goto_1

    .line 187
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fp:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSk:[B

    .line 190
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->reset()V

    .line 191
    return-void
.end method

.method public ᵌ([B)V
    .locals 10

    .line 233
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v5

    .line 238
    array-length v0, v5

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSj:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_0

    .line 240
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSj:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v6, v0, [B

    .line 242
    array-length v0, v6

    array-length v1, v5

    sub-int/2addr v0, v1

    array-length v1, v5

    const/4 v2, 0x0

    invoke-static {v5, v2, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ᖮ([B)V

    .line 244
    move-object v5, v6

    .line 249
    :cond_0
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    xor-int/lit16 v0, v0, 0xbc

    if-nez v0, :cond_1

    .line 251
    const/4 v6, 0x1

    goto :goto_0

    .line 255
    :cond_1
    array-length v0, v5

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    or-int v7, v0, v1

    .line 257
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSg:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0

    .line 259
    if-eqz v8, :cond_2

    .line 261
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v7, v0, :cond_3

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signer initialised with wrong digest for trailer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognised hash in signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_3
    const/4 v6, 0x2

    .line 277
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    new-array v7, v0, [B

    .line 278
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 283
    array-length v0, v5

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v6

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    array-length v2, v5

    iget v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v6

    invoke-direct {p0, v5, v0, v1, v2}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ˋ([BIII)[B

    move-result-object v8

    .line 284
    const/4 v9, 0x0

    :goto_1
    array-length v0, v8

    if-eq v9, v0, :cond_4

    .line 286
    aget-byte v0, v5, v9

    aget-byte v1, v8, v9

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v9

    .line 284
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 289
    :cond_4
    const/4 v0, 0x0

    aget-byte v0, v5, v0

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v5, v1

    .line 294
    const/4 v9, 0x0

    .line 295
    :goto_2
    array-length v0, v5

    if-eq v9, v0, :cond_6

    .line 297
    aget-byte v0, v5, v9

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 299
    goto :goto_3

    .line 295
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 303
    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 305
    array-length v0, v5

    if-lt v9, v0, :cond_7

    .line 307
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ᖮ([B)V

    .line 310
    :cond_7
    const/4 v0, 0x1

    if-le v9, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSn:Z

    .line 312
    array-length v0, v8

    sub-int/2addr v0, v9

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSm:I

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    .line 314
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v5, v9, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSk:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSp:[B

    .line 318
    iput-object v5, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSq:[B

    .line 319
    iput v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSr:I

    .line 320
    iput v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSs:I

    .line 321
    return-void
.end method

.method public ᵔ([B)Z
    .locals 13

    .line 480
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aNg:I

    new-array v4, v0, [B

    .line 481
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 485
    const/4 v7, 0x0

    .line 487
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSp:[B

    if-nez v0, :cond_0

    .line 491
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ᵌ([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    goto :goto_0

    .line 493
    :catch_0
    move-exception v8

    .line 495
    const/4 v0, 0x0

    return v0

    .line 500
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSp:[B

    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "updateWithRecoveredMessage called on different signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_1
    :goto_0
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSq:[B

    .line 507
    iget v7, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSr:I

    .line 508
    iget v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSs:I

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSp:[B

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSq:[B

    .line 516
    const/16 v0, 0x8

    new-array v8, v0, [B

    .line 517
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v8}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ˎ(J[B)V

    .line 519
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v8

    const/4 v2, 0x0

    invoke-interface {v0, v8, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 521
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 526
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 529
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    array-length v1, v1

    add-int/2addr v1, v7

    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSm:I

    invoke-interface {v0, v5, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 531
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v9, v0, [B

    .line 532
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v9, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 534
    array-length v0, v5

    sub-int/2addr v0, v6

    array-length v1, v9

    sub-int v10, v0, v1

    .line 536
    const/4 v11, 0x1

    .line 538
    const/4 v12, 0x0

    :goto_1
    array-length v0, v9

    if-eq v12, v0, :cond_4

    .line 540
    aget-byte v0, v9, v12

    add-int v1, v10, v12

    aget-byte v1, v5, v1

    if-eq v0, v1, :cond_3

    .line 542
    const/4 v11, 0x0

    .line 538
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 546
    :cond_4
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ᖮ([B)V

    .line 547
    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ᖮ([B)V

    .line 549
    if-nez v11, :cond_5

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSn:Z

    .line 552
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ᖮ([B)V

    .line 553
    const/4 v0, 0x0

    return v0

    .line 560
    :cond_5
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSl:I

    if-eqz v0, :cond_7

    .line 562
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSk:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSo:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ˌ([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    .line 564
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSk:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ᖮ([B)V

    .line 565
    const/4 v0, 0x0

    return v0

    .line 567
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSl:I

    .line 570
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->aSk:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ᖮ([B)V

    .line 571
    const/4 v0, 0x1

    return v0
.end method
