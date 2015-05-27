.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
.super Lorg/spongycastle/pqc/math/linearalgebra/Vector;
.source ""


# instance fields
.field private biT:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 29
    if-gez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative length."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    .line 34
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    .line 35
    return-void
.end method

.method public constructor <init>(IILjava/security/SecureRandom;)V
    .locals 7

    .line 74
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 75
    if-le p2, p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The hamming weight is greater than the length of vector."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    .line 82
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v2, v0, 0x5

    .line 83
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    .line 85
    new-array v3, p1, [I

    .line 86
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    .line 88
    aput v4, v3, v4

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    :cond_1
    move v4, p1

    .line 92
    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_2

    .line 94
    invoke-static {p3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->ˎ(Ljava/security/SecureRandom;I)I

    move-result v6

    .line 95
    aget v0, v3, v6

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ه(I)V

    .line 96
    add-int/lit8 v4, v4, -0x1

    .line 97
    aget v0, v3, v4

    aput v0, v3, v6

    .line 92
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 99
    :cond_2
    return-void
.end method

.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 7

    .line 44
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 45
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    .line 47
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v5, v0, 0x5

    .line 48
    new-array v0, v5, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    .line 51
    add-int/lit8 v6, v5, -0x1

    :goto_0
    if-ltz v6, :cond_0

    .line 53
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    aput v1, v0, v6

    .line 51
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 57
    :cond_0
    and-int/lit8 v6, p1, 0x1f

    .line 58
    if-eqz v6, :cond_1

    .line 61
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    add-int/lit8 v1, v5, -0x1

    aget v2, v0, v1

    const/4 v3, 0x1

    shl-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 63
    :cond_1
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 7

    .line 109
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 110
    if-gez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "negative length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    .line 116
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v5, v0, 0x5

    .line 118
    array-length v0, p2

    if-eq v0, v5, :cond_1

    .line 120
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->י([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    .line 125
    and-int/lit8 v6, p1, 0x1f

    .line 126
    if-eqz v6, :cond_2

    .line 129
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    add-int/lit8 v1, v5, -0x1

    aget v2, v0, v1

    const/4 v3, 0x1

    shl-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 131
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 140
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    .line 141
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->י([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    .line 142
    return-void
.end method

.method protected constructor <init>([II)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 154
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    .line 155
    iput p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    .line 156
    return-void
.end method

.method public static ʼ(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 3

    .line 168
    if-gez p0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "negative length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    add-int/lit8 v0, p0, 0x7

    shr-int/lit8 v2, v0, 0x3

    .line 175
    array-length v0, p1

    if-le v0, v2, :cond_1

    .line 177
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->Ι([B)[I

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I[I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 493
    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    if-nez v0, :cond_0

    .line 495
    const/4 v0, 0x0

    return v0

    .line 497
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-object v2, v0

    .line 499
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    iget v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEncoded()[B
    .locals 3

    .line 190
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v2, v0, 0x3

    .line 191
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    invoke-static {v0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->ʼ([II)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 507
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    .line 508
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 509
    return v2
.end method

.method public isZero()Z
    .locals 3

    .line 232
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 234
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    return v0

    .line 232
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 239
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public sq()[I
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    return-object v0
.end method

.method public sr()I
    .locals 6

    .line 210
    const/4 v1, 0x0

    .line 211
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    array-length v0, v0

    if-ge v2, v0, :cond_2

    .line 213
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    aget v3, v0, v2

    .line 214
    const/4 v4, 0x0

    :goto_1
    const/16 v0, 0x20

    if-ge v4, v0, :cond_1

    .line 216
    and-int/lit8 v5, v3, 0x1

    .line 217
    if-eqz v5, :cond_0

    .line 219
    add-int/lit8 v1, v1, 0x1

    .line 221
    :cond_0
    ushr-int/lit8 v3, v3, 0x1

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 211
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 517
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 518
    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-ge v3, v0, :cond_2

    .line 520
    if-eqz v3, :cond_0

    and-int/lit8 v0, v3, 0x1f

    if-nez v0, :cond_0

    .line 522
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 524
    :cond_0
    shr-int/lit8 v4, v3, 0x5

    .line 525
    and-int/lit8 v5, v3, 0x1f

    .line 526
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    aget v0, v0, v4

    const/4 v1, 0x1

    shl-int/2addr v1, v5

    and-int v6, v0, v1

    .line 527
    if-nez v6, :cond_1

    .line 529
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 533
    :cond_1
    const/16 v0, 0x31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 518
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 536
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;
    .locals 11

    .line 457
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->qs()I

    move-result v2

    .line 458
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 460
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "conversion is impossible"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    div-int v3, v0, v2

    .line 464
    new-array v4, v3, [I

    .line 465
    const/4 v5, 0x0

    .line 466
    add-int/lit8 v6, v3, -0x1

    :goto_0
    if-ltz v6, :cond_3

    .line 468
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->qs()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    :goto_1
    if-ltz v7, :cond_2

    .line 470
    ushr-int/lit8 v8, v5, 0x5

    .line 471
    and-int/lit8 v9, v5, 0x1f

    .line 473
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    aget v0, v0, v8

    ushr-int/2addr v0, v9

    and-int/lit8 v10, v0, 0x1

    .line 474
    const/4 v0, 0x1

    if-ne v10, v0, :cond_1

    .line 476
    aget v0, v4, v6

    const/4 v1, 0x1

    shl-int/2addr v1, v7

    xor-int/2addr v0, v1

    aput v0, v4, v6

    .line 478
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 468
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 466
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 481
    :cond_3
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    invoke-direct {v0, p1, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    .locals 9

    .line 313
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->sD()[I

    move-result-object v5

    .line 314
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    array-length v1, v5

    if-eq v0, v1, :cond_0

    .line 316
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    invoke-direct {v6, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 321
    const/4 v7, 0x0

    :goto_0
    array-length v0, v5

    if-ge v7, v0, :cond_2

    .line 323
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    aget v1, v5, v7

    shr-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    aget v1, v5, v7

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int v8, v0, v1

    .line 324
    if-eqz v8, :cond_1

    .line 326
    iget-object v0, v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    shr-int/lit8 v1, v7, 0x5

    aget v2, v0, v1

    and-int/lit8 v3, v7, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 321
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 330
    :cond_2
    return-object v6
.end method

.method public ˏ(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    .locals 5

    .line 284
    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-object v2, v0

    .line 290
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    iget v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-eq v0, v1, :cond_1

    .line 292
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget-object v0, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->י([I)[I

    move-result-object v3

    .line 297
    array-length v0, v3

    add-int/lit8 v4, v0, -0x1

    :goto_0
    if-ltz v4, :cond_2

    .line 299
    aget v0, v3, v4

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    aget v1, v1, v4

    xor-int/2addr v0, v1

    aput v0, v3, v4

    .line 297
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 302
    :cond_2
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I[I)V

    return-object v0
.end method

.method public ه(I)V
    .locals 5

    .line 267
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-lt p1, v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 272
    return-void
.end method

.method public ە(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 11

    .line 407
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-le p1, v0, :cond_0

    .line 409
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-ne p1, v0, :cond_1

    .line 414
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)V

    return-object v0

    .line 417
    :cond_1
    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v5, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 419
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    sub-int/2addr v0, p1

    shr-int/lit8 v6, v0, 0x5

    .line 420
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    sub-int/2addr v0, p1

    and-int/lit8 v7, v0, 0x1f

    .line 421
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v8, v0, 0x5

    .line 423
    move v9, v6

    .line 425
    if-eqz v7, :cond_3

    .line 428
    const/4 v10, 0x0

    :goto_0
    add-int/lit8 v0, v8, -0x1

    if-ge v10, v0, :cond_2

    .line 430
    iget-object v0, v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    move v2, v9

    add-int/lit8 v9, v9, 0x1

    aget v1, v1, v2

    ushr-int/2addr v1, v7

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    aget v2, v2, v9

    rsub-int/lit8 v3, v7, 0x20

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v10

    .line 428
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 433
    :cond_2
    iget-object v0, v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    add-int/lit8 v1, v8, -0x1

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    move v3, v9

    add-int/lit8 v9, v9, 0x1

    aget v2, v2, v3

    ushr-int/2addr v2, v7

    aput v2, v0, v1

    .line 434
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    array-length v0, v0

    if-ge v9, v0, :cond_4

    .line 436
    iget-object v0, v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    add-int/lit8 v1, v8, -0x1

    aget v2, v0, v1

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    aget v3, v3, v9

    rsub-int/lit8 v4, v7, 0x20

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    goto :goto_1

    .line 442
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    iget-object v1, v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->biT:[I

    const/4 v2, 0x0

    invoke-static {v0, v6, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    :cond_4
    :goto_1
    return-object v5
.end method
