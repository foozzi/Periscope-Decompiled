.class public Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bjU:[I

.field private static final bjV:[I

.field private static final bjW:[I

.field private static final bjX:[I

.field private static final bjY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->bjU:[I

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->bjV:[I

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->bjW:[I

    .line 54
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->bjX:[I

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->bjY:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        -0x1
        0x0
        0x1
        -0x1
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ᐣ([BII)[I
    .locals 8

    .line 106
    new-array v2, p1, [I

    .line 107
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v3, v0, 0x1f

    .line 108
    mul-int v4, p1, v3

    .line 109
    const/4 v5, 0x0

    .line 110
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    .line 112
    if-lez v6, :cond_0

    rem-int v0, v6, v3

    if-nez v0, :cond_0

    .line 114
    add-int/lit8 v5, v5, 0x1

    .line 116
    :cond_0
    invoke-static {p0, v6}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->ᵣ([BI)I

    move-result v7

    .line 117
    aget v0, v2, v5

    rem-int v1, v6, v3

    shl-int v1, v7, v1

    add-int/2addr v0, v1

    aput v0, v2, v5

    .line 110
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return-object v2
.end method

.method public static ᵕ([BI)[I
    .locals 9

    .line 153
    new-array v2, p1, [I

    .line 154
    const/4 v3, 0x0

    .line 155
    const/4 v4, 0x0

    :goto_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    if-ge v4, v0, :cond_1

    .line 157
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, v0}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->ᵣ([BI)I

    move-result v5

    .line 158
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, v0}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->ᵣ([BI)I

    move-result v6

    .line 159
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, v0}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->ᵣ([BI)I

    move-result v7

    .line 160
    mul-int/lit8 v0, v5, 0x4

    mul-int/lit8 v1, v6, 0x2

    add-int/2addr v0, v1

    add-int v8, v0, v7

    .line 161
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    sget-object v1, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->bjU:[I

    aget v1, v1, v8

    aput v1, v2, v0

    .line 162
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    sget-object v1, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->bjV:[I

    aget v1, v1, v8

    aput v1, v2, v0

    .line 164
    add-int/lit8 v0, p1, -0x2

    if-le v3, v0, :cond_0

    .line 166
    goto :goto_1

    .line 168
    :cond_0
    goto :goto_0

    .line 169
    :cond_1
    :goto_1
    return-object v2
.end method

.method public static ᵢ([I)[B
    .locals 13

    .line 183
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v2, v0, 0x2

    .line 184
    add-int/lit8 v0, v2, 0x7

    div-int/lit8 v3, v0, 0x8

    .line 185
    new-array v4, v3, [B

    .line 186
    const/4 v5, 0x0

    .line 187
    const/4 v6, 0x0

    .line 188
    const/4 v7, 0x0

    :goto_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    if-ge v7, v0, :cond_3

    .line 190
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget v0, p0, v0

    add-int/lit8 v8, v0, 0x1

    .line 191
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget v0, p0, v0

    add-int/lit8 v9, v0, 0x1

    .line 192
    if-nez v8, :cond_0

    if-nez v9, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal encoding!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    mul-int/lit8 v0, v8, 0x3

    add-int v10, v0, v9

    .line 197
    const/4 v0, 0x3

    new-array v11, v0, [I

    sget-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->bjW:[I

    aget v0, v0, v10

    const/4 v1, 0x0

    aput v0, v11, v1

    sget-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->bjX:[I

    aget v0, v0, v10

    const/4 v1, 0x1

    aput v0, v11, v1

    sget-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->bjY:[I

    aget v0, v0, v10

    const/4 v1, 0x2

    aput v0, v11, v1

    .line 198
    const/4 v12, 0x0

    :goto_1
    const/4 v0, 0x3

    if-ge v12, v0, :cond_2

    .line 200
    aget-byte v0, v4, v6

    aget v1, v11, v12

    shl-int/2addr v1, v5

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    .line 201
    const/4 v0, 0x7

    if-ne v5, v0, :cond_1

    .line 203
    const/4 v5, 0x0

    .line 204
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 208
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 198
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 211
    :cond_2
    goto/16 :goto_0

    .line 212
    :cond_3
    return-object v4
.end method

.method private static ᵣ([BI)I
    .locals 4

    .line 288
    div-int/lit8 v2, p1, 0x8

    .line 289
    aget-byte v0, p0, v2

    and-int/lit16 v3, v0, 0xff

    .line 290
    rem-int/lit8 v0, p1, 0x8

    shr-int v0, v3, v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static ι([II)[B
    .locals 11

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v2, v0, 0x1f

    .line 69
    array-length v0, p0

    mul-int v3, v0, v2

    .line 70
    add-int/lit8 v0, v3, 0x7

    div-int/lit8 v4, v0, 0x8

    .line 71
    new-array v5, v4, [B

    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v7, 0x0

    .line 74
    const/4 v8, 0x0

    :goto_0
    array-length v0, p0

    if-ge v8, v0, :cond_2

    .line 76
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_1

    .line 78
    aget v0, p0, v8

    shr-int/2addr v0, v9

    and-int/lit8 v10, v0, 0x1

    .line 79
    aget-byte v0, v5, v7

    shl-int v1, v10, v6

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v7

    .line 80
    const/4 v0, 0x7

    if-ne v6, v0, :cond_0

    .line 82
    const/4 v6, 0x0

    .line 83
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 87
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 76
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 74
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 91
    :cond_2
    return-object v5
.end method
