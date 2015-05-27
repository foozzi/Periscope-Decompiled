.class public Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;


# instance fields
.field private aMJ:I

.field private bjS:[I

.field private bjT:[I


# direct methods
.method public constructor <init>([I)V
    .locals 7

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    array-length v0, p1

    iput v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    .line 60
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjS:[I

    .line 61
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjT:[I

    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    if-ge v5, v0, :cond_0

    .line 66
    aget v6, p1, v5

    .line 67
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 70
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjS:[I

    move v1, v3

    add-int/lit8 v3, v3, 0x1

    aput v5, v0, v1

    .line 71
    goto :goto_2

    .line 73
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjT:[I

    move v1, v4

    add-int/lit8 v4, v4, 0x1

    aput v5, v0, v1

    .line 74
    goto :goto_2

    .line 76
    :pswitch_2
    goto :goto_2

    .line 78
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must be one of {-1, 0, 1}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjS:[I

    invoke-static {v0, v3}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjS:[I

    .line 82
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjT:[I

    invoke-static {v0, v4}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjT:[I

    .line 83
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static ˋ(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    .locals 2

    .line 122
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/pqc/math/ntru/util/Util;->ˎ(IIILjava/security/SecureRandom;)[I

    move-result-object v1

    .line 123
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 293
    if-ne p0, p1, :cond_0

    .line 295
    const/4 v0, 0x1

    return v0

    .line 297
    :cond_0
    if-nez p1, :cond_1

    .line 299
    const/4 v0, 0x0

    return v0

    .line 301
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 303
    const/4 v0, 0x0

    return v0

    .line 305
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    move-object v2, v0

    .line 306
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    iget v1, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    if-eq v0, v1, :cond_3

    .line 308
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjT:[I

    iget-object v1, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjT:[I

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ՙ([I[I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 312
    const/4 v0, 0x0

    return v0

    .line 314
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjS:[I

    iget-object v1, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjS:[I

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ՙ([I[I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 316
    const/4 v0, 0x0

    return v0

    .line 318
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 283
    const/16 v2, 0x1f

    .line 284
    const/4 v3, 0x1

    .line 285
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    add-int/lit8 v3, v0, 0x1f

    .line 286
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjT:[I

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([I)I

    move-result v1

    add-int v3, v0, v1

    .line 287
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjS:[I

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([I)I

    move-result v1

    add-int v3, v0, v1

    .line 288
    return v3
.end method

.method public sP()[I
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjS:[I

    return-object v0
.end method

.method public sQ()[I
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjT:[I

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 266
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    return v0
.end method

.method public ta()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 4

    .line 250
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    new-array v1, v0, [I

    .line 251
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjS:[I

    array-length v0, v0

    if-eq v2, v0, :cond_0

    .line 253
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjS:[I

    aget v3, v0, v2

    .line 254
    const/4 v0, 0x1

    aput v0, v1, v3

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjT:[I

    array-length v0, v0

    if-eq v2, v0, :cond_1

    .line 258
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjT:[I

    aget v3, v0, v2

    .line 259
    const/4 v0, -0x1

    aput v0, v1, v3

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 261
    :cond_1
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 8

    .line 128
    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    .line 129
    array-length v0, v2

    iget v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    if-eq v0, v1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of coefficients must be the same"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    new-array v3, v0, [I

    .line 135
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjS:[I

    array-length v0, v0

    if-eq v4, v0, :cond_3

    .line 137
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjS:[I

    aget v5, v0, v4

    .line 138
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    add-int/lit8 v0, v0, -0x1

    sub-int v6, v0, v5

    .line 139
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    add-int/lit8 v7, v0, -0x1

    :goto_1
    if-ltz v7, :cond_2

    .line 141
    aget v0, v3, v7

    aget v1, v2, v6

    add-int/2addr v0, v1

    aput v0, v3, v7

    .line 142
    add-int/lit8 v6, v6, -0x1

    .line 143
    if-gez v6, :cond_1

    .line 145
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    add-int/lit8 v6, v0, -0x1

    .line 139
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 135
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    :cond_3
    const/4 v4, 0x0

    :goto_2
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjT:[I

    array-length v0, v0

    if-eq v4, v0, :cond_6

    .line 152
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjT:[I

    aget v5, v0, v4

    .line 153
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    add-int/lit8 v0, v0, -0x1

    sub-int v6, v0, v5

    .line 154
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    add-int/lit8 v7, v0, -0x1

    :goto_3
    if-ltz v7, :cond_5

    .line 156
    aget v0, v3, v7

    aget v1, v2, v6

    sub-int/2addr v0, v1

    aput v0, v3, v7

    .line 157
    add-int/lit8 v6, v6, -0x1

    .line 158
    if-gez v6, :cond_4

    .line 160
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    add-int/lit8 v6, v0, -0x1

    .line 154
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 150
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 165
    :cond_6
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v0, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 1

    .line 170
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->〳(I)V

    .line 172
    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    .locals 8

    .line 177
    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    .line 178
    array-length v0, v2

    iget v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    if-eq v0, v1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of coefficients must be the same"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    new-array v3, v0, [Ljava/math/BigInteger;

    .line 184
    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    if-ge v4, v0, :cond_1

    .line 186
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v0, v3, v4

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjS:[I

    array-length v0, v0

    if-eq v4, v0, :cond_4

    .line 191
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjS:[I

    aget v5, v0, v4

    .line 192
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    add-int/lit8 v0, v0, -0x1

    sub-int v6, v0, v5

    .line 193
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    add-int/lit8 v7, v0, -0x1

    :goto_2
    if-ltz v7, :cond_3

    .line 195
    aget-object v0, v3, v7

    aget-object v1, v2, v6

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, v3, v7

    .line 196
    add-int/lit8 v6, v6, -0x1

    .line 197
    if-gez v6, :cond_2

    .line 199
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    add-int/lit8 v6, v0, -0x1

    .line 193
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 189
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 204
    :cond_4
    const/4 v4, 0x0

    :goto_3
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjT:[I

    array-length v0, v0

    if-eq v4, v0, :cond_7

    .line 206
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->bjT:[I

    aget v5, v0, v4

    .line 207
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    add-int/lit8 v0, v0, -0x1

    sub-int v6, v0, v5

    .line 208
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    add-int/lit8 v7, v0, -0x1

    :goto_4
    if-ltz v7, :cond_6

    .line 210
    aget-object v0, v3, v7

    aget-object v1, v2, v6

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, v3, v7

    .line 211
    add-int/lit8 v6, v6, -0x1

    .line 212
    if-gez v6, :cond_5

    .line 214
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->aMJ:I

    add-int/lit8 v6, v0, -0x1

    .line 208
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 204
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 219
    :cond_7
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-direct {v0, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>([Ljava/math/BigInteger;)V

    return-object v0
.end method
