.class public Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;
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
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->aIX:[I

    .line 12
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->bdf:[I

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->bdj:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x11c9
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x13c4fd1
        0x2392
        0x1
        0x0
        0x0
        0x0
        -0x2392
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x13c4fd1
        -0x2393
        -0x2
        -0x1
        -0x1
        -0x1
        0x2391
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

    .line 43
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->ʻ(I[I[I)I

    move-result v2

    .line 44
    if-nez v2, :cond_0

    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    const/4 v0, 0x6

    const/16 v1, 0x11c9

    invoke-static {v0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 48
    :cond_1
    return-void
.end method

.method public static ʽ(I[I)V
    .locals 2

    .line 119
    if-eqz p0, :cond_0

    const/16 v0, 0x11c9

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lorg/spongycastle/math/raw/Nat192;->ˋ(II[II)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    :cond_1
    const/4 v0, 0x6

    const/16 v1, 0x11c9

    invoke-static {v0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 124
    :cond_2
    return-void
.end method

.method public static ʽ([I[I)V
    .locals 1

    .line 94
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat192;->ﹳ([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat192;->ʹ([I)V

    goto :goto_0

    .line 100
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->aIX:[I

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I[I)I

    .line 102
    :goto_0
    return-void
.end method

.method public static ʾ([I[I)V
    .locals 3

    .line 171
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[II[I)I

    move-result v2

    .line 172
    if-nez v2, :cond_0

    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    const/4 v0, 0x6

    const/16 v1, 0x11c9

    invoke-static {v0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 176
    :cond_1
    return-void
.end method

.method public static ˋ([II[I)V
    .locals 1

    .line 137
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qw()[I

    move-result-object v0

    .line 138
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat192;->ι([I[I)V

    .line 139
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ͺ([I[I)V

    .line 141
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 143
    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat192;->ι([I[I)V

    .line 144
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ͺ([I[I)V

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public static ˋ([I[I[I)V
    .locals 3

    .line 22
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat192;->ι([I[I[I)I

    move-result v2

    .line 23
    if-nez v2, :cond_0

    const/4 v0, 0x5

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->aIX:[I

    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x6

    const/16 v1, 0x11c9

    invoke-static {v0, v1, p2}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 27
    :cond_1
    return-void
.end method

.method public static ˎ([I[I[I)V
    .locals 1

    .line 75
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qw()[I

    move-result-object v0

    .line 76
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/raw/Nat192;->ʿ([I[I[I)V

    .line 77
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ͺ([I[I)V

    .line 78
    return-void
.end method

.method public static ˏ([I[I[I)V
    .locals 3

    .line 82
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat192;->ˈ([I[I[I)I

    move-result v2

    .line 83
    if-nez v2, :cond_0

    const/16 v0, 0xb

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->bdf:[I

    const/16 v1, 0xc

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->bdj:[I

    array-length v0, v0

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->bdj:[I

    invoke-static {v0, v1, p2}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[I[I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->bdj:[I

    array-length v0, v0

    const/16 v1, 0xc

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    .line 90
    :cond_1
    return-void
.end method

.method public static ͺ([I[I)V
    .locals 10

    .line 106
    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    const/16 v0, 0x11c9

    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/raw/Nat192;->ˊ(I[II[II[II)J

    move-result-wide v7

    .line 107
    const/16 v0, 0x11c9

    const/4 v1, 0x0

    invoke-static {v0, v7, v8, p1, v1}, Lorg/spongycastle/math/raw/Nat192;->ˊ(IJ[II)I

    move-result v9

    .line 111
    if-nez v9, :cond_0

    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x6

    const/16 v1, 0x11c9

    invoke-static {v0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 115
    :cond_1
    return-void
.end method

.method public static ᐝ([I[I[I)V
    .locals 3

    .line 150
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I[I)I

    move-result v2

    .line 151
    if-eqz v2, :cond_0

    .line 153
    const/4 v0, 0x6

    const/16 v1, 0x11c9

    invoke-static {v0, v1, p2}, Lorg/spongycastle/math/raw/Nat;->ʼ(II[I)I

    .line 155
    :cond_0
    return-void
.end method

.method public static ι([I[I)V
    .locals 1

    .line 128
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qw()[I

    move-result-object v0

    .line 129
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat192;->ι([I[I)V

    .line 130
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ͺ([I[I)V

    .line 131
    return-void
.end method

.method public static ﹳ(Ljava/math/BigInteger;)[I
    .locals 3

    .line 52
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat192;->ﹳ(Ljava/math/BigInteger;)[I

    move-result-object v2

    .line 53
    const/4 v0, 0x5

    aget v0, v2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->aIX:[I

    invoke-static {v2, v0}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->aIX:[I

    invoke-static {v0, v2}, Lorg/spongycastle/math/raw/Nat192;->ˌ([I[I)I

    .line 57
    :cond_0
    return-object v2
.end method
