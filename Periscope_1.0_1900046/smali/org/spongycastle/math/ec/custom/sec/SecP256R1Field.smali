.class public Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final aIX:[I

.field static final bdf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->aIX:[I

    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->bdf:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x2
        0x1
        -0x2
        0x1
        -0x2
        0x1
        0x1
        -0x2
        0x2
        -0x2
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

    .line 41
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->ʻ(I[I[I)I

    move-result v2

    .line 42
    if-nez v2, :cond_0

    const/4 v0, 0x7

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->ˉ([I)V

    .line 46
    :cond_1
    return-void
.end method

.method public static ʽ(I[I)V
    .locals 8

    .line 150
    const-wide/16 v4, 0x0

    .line 152
    if-eqz p0, :cond_2

    .line 154
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 156
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v6

    add-long/2addr v4, v0

    .line 157
    long-to-int v0, v4

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 158
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 159
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 162
    long-to-int v0, v4

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 163
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 164
    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 165
    long-to-int v0, v4

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 166
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 168
    :cond_0
    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    sub-long/2addr v0, v6

    add-long/2addr v4, v0

    .line 169
    long-to-int v0, v4

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 170
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 171
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    .line 173
    const/4 v0, 0x4

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 174
    long-to-int v0, v4

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 175
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 176
    const/4 v0, 0x5

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 177
    long-to-int v0, v4

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 178
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 180
    :cond_1
    const/4 v0, 0x6

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    sub-long/2addr v0, v6

    add-long/2addr v4, v0

    .line 181
    long-to-int v0, v4

    const/4 v1, 0x6

    aput v0, p1, v1

    .line 182
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 183
    const/4 v0, 0x7

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v6

    add-long/2addr v4, v0

    .line 184
    long-to-int v0, v4

    const/4 v1, 0x7

    aput v0, p1, v1

    .line 185
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 190
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    const/4 v0, 0x7

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    :cond_3
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->ˉ([I)V

    .line 194
    :cond_4
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
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->aIX:[I

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I[I)I

    .line 97
    :goto_0
    return-void
.end method

.method public static ʾ([I[I)V
    .locals 3

    .line 238
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[II[I)I

    move-result v2

    .line 239
    if-nez v2, :cond_0

    const/4 v0, 0x7

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->aIX:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->ˉ([I)V

    .line 243
    :cond_1
    return-void
.end method

.method private static ˉ([I)V
    .locals 6

    .line 247
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 248
    long-to-int v0, v4

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 249
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 250
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 253
    long-to-int v0, v4

    const/4 v1, 0x1

    aput v0, p0, v1

    .line 254
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 255
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 256
    long-to-int v0, v4

    const/4 v1, 0x2

    aput v0, p0, v1

    .line 257
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 259
    :cond_0
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 260
    long-to-int v0, v4

    const/4 v1, 0x3

    aput v0, p0, v1

    .line 261
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 262
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    .line 264
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 265
    long-to-int v0, v4

    const/4 v1, 0x4

    aput v0, p0, v1

    .line 266
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 267
    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 268
    long-to-int v0, v4

    const/4 v1, 0x5

    aput v0, p0, v1

    .line 269
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 271
    :cond_1
    const/4 v0, 0x6

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 272
    long-to-int v0, v4

    const/4 v1, 0x6

    aput v0, p0, v1

    .line 273
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 274
    const/4 v0, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 275
    long-to-int v0, v4

    const/4 v1, 0x7

    aput v0, p0, v1

    .line 277
    return-void
.end method

.method public static ˋ([II[I)V
    .locals 1

    .line 207
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qw()[I

    move-result-object v0

    .line 208
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->ι([I[I)V

    .line 209
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->ͺ([I[I)V

    .line 211
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 213
    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat256;->ι([I[I)V

    .line 214
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->ͺ([I[I)V

    goto :goto_0

    .line 216
    :cond_0
    return-void
.end method

.method public static ˋ([I[I[I)V
    .locals 3

    .line 23
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->ι([I[I[I)I

    move-result v2

    .line 24
    if-nez v2, :cond_0

    const/4 v0, 0x7

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->aIX:[I

    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->ˉ([I)V

    .line 28
    :cond_1
    return-void
.end method

.method private static ˌ([I)V
    .locals 6

    .line 281
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    .line 282
    long-to-int v0, v4

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 283
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 284
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 287
    long-to-int v0, v4

    const/4 v1, 0x1

    aput v0, p0, v1

    .line 288
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 289
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 290
    long-to-int v0, v4

    const/4 v1, 0x2

    aput v0, p0, v1

    .line 291
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 293
    :cond_0
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 294
    long-to-int v0, v4

    const/4 v1, 0x3

    aput v0, p0, v1

    .line 295
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 296
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    .line 298
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 299
    long-to-int v0, v4

    const/4 v1, 0x4

    aput v0, p0, v1

    .line 300
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 301
    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 302
    long-to-int v0, v4

    const/4 v1, 0x5

    aput v0, p0, v1

    .line 303
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 305
    :cond_1
    const/4 v0, 0x6

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 306
    long-to-int v0, v4

    const/4 v1, 0x6

    aput v0, p0, v1

    .line 307
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    .line 308
    const/4 v0, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 309
    long-to-int v0, v4

    const/4 v1, 0x7

    aput v0, p0, v1

    .line 311
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
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->ͺ([I[I)V

    .line 76
    return-void
.end method

.method public static ˏ([I[I[I)V
    .locals 3

    .line 80
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->ˈ([I[I[I)I

    move-result v2

    .line 81
    if-nez v2, :cond_0

    const/16 v0, 0xf

    aget v0, p2, v0

    and-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->bdf:[I

    const/16 v1, 0x10

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->bdf:[I

    const/16 v1, 0x10

    invoke-static {v1, v0, p2}, Lorg/spongycastle/math/raw/Nat;->ʼ(I[I[I)I

    .line 85
    :cond_1
    return-void
.end method

.method public static ͺ([I[I)V
    .locals 38

    .line 101
    const/16 v0, 0x8

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    const/16 v0, 0x9

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    const/16 v0, 0xa

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    const/16 v0, 0xb

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v0, v2

    .line 102
    const/16 v0, 0xc

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v0, v2

    const/16 v0, 0xd

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v14, v0, v2

    const/16 v0, 0xe

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v16, v0, v2

    const/16 v0, 0xf

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v18, v0, v2

    .line 104
    const-wide/16 v20, 0x6

    .line 106
    const-wide/16 v0, 0x6

    sub-long/2addr v4, v0

    .line 108
    add-long v22, v4, v6

    .line 109
    add-long v24, v6, v8

    .line 110
    add-long v0, v8, v10

    sub-long v26, v0, v18

    .line 111
    add-long v28, v10, v12

    .line 112
    add-long v30, v12, v14

    .line 113
    add-long v32, v14, v16

    .line 114
    add-long v34, v16, v18

    .line 116
    const-wide/16 v36, 0x0

    .line 117
    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v22

    sub-long v0, v0, v28

    sub-long v0, v0, v32

    add-long v36, v36, v0

    .line 118
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 119
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 120
    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v24

    sub-long v0, v0, v30

    sub-long v0, v0, v34

    add-long v36, v36, v0

    .line 121
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 122
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 123
    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v0, v0, v26

    sub-long v0, v0, v32

    add-long v36, v36, v0

    .line 124
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 125
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 126
    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    shl-long v2, v28, v2

    add-long/2addr v0, v2

    add-long/2addr v0, v14

    sub-long v0, v0, v18

    sub-long v0, v0, v22

    add-long v36, v36, v0

    .line 127
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 128
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 129
    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    shl-long v2, v30, v2

    add-long/2addr v0, v2

    add-long v0, v0, v16

    sub-long v0, v0, v24

    add-long v36, v36, v0

    .line 130
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 131
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 132
    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    shl-long v2, v32, v2

    add-long/2addr v0, v2

    sub-long v0, v0, v26

    add-long v36, v36, v0

    .line 133
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 134
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 135
    const/4 v0, 0x6

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    shl-long v2, v34, v2

    add-long/2addr v0, v2

    add-long v0, v0, v32

    sub-long v0, v0, v22

    add-long v36, v36, v0

    .line 136
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x6

    aput v0, p1, v1

    .line 137
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 138
    const/4 v0, 0x7

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    shl-long v2, v18, v2

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    sub-long v0, v0, v26

    sub-long v0, v0, v30

    add-long v36, v36, v0

    .line 139
    move-wide/from16 v0, v36

    long-to-int v0, v0

    const/4 v1, 0x7

    aput v0, p1, v1

    .line 140
    const/16 v0, 0x20

    shr-long v36, v36, v0

    .line 141
    const-wide/16 v0, 0x6

    add-long v36, v36, v0

    .line 145
    move-wide/from16 v0, v36

    long-to-int v0, v0

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->ʽ(I[I)V

    .line 146
    return-void
.end method

.method public static ᐝ([I[I[I)V
    .locals 1

    .line 220
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I[I)I

    move-result v0

    .line 221
    if-eqz v0, :cond_0

    .line 223
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->ˌ([I)V

    .line 225
    :cond_0
    return-void
.end method

.method public static ι([I[I)V
    .locals 1

    .line 198
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qw()[I

    move-result-object v0

    .line 199
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->ι([I[I)V

    .line 200
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->ͺ([I[I)V

    .line 201
    return-void
.end method

.method public static ﹳ(Ljava/math/BigInteger;)[I
    .locals 3

    .line 50
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->ﹳ(Ljava/math/BigInteger;)[I

    move-result-object v2

    .line 51
    const/4 v0, 0x7

    aget v0, v2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->aIX:[I

    invoke-static {v2, v0}, Lorg/spongycastle/math/raw/Nat256;->ˉ([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->aIX:[I

    invoke-static {v0, v2}, Lorg/spongycastle/math/raw/Nat256;->ˌ([I[I)I

    .line 55
    :cond_0
    return-object v2
.end method
