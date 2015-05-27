.class public final Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MatrixSet;,
        Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 19

    .line 139
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->qs()I

    move-result v5

    .line 140
    const/4 v0, 0x1

    shl-int v6, v0, v5

    .line 141
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->qs()I

    move-result v7

    .line 145
    filled-new-array {v7, v6}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    .line 148
    filled-new-array {v7, v6}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    .line 149
    const/4 v10, 0x0

    :goto_0
    if-ge v10, v6, :cond_0

    .line 152
    const/4 v0, 0x0

    aget-object v0, v9, v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v10}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᒦ(I)I

    move-result v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ܕ(I)I

    move-result v1

    aput v1, v0, v10

    .line 149
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 155
    :cond_0
    const/4 v10, 0x1

    :goto_1
    if-ge v10, v7, :cond_2

    .line 157
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v6, :cond_1

    .line 160
    aget-object v0, v9, v10

    add-int/lit8 v1, v10, -0x1

    aget-object v1, v9, v1

    aget v1, v1, v11

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v11}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ᕽ(II)I

    move-result v1

    aput v1, v0, v11

    .line 157
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 155
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 165
    :cond_2
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_5

    .line 167
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v6, :cond_4

    .line 169
    const/4 v12, 0x0

    :goto_5
    if-gt v12, v10, :cond_3

    .line 171
    aget-object v0, v8, v10

    aget-object v1, v8, v10

    aget v1, v1, v11

    aget-object v2, v9, v12

    aget v2, v2, v11

    add-int v3, v7, v12

    sub-int/2addr v3, v10

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->Ꮣ(I)I

    move-result v3

    move-object/from16 v4, p0

    invoke-virtual {v4, v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ᕽ(II)I

    move-result v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ᕑ(II)I

    move-result v1

    aput v1, v0, v11

    .line 169
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 167
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 165
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 179
    :cond_5
    mul-int v0, v7, v5

    add-int/lit8 v1, v6, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    .line 181
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v6, :cond_9

    .line 183
    ushr-int/lit8 v12, v11, 0x5

    .line 184
    and-int/lit8 v0, v11, 0x1f

    const/4 v1, 0x1

    shl-int v13, v1, v0

    .line 185
    const/4 v14, 0x0

    :goto_7
    if-ge v14, v7, :cond_8

    .line 187
    aget-object v0, v8, v14

    aget v15, v0, v11

    .line 188
    const/16 v16, 0x0

    :goto_8
    move/from16 v0, v16

    if-ge v0, v5, :cond_7

    .line 190
    ushr-int v0, v15, v16

    and-int/lit8 v17, v0, 0x1

    .line 191
    if-eqz v17, :cond_6

    .line 193
    add-int/lit8 v0, v14, 0x1

    mul-int/2addr v0, v5

    sub-int v0, v0, v16

    add-int/lit8 v18, v0, -0x1

    .line 194
    aget-object v0, v10, v18

    aget v1, v0, v12

    xor-int/2addr v1, v13

    aput v1, v0, v12

    .line 188
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 185
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 181
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 200
    :cond_9
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, v6, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 17

    .line 260
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->qs()I

    move-result v0

    const/4 v1, 0x1

    shl-int v2, v1, v0

    .line 263
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v3, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;)V

    .line 273
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᐝ(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    .line 276
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᒨ(I)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v6

    .line 277
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ˊ([Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v6

    .line 280
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ʻ(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v7

    .line 283
    const/4 v0, 0x0

    aget-object v0, v7, v0

    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ˎ(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v8

    .line 284
    const/4 v0, 0x1

    aget-object v0, v7, v0

    const/4 v1, 0x1

    aget-object v1, v7, v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ˎ(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v9

    .line 285
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᘇ(I)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v10

    .line 286
    invoke-virtual {v8, v10}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v11

    .line 289
    invoke-virtual {v11}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->sF()I

    move-result v12

    .line 290
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ܕ(I)I

    move-result v13

    .line 291
    invoke-virtual {v11, v13}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᒫ(I)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v14

    .line 294
    const/4 v15, 0x0

    :goto_0
    if-ge v15, v2, :cond_1

    .line 297
    invoke-virtual {v14, v15}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᒦ(I)I

    move-result v16

    .line 299
    if-nez v16, :cond_0

    .line 302
    invoke-virtual {v3, v15}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ه(I)V

    .line 294
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 307
    :cond_1
    return-object v3
.end method

.method public static ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Ljava/security/SecureRandom;)Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;
    .locals 9

    .line 216
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getNumColumns()I

    move-result v1

    .line 218
    const/4 v4, 0x0

    .line 220
    const/4 v6, 0x0

    .line 224
    :cond_0
    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v5, v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    .line 225
    invoke-virtual {p0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-object v2, v0

    .line 226
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->sb()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v3

    .line 229
    const/4 v6, 0x1

    .line 230
    :try_start_0
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->sf()Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 235
    goto :goto_0

    .line 232
    :catch_0
    move-exception v7

    .line 234
    const/4 v6, 0x0

    .line 237
    :goto_0
    if-eqz v6, :cond_0

    .line 239
    invoke-virtual {v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/Matrix;)Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-object v7, v0

    .line 240
    invoke-virtual {v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->sd()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v8

    .line 242
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;

    invoke-direct {v0, v3, v8, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)V

    return-object v0
.end method
