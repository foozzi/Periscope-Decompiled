.class public Lorg/spongycastle/util/test/FixedSecureRandom;
.super Ljava/security/SecureRandom;
.source ""


# instance fields
.field private aQT:[B

.field private aQU:I

.field private aQV:I


# direct methods
.method private lv()I
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->aQT:[B

    iget v1, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->aQU:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->aQU:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public nextBytes([B)V
    .locals 4

    .line 69
    iget-object v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->aQT:[B

    iget v1, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->aQU:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->aQU:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->aQU:I

    .line 72
    return-void
.end method

.method public nextInt()I
    .locals 3

    .line 80
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->lv()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    or-int/lit8 v2, v0, 0x0

    .line 83
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->lv()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v2, v0

    .line 85
    iget v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->aQV:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 87
    iget v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->aQV:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->aQV:I

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->lv()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    .line 94
    :goto_0
    iget v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->aQV:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 96
    iget v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->aQV:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->aQV:I

    goto :goto_1

    .line 100
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->lv()I

    move-result v0

    or-int/2addr v2, v0

    .line 103
    :goto_1
    return v2
.end method

.method public nextLong()J
    .locals 5

    .line 112
    const-wide/16 v3, 0x0

    .line 114
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    .line 115
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    .line 116
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    .line 117
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    .line 118
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    .line 119
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    .line 120
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    or-long/2addr v3, v0

    .line 121
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->lv()I

    move-result v0

    int-to-long v0, v0

    or-long/2addr v3, v0

    .line 123
    return-wide v3
.end method
