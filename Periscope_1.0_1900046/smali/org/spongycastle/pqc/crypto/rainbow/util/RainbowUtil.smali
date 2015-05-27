.class public Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals([S[S)Z
    .locals 4

    .line 176
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 178
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    const/4 v2, 0x1

    .line 181
    array-length v0, p0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 183
    aget-short v0, p0, v3

    aget-short v1, p1, v3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    and-int/2addr v2, v0

    .line 181
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 185
    :cond_2
    return v2
.end method

.method public static ˊ([[[S[[[S)Z
    .locals 4

    .line 218
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 220
    const/4 v0, 0x0

    return v0

    .line 222
    :cond_0
    const/4 v2, 0x1

    .line 223
    array-length v0, p0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 225
    aget-object v0, p0, v3

    aget-object v1, p1, v3

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˋ([[S[[S)Z

    move-result v0

    and-int/2addr v2, v0

    .line 223
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 227
    :cond_1
    return v2
.end method

.method public static ˊ([[[B)[[[S
    .locals 9

    .line 75
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    array-length v1, v1

    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[S

    .line 76
    const/4 v6, 0x0

    :goto_0
    array-length v0, p0

    if-ge v6, v0, :cond_2

    .line 78
    const/4 v7, 0x0

    :goto_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    array-length v0, v0

    if-ge v7, v0, :cond_1

    .line 80
    const/4 v8, 0x0

    :goto_2
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 82
    aget-object v0, v5, v6

    aget-object v0, v0, v7

    aget-object v1, p0, v6

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v0, v8

    .line 80
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 78
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 76
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 86
    :cond_2
    return-object v5
.end method

.method public static ˋ([[S[[S)Z
    .locals 4

    .line 197
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 199
    const/4 v0, 0x0

    return v0

    .line 201
    :cond_0
    const/4 v2, 0x1

    .line 202
    array-length v0, p0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 204
    aget-object v0, p0, v3

    aget-object v1, p1, v3

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result v0

    and-int/2addr v2, v0

    .line 202
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 206
    :cond_1
    return v2
.end method

.method public static ˋ([[S)[[B
    .locals 7

    .line 133
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    .line 134
    const/4 v5, 0x0

    :goto_0
    array-length v0, p0

    if-ge v5, v0, :cond_1

    .line 136
    const/4 v6, 0x0

    :goto_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 138
    aget-object v0, v4, v5

    aget-object v1, p0, v5

    aget-short v1, v1, v6

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 136
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 134
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 141
    :cond_1
    return-object v4
.end method

.method public static ˋ([[[S)[[[B
    .locals 9

    .line 153
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    array-length v1, v1

    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[B

    .line 154
    const/4 v6, 0x0

    :goto_0
    array-length v0, p0

    if-ge v6, v0, :cond_2

    .line 156
    const/4 v7, 0x0

    :goto_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    array-length v0, v0

    if-ge v7, v0, :cond_1

    .line 158
    const/4 v8, 0x0

    :goto_2
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 160
    aget-object v0, v5, v6

    aget-object v0, v0, v7

    aget-object v1, p0, v6

    aget-object v1, v1, v7

    aget-short v1, v1, v8

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 158
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 156
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 154
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 164
    :cond_2
    return-object v5
.end method

.method public static ˎ([[B)[[S
    .locals 7

    .line 55
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[S

    .line 56
    const/4 v5, 0x0

    :goto_0
    array-length v0, p0

    if-ge v5, v0, :cond_1

    .line 58
    const/4 v6, 0x0

    :goto_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 60
    aget-object v0, v4, v5

    aget-object v1, p0, v5

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v0, v6

    .line 58
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 56
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    :cond_1
    return-object v4
.end method

.method public static ˏ([S)[B
    .locals 3

    .line 116
    array-length v0, p0

    new-array v1, v0, [B

    .line 117
    const/4 v2, 0x0

    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_0

    .line 119
    aget-short v0, p0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-object v1
.end method

.method public static ՙ([I)[B
    .locals 3

    .line 98
    array-length v0, p0

    new-array v1, v0, [B

    .line 99
    const/4 v2, 0x0

    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_0

    .line 101
    aget v0, p0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-object v1
.end method

.method public static ﺑ([B)[I
    .locals 4

    .line 20
    array-length v0, p0

    new-array v2, v0, [I

    .line 21
    const/4 v3, 0x0

    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_0

    .line 23
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    aput v0, v2, v3

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_0
    return-object v2
.end method

.method public static ﻧ([B)[S
    .locals 4

    .line 38
    array-length v0, p0

    new-array v2, v0, [S

    .line 39
    const/4 v3, 0x0

    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_0

    .line 41
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    aput-short v0, v2, v3

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-object v2
.end method
