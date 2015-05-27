.class public Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;
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
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->aIX:[I

    .line 14
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->bdf:[I

    .line 16
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->bdj:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x2
        0x0
        0x1
        0x0
        -0x2
        -0x1
        -0x3
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x3
        -0x1
        -0x2
        -0x1
        0x1
        0x0
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
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->ʻ(I[I[I)I

    move-result v2

    .line 45
    if-nez v2, :cond_0

    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˉ([I)V

    .line 49
    :cond_1
    return-void
.end method

.method public static ʽ(I[I)V
    .locals 8

    .line 166
    const-wide/16 v4, 0x0

    .line 168
    if-eqz p0, :cond_1

    .line 170
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 172
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v6

    add-long/2addr v4, v0

    .line 173
    long-to-int v0, v4

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 174
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 175
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 178
    long-to-int v0, v4

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 179
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 181
    :cond_0
    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v6

    add-long/2addr v4, v0

    .line 182
    long-to-int v0, v4

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 183
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 188
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    :cond_3
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˉ([I)V

    .line 193
    :cond_4
    return-void
.end method

.method public static ʽ([I[I)V
    .locals 1

    .line 95
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat192;->ﹳ([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat192;->ʹ([I)V

    goto :goto_0

    .line 101
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->aIX:[I

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I[I)I

    .line 103
    :goto_0
    return-void
.end method

.method public static ʾ([I[I)V
    .locals 3

    .line 240
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[II[I)I

    move-result v2

    .line 241
    if-nez v2, :cond_0

    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˉ([I)V

    .line 245
    :cond_1
    return-void
.end method

.method private static ˉ([I)V
    .locals 6

    .line 249
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 250
    long-to-int v0, v4

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 251
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 252
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 255
    long-to-int v0, v4

    const/4 v1, 0x1

    aput v0, p0, v1

    .line 256
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 258
    :cond_0
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 259
    long-to-int v0, v4

    const/4 v1, 0x2

    aput v0, p0, v1

    .line 260
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 261
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    .line 263
    const/4 v0, 0x6

    const/4 v1, 0x3

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    .line 265
    :cond_1
    return-void
.end method

.method public static ˋ([II[I)V
    .locals 1

    .line 206
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qw()[I

    move-result-object v0

    .line 207
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat192;->ι([I[I)V

    .line 208
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ͺ([I[I)V

    .line 210
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 212
    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat192;->ι([I[I)V

    .line 213
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ͺ([I[I)V

    goto :goto_0

    .line 215
    :cond_0
    return-void
.end method

.method public static ˋ([I[I[I)V
    .locals 3

    .line 23
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat192;->ι([I[I[I)I

    move-result v2

    .line 24
    if-nez v2, :cond_0

    const/4 v0, 0x5

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->aIX:[I

    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˉ([I)V

    .line 28
    :cond_1
    return-void
.end method

.method private static ˌ([I)V
    .locals 6

    .line 269
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    .line 270
    long-to-int v0, v4

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 271
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 272
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 275
    long-to-int v0, v4

    const/4 v1, 0x1

    aput v0, p0, v1

    .line 276
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 278
    :cond_0
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 279
    long-to-int v0, v4

    const/4 v1, 0x2

    aput v0, p0, v1

    .line 280
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 281
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    .line 283
    const/4 v0, 0x6

    const/4 v1, 0x3

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/raw/Nat;->ˋ(I[II)I

    .line 285
    :cond_1
    return-void
.end method

.method public static ˎ([I[I[I)V
    .locals 1

    .line 76
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qw()[I

    move-result-object v0

    .line 77
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/raw/Nat192;->ʿ([I[I[I)V

    .line 78
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ͺ([I[I)V

    .line 79
    return-void
.end method

.method public static ˏ([I[I[I)V
    .locals 3

    .line 83
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat192;->ˈ([I[I[I)I

    move-result v2

    .line 84
    if-nez v2, :cond_0

    const/16 v0, 0xb

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->bdf:[I

    const/16 v1, 0xc

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->bdj:[I

    array-length v0, v0

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->bdj:[I

    invoke-static {v0, v1, p2}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[I[I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->bdj:[I

    array-length v0, v0

    const/16 v1, 0xc

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    .line 91
    :cond_1
    return-void
.end method

.method public static ͺ([I[I)V
    .locals 25

    .line 107
    const/4 v0, 0x6

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    const/4 v0, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    const/16 v0, 0x8

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 108
    const/16 v0, 0x9

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    const/16 v0, 0xa

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    const/16 v0, 0xb

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    .line 110
    add-long v16, v4, v12

    .line 111
    add-long v18, v6, v14

    .line 113
    const-wide/16 v20, 0x0

    .line 114
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v16

    add-long v20, v20, v0

    .line 115
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v22, v0

    .line 116
    const/16 v0, 0x20

    shr-long v20, v20, v0

    .line 117
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v18

    add-long v20, v20, v0

    .line 118
    move-wide/from16 v0, v20

    long-to-int v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 119
    const/16 v0, 0x20

    shr-long v20, v20, v0

    .line 121
    add-long v16, v16, v8

    .line 122
    add-long v18, v18, v10

    .line 124
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v16

    add-long v20, v20, v0

    .line 125
    const-wide v0, 0xffffffffL

    and-long v23, v20, v0

    .line 126
    const/16 v0, 0x20

    shr-long v20, v20, v0

    .line 127
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v18

    add-long v20, v20, v0

    .line 128
    move-wide/from16 v0, v20

    long-to-int v0, v0

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 129
    const/16 v0, 0x20

    shr-long v20, v20, v0

    .line 131
    sub-long v16, v16, v4

    .line 132
    sub-long v18, v18, v6

    .line 134
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v16

    add-long v20, v20, v0

    .line 135
    move-wide/from16 v0, v20

    long-to-int v0, v0

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 136
    const/16 v0, 0x20

    shr-long v20, v20, v0

    .line 137
    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v18

    add-long v20, v20, v0

    .line 138
    move-wide/from16 v0, v20

    long-to-int v0, v0

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 139
    const/16 v0, 0x20

    shr-long v20, v20, v0

    .line 141
    add-long v23, v23, v20

    .line 143
    move/from16 v0, v22

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v20, v20, v0

    .line 144
    move-wide/from16 v0, v20

    long-to-int v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 145
    const/16 v0, 0x20

    shr-long v20, v20, v0

    .line 146
    const-wide/16 v0, 0x0

    cmp-long v0, v20, v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v20, v20, v0

    .line 149
    move-wide/from16 v0, v20

    long-to-int v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 150
    const/16 v0, 0x20

    shr-long v0, v20, v0

    add-long v23, v23, v0

    .line 152
    :cond_0
    move-wide/from16 v0, v23

    long-to-int v0, v0

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 153
    const/16 v0, 0x20

    shr-long v20, v23, v0

    .line 157
    const-wide/16 v0, 0x0

    cmp-long v0, v20, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    move-object/from16 v1, p1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[II)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->aIX:[I

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˉ([I)V

    .line 162
    :cond_3
    return-void
.end method

.method public static ᐝ([I[I[I)V
    .locals 1

    .line 219
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I[I)I

    move-result v0

    .line 220
    if-eqz v0, :cond_0

    .line 222
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˌ([I)V

    .line 224
    :cond_0
    return-void
.end method

.method public static ι([I[I)V
    .locals 1

    .line 197
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qw()[I

    move-result-object v0

    .line 198
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat192;->ι([I[I)V

    .line 199
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ͺ([I[I)V

    .line 200
    return-void
.end method

.method public static ﹳ(Ljava/math/BigInteger;)[I
    .locals 3

    .line 53
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat192;->ﹳ(Ljava/math/BigInteger;)[I

    move-result-object v2

    .line 54
    const/4 v0, 0x5

    aget v0, v2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->aIX:[I

    invoke-static {v2, v0}, Lorg/spongycastle/math/raw/Nat192;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->aIX:[I

    invoke-static {v0, v2}, Lorg/spongycastle/math/raw/Nat192;->ˌ([I[I)I

    .line 58
    :cond_0
    return-object v2
.end method
