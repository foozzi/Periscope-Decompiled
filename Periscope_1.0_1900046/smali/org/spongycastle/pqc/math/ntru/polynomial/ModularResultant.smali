.class public Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
.super Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;
.source ""


# instance fields
.field ajI:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;)V

    .line 18
    iput-object p3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->ajI:Ljava/math/BigInteger;

    .line 19
    return-void
.end method

.method static ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;)Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    .locals 8

    .line 32
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->ajI:Ljava/math/BigInteger;

    .line 33
    iget-object v3, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->ajI:Ljava/math/BigInteger;

    .line 34
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 35
    invoke-static {v3, v2}, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->ͺ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;

    move-result-object v5

    .line 37
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->bjQ:Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-object v6, v0

    .line 38
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->aFO:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->י(Ljava/math/BigInteger;)V

    .line 39
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->bjQ:Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-object v7, v0

    .line 40
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->aPZ:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->י(Ljava/math/BigInteger;)V

    .line 41
    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 42
    invoke-virtual {v6, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ᴵ(Ljava/math/BigInteger;)V

    .line 44
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method
