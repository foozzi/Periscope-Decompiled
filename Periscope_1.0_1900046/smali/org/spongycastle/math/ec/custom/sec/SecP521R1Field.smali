.class public Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final aIX:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->aIX:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1ff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʼ([I[I)V
    .locals 3

    .line 28
    const/16 v0, 0x10

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->ʻ(I[I[I)I

    move-result v0

    const/16 v1, 0x10

    aget v1, p0, v1

    add-int v2, v0, v1

    .line 29
    const/16 v0, 0x1ff

    if-gt v2, v0, :cond_0

    const/16 v0, 0x1ff

    if-ne v2, v0, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->aIX:[I

    const/16 v1, 0x10

    invoke-static {v1, p1, v0}, Lorg/spongycastle/math/raw/Nat;->ˏ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    const/16 v0, 0x10

    invoke-static {v0, p1}, Lorg/spongycastle/math/raw/Nat;->ʾ(I[I)I

    move-result v0

    add-int/2addr v2, v0

    .line 32
    and-int/lit16 v2, v2, 0x1ff

    .line 34
    :cond_1
    const/16 v0, 0x10

    aput v2, p1, v0

    .line 35
    return-void
.end method

.method public static ʽ([I[I)V
    .locals 2

    .line 63
    const/16 v0, 0x11

    invoke-static {v0, p0}, Lorg/spongycastle/math/raw/Nat;->ˈ(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/16 v0, 0x11

    invoke-static {v0, p1}, Lorg/spongycastle/math/raw/Nat;->ˌ(I[I)V

    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->aIX:[I

    const/16 v1, 0x11

    invoke-static {v1, v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[I[I[I)I

    .line 71
    :goto_0
    return-void
.end method

.method protected static ʽ([I[I[I)V
    .locals 9

    .line 143
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat512;->ʿ([I[I[I)V

    .line 145
    const/16 v0, 0x10

    aget v7, p0, v0

    const/16 v0, 0x10

    aget v8, p1, v0

    .line 146
    move v1, v7

    move-object v2, p1

    move v3, v8

    move-object v4, p0

    move-object v5, p2

    const/16 v0, 0x10

    const/16 v6, 0x10

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/raw/Nat;->ˊ(II[II[I[II)I

    move-result v0

    mul-int v1, v7, v8

    add-int/2addr v0, v1

    const/16 v1, 0x20

    aput v0, p2, v1

    .line 147
    return-void
.end method

.method public static ʾ([I[I)V
    .locals 4

    .line 136
    const/16 v0, 0x10

    aget v2, p0, v0

    .line 137
    shl-int/lit8 v0, v2, 0x17

    const/16 v1, 0x10

    invoke-static {v1, p0, v0, p1}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[II[I)I

    move-result v0

    shl-int/lit8 v1, v2, 0x1

    or-int v3, v0, v1

    .line 138
    and-int/lit16 v0, v3, 0x1ff

    const/16 v1, 0x10

    aput v0, p1, v1

    .line 139
    return-void
.end method

.method protected static ʿ([I[I)V
    .locals 7

    .line 151
    invoke-static {p0, p1}, Lorg/spongycastle/math/raw/Nat512;->ι([I[I)V

    .line 153
    const/16 v0, 0x10

    aget v6, p0, v0

    .line 154
    shl-int/lit8 v1, v6, 0x1

    move-object v2, p0

    move-object v4, p1

    const/16 v0, 0x10

    const/4 v3, 0x0

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat;->ˊ(II[II[II)I

    move-result v0

    mul-int v1, v6, v6

    add-int/2addr v0, v1

    const/16 v1, 0x20

    aput v0, p1, v1

    .line 155
    return-void
.end method

.method public static ˋ([II[I)V
    .locals 2

    .line 112
    const/16 v0, 0x21

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v1

    .line 113
    invoke-static {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ʿ([I[I)V

    .line 114
    invoke-static {v1, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ͺ([I[I)V

    .line 116
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 118
    invoke-static {p2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ʿ([I[I)V

    .line 119
    invoke-static {v1, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ͺ([I[I)V

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public static ˋ([I[I[I)V
    .locals 3

    .line 17
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[I[I[I)I

    move-result v0

    const/16 v1, 0x10

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/16 v1, 0x10

    aget v1, p1, v1

    add-int v2, v0, v1

    .line 18
    const/16 v0, 0x1ff

    if-gt v2, v0, :cond_0

    const/16 v0, 0x1ff

    if-ne v2, v0, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->aIX:[I

    const/16 v1, 0x10

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ˏ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    :cond_0
    const/16 v0, 0x10

    invoke-static {v0, p2}, Lorg/spongycastle/math/raw/Nat;->ʾ(I[I)I

    move-result v0

    add-int/2addr v2, v0

    .line 21
    and-int/lit16 v2, v2, 0x1ff

    .line 23
    :cond_1
    const/16 v0, 0x10

    aput v2, p2, v0

    .line 24
    return-void
.end method

.method public static ˎ([I[I[I)V
    .locals 2

    .line 56
    const/16 v0, 0x21

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v1

    .line 57
    invoke-static {p0, p1, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ʽ([I[I[I)V

    .line 58
    invoke-static {v1, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ͺ([I[I)V

    .line 59
    return-void
.end method

.method public static ˑ([I)V
    .locals 4

    .line 91
    const/16 v0, 0x10

    aget v2, p0, v0

    .line 92
    ushr-int/lit8 v0, v2, 0x9

    const/16 v1, 0x10

    invoke-static {v1, v0, p0}, Lorg/spongycastle/math/raw/Nat;->ʻ(II[I)I

    move-result v0

    and-int/lit16 v1, v2, 0x1ff

    add-int v3, v0, v1

    .line 93
    const/16 v0, 0x1ff

    if-gt v3, v0, :cond_0

    const/16 v0, 0x1ff

    if-ne v3, v0, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->aIX:[I

    const/16 v1, 0x10

    invoke-static {v1, p0, v0}, Lorg/spongycastle/math/raw/Nat;->ˏ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    const/16 v0, 0x10

    invoke-static {v0, p0}, Lorg/spongycastle/math/raw/Nat;->ʾ(I[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 96
    and-int/lit16 v3, v3, 0x1ff

    .line 98
    :cond_1
    const/16 v0, 0x10

    aput v3, p0, v0

    .line 99
    return-void
.end method

.method public static ͺ([I[I)V
    .locals 9

    .line 77
    const/16 v0, 0x20

    aget v7, p0, v0

    .line 78
    move-object v1, p0

    move v4, v7

    move-object v5, p1

    const/16 v0, 0x10

    const/16 v2, 0x10

    const/16 v3, 0x9

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[IIII[II)I

    move-result v0

    ushr-int/lit8 v8, v0, 0x17

    .line 79
    ushr-int/lit8 v0, v7, 0x9

    add-int/2addr v8, v0

    .line 80
    const/16 v0, 0x10

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[I[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 81
    const/16 v0, 0x1ff

    if-gt v8, v0, :cond_0

    const/16 v0, 0x1ff

    if-ne v8, v0, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->aIX:[I

    const/16 v1, 0x10

    invoke-static {v1, p1, v0}, Lorg/spongycastle/math/raw/Nat;->ˏ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    const/16 v0, 0x10

    invoke-static {v0, p1}, Lorg/spongycastle/math/raw/Nat;->ʾ(I[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 84
    and-int/lit16 v8, v8, 0x1ff

    .line 86
    :cond_1
    const/16 v0, 0x10

    aput v8, p1, v0

    .line 87
    return-void
.end method

.method public static ᐝ([I[I[I)V
    .locals 3

    .line 125
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[I[I[I)I

    move-result v0

    const/16 v1, 0x10

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/16 v1, 0x10

    aget v1, p1, v1

    sub-int v2, v0, v1

    .line 126
    if-gez v2, :cond_0

    .line 128
    const/16 v0, 0x10

    invoke-static {v0, p2}, Lorg/spongycastle/math/raw/Nat;->ι(I[I)I

    move-result v0

    add-int/2addr v2, v0

    .line 129
    and-int/lit16 v2, v2, 0x1ff

    .line 131
    :cond_0
    const/16 v0, 0x10

    aput v2, p2, v0

    .line 132
    return-void
.end method

.method public static ι([I[I)V
    .locals 2

    .line 103
    const/16 v0, 0x21

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v1

    .line 104
    invoke-static {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ʿ([I[I)V

    .line 105
    invoke-static {v1, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ͺ([I[I)V

    .line 106
    return-void
.end method

.method public static ﹳ(Ljava/math/BigInteger;)[I
    .locals 3

    .line 39
    const/16 v0, 0x209

    invoke-static {v0, p0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(ILjava/math/BigInteger;)[I

    move-result-object v2

    .line 40
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->aIX:[I

    const/16 v1, 0x11

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/raw/Nat;->ˏ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/16 v0, 0x11

    invoke-static {v0, v2}, Lorg/spongycastle/math/raw/Nat;->ˌ(I[I)V

    .line 44
    :cond_0
    return-object v2
.end method
