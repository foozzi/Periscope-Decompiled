.class abstract Lorg/spongycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final aPF:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->km()[I

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->aPF:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static km()[I
    .locals 6

    .line 14
    const/16 v0, 0x100

    new-array v2, v0, [I

    .line 16
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge v3, v0, :cond_2

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x7

    :goto_1
    if-ltz v5, :cond_1

    .line 21
    const/4 v0, 0x1

    shl-int/2addr v0, v5

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    .line 23
    rsub-int/lit8 v0, v5, 0x7

    const/high16 v1, -0x1f000000

    ushr-int v0, v1, v0

    xor-int/2addr v4, v0

    .line 19
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 26
    :cond_1
    aput v4, v2, v3

    .line 16
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    :cond_2
    return-object v2
.end method

.method static kn()[I
    .locals 3

    .line 43
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 44
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 45
    return-object v2
.end method

.method static ʻ([I[I)V
    .locals 2

    .line 432
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 433
    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p0, v1

    .line 434
    const/4 v0, 0x2

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x2

    aput v0, p0, v1

    .line 435
    const/4 v0, 0x3

    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x3

    aput v0, p0, v1

    .line 436
    return-void
.end method

.method static ʽ([I)I
    .locals 4

    .line 287
    const/4 v0, 0x0

    aget v2, p0, v0

    .line 288
    ushr-int/lit8 v0, v2, 0x1

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 289
    shl-int/lit8 v3, v2, 0x1f

    .line 290
    const/4 v0, 0x1

    aget v2, p0, v0

    .line 291
    ushr-int/lit8 v0, v2, 0x1

    or-int/2addr v0, v3

    const/4 v1, 0x1

    aput v0, p0, v1

    .line 292
    shl-int/lit8 v3, v2, 0x1f

    .line 293
    const/4 v0, 0x2

    aget v2, p0, v0

    .line 294
    ushr-int/lit8 v0, v2, 0x1

    or-int/2addr v0, v3

    const/4 v1, 0x2

    aput v0, p0, v1

    .line 295
    shl-int/lit8 v3, v2, 0x1f

    .line 296
    const/4 v0, 0x3

    aget v2, p0, v0

    .line 297
    ushr-int/lit8 v0, v2, 0x1

    or-int/2addr v0, v3

    const/4 v1, 0x3

    aput v0, p0, v1

    .line 298
    shl-int/lit8 v0, v2, 0x1f

    return v0
.end method

.method static ʾ([B[B)V
    .locals 3

    .line 398
    const/4 v2, 0x0

    .line 401
    :cond_0
    aget-byte v0, p0, v2

    aget-byte v1, p1, v2

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    .line 402
    aget-byte v0, p0, v2

    aget-byte v1, p1, v2

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    .line 403
    aget-byte v0, p0, v2

    aget-byte v1, p1, v2

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    .line 404
    aget-byte v0, p0, v2

    aget-byte v1, p1, v2

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    .line 406
    const/16 v0, 0x10

    if-lt v2, v0, :cond_0

    .line 407
    return-void
.end method

.method static ˊ([II[I)I
    .locals 5

    .line 382
    const/4 v0, 0x0

    aget v2, p0, v0

    rsub-int/lit8 v3, p1, 0x20

    .line 383
    ushr-int v0, v2, p1

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 384
    shl-int v4, v2, v3

    .line 385
    const/4 v0, 0x1

    aget v2, p0, v0

    .line 386
    ushr-int v0, v2, p1

    or-int/2addr v0, v4

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 387
    shl-int v4, v2, v3

    .line 388
    const/4 v0, 0x2

    aget v2, p0, v0

    .line 389
    ushr-int v0, v2, p1

    or-int/2addr v0, v4

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 390
    shl-int v4, v2, v3

    .line 391
    const/4 v0, 0x3

    aget v2, p0, v0

    .line 392
    ushr-int v0, v2, p1

    or-int/2addr v0, v4

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 393
    shl-int v0, v2, v3

    return v0
.end method

.method static ˊ([I[B)V
    .locals 1

    .line 64
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/spongycastle/util/Pack;->ˎ([I[BI)V

    .line 65
    return-void
.end method

.method static ˊ([I[I[I)V
    .locals 2

    .line 440
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 441
    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 442
    const/4 v0, 0x2

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 443
    const/4 v0, 0x3

    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 444
    return-void
.end method

.method static ˋ([B[I)V
    .locals 1

    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/spongycastle/util/Pack;->ˊ([BI[I)V

    .line 89
    return-void
.end method

.method static ˋ([I[I)V
    .locals 8

    .line 130
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->י([I)[I

    move-result-object v3

    .line 131
    const/4 v0, 0x4

    new-array v4, v0, [I

    .line 133
    const/4 v5, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge v5, v0, :cond_3

    .line 135
    aget v6, p1, v5

    .line 136
    const/16 v7, 0x1f

    :goto_1
    if-ltz v7, :cond_2

    .line 138
    const/4 v0, 0x1

    shl-int/2addr v0, v7

    and-int/2addr v0, v6

    if-eqz v0, :cond_0

    .line 140
    invoke-static {v4, v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ʻ([I[I)V

    .line 143
    :cond_0
    invoke-static {v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ʽ([I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x0

    aget v0, v3, v0

    const/high16 v1, -0x1f000000

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 136
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 133
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v4, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    return-void
.end method

.method static ˎ([I[I)V
    .locals 2

    .line 190
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ᐝ([I[I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x0

    aget v0, p1, v0

    const/high16 v1, -0x1f000000

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 194
    :cond_0
    return-void
.end method

.method static ˏ([I[I)V
    .locals 4

    .line 210
    const/16 v0, 0x8

    invoke-static {p0, v0, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˊ([II[I)I

    move-result v3

    .line 211
    const/4 v0, 0x0

    aget v0, p1, v0

    sget-object v1, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->aPF:[I

    ushr-int/lit8 v2, v3, 0x18

    aget v1, v1, v2

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 212
    return-void
.end method

.method static ᐝ([I[I)I
    .locals 4

    .line 312
    const/4 v0, 0x0

    aget v2, p0, v0

    .line 313
    ushr-int/lit8 v0, v2, 0x1

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 314
    shl-int/lit8 v3, v2, 0x1f

    .line 315
    const/4 v0, 0x1

    aget v2, p0, v0

    .line 316
    ushr-int/lit8 v0, v2, 0x1

    or-int/2addr v0, v3

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 317
    shl-int/lit8 v3, v2, 0x1f

    .line 318
    const/4 v0, 0x2

    aget v2, p0, v0

    .line 319
    ushr-int/lit8 v0, v2, 0x1

    or-int/2addr v0, v3

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 320
    shl-int/lit8 v3, v2, 0x1f

    .line 321
    const/4 v0, 0x3

    aget v2, p0, v0

    .line 322
    ushr-int/lit8 v0, v2, 0x1

    or-int/2addr v0, v3

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 323
    shl-int/lit8 v0, v2, 0x1f

    return v0
.end method

.method static ᵋ([B)[I
    .locals 2

    .line 81
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 82
    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->ˊ([BI[I)V

    .line 83
    return-object v1
.end method

.method static ᵗ([B)B
    .locals 5

    .line 225
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 228
    :cond_0
    aget-byte v0, p0, v2

    and-int/lit16 v4, v0, 0xff

    .line 229
    move v0, v2

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v1, v4, 0x1

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 230
    and-int/lit8 v0, v4, 0x1

    shl-int/lit8 v3, v0, 0x7

    .line 231
    aget-byte v0, p0, v2

    and-int/lit16 v4, v0, 0xff

    .line 232
    move v0, v2

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v1, v4, 0x1

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 233
    and-int/lit8 v0, v4, 0x1

    shl-int/lit8 v3, v0, 0x7

    .line 234
    aget-byte v0, p0, v2

    and-int/lit16 v4, v0, 0xff

    .line 235
    move v0, v2

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v1, v4, 0x1

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 236
    and-int/lit8 v0, v4, 0x1

    shl-int/lit8 v3, v0, 0x7

    .line 237
    aget-byte v0, p0, v2

    and-int/lit16 v4, v0, 0xff

    .line 238
    move v0, v2

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v1, v4, 0x1

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 239
    and-int/lit8 v0, v4, 0x1

    shl-int/lit8 v3, v0, 0x7

    .line 241
    const/16 v0, 0x10

    if-lt v2, v0, :cond_0

    .line 242
    int-to-byte v0, v3

    return v0
.end method

.method static ι([B[B)V
    .locals 8

    .line 105
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v3

    .line 106
    const/16 v0, 0x10

    new-array v4, v0, [B

    .line 108
    const/4 v5, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge v5, v0, :cond_3

    .line 110
    aget-byte v6, p1, v5

    .line 111
    const/4 v7, 0x7

    :goto_1
    if-ltz v7, :cond_2

    .line 113
    const/4 v0, 0x1

    shl-int/2addr v0, v7

    and-int/2addr v0, v6

    if-eqz v0, :cond_0

    .line 115
    invoke-static {v4, v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ʾ([B[B)V

    .line 118
    :cond_0
    invoke-static {v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ᵗ([B)B

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const/4 v0, 0x0

    aget-byte v0, v3, v0

    xor-int/lit8 v0, v0, -0x1f

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v3, v1

    .line 111
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 108
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 125
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v4, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    return-void
.end method
