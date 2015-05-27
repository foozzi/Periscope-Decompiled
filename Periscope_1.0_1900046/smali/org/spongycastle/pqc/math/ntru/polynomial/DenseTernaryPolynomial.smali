.class public Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;
.super Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
.source ""

# interfaces
.implements Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 1

    .line 35
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    .line 36
    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 46
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->sO()V

    .line 47
    return-void
.end method

.method private sO()V
    .locals 5

    .line 51
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->bjG:[I

    array-length v0, v0

    if-eq v3, v0, :cond_2

    .line 53
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->bjG:[I

    aget v4, v0, v3

    .line 54
    const/4 v0, -0x1

    if-lt v4, v0, :cond_0

    const/4 v0, 0x1

    if-le v4, v0, :cond_1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must be one of {-1, 0, 1}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_2
    return-void
.end method

.method public static ˊ(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;
    .locals 2

    .line 71
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/pqc/math/ntru/util/Util;->ˎ(IIILjava/security/SecureRandom;)[I

    move-result-object v1

    .line 72
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public sP()[I
    .locals 6

    .line 108
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->bjG:[I

    array-length v1, v0

    .line 109
    new-array v2, v1, [I

    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 113
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->bjG:[I

    aget v5, v0, v4

    .line 114
    const/4 v0, 0x1

    if-ne v5, v0, :cond_0

    .line 116
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    aput v4, v2, v0

    .line 111
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public sQ()[I
    .locals 6

    .line 124
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->bjG:[I

    array-length v1, v0

    .line 125
    new-array v2, v1, [I

    .line 126
    const/4 v3, 0x0

    .line 127
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 129
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->bjG:[I

    aget v5, v0, v4

    .line 130
    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    .line 132
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    aput v4, v2, v0

    .line 127
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->bjG:[I

    array-length v0, v0

    return v0
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 3

    .line 93
    const/16 v0, 0x800

    if-ne p2, v0, :cond_0

    .line 95
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object v1, v0

    .line 96
    const/16 v0, 0x800

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ẋ(I)V

    .line 97
    new-instance v2, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;

    invoke-direct {v2, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 98
    invoke-virtual {v2, p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->ta()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    return-object v0
.end method
