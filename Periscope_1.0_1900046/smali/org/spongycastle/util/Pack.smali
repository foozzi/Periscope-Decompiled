.class public abstract Lorg/spongycastle/util/Pack;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʻ(J[BI)V
    .locals 2

    .line 79
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 80
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 81
    return-void
.end method

.method public static ʼ(J[BI)V
    .locals 2

    .line 182
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lorg/spongycastle/util/Pack;->ʿ(I[BI)V

    .line 183
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lorg/spongycastle/util/Pack;->ʿ(I[BI)V

    .line 184
    return-void
.end method

.method public static ʾ(I[BI)V
    .locals 1

    .line 32
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 33
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 34
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 35
    add-int/lit8 p2, p2, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 36
    return-void
.end method

.method public static ʿ(I[BI)V
    .locals 1

    .line 135
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 136
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 137
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 138
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 139
    return-void
.end method

.method public static ˊ([BI[I)V
    .locals 2

    .line 16
    const/4 v1, 0x0

    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_0

    .line 18
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->יִ([BI)I

    move-result v0

    aput v0, p2, v1

    .line 19
    add-int/lit8 p1, p1, 0x4

    .line 16
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public static ˎ([I[BI)V
    .locals 2

    .line 47
    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 49
    aget v0, p0, v1

    invoke-static {v0, p1, p2}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 50
    add-int/lit8 p2, p2, 0x4

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public static ˏ([I[BI)V
    .locals 2

    .line 150
    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 152
    aget v0, p0, v1

    invoke-static {v0, p1, p2}, Lorg/spongycastle/util/Pack;->ʿ(I[BI)V

    .line 153
    add-int/lit8 p2, p2, 0x4

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method public static ᐟ([BI)I
    .locals 3

    .line 101
    aget-byte v0, p0, p1

    and-int/lit16 v2, v0, 0xff

    .line 102
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    .line 103
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v2, v0

    .line 104
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v2, v0

    .line 105
    return v2
.end method

.method public static ᐡ([BI)J
    .locals 8

    .line 159
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v6

    .line 160
    add-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v7

    .line 161
    int-to-long v0, v7

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, v6

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static ⁱ([I)[B
    .locals 3

    .line 40
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v2, v0, [B

    .line 41
    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lorg/spongycastle/util/Pack;->ˎ([I[BI)V

    .line 42
    return-object v2
.end method

.method public static יִ([BI)I
    .locals 3

    .line 7
    aget-byte v0, p0, p1

    shl-int/lit8 v2, v0, 0x18

    .line 8
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v2, v0

    .line 9
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    .line 10
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v2, v0

    .line 11
    return v2
.end method

.method public static יּ([BI)J
    .locals 8

    .line 56
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->יִ([BI)I

    move-result v6

    .line 57
    add-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0}, Lorg/spongycastle/util/Pack;->יִ([BI)I

    move-result v7

    .line 58
    int-to-long v0, v6

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, v7

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static ﮃ(I)[B
    .locals 2

    .line 25
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 26
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 27
    return-object v1
.end method

.method public static ﹴ(J)[B
    .locals 2

    .line 175
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 176
    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/spongycastle/util/Pack;->ʼ(J[BI)V

    .line 177
    return-object v1
.end method
