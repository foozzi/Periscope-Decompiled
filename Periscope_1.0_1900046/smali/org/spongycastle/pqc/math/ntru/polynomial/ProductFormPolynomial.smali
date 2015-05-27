.class public Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;


# instance fields
.field private bjN:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

.field private bjO:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

.field private bjP:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjN:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    .line 22
    iput-object p2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjO:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    .line 23
    iput-object p3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjP:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    .line 24
    return-void
.end method

.method public static ˊ(IIIIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;
    .locals 4

    .line 28
    invoke-static {p0, p1, p1, p5}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ˋ(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    move-result-object v1

    .line 29
    invoke-static {p0, p2, p2, p5}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ˋ(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    move-result-object v2

    .line 30
    invoke-static {p0, p3, p4, p5}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ˋ(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    move-result-object v3

    .line 31
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 105
    if-ne p0, p1, :cond_0

    .line 107
    const/4 v0, 0x1

    return v0

    .line 109
    :cond_0
    if-nez p1, :cond_1

    .line 111
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 115
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    move-object v2, v0

    .line 118
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjN:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-nez v0, :cond_3

    .line 120
    iget-object v0, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjN:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-eqz v0, :cond_4

    .line 122
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjN:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v1, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjN:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 127
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjO:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-nez v0, :cond_5

    .line 131
    iget-object v0, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjO:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-eqz v0, :cond_6

    .line 133
    const/4 v0, 0x0

    return v0

    .line 136
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjO:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v1, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjO:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 138
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjP:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-nez v0, :cond_7

    .line 142
    iget-object v0, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjP:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-eqz v0, :cond_8

    .line 144
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjP:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v1, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjP:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 149
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 95
    const/16 v2, 0x1f

    .line 96
    const/4 v3, 0x1

    .line 97
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjN:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjN:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v3, v0, 0x1f

    .line 98
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjO:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjO:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->hashCode()I

    move-result v1

    :goto_1
    add-int v3, v0, v1

    .line 99
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjP:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjP:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->hashCode()I

    move-result v1

    :goto_2
    add-int v3, v0, v1

    .line 100
    return v3
.end method

.method public ta()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 3

    .line 81
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjN:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjO:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ta()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    .line 82
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjP:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ta()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 83
    return-object v2
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjN:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    .line 66
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjO:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    .line 67
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjP:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 68
    return-object v1
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 1

    .line 88
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->〳(I)V

    .line 90
    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjN:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v1

    .line 74
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjO:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v1

    .line 75
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->bjP:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 76
    return-object v1
.end method
