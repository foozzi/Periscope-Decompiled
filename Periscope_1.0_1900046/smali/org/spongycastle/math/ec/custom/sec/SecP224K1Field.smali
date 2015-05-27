.class public Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final aIX:[I

.field static final bdf:[I

.field private static final bdj:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->aIX:[I

    .line 13
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->bdf:[I

    .line 15
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->bdj:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1a93
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x2c23069
        0x3526
        0x1
        0x0
        0x0
        0x0
        0x0
        -0x3526
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x2c23069
        -0x3527
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        0x3525
        0x2
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

    .line 44
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->ʻ(I[I[I)I

    move-result v2

    .line 45
    if-nez v2, :cond_0

    const/4 v0, 0x6

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat224;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x7

    const/16 v1, 0x1a93

    invoke-static {v0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 49
    :cond_1
    return-void
.end method

.method public static ʽ(I[I)V
    .locals 2

    .line 120
    if-eqz p0, :cond_0

    const/16 v0, 0x1a93

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lorg/spongycastle/math/raw/Nat224;->ˋ(II[II)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x6

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat224;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    :cond_1
    const/4 v0, 0x7

    const/16 v1, 0x1a93

    invoke-static {v0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 125
    :cond_2
    return-void
.end method

.method public static ʽ([I[I)V
    .locals 1

    .line 95
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat224;->ﹳ([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat224;->ʹ([I)V

    goto :goto_0

    .line 101
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->aIX:[I

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat224;->ˉ([I[I[I)I

    .line 103
    :goto_0
    return-void
.end method

.method public static ʾ([I[I)V
    .locals 3

    .line 172
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[II[I)I

    move-result v2

    .line 173
    if-nez v2, :cond_0

    const/4 v0, 0x6

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat224;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    const/4 v0, 0x7

    const/16 v1, 0x1a93

    invoke-static {v0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 177
    :cond_1
    return-void
.end method

.method public static ˋ([II[I)V
    .locals 1

    .line 138
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qw()[I

    move-result-object v0

    .line 139
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat224;->ι([I[I)V

    .line 140
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ͺ([I[I)V

    .line 142
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 144
    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat224;->ι([I[I)V

    .line 145
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ͺ([I[I)V

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method public static ˋ([I[I[I)V
    .locals 3

    .line 23
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat224;->ι([I[I[I)I

    move-result v2

    .line 24
    if-nez v2, :cond_0

    const/4 v0, 0x6

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->aIX:[I

    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat224;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    const/4 v0, 0x7

    const/16 v1, 0x1a93

    invoke-static {v0, v1, p2}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 28
    :cond_1
    return-void
.end method

.method public static ˎ([I[I[I)V
    .locals 1

    .line 76
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qw()[I

    move-result-object v0

    .line 77
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/raw/Nat224;->ʿ([I[I[I)V

    .line 78
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ͺ([I[I)V

    .line 79
    return-void
.end method

.method public static ˏ([I[I[I)V
    .locals 3

    .line 83
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat224;->ˈ([I[I[I)I

    move-result v2

    .line 84
    if-nez v2, :cond_0

    const/16 v0, 0xd

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->bdf:[I

    const/16 v1, 0xe

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->bdj:[I

    array-length v0, v0

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->bdj:[I

    invoke-static {v0, v1, p2}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[I[I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->bdj:[I

    array-length v0, v0

    const/16 v1, 0xe

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    .line 91
    :cond_1
    return-void
.end method

.method public static ͺ([I[I)V
    .locals 10

    .line 107
    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    const/16 v0, 0x1a93

    const/4 v2, 0x7

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/raw/Nat224;->ˊ(I[II[II[II)J

    move-result-wide v7

    .line 108
    const/16 v0, 0x1a93

    const/4 v1, 0x0

    invoke-static {v0, v7, v8, p1, v1}, Lorg/spongycastle/math/raw/Nat224;->ˊ(IJ[II)I

    move-result v9

    .line 112
    if-nez v9, :cond_0

    const/4 v0, 0x6

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat224;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x7

    const/16 v1, 0x1a93

    invoke-static {v0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 116
    :cond_1
    return-void
.end method

.method public static ᐝ([I[I[I)V
    .locals 3

    .line 151
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat224;->ˉ([I[I[I)I

    move-result v2

    .line 152
    if-eqz v2, :cond_0

    .line 154
    const/4 v0, 0x7

    const/16 v1, 0x1a93

    invoke-static {v0, v1, p2}, Lorg/spongycastle/math/raw/Nat;->ʼ(II[I)I

    .line 156
    :cond_0
    return-void
.end method

.method public static ι([I[I)V
    .locals 1

    .line 129
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qw()[I

    move-result-object v0

    .line 130
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat224;->ι([I[I)V

    .line 131
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ͺ([I[I)V

    .line 132
    return-void
.end method

.method public static ﹳ(Ljava/math/BigInteger;)[I
    .locals 3

    .line 53
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat224;->ﹳ(Ljava/math/BigInteger;)[I

    move-result-object v2

    .line 54
    const/4 v0, 0x6

    aget v0, v2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->aIX:[I

    invoke-static {v2, v0}, Lorg/spongycastle/math/raw/Nat224;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x7

    const/16 v1, 0x1a93

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 58
    :cond_0
    return-object v2
.end method
