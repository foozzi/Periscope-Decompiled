.class public Lorg/spongycastle/crypto/digests/SHA3Digest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;


# static fields
.field private static aGO:[J

.field private static aGP:[I


# instance fields
.field private aGQ:[B

.field private aGR:[B

.field private aGS:I

.field private aGT:I

.field private aGU:I

.field private aGV:Z

.field private aGW:I

.field private aGX:[B

.field private aGY:[B

.field aGZ:[J

.field aHa:[J

.field aHb:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    invoke-static {}, Lorg/spongycastle/crypto/digests/SHA3Digest;->iX()[J

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGO:[J

    .line 16
    invoke-static {}, Lorg/spongycastle/crypto/digests/SHA3Digest;->iY()[I

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGP:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGQ:[B

    .line 78
    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    .line 460
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGZ:[J

    .line 494
    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aHa:[J

    .line 509
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aHb:[J

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->init(I)V

    .line 98
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGQ:[B

    .line 78
    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    .line 460
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGZ:[J

    .line 494
    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aHa:[J

    .line 509
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aHb:[J

    .line 102
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->init(I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHA3Digest;)V
    .locals 5

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGQ:[B

    .line 78
    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    .line 460
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGZ:[J

    .line 494
    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aHa:[J

    .line 509
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aHb:[J

    .line 106
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGQ:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGQ:[B

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGQ:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    .line 109
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    .line 110
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGU:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGU:I

    .line 111
    iget-boolean v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGV:Z

    iput-boolean v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGV:Z

    .line 112
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGW:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGW:I

    .line 113
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGX:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGX:[B

    .line 114
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGY:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGY:[B

    .line 115
    return-void
.end method

.method private static iX()[J
    .locals 9

    .line 20
    const/16 v0, 0x18

    new-array v4, v0, [J

    .line 21
    const/4 v0, 0x1

    new-array v5, v0, [B

    .line 23
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-byte v0, v5, v1

    .line 26
    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0x18

    if-ge v6, v0, :cond_2

    .line 28
    const-wide/16 v0, 0x0

    aput-wide v0, v4, v6

    .line 29
    const/4 v7, 0x0

    :goto_1
    const/4 v0, 0x7

    if-ge v7, v0, :cond_1

    .line 31
    const/4 v0, 0x1

    shl-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 32
    invoke-static {v5}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ʴ([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    aget-wide v0, v4, v6

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v8

    xor-long/2addr v0, v2

    aput-wide v0, v4, v6

    .line 29
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 26
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 39
    :cond_2
    return-object v4
.end method

.method private static iY()[I
    .locals 9

    .line 59
    const/16 v0, 0x19

    new-array v3, v0, [I

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 63
    const/4 v4, 0x1

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0x18

    if-ge v6, v0, :cond_0

    .line 67
    rem-int/lit8 v0, v4, 0x5

    rem-int/lit8 v1, v5, 0x5

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    add-int/lit8 v1, v6, 0x1

    add-int/lit8 v2, v6, 0x2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    rem-int/lit8 v1, v1, 0x40

    aput v1, v3, v0

    .line 68
    mul-int/lit8 v0, v4, 0x0

    mul-int/lit8 v1, v5, 0x1

    add-int/2addr v0, v1

    rem-int/lit8 v7, v0, 0x5

    .line 69
    mul-int/lit8 v0, v4, 0x2

    mul-int/lit8 v1, v5, 0x3

    add-int/2addr v0, v1

    rem-int/lit8 v8, v0, 0x5

    .line 70
    move v4, v7

    .line 71
    move v5, v8

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return-object v3
.end method

.method private iZ()V
    .locals 4

    .line 232
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGQ:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    div-int/lit8 v2, v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˎ([B[BI)V

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    .line 235
    return-void
.end method

.method private init(I)V
    .locals 2

    .line 165
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 169
    :sswitch_0
    const/16 v0, 0x400

    const/16 v1, 0x240

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ﯨ(II)V

    .line 170
    goto :goto_1

    .line 172
    :sswitch_1
    const/16 v0, 0x480

    const/16 v1, 0x1c0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ﯨ(II)V

    .line 173
    goto :goto_1

    .line 175
    :sswitch_2
    const/16 v0, 0x440

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ﯨ(II)V

    .line 176
    goto :goto_1

    .line 178
    :sswitch_3
    const/16 v0, 0x340

    const/16 v1, 0x300

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ﯨ(II)V

    .line 179
    goto :goto_1

    .line 181
    :sswitch_4
    const/16 v0, 0x240

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ﯨ(II)V

    .line 182
    goto :goto_1

    .line 184
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength must be one of 224, 256, 384, or 512."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xe0 -> :sswitch_1
        0x100 -> :sswitch_2
        0x120 -> :sswitch_0
        0x180 -> :sswitch_3
        0x200 -> :sswitch_4
    .end sparse-switch
.end method

.method private ja()V
    .locals 5

    .line 298
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    if-ne v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    rem-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 301
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->iZ()V

    .line 302
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    div-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ᵥ(II)V

    goto :goto_0

    .line 306
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    div-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ᵥ(II)V

    .line 307
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    rem-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 309
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 310
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->iZ()V

    .line 316
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    const/16 v1, 0x400

    if-ne v0, v1, :cond_1

    .line 318
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGQ:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˎ([B[B)V

    .line 319
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGW:I

    goto :goto_1

    .line 324
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGQ:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    div-int/lit8 v2, v2, 0x40

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˏ([B[BI)V

    .line 325
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGW:I

    .line 330
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGV:Z

    .line 331
    return-void
.end method

.method private static ʴ([B)Z
    .locals 3

    .line 44
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 45
    :goto_0
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 47
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x1

    xor-int/lit8 v0, v0, 0x71

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    goto :goto_1

    .line 51
    :cond_1
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    .line 54
    :goto_1
    return v2
.end method

.method private ˆ([B)V
    .locals 3

    .line 408
    array-length v0, p1

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [J

    .line 410
    invoke-direct {p0, v2, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˊ([J[B)V

    .line 414
    invoke-direct {p0, v2}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˊ([J)V

    .line 418
    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˊ([B[J)V

    .line 419
    return-void
.end method

.method private ˊ([BIJ)V
    .locals 6

    .line 190
    const-wide/16 v0, 0x8

    rem-long v0, p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˋ([BIJ)V

    goto :goto_0

    .line 196
    :cond_0
    const-wide/16 v0, 0x8

    rem-long v0, p3, v0

    sub-long v0, p3, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˋ([BIJ)V

    .line 198
    const/4 v0, 0x1

    new-array v5, v0, [B

    .line 200
    const-wide/16 v0, 0x8

    div-long v0, p3, v0

    long-to-int v0, v0

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    const-wide/16 v1, 0x8

    rem-long v1, p3, v1

    const-wide/16 v3, 0x8

    sub-long v1, v3, v1

    long-to-int v1, v1

    shr-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v5, v1

    .line 201
    const-wide/16 v0, 0x8

    rem-long v0, p3, v0

    invoke-direct {p0, v5, p2, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˋ([BIJ)V

    .line 203
    :goto_0
    return-void
.end method

.method private ˊ([B[J)V
    .locals 8

    .line 396
    const/4 v5, 0x0

    :goto_0
    const/16 v0, 0x19

    if-ge v5, v0, :cond_1

    .line 398
    mul-int/lit8 v6, v5, 0x8

    .line 399
    const/4 v7, 0x0

    :goto_1
    const/16 v0, 0x8

    if-ge v7, v0, :cond_0

    .line 401
    add-int v0, v6, v7

    aget-wide v1, p2, v5

    mul-int/lit8 v3, v7, 0x8

    ushr-long/2addr v1, v3

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 399
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 396
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 404
    :cond_1
    return-void
.end method

.method private ˊ([J)V
    .locals 2

    .line 439
    const/4 v1, 0x0

    :goto_0
    const/16 v0, 0x18

    if-ge v1, v0, :cond_0

    .line 443
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˋ([J)V

    .line 446
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˎ([J)V

    .line 449
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˏ([J)V

    .line 452
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ᐝ([J)V

    .line 455
    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˊ([JI)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    :cond_0
    return-void
.end method

.method private ˊ([JI)V
    .locals 4

    .line 528
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    sget-object v2, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGO:[J

    aget-wide v2, v2, p2

    xor-long/2addr v0, v2

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    .line 529
    return-void
.end method

.method private ˊ([J[B)V
    .locals 9

    .line 383
    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0x19

    if-ge v6, v0, :cond_1

    .line 385
    const-wide/16 v0, 0x0

    aput-wide v0, p1, v6

    .line 386
    mul-int/lit8 v7, v6, 0x8

    .line 387
    const/4 v8, 0x0

    :goto_1
    const/16 v0, 0x8

    if-ge v8, v0, :cond_0

    .line 389
    aget-wide v0, p1, v6

    add-int v2, v7, v8

    aget-byte v2, p2, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    mul-int/lit8 v4, v8, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aput-wide v0, p1, v6

    .line 387
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 383
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 392
    :cond_1
    return-void
.end method

.method private ˋ([BIJ)V
    .locals 13

    .line 241
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb with odd length queue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGV:Z

    if-eqz v0, :cond_1

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb while squeezing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    const-wide/16 v4, 0x0

    .line 251
    :goto_0
    cmp-long v0, v4, p3

    if-gez v0, :cond_7

    .line 253
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    if-nez v0, :cond_3

    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_3

    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    int-to-long v0, v0

    sub-long v0, p3, v0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_3

    .line 255
    sub-long v0, p3, v4

    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    int-to-long v2, v2

    div-long v8, v0, v2

    .line 257
    const-wide/16 v6, 0x0

    :goto_1
    cmp-long v0, v6, v8

    if-gez v0, :cond_2

    .line 259
    int-to-long v0, p2

    const-wide/16 v2, 0x8

    div-long v2, v4, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGX:[B

    array-length v2, v2

    int-to-long v2, v2

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGX:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGX:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGQ:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGX:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGX:[B

    array-length v2, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˎ([B[BI)V

    .line 257
    const-wide/16 v0, 0x1

    add-long/2addr v6, v0

    goto :goto_1

    .line 266
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    int-to-long v0, v0

    mul-long/2addr v0, v8

    add-long/2addr v4, v0

    goto/16 :goto_0

    .line 270
    :cond_3
    sub-long v0, p3, v4

    long-to-int v10, v0

    .line 271
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    add-int/2addr v0, v10

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    if-le v0, v1, :cond_4

    .line 273
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    sub-int v10, v0, v1

    .line 275
    :cond_4
    rem-int/lit8 v11, v10, 0x8

    .line 276
    sub-int/2addr v10, v11

    .line 277
    const-wide/16 v0, 0x8

    div-long v0, v4, v0

    long-to-int v0, v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    div-int/lit8 v2, v2, 0x8

    div-int/lit8 v3, v10, 0x8

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    add-int/2addr v0, v10

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    .line 280
    int-to-long v0, v10

    add-long/2addr v4, v0

    .line 281
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    if-ne v0, v1, :cond_5

    .line 283
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->iZ()V

    .line 285
    :cond_5
    if-lez v11, :cond_6

    .line 287
    const/4 v0, 0x1

    shl-int/2addr v0, v11

    add-int/lit8 v12, v0, -0x1

    .line 288
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    div-int/lit8 v1, v1, 0x8

    const-wide/16 v2, 0x8

    div-long v2, v4, v2

    long-to-int v2, v2

    add-int/2addr v2, p2

    aget-byte v2, p1, v2

    and-int/2addr v2, v12

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 289
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    add-int/2addr v0, v11

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    .line 290
    int-to-long v0, v11

    add-long/2addr v4, v0

    .line 292
    :cond_6
    goto/16 :goto_0

    .line 294
    :cond_7
    return-void
.end method

.method private ˋ([B[BI)V
    .locals 3

    .line 425
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    .line 427
    aget-byte v0, p1, v2

    aget-byte v1, p2, v2

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˆ([B)V

    .line 431
    return-void
.end method

.method private ˋ([J)V
    .locals 9

    .line 464
    const/4 v5, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v5, v0, :cond_1

    .line 466
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGZ:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v5

    .line 467
    const/4 v6, 0x0

    :goto_1
    const/4 v0, 0x5

    if-ge v6, v0, :cond_0

    .line 469
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGZ:[J

    aget-wide v1, v0, v5

    mul-int/lit8 v3, v6, 0x5

    add-int/2addr v3, v5

    aget-wide v3, p1, v3

    xor-long/2addr v1, v3

    aput-wide v1, v0, v5

    .line 467
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 464
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 472
    :cond_1
    const/4 v5, 0x0

    :goto_2
    const/4 v0, 0x5

    if-ge v5, v0, :cond_3

    .line 474
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGZ:[J

    add-int/lit8 v1, v5, 0x1

    rem-int/lit8 v1, v1, 0x5

    aget-wide v0, v0, v1

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGZ:[J

    add-int/lit8 v3, v5, 0x1

    rem-int/lit8 v3, v3, 0x5

    aget-wide v2, v2, v3

    const/16 v4, 0x3f

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGZ:[J

    add-int/lit8 v3, v5, 0x4

    rem-int/lit8 v3, v3, 0x5

    aget-wide v2, v2, v3

    xor-long v6, v0, v2

    .line 475
    const/4 v8, 0x0

    :goto_3
    const/4 v0, 0x5

    if-ge v8, v0, :cond_2

    .line 477
    mul-int/lit8 v0, v8, 0x5

    add-int/2addr v0, v5

    aget-wide v1, p1, v0

    xor-long/2addr v1, v6

    aput-wide v1, p1, v0

    .line 475
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 472
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 480
    :cond_3
    return-void
.end method

.method private ˎ([BIJ)V
    .locals 7

    .line 338
    iget-boolean v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGV:Z

    if-nez v0, :cond_0

    .line 340
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ja()V

    .line 342
    :cond_0
    const-wide/16 v0, 0x8

    rem-long v0, p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 344
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "outputLength not a multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1
    const-wide/16 v4, 0x0

    .line 348
    :goto_0
    cmp-long v0, v4, p3

    if-gez v0, :cond_5

    .line 350
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGW:I

    if-nez v0, :cond_3

    .line 352
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGQ:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˆ([B)V

    .line 354
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    const/16 v1, 0x400

    if-ne v0, v1, :cond_2

    .line 356
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGQ:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˎ([B[B)V

    .line 357
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGW:I

    goto :goto_1

    .line 362
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGQ:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    div-int/lit8 v2, v2, 0x40

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˏ([B[BI)V

    .line 363
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGW:I

    .line 369
    :cond_3
    :goto_1
    iget v6, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGW:I

    .line 370
    int-to-long v0, v6

    sub-long v2, p3, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 372
    sub-long v0, p3, v4

    long-to-int v6, v0

    .line 375
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGW:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    const-wide/16 v2, 0x8

    div-long v2, v4, v2

    long-to-int v2, v2

    add-int/2addr v2, p2

    div-int/lit8 v3, v6, 0x8

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGW:I

    sub-int/2addr v0, v6

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGW:I

    .line 377
    int-to-long v0, v6

    add-long/2addr v4, v0

    goto/16 :goto_0

    .line 379
    :cond_5
    return-void
.end method

.method private ˎ([B[B)V
    .locals 3

    .line 539
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-static {p1, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    return-void
.end method

.method private ˎ([B[BI)V
    .locals 0

    .line 533
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˋ([B[BI)V

    .line 534
    return-void
.end method

.method private ˎ([J)V
    .locals 9

    .line 484
    const/4 v6, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_2

    .line 486
    const/4 v7, 0x0

    :goto_1
    const/4 v0, 0x5

    if-ge v7, v0, :cond_1

    .line 488
    mul-int/lit8 v0, v7, 0x5

    add-int v8, v6, v0

    .line 489
    sget-object v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGP:[I

    aget v0, v0, v8

    if-eqz v0, :cond_0

    aget-wide v0, p1, v8

    sget-object v2, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGP:[I

    aget v2, v2, v8

    shl-long/2addr v0, v2

    aget-wide v2, p1, v8

    sget-object v4, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGP:[I

    aget v4, v4, v8

    rsub-int/lit8 v4, v4, 0x40

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    goto :goto_2

    :cond_0
    aget-wide v0, p1, v8

    :goto_2
    aput-wide v0, p1, v8

    .line 486
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 484
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 492
    :cond_2
    return-void
.end method

.method private ˏ([B[BI)V
    .locals 3

    .line 545
    mul-int/lit8 v0, p3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    return-void
.end method

.method private ˏ([J)V
    .locals 6

    .line 498
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aHa:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aHa:[J

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    const/4 v4, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v4, v0, :cond_1

    .line 502
    const/4 v5, 0x0

    :goto_1
    const/4 v0, 0x5

    if-ge v5, v0, :cond_0

    .line 504
    mul-int/lit8 v0, v4, 0x2

    mul-int/lit8 v1, v5, 0x3

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aHa:[J

    mul-int/lit8 v2, v5, 0x5

    add-int/2addr v2, v4

    aget-wide v1, v1, v2

    aput-wide v1, p1, v0

    .line 502
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 500
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 507
    :cond_1
    return-void
.end method

.method private ᐝ([J)V
    .locals 9

    .line 513
    const/4 v7, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v7, v0, :cond_2

    .line 515
    const/4 v8, 0x0

    :goto_1
    const/4 v0, 0x5

    if-ge v8, v0, :cond_0

    .line 517
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aHb:[J

    mul-int/lit8 v1, v7, 0x5

    add-int/2addr v1, v8

    aget-wide v1, p1, v1

    add-int/lit8 v3, v8, 0x1

    rem-int/lit8 v3, v3, 0x5

    mul-int/lit8 v4, v7, 0x5

    add-int/2addr v3, v4

    aget-wide v3, p1, v3

    const-wide/16 v5, -0x1

    xor-long/2addr v3, v5

    add-int/lit8 v5, v8, 0x2

    rem-int/lit8 v5, v5, 0x5

    mul-int/lit8 v6, v7, 0x5

    add-int/2addr v5, v6

    aget-wide v5, p1, v5

    and-long/2addr v3, v5

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 515
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 519
    :cond_0
    const/4 v8, 0x0

    :goto_2
    const/4 v0, 0x5

    if-ge v8, v0, :cond_1

    .line 521
    mul-int/lit8 v0, v7, 0x5

    add-int/2addr v0, v8

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aHb:[J

    aget-wide v1, v1, v8

    aput-wide v1, p1, v0

    .line 519
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 513
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 524
    :cond_2
    return-void
.end method

.method private ᵥ(II)V
    .locals 3

    .line 89
    move v2, p1

    :goto_0
    add-int v0, p1, p2

    if-eq v2, v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method private ﯨ(II)V
    .locals 2

    .line 207
    add-int v0, p1, p2

    const/16 v1, 0x640

    if-eq v0, v1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "rate + capacity != 1600"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    if-lez p1, :cond_1

    const/16 v0, 0x640

    if-ge p1, v0, :cond_1

    rem-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_2

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid rate value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_2
    iput p1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGU:I

    .line 220
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGQ:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 221
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGR:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGT:I

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGV:Z

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGW:I

    .line 225
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGU:I

    .line 226
    div-int/lit8 v0, p1, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGX:[B

    .line 227
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGY:[B

    .line 228
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    .line 141
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGU:I

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˎ([BIJ)V

    .line 143
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->reset()V

    .line 145
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->iJ()I

    move-result v0

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHA3-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iJ()I
    .locals 2

    .line 124
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGU:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public iM()I
    .locals 2

    .line 160
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGS:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 1

    .line 150
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGU:I

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->init(I)V

    .line 151
    return-void
.end method

.method public update(B)V
    .locals 4

    .line 129
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGY:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 131
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->aGY:[B

    const/4 v1, 0x0

    const-wide/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˊ([BIJ)V

    .line 132
    return-void
.end method

.method public update([BII)V
    .locals 4

    .line 136
    int-to-long v0, p3

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->ˊ([BIJ)V

    .line 137
    return-void
.end method
