.class public Lorg/spongycastle/crypto/prng/FixedSecureRandom;
.super Ljava/security/SecureRandom;
.source ""


# instance fields
.field private aQT:[B

.field private aQU:I

.field private aQV:I


# direct methods
.method private lv()I
    .locals 3

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->aQT:[B

    iget v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->aQU:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->aQU:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1

    .line 79
    new-array v0, p1, [B

    .line 81
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextBytes([B)V

    .line 83
    return-object v0
.end method

.method public nextBytes([B)V
    .locals 4

    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->aQT:[B

    iget v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->aQU:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->aQU:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->aQU:I

    .line 75
    return-void
.end method

.method public nextInt()I
    .locals 3

    .line 92
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->lv()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    or-int/lit8 v2, v0, 0x0

    .line 95
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->lv()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v2, v0

    .line 97
    iget v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->aQV:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 99
    iget v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->aQV:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->aQV:I

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->lv()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    .line 106
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->aQV:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 108
    iget v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->aQV:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->aQV:I

    goto :goto_1

    .line 112
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->lv()I

    move-result v0

    or-int/2addr v2, v0

    .line 115
    :goto_1
    return v2
.end method

.method public nextLong()J
    .locals 5

    .line 124
    const-wide/16 v3, 0x0

    .line 126
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    .line 127
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    .line 128
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    .line 129
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    .line 130
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    .line 131
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    .line 132
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    .line 133
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    or-long/2addr v3, v0

    .line 135
    return-wide v3
.end method
