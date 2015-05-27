.class public Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʌ(I)[B
    .locals 3

    .line 16
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 18
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v2, v1

    .line 19
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, v2, v1

    .line 20
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, v2, v1

    .line 21
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, v2, v1

    .line 22
    return-object v2
.end method

.method public ˋ([[B)[B
    .locals 6

    .line 63
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v1, v1

    mul-int/2addr v0, v1

    new-array v3, v0, [B

    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v5, 0x0

    :goto_0
    array-length v0, p1

    if-ge v5, v0, :cond_0

    .line 67
    aget-object v0, p1, v5

    aget-object v1, p1, v5

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    aget-object v0, p1, v5

    array-length v0, v0

    add-int/2addr v4, v0

    .line 65
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-object v3
.end method

.method public ᐠ([BI)I
    .locals 3

    .line 49
    move v0, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    move v1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    move v1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method
