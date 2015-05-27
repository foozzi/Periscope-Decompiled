.class public Lorg/spongycastle/crypto/signers/ISO9796d2Signer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/SignerWithRecovery;


# static fields
.field private static aSg:Ljava/util/Hashtable;


# instance fields
.field private aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aSi:I

.field private aSj:I

.field private aSk:[B

.field private aSl:I

.field private aSn:Z

.field private aSo:[B

.field private aSp:[B

.field private aSq:[B

.field private fp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSg:Ljava/util/Hashtable;

    .line 34
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSg:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    const/16 v2, 0x32cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSg:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160"

    const/16 v2, 0x31cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSg:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    const/16 v2, 0x33cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSg:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    const/16 v2, 0x34cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSg:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    const/16 v2, 0x36cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSg:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    const/16 v2, 0x35cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSg:Ljava/util/Hashtable;

    const-string v1, "Whirlpool"

    const/16 v2, 0x37cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Z)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 73
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 75
    if-eqz p3, :cond_0

    .line 77
    const/16 v0, 0xbc

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSi:I

    goto :goto_0

    .line 81
    :cond_0
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSg:Ljava/util/Hashtable;

    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 83
    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSi:I

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no valid trailer for digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :goto_0
    return-void
.end method

.method private ˌ([B[B)Z
    .locals 4

    .line 138
    const/4 v2, 0x1

    .line 140
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    array-length v1, v1

    if-le v0, v1, :cond_3

    .line 142
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    array-length v0, v0

    array-length v1, p2

    if-le v0, v1, :cond_0

    .line 144
    const/4 v2, 0x0

    .line 147
    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    array-length v0, v0

    if-eq v3, v0, :cond_2

    .line 149
    aget-byte v0, p1, v3

    aget-byte v1, p2, v3

    if-eq v0, v1, :cond_1

    .line 151
    const/4 v2, 0x0

    .line 147
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    .line 157
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    array-length v1, p2

    if-eq v0, v1, :cond_4

    .line 159
    const/4 v2, 0x0

    .line 162
    :cond_4
    const/4 v3, 0x0

    :goto_1
    array-length v0, p2

    if-eq v3, v0, :cond_6

    .line 164
    aget-byte v0, p1, v3

    aget-byte v1, p2, v3

    if-eq v0, v1, :cond_5

    .line 166
    const/4 v2, 0x0

    .line 162
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 171
    :cond_6
    :goto_2
    return v2
.end method

.method private ᖮ([B)V
    .locals 2

    .line 180
    const/4 v1, 0x0

    :goto_0
    array-length v0, p1

    if-eq v1, v0, :cond_0

    .line 182
    const/4 v0, 0x0

    aput-byte v0, p1, v1

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method private ᵓ([B)Z
    .locals 1

    .line 591
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᖮ([B)V

    .line 592
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᖮ([B)V

    .line 594
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public iP()[B
    .locals 10

    .line 345
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v4

    .line 347
    const/4 v5, 0x0

    .line 348
    const/4 v6, 0x0

    .line 350
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSi:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_0

    .line 352
    const/16 v5, 0x8

    .line 353
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    array-length v0, v0

    sub-int/2addr v0, v4

    add-int/lit8 v6, v0, -0x1

    .line 354
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    invoke-interface {v0, v1, v6}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 355
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    goto :goto_0

    .line 359
    :cond_0
    const/16 v5, 0x10

    .line 360
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    array-length v0, v0

    sub-int/2addr v0, v4

    add-int/lit8 v6, v0, -0x2

    .line 361
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    invoke-interface {v0, v1, v6}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 362
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSi:I

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 363
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSi:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 366
    :goto_0
    const/4 v7, 0x0

    .line 367
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSj:I

    sub-int v8, v0, v1

    .line 369
    if-lez v8, :cond_1

    .line 371
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    add-int/lit8 v1, v8, 0x7

    div-int/lit8 v1, v1, 0x8

    sub-int v9, v0, v1

    .line 372
    const/16 v7, 0x60

    .line 374
    sub-int/2addr v6, v9

    .line 376
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    goto :goto_1

    .line 380
    :cond_1
    const/16 v7, 0x40

    .line 381
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    sub-int/2addr v6, v0

    .line 383
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    :goto_1
    add-int/lit8 v0, v6, -0x1

    if-lez v0, :cond_3

    .line 388
    add-int/lit8 v9, v6, -0x1

    :goto_2
    if-eqz v9, :cond_2

    .line 390
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    const/16 v1, -0x45

    aput-byte v1, v0, v9

    .line 388
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 392
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    add-int/lit8 v1, v6, -0x1

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 393
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 394
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    or-int/2addr v1, v7

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    goto :goto_3

    .line 398
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 399
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    or-int/2addr v1, v7

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 402
    :goto_3
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v9

    .line 404
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᖮ([B)V

    .line 405
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᖮ([B)V

    .line 407
    return-object v9
.end method

.method public reset()V
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    .line 320
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᖮ([B)V

    .line 322
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSo:[B

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSo:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᖮ([B)V

    .line 327
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSo:[B

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSn:Z

    .line 330
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSp:[B

    if-eqz v0, :cond_1

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSp:[B

    .line 333
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSq:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᖮ([B)V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSq:[B

    .line 336
    :cond_1
    return-void
.end method

.method public update(B)V
    .locals 2

    .line 284
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 286
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    aput-byte p1, v0, v1

    .line 291
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    .line 292
    return-void
.end method

.method public update([BII)V
    .locals 2

    .line 302
    :goto_0
    if-lez p3, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 304
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->update(B)V

    .line 305
    add-int/lit8 p2, p2, 0x1

    .line 306
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 310
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    .line 311
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 111
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-object v2, v0

    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 115
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSj:I

    .line 117
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSj:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    .line 119
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSi:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fp:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    .line 128
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->reset()V

    .line 129
    return-void
.end method

.method public ᵔ([B)Z
    .locals 10

    .line 417
    const/4 v3, 0x0

    .line 419
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSp:[B

    if-nez v0, :cond_0

    .line 423
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 428
    goto :goto_0

    .line 425
    :catch_0
    move-exception v4

    .line 427
    const/4 v0, 0x0

    return v0

    .line 432
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSp:[B

    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "updateWithRecoveredMessage called on different signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSq:[B

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSp:[B

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSq:[B

    .line 443
    :goto_0
    const/4 v0, 0x0

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xc0

    xor-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    .line 445
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᵓ([B)Z

    move-result v0

    return v0

    .line 448
    :cond_2
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v3, v0

    and-int/lit8 v0, v0, 0xf

    xor-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_3

    .line 450
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᵓ([B)Z

    move-result v0

    return v0

    .line 453
    :cond_3
    const/4 v4, 0x0

    .line 455
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    xor-int/lit16 v0, v0, 0xbc

    if-nez v0, :cond_4

    .line 457
    const/4 v4, 0x1

    goto :goto_1

    .line 461
    :cond_4
    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    or-int v5, v0, v1

    .line 462
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSg:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0

    .line 464
    if-eqz v6, :cond_5

    .line 466
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v5, v0, :cond_6

    .line 468
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signer initialised with wrong digest for trailer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognised hash in signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_6
    const/4 v4, 0x2

    .line 482
    :goto_1
    const/4 v5, 0x0

    .line 484
    const/4 v5, 0x0

    :goto_2
    array-length v0, v3

    if-eq v5, v0, :cond_8

    .line 486
    aget-byte v0, v3, v5

    and-int/lit8 v0, v0, 0xf

    xor-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_7

    .line 488
    goto :goto_3

    .line 484
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 492
    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 497
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v6, v0, [B

    .line 499
    array-length v0, v3

    sub-int/2addr v0, v4

    array-length v1, v6

    sub-int v7, v0, v1

    .line 504
    sub-int v0, v7, v5

    if-gtz v0, :cond_9

    .line 506
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᵓ([B)Z

    move-result v0

    return v0

    .line 512
    :cond_9
    const/4 v0, 0x0

    aget-byte v0, v3, v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_e

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSn:Z

    .line 517
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    sub-int v1, v7, v5

    if-le v0, v1, :cond_a

    .line 519
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᵓ([B)Z

    move-result v0

    return v0

    .line 522
    :cond_a
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 523
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    sub-int v1, v7, v5

    invoke-interface {v0, v3, v5, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 524
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 526
    const/4 v8, 0x1

    .line 528
    const/4 v9, 0x0

    :goto_4
    array-length v0, v6

    if-eq v9, v0, :cond_c

    .line 530
    add-int v0, v7, v9

    aget-byte v1, v3, v0

    aget-byte v2, v6, v9

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 531
    add-int v0, v7, v9

    aget-byte v0, v3, v0

    if-eqz v0, :cond_b

    .line 533
    const/4 v8, 0x0

    .line 528
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 537
    :cond_c
    if-nez v8, :cond_d

    .line 539
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᵓ([B)Z

    move-result v0

    return v0

    .line 542
    :cond_d
    sub-int v0, v7, v5

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSo:[B

    .line 543
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSo:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSo:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v3, v5, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    goto :goto_6

    .line 547
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSn:Z

    .line 549
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 551
    const/4 v8, 0x1

    .line 553
    const/4 v9, 0x0

    :goto_5
    array-length v0, v6

    if-eq v9, v0, :cond_10

    .line 555
    add-int v0, v7, v9

    aget-byte v1, v3, v0

    aget-byte v2, v6, v9

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 556
    add-int v0, v7, v9

    aget-byte v0, v3, v0

    if-eqz v0, :cond_f

    .line 558
    const/4 v8, 0x0

    .line 553
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 562
    :cond_10
    if-nez v8, :cond_11

    .line 564
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᵓ([B)Z

    move-result v0

    return v0

    .line 567
    :cond_11
    sub-int v0, v7, v5

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSo:[B

    .line 568
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSo:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSo:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v3, v5, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    :goto_6
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSl:I

    if-eqz v0, :cond_12

    .line 577
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSo:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ˌ([B[B)Z

    move-result v0

    if-nez v0, :cond_12

    .line 579
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᵓ([B)Z

    move-result v0

    return v0

    .line 583
    :cond_12
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->aSk:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᖮ([B)V

    .line 584
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᖮ([B)V

    .line 586
    const/4 v0, 0x1

    return v0
.end method
