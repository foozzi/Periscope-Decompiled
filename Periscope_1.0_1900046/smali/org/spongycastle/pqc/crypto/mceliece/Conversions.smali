.class final Lorg/spongycastle/pqc/crypto/mceliece/Conversions;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ZERO:Ljava/math/BigInteger;

    .line 16
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static ˊ(IILorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[B
    .locals 11

    .line 93
    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getLength()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->sr()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vector has wrong length or hamming weight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->sq()[I

    move-result-object v3

    .line 100
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ᵄ(II)Ljava/math/BigInteger;

    move-result-object v4

    .line 101
    sget-object v5, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ZERO:Ljava/math/BigInteger;

    .line 102
    move v6, p0

    .line 103
    move v7, p1

    .line 104
    const/4 v8, 0x0

    :goto_0
    if-ge v8, p0, :cond_4

    .line 106
    sub-int v0, v6, v7

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v1, v6

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 108
    add-int/lit8 v6, v6, -0x1

    .line 110
    shr-int/lit8 v9, v8, 0x5

    .line 111
    aget v0, v3, v9

    and-int/lit8 v1, v8, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int v10, v0, v1

    .line 112
    if-eqz v10, :cond_3

    .line 114
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 115
    add-int/lit8 v7, v7, -0x1

    .line 116
    if-ne v6, v7, :cond_2

    .line 118
    sget-object v4, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    goto :goto_1

    .line 122
    :cond_2
    add-int/lit8 v0, v7, 0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sub-int v1, v6, v7

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 104
    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 129
    :cond_4
    invoke-static {v5}, Lorg/spongycastle/pqc/math/linearalgebra/BigIntUtils;->ՙ(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public static ˋ(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 9

    .line 37
    if-ge p0, p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < t"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ᵄ(II)Ljava/math/BigInteger;

    move-result-object v3

    .line 45
    new-instance v4, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v4, v0, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 47
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encoded number too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v5, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 54
    move v6, p0

    .line 55
    move v7, p1

    .line 56
    const/4 v8, 0x0

    :goto_0
    if-ge v8, p0, :cond_4

    .line 58
    sub-int v0, v6, v7

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v1, v6

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 60
    add-int/lit8 v6, v6, -0x1

    .line 61
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 63
    invoke-virtual {v5, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ه(I)V

    .line 64
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 65
    add-int/lit8 v7, v7, -0x1

    .line 66
    if-ne v6, v7, :cond_2

    .line 68
    sget-object v3, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    goto :goto_1

    .line 72
    :cond_2
    add-int/lit8 v0, v7, 0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sub-int v1, v6, v7

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 56
    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 78
    :cond_4
    return-object v5
.end method
