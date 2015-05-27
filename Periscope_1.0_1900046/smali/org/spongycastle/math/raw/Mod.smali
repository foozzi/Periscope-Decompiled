.class public abstract Lorg/spongycastle/math/raw/Mod;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ˊ([I[II[II)I
    .locals 5

    .line 149
    array-length v2, p0

    .line 150
    const/4 v3, 0x0

    .line 151
    :goto_0
    const/4 v0, 0x0

    aget v0, p1, v0

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[II)I

    .line 154
    add-int/lit8 v3, v3, 0x20

    goto :goto_0

    .line 158
    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lorg/spongycastle/math/raw/Mod;->ﾍ(I)I

    move-result v4

    .line 159
    if-lez v4, :cond_1

    .line 161
    const/4 v0, 0x0

    invoke-static {p2, p1, v4, v0}, Lorg/spongycastle/math/raw/Nat;->ˋ(I[III)I

    .line 162
    add-int/2addr v3, v4

    .line 166
    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 168
    const/4 v0, 0x0

    aget v0, p3, v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 170
    if-gez p4, :cond_2

    .line 172
    invoke-static {v2, p0, p3}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[I[I)I

    move-result v0

    add-int/2addr p4, v0

    goto :goto_2

    .line 176
    :cond_2
    invoke-static {v2, p0, p3}, Lorg/spongycastle/math/raw/Nat;->ʼ(I[I[I)I

    move-result v0

    add-int/2addr p4, v0

    .line 181
    :cond_3
    :goto_2
    invoke-static {v2, p3, p4}, Lorg/spongycastle/math/raw/Nat;->ˏ(I[II)I

    .line 166
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 184
    :cond_4
    return p4
.end method

.method private static ˊ([II[I[I)V
    .locals 3

    .line 137
    if-gez p1, :cond_0

    .line 139
    array-length v0, p0

    invoke-static {v0, p2, p0, p3}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[I[I[I)I

    goto :goto_0

    .line 143
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2, v1, p3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    :goto_0
    return-void
.end method

.method public static ͺ([I[I[I)V
    .locals 10

    .line 23
    array-length v2, p0

    .line 24
    invoke-static {v2, p1}, Lorg/spongycastle/math/raw/Nat;->ˈ(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'x\' cannot be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    invoke-static {v2, p1}, Lorg/spongycastle/math/raw/Nat;->ʿ(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    return-void

    .line 34
    :cond_1
    invoke-static {v2, p1}, Lorg/spongycastle/math/raw/Nat;->ͺ(I[I)[I

    move-result-object v3

    .line 35
    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v4

    .line 36
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v0, v4, v1

    .line 37
    const/4 v5, 0x0

    .line 39
    const/4 v0, 0x0

    aget v0, v3, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 41
    invoke-static {p0, v3, v2, v4, v5}, Lorg/spongycastle/math/raw/Mod;->ˊ([I[II[II)I

    move-result v5

    .line 43
    :cond_2
    invoke-static {v2, v3}, Lorg/spongycastle/math/raw/Nat;->ʿ(I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    invoke-static {p0, v5, v4, p2}, Lorg/spongycastle/math/raw/Mod;->ˊ([II[I[I)V

    .line 46
    return-void

    .line 49
    :cond_3
    invoke-static {v2, p0}, Lorg/spongycastle/math/raw/Nat;->ͺ(I[I)[I

    move-result-object v6

    .line 50
    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v7

    .line 51
    const/4 v8, 0x0

    .line 53
    move v9, v2

    .line 57
    :cond_4
    :goto_0
    add-int/lit8 v0, v9, -0x1

    aget v0, v3, v0

    if-nez v0, :cond_5

    add-int/lit8 v0, v9, -0x1

    aget v0, v6, v0

    if-nez v0, :cond_5

    .line 59
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 62
    :cond_5
    invoke-static {v9, v3, v6}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 64
    invoke-static {v9, v6, v3}, Lorg/spongycastle/math/raw/Nat;->ʼ(I[I[I)I

    .line 66
    invoke-static {v2, v7, v4}, Lorg/spongycastle/math/raw/Nat;->ʼ(I[I[I)I

    move-result v0

    sub-int/2addr v0, v8

    add-int/2addr v5, v0

    .line 67
    invoke-static {p0, v3, v9, v4, v5}, Lorg/spongycastle/math/raw/Mod;->ˊ([I[II[II)I

    move-result v5

    .line 68
    invoke-static {v9, v3}, Lorg/spongycastle/math/raw/Nat;->ʿ(I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    invoke-static {p0, v5, v4, p2}, Lorg/spongycastle/math/raw/Mod;->ˊ([II[I[I)V

    .line 71
    return-void

    .line 76
    :cond_6
    invoke-static {v9, v3, v6}, Lorg/spongycastle/math/raw/Nat;->ʼ(I[I[I)I

    .line 78
    invoke-static {v2, v4, v7}, Lorg/spongycastle/math/raw/Nat;->ʼ(I[I[I)I

    move-result v0

    sub-int/2addr v0, v5

    add-int/2addr v8, v0

    .line 79
    invoke-static {p0, v6, v9, v7, v8}, Lorg/spongycastle/math/raw/Mod;->ˊ([I[II[II)I

    move-result v8

    .line 80
    invoke-static {v9, v6}, Lorg/spongycastle/math/raw/Nat;->ʿ(I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-static {p0, v8, v7, p2}, Lorg/spongycastle/math/raw/Mod;->ˊ([II[I[I)V

    .line 83
    return-void
.end method

.method public static ᐧ([I)[I
    .locals 7

    .line 91
    array-length v2, p0

    .line 92
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 93
    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v4

    .line 95
    add-int/lit8 v0, v2, -0x1

    aget v5, p0, v0

    .line 96
    ushr-int/lit8 v0, v5, 0x1

    or-int/2addr v5, v0

    .line 97
    ushr-int/lit8 v0, v5, 0x2

    or-int/2addr v5, v0

    .line 98
    ushr-int/lit8 v0, v5, 0x4

    or-int/2addr v5, v0

    .line 99
    ushr-int/lit8 v0, v5, 0x8

    or-int/2addr v5, v0

    .line 100
    ushr-int/lit8 v0, v5, 0x10

    or-int/2addr v5, v0

    .line 104
    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eq v6, v2, :cond_1

    .line 106
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v0

    aput v0, v4, v6

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 108
    :cond_1
    add-int/lit8 v0, v2, -0x1

    aget v1, v4, v0

    and-int/2addr v1, v5

    aput v1, v4, v0

    .line 110
    invoke-static {v2, v4, p0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    return-object v4
.end method

.method private static ﾍ(I)I
    .locals 2

    .line 191
    const/4 v1, 0x0

    .line 192
    :goto_0
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    .line 194
    ushr-int/lit8 p0, p0, 0x1

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return v1
.end method
