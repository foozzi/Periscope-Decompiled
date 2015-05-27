.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
.super Lorg/spongycastle/pqc/math/linearalgebra/Matrix;
.source ""


# instance fields
.field private biL:[[I

.field private length:I


# direct methods
.method public constructor <init>(IC)V
    .locals 1

    .line 116
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    .line 117
    return-void
.end method

.method public constructor <init>(ICLjava/security/SecureRandom;)V
    .locals 2

    .line 127
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    .line 128
    if-gtz p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Size of matrix is non-positive."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 137
    :sswitch_0
    invoke-direct {p0, p1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ᕁ(II)V

    .line 138
    goto :goto_1

    .line 141
    :sswitch_1
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ב(I)V

    .line 142
    goto :goto_1

    .line 145
    :sswitch_2
    invoke-direct {p0, p1, p3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˊ(ILjava/security/SecureRandom;)V

    .line 146
    goto :goto_1

    .line 149
    :sswitch_3
    invoke-direct {p0, p1, p3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˋ(ILjava/security/SecureRandom;)V

    .line 150
    goto :goto_1

    .line 153
    :sswitch_4
    invoke-direct {p0, p1, p3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˎ(ILjava/security/SecureRandom;)V

    .line 154
    goto :goto_1

    .line 157
    :goto_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Unknown matrix type."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x49 -> :sswitch_1
        0x4c -> :sswitch_2
        0x52 -> :sswitch_4
        0x55 -> :sswitch_3
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor <init>(II)V
    .locals 2

    .line 183
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    .line 184
    if-lez p2, :cond_0

    if-gtz p1, :cond_1

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "size of matrix is non-positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ᕁ(II)V

    .line 190
    return-void
.end method

.method public constructor <init>(I[[I)V
    .locals 6

    .line 81
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    .line 82
    const/4 v0, 0x0

    aget-object v0, p2, v0

    array-length v0, v0

    add-int/lit8 v1, p1, 0x1f

    shr-int/lit8 v1, v1, 0x5

    if-eq v0, v1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Int array does not match given number of columns."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 88
    array-length v0, p2

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    .line 89
    const/4 v0, 0x0

    aget-object v0, p2, v0

    array-length v0, v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    .line 90
    and-int/lit8 v3, p1, 0x1f

    .line 92
    if-nez v3, :cond_1

    .line 94
    const/4 v4, -0x1

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x1

    shl-int/2addr v0, v3

    add-int/lit8 v4, v0, -0x1

    .line 100
    :goto_0
    const/4 v5, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v5, v0, :cond_2

    .line 102
    aget-object v0, p2, v5

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    and-int/2addr v2, v4

    aput v2, v0, v1

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 104
    :cond_2
    iput-object p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V
    .locals 3

    .line 167
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    .line 168
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getNumColumns()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 169
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    .line 170
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    .line 171
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    array-length v0, v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    .line 172
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->י([I)[I

    move-result-object v1

    aput-object v1, v0, v2

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method private ˊ(ILjava/security/SecureRandom;)V
    .locals 9

    .line 246
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    .line 247
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 248
    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    .line 249
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    .line 250
    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v4, v0, :cond_2

    .line 252
    ushr-int/lit8 v5, v4, 0x5

    .line 253
    and-int/lit8 v6, v4, 0x1f

    .line 254
    rsub-int/lit8 v7, v6, 0x1f

    .line 255
    const/4 v0, 0x1

    shl-int v6, v0, v6

    .line 256
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_0

    .line 258
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v4

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    aput v1, v0, v8

    .line 256
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v4

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    ushr-int/2addr v1, v7

    or-int/2addr v1, v6

    aput v1, v0, v5

    .line 261
    add-int/lit8 v8, v5, 0x1

    :goto_2
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v0, :cond_1

    .line 263
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v4

    const/4 v1, 0x0

    aput v1, v0, v8

    .line 261
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 250
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    :cond_2
    return-void
.end method

.method private static ˊ([[III)V
    .locals 2

    .line 1303
    aget-object v1, p0, p1

    .line 1304
    aget-object v0, p0, p2

    aput-object v0, p0, p1

    .line 1305
    aput-object v1, p0, p2

    .line 1306
    return-void
.end method

.method private ˋ(ILjava/security/SecureRandom;)V
    .locals 11

    .line 278
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    .line 279
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 280
    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    .line 281
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    .line 282
    and-int/lit8 v4, p1, 0x1f

    .line 284
    if-nez v4, :cond_0

    .line 286
    const/4 v5, -0x1

    goto :goto_0

    .line 290
    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, v4

    add-int/lit8 v5, v0, -0x1

    .line 292
    :goto_0
    const/4 v6, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v6, v0, :cond_3

    .line 294
    ushr-int/lit8 v7, v6, 0x5

    .line 295
    and-int/lit8 v8, v6, 0x1f

    .line 296
    move v9, v8

    .line 297
    const/4 v0, 0x1

    shl-int v8, v0, v8

    .line 298
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v7, :cond_1

    .line 300
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v6

    const/4 v1, 0x0

    aput v1, v0, v10

    .line 298
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 302
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v6

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    shl-int/2addr v1, v9

    or-int/2addr v1, v8

    aput v1, v0, v7

    .line 303
    add-int/lit8 v10, v7, 0x1

    :goto_3
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v10, v0, :cond_2

    .line 305
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v6

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    aput v1, v0, v10

    .line 303
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 307
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v6

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    and-int/2addr v2, v5

    aput v2, v0, v1

    .line 292
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 310
    :cond_3
    return-void
.end method

.method private ˎ(ILjava/security/SecureRandom;)V
    .locals 11

    .line 320
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    .line 321
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 322
    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    .line 323
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    .line 324
    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v0, 0x4c

    invoke-direct {v5, p1, v0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    .line 325
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v0, 0x55

    invoke-direct {v6, p1, v0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    .line 326
    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/Matrix;)Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-object v7, v0

    .line 327
    new-instance v8, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v8, p1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    .line 328
    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->sD()[I

    move-result-object v9

    .line 329
    const/4 v10, 0x0

    :goto_0
    if-ge v10, p1, :cond_0

    .line 331
    iget-object v0, v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v10

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget v2, v9, v10

    aget-object v1, v1, v2

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method

.method private static ˎ([I[II)V
    .locals 3

    .line 1317
    array-length v0, p1

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-lt v2, p2, :cond_0

    .line 1319
    aget v0, p0, v2

    aget v1, p1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v2

    .line 1317
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1321
    :cond_0
    return-void
.end method

.method public static ˏ(ILjava/security/SecureRandom;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 21

    .line 346
    const/4 v0, 0x2

    new-array v4, v0, [Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 353
    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v5, v0, 0x5

    .line 354
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move/from16 v0, p0

    const/16 v1, 0x4c

    move-object/from16 v2, p1

    invoke-direct {v6, v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    .line 355
    new-instance v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move/from16 v0, p0

    const/16 v1, 0x55

    move-object/from16 v2, p1

    invoke-direct {v7, v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    .line 356
    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/Matrix;)Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-object v8, v0

    .line 357
    new-instance v9, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    .line 358
    invoke-virtual {v9}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->sD()[I

    move-result-object v10

    .line 360
    move/from16 v0, p0

    filled-new-array {v0, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    .line 361
    const/4 v12, 0x0

    :goto_0
    move/from16 v0, p0

    if-ge v12, v0, :cond_0

    .line 363
    iget-object v0, v8, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget v1, v10, v12

    aget-object v0, v0, v1

    aget-object v1, v11, v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 366
    :cond_0
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 373
    new-instance v12, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move/from16 v0, p0

    const/16 v1, 0x49

    invoke-direct {v12, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(IC)V

    .line 374
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, p0

    if-ge v13, v0, :cond_3

    .line 376
    and-int/lit8 v14, v13, 0x1f

    .line 377
    ushr-int/lit8 v15, v13, 0x5

    .line 378
    const/4 v0, 0x1

    shl-int v16, v0, v14

    .line 379
    add-int/lit8 v17, v13, 0x1

    :goto_2
    move/from16 v0, v17

    move/from16 v1, p0

    if-ge v0, v1, :cond_2

    .line 381
    iget-object v0, v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v17

    aget v0, v0, v15

    and-int v18, v0, v16

    .line 382
    if-eqz v18, :cond_1

    .line 384
    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    if-gt v0, v15, :cond_1

    .line 386
    iget-object v0, v12, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v17

    aget v1, v0, v19

    iget-object v2, v12, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v2, v2, v13

    aget v2, v2, v19

    xor-int/2addr v1, v2

    aput v1, v0, v19

    .line 384
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 379
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 374
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 392
    :cond_3
    new-instance v13, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move/from16 v0, p0

    const/16 v1, 0x49

    invoke-direct {v13, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(IC)V

    .line 393
    add-int/lit8 v14, p0, -0x1

    :goto_4
    if-ltz v14, :cond_6

    .line 395
    and-int/lit8 v15, v14, 0x1f

    .line 396
    ushr-int/lit8 v16, v14, 0x5

    .line 397
    const/4 v0, 0x1

    shl-int v17, v0, v15

    .line 398
    add-int/lit8 v18, v14, -0x1

    :goto_5
    if-ltz v18, :cond_5

    .line 400
    iget-object v0, v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v18

    aget v0, v0, v16

    and-int v19, v0, v17

    .line 401
    if-eqz v19, :cond_4

    .line 403
    move/from16 v20, v16

    :goto_6
    move/from16 v0, v20

    if-ge v0, v5, :cond_4

    .line 405
    iget-object v0, v13, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v18

    aget v1, v0, v20

    iget-object v2, v13, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v2, v2, v14

    aget v2, v2, v20

    xor-int/2addr v1, v2

    aput v1, v0, v20

    .line 403
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 398
    :cond_4
    add-int/lit8 v18, v18, -0x1

    goto :goto_5

    .line 393
    :cond_5
    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    .line 412
    :cond_6
    invoke-virtual {v12, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/Matrix;)Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 414
    return-object v4
.end method

.method private ב(I)V
    .locals 6

    .line 220
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    .line 221
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 222
    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    .line 223
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    .line 224
    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v4, v0, :cond_1

    .line 226
    const/4 v5, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v5, v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v4

    const/4 v1, 0x0

    aput v1, v0, v5

    .line 226
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 224
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 231
    :cond_1
    const/4 v4, 0x0

    :goto_2
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v4, v0, :cond_2

    .line 233
    and-int/lit8 v5, v4, 0x1f

    .line 234
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v4

    ushr-int/lit8 v1, v4, 0x5

    const/4 v2, 0x1

    shl-int/2addr v2, v5

    aput v2, v0, v1

    .line 231
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 236
    :cond_2
    return-void
.end method

.method private ᕁ(II)V
    .locals 6

    .line 200
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    .line 201
    iput p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 202
    add-int/lit8 v0, p2, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    .line 203
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    .line 204
    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v4, v0, :cond_1

    .line 206
    const/4 v5, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v5, v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v4

    const/4 v1, 0x0

    aput v1, v0, v5

    .line 206
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 204
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1201
    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    if-nez v0, :cond_0

    .line 1203
    const/4 v0, 0x0

    return v0

    .line 1205
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-object v2, v0

    .line 1207
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    iget v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-eq v0, v1, :cond_2

    .line 1211
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1214
    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v3, v0, :cond_4

    .line 1216
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v3

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1218
    const/4 v0, 0x0

    return v0

    .line 1214
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1222
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public getEncoded()[B
    .locals 10

    .line 451
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v3, v0, 0x3

    .line 452
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    mul-int/2addr v3, v0

    .line 453
    add-int/lit8 v3, v3, 0x8

    .line 454
    new-array v4, v3, [B

    .line 456
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    const/4 v1, 0x0

    invoke-static {v0, v4, v1}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->ι(I[BI)V

    .line 457
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    const/4 v1, 0x4

    invoke-static {v0, v4, v1}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->ι(I[BI)V

    .line 460
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    ushr-int/lit8 v5, v0, 0x5

    .line 462
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v6, v0, 0x1f

    .line 464
    const/16 v7, 0x8

    .line 465
    const/4 v8, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v8, v0, :cond_2

    .line 467
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v5, :cond_0

    .line 469
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v8

    aget v0, v0, v9

    invoke-static {v0, v4, v7}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->ι(I[BI)V

    .line 467
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x4

    goto :goto_1

    .line 471
    :cond_0
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v6, :cond_1

    .line 473
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v1, v1, v8

    aget v1, v1, v5

    ushr-int/2addr v1, v9

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 471
    add-int/lit8 v9, v9, 0x8

    goto :goto_2

    .line 465
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 477
    :cond_2
    return-object v4
.end method

.method public hashCode()I
    .locals 4

    .line 1230
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int v2, v0, v1

    .line 1231
    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v3, v0, :cond_0

    .line 1233
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 1231
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1235
    :cond_0
    return v2
.end method

.method public sb()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 8

    .line 554
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-gt v0, v1, :cond_0

    .line 556
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "empty submatrix"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    add-int/lit8 v0, v0, 0x1f

    shr-int/lit8 v4, v0, 0x5

    .line 559
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    filled-new-array {v0, v4}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    .line 560
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v6, v0, -0x1

    .line 561
    if-nez v6, :cond_1

    .line 563
    const/4 v6, -0x1

    .line 565
    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    add-int/lit8 v7, v0, -0x1

    :goto_0
    if-ltz v7, :cond_2

    .line 567
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v7

    aget-object v1, v5, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    aget-object v0, v5, v7

    add-int/lit8 v1, v4, -0x1

    aget v2, v0, v1

    and-int/2addr v2, v6

    aput v2, v0, v1

    .line 565
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 570
    :cond_2
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    invoke-direct {v0, v1, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v0
.end method

.method public sc()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 9

    .line 582
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    add-int v5, v0, v1

    .line 583
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    invoke-direct {v6, v0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    .line 585
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int v7, v0, v1

    .line 586
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    add-int/lit8 v8, v0, -0x1

    :goto_0
    if-ltz v8, :cond_0

    .line 589
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v8

    iget-object v1, v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v1, v1, v8

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 591
    iget-object v0, v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v8

    shr-int/lit8 v1, v7, 0x5

    aget v2, v0, v1

    and-int/lit8 v3, v7, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 586
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 594
    :cond_0
    return-object v6
.end method

.method public sd()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 11

    .line 605
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-gt v0, v1, :cond_0

    .line 607
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "empty submatrix"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    shr-int/lit8 v5, v0, 0x5

    .line 611
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    and-int/lit8 v6, v0, 0x1f

    .line 613
    new-instance v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    sub-int/2addr v1, v2

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    .line 615
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    add-int/lit8 v8, v0, -0x1

    :goto_0
    if-ltz v8, :cond_4

    .line 618
    if-eqz v6, :cond_3

    .line 620
    move v9, v5

    .line 622
    const/4 v10, 0x0

    :goto_1
    iget v0, v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_1

    .line 625
    iget-object v0, v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v8

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v1, v1, v8

    move v2, v9

    add-int/lit8 v9, v9, 0x1

    aget v1, v1, v2

    ushr-int/2addr v1, v6

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v2, v2, v8

    aget v2, v2, v9

    rsub-int/lit8 v3, v6, 0x20

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v10

    .line 622
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 629
    :cond_1
    iget-object v0, v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v8

    iget v1, v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v2, v2, v8

    move v3, v9

    add-int/lit8 v9, v9, 0x1

    aget v2, v2, v3

    ushr-int/2addr v2, v6

    aput v2, v0, v1

    .line 630
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v9, v0, :cond_2

    .line 632
    iget-object v0, v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v8

    iget v1, v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v3, v3, v8

    aget v3, v3, v9

    rsub-int/lit8 v4, v6, 0x20

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 634
    :cond_2
    goto :goto_2

    .line 638
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v8

    iget-object v1, v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v1, v1, v8

    iget v2, v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    const/4 v3, 0x0

    invoke-static {v0, v5, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    .line 642
    :cond_4
    return-object v7
.end method

.method public se()Lorg/spongycastle/pqc/math/linearalgebra/Matrix;
    .locals 12

    .line 704
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 705
    const/4 v5, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v5, v0, :cond_2

    .line 707
    const/4 v6, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ge v6, v0, :cond_1

    .line 709
    ushr-int/lit8 v7, v6, 0x5

    .line 710
    and-int/lit8 v8, v6, 0x1f

    .line 711
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v5

    aget v0, v0, v7

    ushr-int/2addr v0, v8

    and-int/lit8 v9, v0, 0x1

    .line 712
    ushr-int/lit8 v10, v5, 0x5

    .line 713
    and-int/lit8 v11, v5, 0x1f

    .line 714
    const/4 v0, 0x1

    if-ne v9, v0, :cond_0

    .line 716
    aget-object v0, v4, v6

    aget v1, v0, v10

    const/4 v2, 0x1

    shl-int/2addr v2, v11

    or-int/2addr v1, v2

    aput v1, v0, v10

    .line 707
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 705
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 721
    :cond_2
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v0
.end method

.method public sf()Lorg/spongycastle/pqc/math/linearalgebra/Matrix;
    .locals 11

    .line 732
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-eq v0, v1, :cond_0

    .line 734
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Matrix is not invertible."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 739
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    add-int/lit8 v5, v0, -0x1

    :goto_0
    if-ltz v5, :cond_1

    .line 741
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v5

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->י([I)[I

    move-result-object v0

    aput-object v0, v4, v5

    .line 739
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 745
    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    .line 746
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    add-int/lit8 v6, v0, -0x1

    :goto_1
    if-ltz v6, :cond_2

    .line 748
    shr-int/lit8 v7, v6, 0x5

    .line 749
    and-int/lit8 v8, v6, 0x1f

    .line 750
    aget-object v0, v5, v6

    const/4 v1, 0x1

    shl-int/2addr v1, v8

    aput v1, v0, v7

    .line 746
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 755
    :cond_2
    const/4 v6, 0x0

    :goto_2
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v6, v0, :cond_8

    .line 758
    shr-int/lit8 v7, v6, 0x5

    .line 759
    and-int/lit8 v0, v6, 0x1f

    const/4 v1, 0x1

    shl-int v8, v1, v0

    .line 761
    aget-object v0, v4, v6

    aget v0, v0, v7

    and-int/2addr v0, v8

    if-nez v0, :cond_5

    .line 763
    const/4 v9, 0x0

    .line 765
    add-int/lit8 v10, v6, 0x1

    :goto_3
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v10, v0, :cond_4

    .line 767
    aget-object v0, v4, v10

    aget v0, v0, v7

    and-int/2addr v0, v8

    if-eqz v0, :cond_3

    .line 770
    const/4 v9, 0x1

    .line 771
    invoke-static {v4, v6, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˊ([[III)V

    .line 772
    invoke-static {v5, v6, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˊ([[III)V

    .line 774
    iget v10, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    .line 765
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 779
    :cond_4
    if-nez v9, :cond_5

    .line 782
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Matrix is not invertible."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_5
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    add-int/lit8 v9, v0, -0x1

    :goto_4
    if-ltz v9, :cond_7

    .line 789
    if-eq v9, v6, :cond_6

    aget-object v0, v4, v9

    aget v0, v0, v7

    and-int/2addr v0, v8

    if-eqz v0, :cond_6

    .line 791
    aget-object v0, v4, v6

    aget-object v1, v4, v9

    invoke-static {v0, v1, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˎ([I[II)V

    .line 792
    aget-object v0, v5, v6

    aget-object v1, v5, v9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˎ([I[II)V

    .line 787
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 755
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 797
    :cond_8
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {v0, v1, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1243
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v3, v0, 0x1f

    .line 1245
    if-nez v3, :cond_0

    .line 1247
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    goto :goto_0

    .line 1251
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v4, v0, -0x1

    .line 1254
    :goto_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1255
    const/4 v6, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v6, v0, :cond_6

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1258
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_3

    .line 1260
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v6

    aget v8, v0, v7

    .line 1261
    const/4 v9, 0x0

    :goto_3
    const/16 v0, 0x20

    if-ge v9, v0, :cond_2

    .line 1263
    ushr-int v0, v8, v9

    and-int/lit8 v10, v0, 0x1

    .line 1264
    if-nez v10, :cond_1

    .line 1266
    const/16 v0, 0x30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1270
    :cond_1
    const/16 v0, 0x31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1261
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1273
    :cond_2
    const/16 v0, 0x20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1258
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1275
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v6

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v1, v1, -0x1

    aget v7, v0, v1

    .line 1276
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v3, :cond_5

    .line 1278
    ushr-int v0, v7, v8

    and-int/lit8 v9, v0, 0x1

    .line 1279
    if-nez v9, :cond_4

    .line 1281
    const/16 v0, 0x30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1285
    :cond_4
    const/16 v0, 0x31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1276
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1288
    :cond_5
    const/16 v0, 0xa

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1255
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1291
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/linearalgebra/Matrix;)Lorg/spongycastle/pqc/math/linearalgebra/Matrix;
    .locals 14

    .line 973
    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    if-nez v0, :cond_0

    .line 975
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "matrix is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_0
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->bjp:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-eq v0, v1, :cond_1

    .line 980
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-object v3, v0

    .line 984
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    iget v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    invoke-direct {v4, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    .line 987
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v6, v0, 0x1f

    .line 988
    if-nez v6, :cond_2

    .line 990
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    goto :goto_0

    .line 994
    :cond_2
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v5, v0, -0x1

    .line 996
    :goto_0
    const/4 v7, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v7, v0, :cond_8

    .line 998
    const/4 v8, 0x0

    .line 999
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v5, :cond_5

    .line 1001
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v7

    aget v10, v0, v9

    .line 1002
    const/4 v11, 0x0

    :goto_3
    const/16 v0, 0x20

    if-ge v11, v0, :cond_4

    .line 1004
    const/4 v0, 0x1

    shl-int/2addr v0, v11

    and-int v12, v10, v0

    .line 1005
    if-eqz v12, :cond_3

    .line 1007
    const/4 v13, 0x0

    :goto_4
    iget v0, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v13, v0, :cond_3

    .line 1009
    iget-object v0, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v7

    aget v1, v0, v13

    iget-object v2, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v2, v2, v8

    aget v2, v2, v13

    xor-int/2addr v1, v2

    aput v1, v0, v13

    .line 1007
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1012
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 1002
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 999
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1015
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v7

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v1, v1, -0x1

    aget v9, v0, v1

    .line 1016
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_7

    .line 1018
    const/4 v0, 0x1

    shl-int/2addr v0, v10

    and-int v11, v9, v0

    .line 1019
    if-eqz v11, :cond_6

    .line 1021
    const/4 v12, 0x0

    :goto_6
    iget v0, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v12, v0, :cond_6

    .line 1023
    iget-object v0, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v7

    aget v1, v0, v12

    iget-object v2, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v2, v2, v8

    aget v2, v2, v12

    xor-int/2addr v1, v2

    aput v1, v0, v12

    .line 1021
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1026
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 1016
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 996
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1031
    :cond_8
    return-object v4
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Matrix;
    .locals 12

    .line 1044
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->sD()[I

    move-result-object v4

    .line 1045
    array-length v0, v4

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-eq v0, v1, :cond_0

    .line 1047
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1050
    :cond_0
    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {v5, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    .line 1052
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v6, v0, -0x1

    :goto_0
    if-ltz v6, :cond_2

    .line 1054
    ushr-int/lit8 v7, v6, 0x5

    .line 1055
    and-int/lit8 v8, v6, 0x1f

    .line 1056
    aget v0, v4, v6

    ushr-int/lit8 v9, v0, 0x5

    .line 1057
    aget v0, v4, v6

    and-int/lit8 v10, v0, 0x1f

    .line 1058
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    add-int/lit8 v11, v0, -0x1

    :goto_1
    if-ltz v11, :cond_1

    .line 1060
    iget-object v0, v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v11

    aget v1, v0, v7

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v2, v2, v11

    aget v2, v2, v9

    ushr-int/2addr v2, v10

    and-int/lit8 v2, v2, 0x1

    shl-int/2addr v2, v8

    or-int/2addr v1, v2

    aput v1, v0, v7

    .line 1058
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 1052
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1064
    :cond_2
    return-object v5
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    .locals 11

    .line 834
    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_0
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-eq v0, v1, :cond_1

    .line 841
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->sq()[I

    move-result-object v2

    .line 845
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    new-array v3, v0, [I

    .line 847
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    shr-int/lit8 v4, v0, 0x5

    .line 848
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v5, v1, v0

    .line 851
    const/4 v6, 0x0

    .line 852
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_4

    .line 854
    const/4 v8, 0x1

    .line 857
    :cond_2
    aget v0, v2, v7

    and-int v9, v0, v8

    .line 858
    if-eqz v9, :cond_3

    .line 860
    const/4 v10, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v10, v0, :cond_3

    .line 862
    aget v0, v3, v10

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v1, v1, v6

    aget v1, v1, v10

    xor-int/2addr v0, v1

    aput v0, v3, v10

    .line 860
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 865
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 866
    shl-int/lit8 v8, v8, 0x1

    .line 868
    if-nez v8, :cond_2

    .line 852
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 872
    :cond_4
    const/4 v7, 0x1

    .line 873
    :goto_2
    if-eq v7, v5, :cond_6

    .line 875
    aget v0, v2, v4

    and-int v8, v0, v7

    .line 876
    if-eqz v8, :cond_5

    .line 878
    const/4 v9, 0x0

    :goto_3
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v9, v0, :cond_5

    .line 880
    aget v0, v3, v9

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v1, v1, v6

    aget v1, v1, v9

    xor-int/2addr v0, v1

    aput v0, v3, v9

    .line 878
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 883
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 884
    shl-int/lit8 v7, v7, 0x1

    .line 885
    goto :goto_2

    .line 887
    :cond_6
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {v0, v3, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    .locals 12

    .line 900
    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    if-nez v0, :cond_0

    .line 902
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :cond_0
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-eq v0, v1, :cond_1

    .line 907
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->sq()[I

    move-result-object v3

    .line 911
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    new-array v4, v0, [I

    .line 914
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    ushr-int/lit8 v5, v0, 0x5

    .line 915
    const/4 v6, 0x0

    .line 916
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_5

    .line 918
    const/4 v8, 0x1

    .line 921
    :cond_2
    aget v0, v3, v7

    and-int v9, v0, v8

    .line 922
    if-eqz v9, :cond_4

    .line 925
    const/4 v10, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v10, v0, :cond_3

    .line 927
    aget v0, v4, v10

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v1, v1, v6

    aget v1, v1, v10

    xor-int/2addr v0, v1

    aput v0, v4, v10

    .line 925
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 930
    :cond_3
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v6

    ushr-int/lit8 v10, v0, 0x5

    .line 931
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v6

    and-int/lit8 v11, v0, 0x1f

    .line 932
    aget v0, v4, v10

    const/4 v1, 0x1

    shl-int/2addr v1, v11

    or-int/2addr v0, v1

    aput v0, v4, v10

    .line 934
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 935
    shl-int/lit8 v8, v8, 0x1

    .line 937
    if-nez v8, :cond_2

    .line 916
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 941
    :cond_5
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v7, v1, v0

    .line 942
    const/4 v8, 0x1

    .line 943
    :goto_2
    if-eq v8, v7, :cond_8

    .line 945
    aget v0, v3, v5

    and-int v9, v0, v8

    .line 946
    if-eqz v9, :cond_7

    .line 949
    const/4 v10, 0x0

    :goto_3
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v10, v0, :cond_6

    .line 951
    aget v0, v4, v10

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v1, v1, v6

    aget v1, v1, v10

    xor-int/2addr v0, v1

    aput v0, v4, v10

    .line 949
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 954
    :cond_6
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v6

    ushr-int/lit8 v10, v0, 0x5

    .line 955
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v6

    and-int/lit8 v11, v0, 0x1f

    .line 956
    aget v0, v4, v10

    const/4 v1, 0x1

    shl-int/2addr v1, v11

    or-int/2addr v0, v1

    aput v0, v4, v10

    .line 958
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 959
    shl-int/lit8 v8, v8, 0x1

    .line 960
    goto :goto_2

    .line 962
    :cond_8
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v1, v2

    invoke-direct {v0, v4, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v0
.end method

.method public ˎ(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    .locals 10

    .line 1075
    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    if-nez v0, :cond_0

    .line 1077
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1080
    :cond_0
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-eq v0, v1, :cond_1

    .line 1082
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1085
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->sq()[I

    move-result-object v4

    .line 1086
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    add-int/lit8 v0, v0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    new-array v5, v0, [I

    .line 1088
    const/4 v6, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    if-ge v6, v0, :cond_5

    .line 1091
    const/4 v7, 0x0

    .line 1092
    const/4 v8, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v0, :cond_2

    .line 1094
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->biL:[[I

    aget-object v0, v0, v6

    aget v0, v0, v8

    aget v1, v4, v8

    and-int/2addr v0, v1

    xor-int/2addr v7, v0

    .line 1092
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1097
    :cond_2
    const/4 v8, 0x0

    .line 1098
    const/4 v9, 0x0

    :goto_2
    const/16 v0, 0x20

    if-ge v9, v0, :cond_3

    .line 1100
    ushr-int v0, v7, v9

    and-int/lit8 v0, v0, 0x1

    xor-int/2addr v8, v0

    .line 1098
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1103
    :cond_3
    const/4 v0, 0x1

    if-ne v8, v0, :cond_4

    .line 1105
    ushr-int/lit8 v0, v6, 0x5

    aget v1, v5, v0

    and-int/lit8 v2, v6, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    aput v1, v5, v0

    .line 1088
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1109
    :cond_5
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->bjp:I

    invoke-direct {v0, v5, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v0
.end method
