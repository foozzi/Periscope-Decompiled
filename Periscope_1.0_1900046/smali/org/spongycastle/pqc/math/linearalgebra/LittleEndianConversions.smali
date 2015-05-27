.class public final Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static ʼ([II)[B
    .locals 6

    .line 190
    array-length v2, p0

    .line 191
    new-array v3, p1, [B

    .line 192
    const/4 v4, 0x0

    .line 193
    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v0, v2, -0x2

    if-gt v5, v0, :cond_0

    .line 195
    aget v0, p0, v5

    invoke-static {v0, v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->ι(I[BI)V

    .line 193
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 197
    :cond_0
    add-int/lit8 v0, v2, -0x1

    aget v0, p0, v0

    sub-int v1, p1, v4

    invoke-static {v0, v3, v4, v1}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->ᐝ(I[BII)V

    .line 198
    return-object v3
.end method

.method public static Ι([B)[I
    .locals 7

    .line 209
    array-length v0, p0

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v2, v0, 0x4

    .line 210
    array-length v0, p0

    and-int/lit8 v3, v0, 0x3

    .line 211
    new-array v4, v2, [I

    .line 213
    const/4 v5, 0x0

    .line 214
    const/4 v6, 0x0

    :goto_0
    add-int/lit8 v0, v2, -0x2

    if-gt v6, v0, :cond_0

    .line 216
    invoke-static {p0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->ᑊ([BI)I

    move-result v0

    aput v0, v4, v6

    .line 214
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 218
    :cond_0
    if-eqz v3, :cond_1

    .line 220
    add-int/lit8 v0, v2, -0x1

    invoke-static {p0, v5, v3}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->ۥ([BII)I

    move-result v1

    aput v1, v4, v0

    goto :goto_1

    .line 224
    :cond_1
    add-int/lit8 v0, v2, -0x1

    invoke-static {p0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->ᑊ([BI)I

    move-result v1

    aput v1, v4, v0

    .line 227
    :goto_1
    return-object v4
.end method

.method public static ۥ([BII)I
    .locals 4

    .line 62
    const/4 v2, 0x0

    .line 63
    add-int/lit8 v3, p2, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 65
    add-int v0, p1, v3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v1, v3, 0x8

    shl-int/2addr v0, v1

    or-int/2addr v2, v0

    .line 63
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 67
    :cond_0
    return v2
.end method

.method public static Ꮁ(I)[B
    .locals 3

    .line 99
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 100
    int-to-byte v0, p0

    const/4 v1, 0x0

    aput-byte v0, v2, v1

    .line 101
    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, v2, v1

    .line 102
    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, v2, v1

    .line 103
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, v2, v1

    .line 104
    return-object v2
.end method

.method public static ᐝ(I[BII)V
    .locals 3

    .line 134
    add-int/lit8 v2, p3, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 136
    add-int v0, p2, v2

    mul-int/lit8 v1, v2, 0x8

    ushr-int v1, p0, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 134
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public static ᑊ([BI)I
    .locals 3

    .line 44
    move v0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v2, v0, 0xff

    .line 45
    move v0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    .line 46
    move v0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v2, v0

    .line 47
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v2, v0

    .line 48
    return v2
.end method

.method public static ι(I[BI)V
    .locals 2

    .line 116
    move v0, p2

    add-int/lit8 p2, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 117
    move v0, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 118
    move v0, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 119
    move v0, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 120
    return-void
.end method
