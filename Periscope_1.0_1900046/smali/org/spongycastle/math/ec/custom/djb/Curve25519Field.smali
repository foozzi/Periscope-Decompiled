.class public Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final aIX:[I

.field private static final bdf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->aIX:[I

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->bdf:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        0x169
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʼ(I[I)V
    .locals 4

    .line 121
    const/4 v0, 0x7

    aget v2, p1, v0

    .line 122
    shl-int/lit8 v0, p0, 0x1

    ushr-int/lit8 v1, v2, 0x1f

    or-int v3, v0, v1

    .line 123
    const v0, 0x7fffffff

    and-int/2addr v2, v0

    .line 124
    mul-int/lit8 v0, v3, 0x13

    const/4 v1, 0x7

    invoke-static {v1, v0, p1}, Lorg/spongycastle/math/raw/Nat;->ʻ(II[I)I

    move-result v0

    add-int/2addr v2, v0

    .line 125
    const/4 v0, 0x7

    aput v2, p1, v0

    .line 126
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ʿ([I)I

    .line 130
    :cond_0
    return-void
.end method

.method public static ʼ([I[I)V
    .locals 1

    .line 41
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->ʻ(I[I[I)I

    .line 42
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ʿ([I)I

    .line 46
    :cond_0
    return-void
.end method

.method public static ʽ([I[I)V
    .locals 1

    .line 89
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->ﹳ([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat256;->ʹ([I)V

    goto :goto_0

    .line 95
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->aIX:[I

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I[I)I

    .line 97
    :goto_0
    return-void
.end method

.method private static ʾ([I)I
    .locals 6

    .line 183
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x13

    sub-long v4, v0, v2

    .line 184
    long-to-int v0, v4

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 185
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 186
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/raw/Nat;->ˋ(I[II)I

    move-result v0

    int-to-long v4, v0

    .line 190
    :cond_0
    const/4 v0, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x80000000L

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 191
    long-to-int v0, v4

    const/4 v1, 0x7

    aput v0, p0, v1

    .line 192
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 193
    long-to-int v0, v4

    return v0
.end method

.method public static ʾ([I[I)V
    .locals 2

    .line 174
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[II[I)I

    .line 175
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ʿ([I)I

    .line 179
    :cond_0
    return-void
.end method

.method private static ʿ([I)I
    .locals 6

    .line 220
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x13

    add-long v4, v0, v2

    .line 221
    long-to-int v0, v4

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 222
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 223
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    move-result v0

    int-to-long v4, v0

    .line 227
    :cond_0
    const/4 v0, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x80000000L

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 228
    long-to-int v0, v4

    const/4 v1, 0x7

    aput v0, p0, v1

    .line 229
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 230
    long-to-int v0, v4

    return v0
.end method

.method private static ˈ([I)I
    .locals 8

    .line 235
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    sget-object v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->bdf:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long v6, v0, v2

    .line 236
    long-to-int v0, v6

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 237
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 238
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_0

    .line 240
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/raw/Nat;->ˋ(I[II)I

    move-result v0

    int-to-long v6, v0

    .line 242
    :cond_0
    const/16 v0, 0x8

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x13

    add-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 243
    long-to-int v0, v6

    const/16 v1, 0x8

    aput v0, p0, v1

    .line 244
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 245
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    .line 247
    const/16 v0, 0xf

    const/16 v1, 0x9

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    move-result v0

    int-to-long v6, v0

    .line 249
    :cond_1
    const/16 v0, 0xf

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    sget-object v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->bdf:[I

    const/16 v3, 0xf

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 250
    long-to-int v0, v6

    const/16 v1, 0xf

    aput v0, p0, v1

    .line 251
    const/16 v0, 0x20

    shr-long/2addr v6, v0

    .line 252
    long-to-int v0, v6

    return v0
.end method

.method public static ˋ([II[I)V
    .locals 1

    .line 143
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qw()[I

    move-result-object v0

    .line 144
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->ι([I[I)V

    .line 145
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ͺ([I[I)V

    .line 147
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 149
    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat256;->ι([I[I)V

    .line 150
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ͺ([I[I)V

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public static ˋ([I[I[I)V
    .locals 1

    .line 23
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->ι([I[I[I)I

    .line 24
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->aIX:[I

    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ʿ([I)I

    .line 28
    :cond_0
    return-void
.end method

.method public static ˎ([I[I[I)V
    .locals 1

    .line 73
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qw()[I

    move-result-object v0

    .line 74
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/raw/Nat256;->ʿ([I[I[I)V

    .line 75
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ͺ([I[I)V

    .line 76
    return-void
.end method

.method public static ˏ([I[I[I)V
    .locals 2

    .line 80
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->ˈ([I[I[I)I

    .line 81
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->bdf:[I

    const/16 v1, 0x10

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˈ([I)I

    .line 85
    :cond_0
    return-void
.end method

.method public static ͺ([I[I)V
    .locals 9

    .line 103
    const/4 v0, 0x7

    aget v6, p0, v0

    .line 104
    move-object v1, p0

    move v3, v6

    move-object v4, p1

    const/16 v0, 0x8

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[III[II)I

    .line 105
    const/16 v0, 0x13

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat256;->ʽ(I[I[I)I

    move-result v0

    shl-int/lit8 v7, v0, 0x1

    .line 106
    const/4 v0, 0x7

    aget v8, p1, v0

    .line 107
    ushr-int/lit8 v0, v8, 0x1f

    ushr-int/lit8 v1, v6, 0x1f

    sub-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 108
    const v0, 0x7fffffff

    and-int/2addr v8, v0

    .line 109
    mul-int/lit8 v0, v7, 0x13

    const/4 v1, 0x7

    invoke-static {v1, v0, p1}, Lorg/spongycastle/math/raw/Nat;->ʻ(II[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 110
    const/4 v0, 0x7

    aput v8, p1, v0

    .line 111
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ʿ([I)I

    .line 115
    :cond_0
    return-void
.end method

.method public static ᐝ([I[I[I)V
    .locals 2

    .line 156
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I[I)I

    move-result v1

    .line 157
    if-eqz v1, :cond_0

    .line 159
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ʾ([I)I

    .line 161
    :cond_0
    return-void
.end method

.method public static ι([I[I)V
    .locals 1

    .line 134
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qw()[I

    move-result-object v0

    .line 135
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->ι([I[I)V

    .line 136
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ͺ([I[I)V

    .line 137
    return-void
.end method

.method public static ﹳ(Ljava/math/BigInteger;)[I
    .locals 2

    .line 50
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->ﹳ(Ljava/math/BigInteger;)[I

    move-result-object v1

    .line 51
    :goto_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->aIX:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->aIX:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat256;->ˌ([I[I)I

    goto :goto_0

    .line 55
    :cond_0
    return-object v1
.end method
