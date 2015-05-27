.class public Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final aRu:[B


# instance fields
.field private aRm:Lorg/spongycastle/crypto/prng/EntropySource;

.field private aRn:Lorg/spongycastle/crypto/BlockCipher;

.field private aRo:I

.field private aRp:I

.field private aRq:[B

.field private aRr:[B

.field private aRs:J

.field private aRt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 148
    const-string v0, "000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRu:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;IILorg/spongycastle/crypto/prng/EntropySource;[B[B)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRs:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRt:Z

    .line 45
    iput-object p4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRm:Lorg/spongycastle/crypto/prng/EntropySource;

    .line 46
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    .line 48
    iput p2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRo:I

    .line 49
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p2

    iput v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRp:I

    .line 50
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ˊ(Lorg/spongycastle/crypto/BlockCipher;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRt:Z

    .line 52
    const/16 v0, 0x100

    if-le p3, v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested security strength is not supported by the derivation function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ˊ(Lorg/spongycastle/crypto/BlockCipher;I)I

    move-result v0

    if-ge v0, p3, :cond_1

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested security strength is not supported by block cipher and key size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    invoke-interface {p4}, Lorg/spongycastle/crypto/prng/EntropySource;->ls()I

    move-result v0

    if-ge v0, p3, :cond_2

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough entropy for security strength required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    invoke-interface {p4}, Lorg/spongycastle/crypto/prng/EntropySource;->lr()[B

    move-result-object v2

    .line 69
    invoke-direct {p0, v2, p6, p5}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ˋ([B[B[B)V

    .line 70
    return-void
.end method

.method private ˊ(Lorg/spongycastle/crypto/BlockCipher;I)I
    .locals 2

    .line 415
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ˊ(Lorg/spongycastle/crypto/BlockCipher;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa8

    if-ne p2, v0, :cond_0

    .line 417
    const/16 v0, 0x70

    return v0

    .line 419
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    return p2

    .line 424
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private ˊ(Lorg/spongycastle/crypto/prng/EntropySource;[B)V
    .locals 3

    .line 118
    invoke-interface {p1}, Lorg/spongycastle/crypto/prng/EntropySource;->lr()[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/util/Arrays;->ﹶ([B[B)[B

    move-result-object v2

    .line 120
    iget v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRp:I

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ﹶ([BI)[B

    move-result-object v2

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRq:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRr:[B

    invoke-direct {p0, v2, v0, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ˎ([B[B[B)V

    .line 124
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRs:J

    .line 125
    return-void
.end method

.method private ˊ([B[B[BI)V
    .locals 3

    .line 129
    const/4 v2, 0x0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_0

    .line 131
    aget-byte v0, p2, v2

    add-int v1, v2, p4

    aget-byte v1, p3, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method private ˊ([B[B[B[B)V
    .locals 8

    .line 285
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    .line 286
    new-array v4, v3, [B

    .line 287
    array-length v0, p4

    div-int v5, v0, v3

    .line 289
    new-array v6, v3, [B

    .line 291
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->เ([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 293
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p3, v1, v4, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 295
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    .line 297
    mul-int v0, v7, v3

    invoke-direct {p0, v6, v4, p4, v0}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ˊ([B[B[BI)V

    .line 298
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v6, v1, v4, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 295
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 301
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v4, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    return-void
.end method

.method private ˊ(Lorg/spongycastle/crypto/BlockCipher;)Z
    .locals 2

    .line 410
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DESede"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDEA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ˋ([B[B[B)V
    .locals 5

    .line 75
    invoke-static {p1, p2, p3}, Lorg/spongycastle/util/Arrays;->ˏ([B[B[B)[B

    move-result-object v2

    .line 76
    iget v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRp:I

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ﹶ([BI)[B

    move-result-object v3

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    .line 80
    iget v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRo:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRq:[B

    .line 81
    new-array v0, v4, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRr:[B

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRq:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRr:[B

    invoke-direct {p0, v3, v0, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ˎ([B[B[B)V

    .line 86
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRs:J

    .line 87
    return-void
.end method

.method private ˎ([B[B[B)V
    .locals 8

    .line 91
    array-length v0, p1

    new-array v3, v0, [B

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v4, v0, [B

    .line 94
    const/4 v5, 0x0

    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v6

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->เ([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 98
    :goto_0
    mul-int v0, v5, v6

    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 100
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ו([B)V

    .line 101
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p3, v1, v4, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 103
    array-length v0, v3

    mul-int v1, v5, v6

    sub-int/2addr v0, v1

    if-le v0, v6, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    array-length v0, v3

    mul-int v1, v5, v6

    sub-int v7, v0, v1

    .line 106
    :goto_1
    mul-int v0, v5, v6

    const/4 v1, 0x0

    invoke-static {v4, v1, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 108
    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v3, p1, v3, v0}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ˊ([B[B[BI)V

    .line 112
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    array-length v0, p2

    array-length v1, p3

    const/4 v2, 0x0

    invoke-static {v3, v0, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    return-void
.end method

.method private ו([B)V
    .locals 5

    .line 137
    const/4 v2, 0x1

    .line 138
    const/4 v3, 0x1

    :goto_0
    array-length v0, p1

    if-gt v3, v0, :cond_1

    .line 140
    array-length v0, p1

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int v4, v0, v2

    .line 141
    const/16 v0, 0xff

    if-le v4, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 142
    :goto_1
    array-length v0, p1

    sub-int/2addr v0, v3

    int-to-byte v1, v4

    aput-byte v1, p1, v0

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method private ι([BI[BI)V
    .locals 6

    .line 456
    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xfe

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 457
    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x0

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x7

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xfc

    ushr-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 458
    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xf8

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 459
    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x5

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xf0

    ushr-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 460
    add-int/lit8 v0, p4, 0x4

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xe0

    ushr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 461
    add-int/lit8 v0, p4, 0x5

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xc0

    ushr-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 462
    add-int/lit8 v0, p4, 0x6

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0x80

    ushr-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 463
    add-int/lit8 v0, p4, 0x7

    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 465
    move v4, p4

    :goto_0
    add-int/lit8 v0, p4, 0x7

    if-gt v4, v0, :cond_0

    .line 467
    aget-byte v5, p3, v4

    .line 468
    and-int/lit16 v0, v5, 0xfe

    shr-int/lit8 v1, v5, 0x1

    shr-int/lit8 v2, v5, 0x2

    xor-int/2addr v1, v2

    shr-int/lit8 v2, v5, 0x3

    xor-int/2addr v1, v2

    shr-int/lit8 v2, v5, 0x4

    xor-int/2addr v1, v2

    shr-int/lit8 v2, v5, 0x5

    xor-int/2addr v1, v2

    shr-int/lit8 v2, v5, 0x6

    xor-int/2addr v1, v2

    shr-int/lit8 v2, v5, 0x7

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p3, v4

    .line 465
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 477
    :cond_0
    return-void
.end method

.method private ﹶ([BI)[B
    .locals 18

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 213
    move-object/from16 v0, p1

    array-length v6, v0

    .line 214
    div-int/lit8 v7, p2, 0x8

    .line 216
    add-int/lit8 v0, v6, 0x8

    add-int/lit8 v8, v0, 0x1

    .line 217
    add-int v0, v8, v5

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v5

    mul-int v9, v0, v5

    .line 218
    new-array v10, v9, [B

    .line 219
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-direct {v0, v10, v6, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ﹺ([BII)V

    .line 220
    move-object/from16 v0, p0

    const/4 v1, 0x4

    invoke-direct {v0, v10, v7, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ﹺ([BII)V

    .line 221
    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v10, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    add-int/lit8 v0, v6, 0x8

    const/16 v1, -0x80

    aput-byte v1, v10, v0

    .line 225
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRo:I

    div-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v5

    new-array v11, v0, [B

    .line 226
    new-array v12, v5, [B

    .line 228
    new-array v13, v5, [B

    .line 230
    const/4 v14, 0x0

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRo:I

    div-int/lit8 v0, v0, 0x8

    new-array v15, v0, [B

    .line 232
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRu:[B

    array-length v1, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v15, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    :goto_0
    mul-int v0, v14, v5

    mul-int/lit8 v0, v0, 0x8

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRo:I

    mul-int/lit8 v2, v5, 0x8

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 236
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-direct {v0, v13, v14, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ﹺ([BII)V

    .line 237
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15, v13, v10}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ˊ([B[B[B[B)V

    .line 239
    array-length v0, v11

    mul-int v1, v14, v5

    sub-int/2addr v0, v1

    if-le v0, v5, :cond_0

    move/from16 v16, v5

    goto :goto_1

    :cond_0
    array-length v0, v11

    mul-int v1, v14, v5

    sub-int v16, v0, v1

    .line 243
    :goto_1
    mul-int v0, v14, v5

    const/4 v1, 0x0

    move/from16 v2, v16

    invoke-static {v12, v1, v11, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    add-int/lit8 v14, v14, 0x1

    .line 245
    goto :goto_0

    .line 247
    :cond_1
    new-array v0, v5, [B

    move-object/from16 v16, v0

    .line 248
    array-length v0, v15

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v11, v1, v15, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    array-length v0, v15

    move-object/from16 v1, v16

    array-length v1, v1

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-static {v11, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    div-int/lit8 v0, p2, 0x2

    new-array v11, v0, [B

    .line 253
    const/4 v14, 0x0

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object/from16 v2, p0

    invoke-virtual {v2, v15}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->เ([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 256
    :goto_2
    mul-int v0, v14, v5

    array-length v1, v11

    if-ge v0, v1, :cond_3

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v1, v16

    const/4 v2, 0x0

    move-object/from16 v3, v16

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 260
    array-length v0, v11

    mul-int v1, v14, v5

    sub-int/2addr v0, v1

    if-le v0, v5, :cond_2

    move/from16 v17, v5

    goto :goto_3

    :cond_2
    array-length v0, v11

    mul-int v1, v14, v5

    sub-int v17, v0, v1

    .line 264
    :goto_3
    mul-int v0, v14, v5

    move-object/from16 v1, v16

    const/4 v2, 0x0

    move/from16 v3, v17

    invoke-static {v1, v2, v11, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    add-int/lit8 v14, v14, 0x1

    .line 266
    goto :goto_2

    .line 268
    :cond_3
    return-object v11
.end method

.method private ﹺ([BII)V
    .locals 2

    .line 306
    add-int/lit8 v0, p3, 0x0

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 307
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 308
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 309
    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p2

    aput-byte v1, p1, v0

    .line 310
    return-void
.end method


# virtual methods
.method public ˊ([B[BZ)I
    .locals 7

    .line 333
    iget-boolean v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRt:Z

    if-eqz v0, :cond_1

    .line 335
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRs:J

    const-wide v2, 0x80000000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 337
    const/4 v0, -0x1

    return v0

    .line 340
    :cond_0
    const/16 v0, 0x200

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ʳ([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of bits per request limited to 4096"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRs:J

    const-wide v2, 0x800000000000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 349
    const/4 v0, -0x1

    return v0

    .line 352
    :cond_2
    const v0, 0x8000

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ʳ([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of bits per request limited to 262144"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_3
    if-eqz p3, :cond_4

    .line 360
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRm:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ˊ(Lorg/spongycastle/crypto/prng/EntropySource;[B)V

    .line 361
    const/4 p2, 0x0

    .line 364
    :cond_4
    if-eqz p2, :cond_5

    .line 366
    iget v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRp:I

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ﹶ([BI)[B

    move-result-object p2

    .line 367
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRq:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRr:[B

    invoke-direct {p0, p2, v0, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ˎ([B[B[B)V

    goto :goto_0

    .line 371
    :cond_5
    iget v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRp:I

    new-array p2, v0, [B

    .line 374
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRr:[B

    array-length v0, v0

    new-array v4, v0, [B

    .line 376
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRq:[B

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->เ([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 378
    const/4 v5, 0x0

    :goto_1
    array-length v0, p1

    array-length v1, v4

    div-int/2addr v0, v1

    if-ge v5, v0, :cond_7

    .line 380
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRr:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ו([B)V

    .line 382
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRn:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRr:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v4, v3}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 384
    array-length v0, p1

    array-length v1, v4

    mul-int/2addr v1, v5

    sub-int/2addr v0, v1

    array-length v1, v4

    if-le v0, v1, :cond_6

    array-length v6, v4

    goto :goto_2

    :cond_6
    array-length v0, p1

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRr:[B

    array-length v1, v1

    mul-int/2addr v1, v5

    sub-int v6, v0, v1

    .line 388
    :goto_2
    array-length v0, v4

    mul-int/2addr v0, v5

    const/4 v1, 0x0

    invoke-static {v4, v1, p1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 391
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRq:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRr:[B

    invoke-direct {p0, p2, v0, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ˎ([B[B[B)V

    .line 393
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRs:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRs:J

    .line 395
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public ۦ([B)V
    .locals 1

    .line 405
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRm:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ˊ(Lorg/spongycastle/crypto/prng/EntropySource;[B)V

    .line 406
    return-void
.end method

.method เ([B)[B
    .locals 3

    .line 429
    iget-boolean v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->aRt:Z

    if-eqz v0, :cond_0

    .line 432
    const/16 v0, 0x18

    new-array v2, v0, [B

    .line 434
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ι([BI[BI)V

    .line 435
    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v2, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ι([BI[BI)V

    .line 436
    const/16 v0, 0xe

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v2, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->ι([BI[BI)V

    .line 438
    return-object v2

    .line 442
    :cond_0
    return-object p1
.end method
