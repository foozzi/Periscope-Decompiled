.class public Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;
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
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->aIX:[I

    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->bdf:[I

    .line 16
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->bdj:[I

    return-void

    :array_0
    .array-data 4
        -0x3d1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0xe90a1
        0x7a2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x7a2
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0xe90a1
        -0x7a3
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7a1
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

    .line 45
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->ʻ(I[I[I)I

    move-result v2

    .line 46
    if-nez v2, :cond_0

    const/4 v0, 0x7

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    const/16 v0, 0x8

    const/16 v1, 0x3d1

    invoke-static {v0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 50
    :cond_1
    return-void
.end method

.method public static ʽ(I[I)V
    .locals 2

    .line 121
    if-eqz p0, :cond_0

    const/16 v0, 0x3d1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lorg/spongycastle/math/raw/Nat256;->ˋ(II[II)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x7

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    :cond_1
    const/16 v0, 0x8

    const/16 v1, 0x3d1

    invoke-static {v0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 126
    :cond_2
    return-void
.end method

.method public static ʽ([I[I)V
    .locals 1

    .line 96
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->ﹳ([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat256;->ʹ([I)V

    goto :goto_0

    .line 102
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->aIX:[I

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I[I)I

    .line 104
    :goto_0
    return-void
.end method

.method public static ʾ([I[I)V
    .locals 3

    .line 173
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[II[I)I

    move-result v2

    .line 174
    if-nez v2, :cond_0

    const/4 v0, 0x7

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    const/16 v0, 0x8

    const/16 v1, 0x3d1

    invoke-static {v0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 178
    :cond_1
    return-void
.end method

.method public static ˋ([II[I)V
    .locals 1

    .line 139
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qw()[I

    move-result-object v0

    .line 140
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->ι([I[I)V

    .line 141
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ͺ([I[I)V

    .line 143
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 145
    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat256;->ι([I[I)V

    .line 146
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ͺ([I[I)V

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method public static ˋ([I[I[I)V
    .locals 3

    .line 24
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->ι([I[I[I)I

    move-result v2

    .line 25
    if-nez v2, :cond_0

    const/4 v0, 0x7

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->aIX:[I

    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    const/16 v0, 0x8

    const/16 v1, 0x3d1

    invoke-static {v0, v1, p2}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 29
    :cond_1
    return-void
.end method

.method public static ˎ([I[I[I)V
    .locals 1

    .line 77
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qw()[I

    move-result-object v0

    .line 78
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/raw/Nat256;->ʿ([I[I[I)V

    .line 79
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ͺ([I[I)V

    .line 80
    return-void
.end method

.method public static ˏ([I[I[I)V
    .locals 3

    .line 84
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->ˈ([I[I[I)I

    move-result v2

    .line 85
    if-nez v2, :cond_0

    const/16 v0, 0xf

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->bdf:[I

    const/16 v1, 0x10

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->bdj:[I

    array-length v0, v0

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->bdj:[I

    invoke-static {v0, v1, p2}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[I[I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->bdj:[I

    array-length v0, v0

    const/16 v1, 0x10

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    .line 92
    :cond_1
    return-void
.end method

.method public static ͺ([I[I)V
    .locals 10

    .line 108
    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    const/16 v0, 0x3d1

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/raw/Nat256;->ˊ(I[II[II[II)J

    move-result-wide v7

    .line 109
    const/16 v0, 0x3d1

    const/4 v1, 0x0

    invoke-static {v0, v7, v8, p1, v1}, Lorg/spongycastle/math/raw/Nat256;->ˊ(IJ[II)I

    move-result v9

    .line 113
    if-nez v9, :cond_0

    const/4 v0, 0x7

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    const/16 v0, 0x8

    const/16 v1, 0x3d1

    invoke-static {v0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ᐝ(II[I)I

    .line 117
    :cond_1
    return-void
.end method

.method public static ᐝ([I[I[I)V
    .locals 3

    .line 152
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I[I)I

    move-result v2

    .line 153
    if-eqz v2, :cond_0

    .line 155
    const/16 v0, 0x8

    const/16 v1, 0x3d1

    invoke-static {v0, v1, p2}, Lorg/spongycastle/math/raw/Nat;->ʼ(II[I)I

    .line 157
    :cond_0
    return-void
.end method

.method public static ι([I[I)V
    .locals 1

    .line 130
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qw()[I

    move-result-object v0

    .line 131
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->ι([I[I)V

    .line 132
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ͺ([I[I)V

    .line 133
    return-void
.end method

.method public static ﹳ(Ljava/math/BigInteger;)[I
    .locals 3

    .line 54
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->ﹳ(Ljava/math/BigInteger;)[I

    move-result-object v2

    .line 55
    const/4 v0, 0x7

    aget v0, v2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->aIX:[I

    invoke-static {v2, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->aIX:[I

    invoke-static {v0, v2}, Lorg/spongycastle/math/raw/Nat256;->ˌ([I[I)I

    .line 59
    :cond_0
    return-object v2
.end method
