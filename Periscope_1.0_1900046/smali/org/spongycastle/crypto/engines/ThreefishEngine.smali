.class public Lorg/spongycastle/crypto/engines/ThreefishEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;,
        Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;,
        Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;,
        Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
    }
.end annotation


# static fields
.field private static aMa:[I

.field private static aMb:[I

.field private static aMc:[I

.field private static aMd:[I


# instance fields
.field private aEW:Z

.field private aMe:I

.field private aMf:I

.field private aMg:[J

.field private aMh:[J

.field private aMi:[J

.field private aMj:Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    const/16 v0, 0x50

    new-array v0, v0, [I

    sput-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMa:[I

    .line 70
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMa:[I

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMb:[I

    .line 71
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMa:[I

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMc:[I

    .line 72
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMa:[I

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMd:[I

    .line 76
    const/4 v2, 0x0

    :goto_0
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMa:[I

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 78
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMb:[I

    rem-int/lit8 v1, v2, 0x11

    aput v1, v0, v2

    .line 79
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMa:[I

    rem-int/lit8 v1, v2, 0x9

    aput v1, v0, v2

    .line 80
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMc:[I

    rem-int/lit8 v1, v2, 0x5

    aput v1, v0, v2

    .line 81
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMd:[I

    rem-int/lit8 v1, v2, 0x3

    aput v1, v0, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMh:[J

    .line 125
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMe:I

    .line 126
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMe:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMf:I

    .line 127
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMf:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMg:[J

    .line 133
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMf:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMi:[J

    .line 135
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 138
    :sswitch_0
    new-instance v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMi:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMh:[J

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;-><init>([J[J)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMj:Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    .line 139
    goto :goto_1

    .line 141
    :sswitch_1
    new-instance v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMi:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMh:[J

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;-><init>([J[J)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMj:Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    .line 142
    goto :goto_1

    .line 144
    :sswitch_2
    new-instance v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMi:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMh:[J

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;-><init>([J[J)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMj:Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    .line 145
    goto :goto_1

    .line 147
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid blocksize - Threefish is defined with block size of 256, 512, or 1024 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic jK()[I
    .locals 1

    .line 23
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMc:[I

    return-object v0
.end method

.method static synthetic jL()[I
    .locals 1

    .line 23
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMd:[I

    return-object v0
.end method

.method static synthetic jM()[I
    .locals 1

    .line 23
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMa:[I

    return-object v0
.end method

.method static synthetic jN()[I
    .locals 1

    .line 23
    sget-object v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMb:[I

    return-object v0
.end method

.method static ˊ(JIJ)J
    .locals 4

    .line 406
    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    xor-long/2addr v0, p3

    return-wide v0
.end method

.method static ˋ(JIJ)J
    .locals 6

    .line 415
    xor-long v4, p0, p3

    .line 416
    ushr-long v0, v4, p2

    neg-int v2, p2

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static ˏ(J[BI)V
    .locals 4

    .line 383
    add-int/lit8 v0, p3, 0x8

    array-length v1, p2

    if-le v0, v1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 388
    :cond_0
    move v3, p3

    .line 390
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 391
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 392
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 393
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x18

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 394
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 395
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x28

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 396
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x30

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 397
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x38

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 398
    return-void
.end method

.method private ͺ([J)V
    .locals 8

    .line 230
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMf:I

    if-eq v0, v1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Threefish key must be same size as block ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " words)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    const-wide v5, 0x1bd11bdaa9fc1a22L    # 1.080841987832705E-174

    .line 245
    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMf:I

    if-ge v7, v0, :cond_1

    .line 247
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMi:[J

    aget-wide v1, p1, v7

    aput-wide v1, v0, v7

    .line 248
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMi:[J

    aget-wide v0, v0, v7

    xor-long/2addr v5, v0

    .line 245
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMi:[J

    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMf:I

    aput-wide v5, v0, v1

    .line 251
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMi:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMi:[J

    iget v2, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMf:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMf:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    return-void
.end method

.method private ι([J)V
    .locals 5

    .line 256
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tweak must be 2 words."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMh:[J

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 265
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMh:[J

    const/4 v1, 0x1

    aget-wide v1, p1, v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 266
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMh:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMh:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMh:[J

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    .line 267
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMh:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMh:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    .line 268
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMh:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMh:[J

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    .line 269
    return-void
.end method

.method public static ﾞ([BI)J
    .locals 7

    .line 356
    add-int/lit8 v0, p1, 0x8

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 362
    :cond_0
    const-wide/16 v4, 0x0

    .line 363
    move v6, p1

    .line 365
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long v4, v0, v2

    .line 366
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    or-long/2addr v4, v0

    .line 367
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    or-long/2addr v4, v0

    .line 368
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    or-long/2addr v4, v0

    .line 369
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    or-long/2addr v4, v0

    .line 370
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    or-long/2addr v4, v0

    .line 371
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    or-long/2addr v4, v0

    .line 372
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v4, v0

    .line 374
    return-wide v4
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 278
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMe:I

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Threefish-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMe:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 283
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 5

    .line 289
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMe:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_0

    .line 291
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMe:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 296
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMe:I

    if-ge v4, v0, :cond_2

    .line 301
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMg:[J

    shr-int/lit8 v1, v4, 0x3

    add-int v2, p2, v4

    invoke-static {p1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ﾞ([BI)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 299
    add-int/lit8 v4, v4, 0x8

    goto :goto_0

    .line 303
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMg:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMg:[J

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ([J[J)I

    .line 304
    const/4 v4, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMe:I

    if-ge v4, v0, :cond_3

    .line 306
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMg:[J

    shr-int/lit8 v1, v4, 0x3

    aget-wide v0, v0, v1

    add-int v2, p4, v4

    invoke-static {v0, v1, p3, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˏ(J[BI)V

    .line 304
    add-int/lit8 v4, v4, 0x8

    goto :goto_1

    .line 309
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMe:I

    return v0
.end method

.method public ˊ([J[J)I
    .locals 4

    .line 324
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMi:[J

    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMf:I

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Threefish engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMf:I

    if-eq v0, v1, :cond_1

    .line 331
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    array-length v0, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMf:I

    if-eq v0, v1, :cond_2

    .line 335
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aEW:Z

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMj:Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->ˋ([J[J)V

    goto :goto_0

    .line 344
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMj:Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->ˎ([J[J)V

    .line 347
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMf:I

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 8

    .line 164
    instance-of v0, p2, Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;

    if-eqz v0, :cond_0

    .line 166
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;

    move-object v5, v0

    .line 167
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;->ko()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    .line 168
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/TweakableBlockCipherParameters;->lq()[B

    move-result-object v4

    .line 169
    goto :goto_0

    .line 170
    :cond_0
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 172
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    .line 173
    const/4 v4, 0x0

    goto :goto_0

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter passed to Threefish init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :goto_0
    const/4 v5, 0x0

    .line 182
    const/4 v6, 0x0

    .line 184
    if-eqz v3, :cond_3

    .line 186
    array-length v0, v3

    iget v1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMe:I

    if-eq v0, v1, :cond_2

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Threefish key must be same size as block ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMe:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aMf:I

    new-array v5, v0, [J

    .line 192
    const/4 v7, 0x0

    :goto_1
    array-length v0, v5

    if-ge v7, v0, :cond_3

    .line 194
    mul-int/lit8 v0, v7, 0x8

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ﾞ([BI)J

    move-result-wide v0

    aput-wide v0, v5, v7

    .line 192
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 197
    :cond_3
    if-eqz v4, :cond_5

    .line 199
    array-length v0, v4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threefish tweak must be 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_4
    const/4 v0, 0x2

    new-array v6, v0, [J

    const/4 v0, 0x0

    invoke-static {v4, v0}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ﾞ([BI)J

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, v6, v2

    const/16 v0, 0x8

    invoke-static {v4, v0}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ﾞ([BI)J

    move-result-wide v0

    const/4 v2, 0x1

    aput-wide v0, v6, v2

    .line 205
    :cond_5
    invoke-virtual {p0, p1, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(Z[J[J)V

    .line 206
    return-void
.end method

.method public ˊ(Z[J[J)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine;->aEW:Z

    .line 218
    if-eqz p2, :cond_0

    .line 220
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ͺ([J)V

    .line 222
    :cond_0
    if-eqz p3, :cond_1

    .line 224
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ι([J)V

    .line 226
    :cond_1
    return-void
.end method
