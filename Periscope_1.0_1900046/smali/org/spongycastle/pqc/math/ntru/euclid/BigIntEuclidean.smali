.class public Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public aFO:Ljava/math/BigInteger;

.field public aPZ:Ljava/math/BigInteger;

.field public bjv:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static ͺ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;
    .locals 8

    .line 26
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 27
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 28
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 29
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 30
    :goto_0
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v5

    .line 33
    const/4 v0, 0x0

    aget-object v6, v5, v0

    .line 35
    move-object v7, p0

    .line 36
    move-object p0, p1

    .line 37
    const/4 v0, 0x1

    aget-object p1, v5, v0

    .line 39
    move-object v7, v1

    .line 40
    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 41
    move-object v2, v7

    .line 43
    move-object v7, v3

    .line 44
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 45
    move-object v4, v7

    .line 46
    goto :goto_0

    .line 48
    :cond_0
    new-instance v5, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;

    invoke-direct {v5}, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;-><init>()V

    .line 49
    iput-object v2, v5, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->aFO:Ljava/math/BigInteger;

    .line 50
    iput-object v4, v5, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->aPZ:Ljava/math/BigInteger;

    .line 51
    iput-object p0, v5, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->bjv:Ljava/math/BigInteger;

    .line 52
    return-object v5
.end method
