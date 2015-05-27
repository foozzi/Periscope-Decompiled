.class public Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final aIX:[I

.field static final bdf:[I

.field private static final bdj:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->aIX:[I

    .line 15
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->bdf:[I

    .line 18
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->bdj:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x0
        0x0
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        -0x2
        0x0
        0x2
        0x0
        -0x2
        0x0
        0x2
        0x1
        0x0
        0x0
        0x0
        -0x2
        0x1
        0x0
        -0x2
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        0x1
        -0x1
        -0x3
        -0x1
        0x1
        -0x1
        -0x3
        -0x2
        -0x1
        -0x1
        -0x1
        0x1
        -0x2
        -0x1
        0x1
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

    .line 47
    const/16 v0, 0xc

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->ʻ(I[I[I)I

    move-result v2

    .line 48
    if-nez v2, :cond_0

    const/16 v0, 0xb

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->aIX:[I

    const/16 v1, 0xc

    invoke-static {v1, p1, v0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˉ([I)V

    .line 52
    :cond_1
    return-void
.end method

.method public static ʼ([I[I[I)V
    .locals 3

    .line 35
    const/16 v0, 0x18

    invoke-static {v0, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[I[I[I)I

    move-result v2

    .line 36
    if-nez v2, :cond_0

    const/16 v0, 0x17

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->bdf:[I

    const/16 v1, 0x18

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->bdj:[I

    array-length v0, v0

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->bdj:[I

    invoke-static {v0, v1, p2}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[I[I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->bdj:[I

    array-length v0, v0

    const/16 v1, 0x18

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    .line 43
    :cond_1
    return-void
.end method

.method public static ʽ(I[I)V
    .locals 8

    .line 157
    const-wide/16 v4, 0x0

    .line 159
    if-eqz p0, :cond_1

    .line 161
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 163
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v6

    add-long/2addr v4, v0

    .line 164
    long-to-int v0, v4

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 165
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 166
    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    sub-long/2addr v0, v6

    add-long/2addr v4, v0

    .line 167
    long-to-int v0, v4

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 168
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 169
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 172
    long-to-int v0, v4

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 173
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 175
    :cond_0
    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v6

    add-long/2addr v4, v0

    .line 176
    long-to-int v0, v4

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 177
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 178
    const/4 v0, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v6

    add-long/2addr v4, v0

    .line 179
    long-to-int v0, v4

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 180
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 185
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    const/4 v1, 0x5

    invoke-static {v0, p1, v1}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/16 v0, 0xb

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->aIX:[I

    const/16 v1, 0xc

    invoke-static {v1, p1, v0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    :cond_3
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˉ([I)V

    .line 190
    :cond_4
    return-void
.end method

.method public static ʽ([I[I)V
    .locals 2

    .line 86
    const/16 v0, 0xc

    invoke-static {v0, p0}, Lorg/spongycastle/math/raw/Nat;->ˈ(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/16 v0, 0xc

    invoke-static {v0, p1}, Lorg/spongycastle/math/raw/Nat;->ˌ(I[I)V

    goto :goto_0

    .line 92
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->aIX:[I

    const/16 v1, 0xc

    invoke-static {v1, v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[I[I[I)I

    .line 94
    :goto_0
    return-void
.end method

.method public static ʾ([I[I)V
    .locals 3

    .line 237
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[II[I)I

    move-result v2

    .line 238
    if-nez v2, :cond_0

    const/16 v0, 0xb

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->aIX:[I

    const/16 v1, 0xc

    invoke-static {v1, p1, v0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˉ([I)V

    .line 242
    :cond_1
    return-void
.end method

.method private static ˉ([I)V
    .locals 6

    .line 246
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 247
    long-to-int v0, v4

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 248
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 249
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 250
    long-to-int v0, v4

    const/4 v1, 0x1

    aput v0, p0, v1

    .line 251
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 252
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 255
    long-to-int v0, v4

    const/4 v1, 0x2

    aput v0, p0, v1

    .line 256
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 258
    :cond_0
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 259
    long-to-int v0, v4

    const/4 v1, 0x3

    aput v0, p0, v1

    .line 260
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 261
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 262
    long-to-int v0, v4

    const/4 v1, 0x4

    aput v0, p0, v1

    .line 263
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 264
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    .line 266
    const/16 v0, 0xc

    const/4 v1, 0x5

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    .line 268
    :cond_1
    return-void
.end method

.method public static ˋ([II[I)V
    .locals 2

    .line 203
    const/16 v0, 0x18

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v1

    .line 204
    invoke-static {p0, v1}, Lorg/spongycastle/math/raw/Nat384;->ι([I[I)V

    .line 205
    invoke-static {v1, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ͺ([I[I)V

    .line 207
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 209
    invoke-static {p2, v1}, Lorg/spongycastle/math/raw/Nat384;->ι([I[I)V

    .line 210
    invoke-static {v1, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ͺ([I[I)V

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method public static ˋ([I[I[I)V
    .locals 3

    .line 26
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[I[I[I)I

    move-result v2

    .line 27
    if-nez v2, :cond_0

    const/16 v0, 0xb

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->aIX:[I

    const/16 v1, 0xc

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˉ([I)V

    .line 31
    :cond_1
    return-void
.end method

.method private static ˌ([I)V
    .locals 6

    .line 272
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    .line 273
    long-to-int v0, v4

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 274
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 275
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 276
    long-to-int v0, v4

    const/4 v1, 0x1

    aput v0, p0, v1

    .line 277
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 278
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 281
    long-to-int v0, v4

    const/4 v1, 0x2

    aput v0, p0, v1

    .line 282
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 284
    :cond_0
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 285
    long-to-int v0, v4

    const/4 v1, 0x3

    aput v0, p0, v1

    .line 286
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 287
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 288
    long-to-int v0, v4

    const/4 v1, 0x4

    aput v0, p0, v1

    .line 289
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 290
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    .line 292
    const/16 v0, 0xc

    const/4 v1, 0x5

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/raw/Nat;->ˋ(I[II)I

    .line 294
    :cond_1
    return-void
.end method

.method public static ˎ([I[I[I)V
    .locals 2

    .line 79
    const/16 v0, 0x18

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v1

    .line 80
    invoke-static {p0, p1, v1}, Lorg/spongycastle/math/raw/Nat384;->ʿ([I[I[I)V

    .line 81
    invoke-static {v1, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ͺ([I[I)V

    .line 82
    return-void
.end method

.method public static ͺ([I[I)V
    .locals 38

    .line 98
    const/16 v0, 0x10

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    const/16 v0, 0x11

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    const/16 v0, 0x12

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    const/16 v0, 0x13

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 99
    const/16 v0, 0x14

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    const/16 v0, 0x15

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    const/16 v0, 0x16

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    const/16 v0, 0x17

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 101
    const-wide/16 v20, 0x1

    .line 103
    const/16 v0, 0xc

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v12

    const-wide/16 v2, 0x1

    sub-long v22, v0, v2

    .line 104
    const/16 v0, 0xd

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v24, v0, v16

    .line 105
    const/16 v0, 0xe

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v16

    add-long v26, v0, v18

    .line 106
    const/16 v0, 0xf

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v28, v0, v18

    .line 107
    add-long v30, v6, v14

    .line 108
    sub-long v32, v14, v18

    .line 109
    sub-long v34, v16, v18

    .line 111
    const-wide/16 v36, 0x0

    .line 112
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v22

    add-long v0, v0, v32

    add-long v36, v36, v0

    .line 113
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 114
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 115
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v18

    sub-long v0, v0, v22

    add-long v0, v0, v24

    add-long v36, v36, v0

    .line 116
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 117
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 118
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    sub-long/2addr v0, v14

    sub-long v0, v0, v24

    add-long v0, v0, v26

    add-long v36, v36, v0

    .line 119
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 120
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 121
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v22

    sub-long v0, v0, v26

    add-long v0, v0, v28

    add-long v0, v0, v32

    add-long v36, v36, v0

    .line 122
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 123
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 124
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v4

    add-long/2addr v0, v14

    add-long v0, v0, v22

    add-long v0, v0, v24

    sub-long v0, v0, v28

    add-long v0, v0, v32

    add-long v36, v36, v0

    .line 125
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 126
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 127
    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    sub-long/2addr v0, v4

    add-long v0, v0, v24

    add-long v0, v0, v26

    add-long v0, v0, v30

    add-long v36, v36, v0

    .line 128
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 129
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 130
    const/4 v0, 0x6

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v8

    sub-long/2addr v0, v6

    add-long v0, v0, v26

    add-long v0, v0, v28

    add-long v36, v36, v0

    .line 131
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x6

    aput v0, p1, v1

    .line 132
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 133
    const/4 v0, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v4

    add-long/2addr v0, v10

    sub-long/2addr v0, v8

    add-long v0, v0, v28

    add-long v36, v36, v0

    .line 134
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x7

    aput v0, p1, v1

    .line 135
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 136
    const/16 v0, 0x8

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v4

    add-long/2addr v0, v6

    add-long/2addr v0, v12

    sub-long/2addr v0, v10

    add-long v36, v36, v0

    .line 137
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/16 v1, 0x8

    aput v0, p1, v1

    .line 138
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 139
    const/16 v0, 0x9

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v8

    sub-long/2addr v0, v12

    add-long v0, v0, v30

    add-long v36, v36, v0

    .line 140
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/16 v1, 0x9

    aput v0, p1, v1

    .line 141
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 142
    const/16 v0, 0xa

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v8

    add-long/2addr v0, v10

    sub-long v0, v0, v32

    add-long v0, v0, v34

    add-long v36, v36, v0

    .line 143
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/16 v1, 0xa

    aput v0, p1, v1

    .line 144
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 145
    const/16 v0, 0xb

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v10

    add-long/2addr v0, v12

    sub-long v0, v0, v34

    add-long v36, v36, v0

    .line 146
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/16 v1, 0xb

    aput v0, p1, v1

    .line 147
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 148
    const-wide/16 v0, 0x1

    add-long v36, v36, v0

    .line 152
    move-wide/from16 v0, v36

    long-to-int v0, v0

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ʽ(I[I)V

    .line 153
    return-void
.end method

.method public static ᐝ([I[I[I)V
    .locals 2

    .line 216
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[I[I[I)I

    move-result v1

    .line 217
    if-eqz v1, :cond_0

    .line 219
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˌ([I)V

    .line 221
    :cond_0
    return-void
.end method

.method public static ι([I[I)V
    .locals 2

    .line 194
    const/16 v0, 0x18

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v1

    .line 195
    invoke-static {p0, v1}, Lorg/spongycastle/math/raw/Nat384;->ι([I[I)V

    .line 196
    invoke-static {v1, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ͺ([I[I)V

    .line 197
    return-void
.end method

.method public static ﹳ(Ljava/math/BigInteger;)[I
    .locals 3

    .line 56
    const/16 v0, 0x180

    invoke-static {v0, p0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(ILjava/math/BigInteger;)[I

    move-result-object v2

    .line 57
    const/16 v0, 0xb

    aget v0, v2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->aIX:[I

    const/16 v1, 0xc

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->aIX:[I

    const/16 v1, 0xc

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/raw/Nat;->ʼ(I[I[I)I

    .line 61
    :cond_0
    return-object v2
.end method
