.class public Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bjz:D


# instance fields
.field bjA:[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    sput-wide v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjz:D

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, p1, [Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    .line 31
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 33
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->bjB:Ljava/math/BigInteger;

    aput-object v1, v0, v2

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    .line 56
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v1, v3

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v3

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method constructor <init>([Ljava/math/BigInteger;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    .line 45
    return-void
.end method

.method private sN()Ljava/math/BigInteger;
    .locals 5

    .line 312
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    .line 313
    const/4 v3, 0x1

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 315
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v4

    .line 316
    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    .line 318
    move-object v2, v4

    .line 313
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    :cond_1
    return-object v2
.end method

.method private ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    .locals 19

    .line 130
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    .line 131
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    .line 133
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v6, v0

    .line 134
    const/4 v0, 0x1

    if-gt v6, v0, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->ˊ([Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v7

    .line 137
    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 139
    aget-object v0, v7, v8

    move-object/from16 v1, p1

    iget-object v1, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, v7, v8

    .line 137
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-direct {v0, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>([Ljava/math/BigInteger;)V

    return-object v0

    .line 145
    :cond_1
    div-int/lit8 v7, v6, 0x2

    .line 147
    new-instance v8, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-static {v4, v7}, Lorg/spongycastle/util/Arrays;->ˊ([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>([Ljava/math/BigInteger;)V

    .line 148
    new-instance v9, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-static {v4, v7, v6}, Lorg/spongycastle/util/Arrays;->ˊ([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>([Ljava/math/BigInteger;)V

    .line 149
    new-instance v10, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-static {v5, v7}, Lorg/spongycastle/util/Arrays;->ˊ([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>([Ljava/math/BigInteger;)V

    .line 150
    new-instance v11, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-static {v5, v7, v6}, Lorg/spongycastle/util/Arrays;->ˊ([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>([Ljava/math/BigInteger;)V

    .line 152
    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-object v12, v0

    .line 153
    invoke-virtual {v12, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 154
    invoke-virtual {v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-object v13, v0

    .line 155
    invoke-virtual {v13, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 157
    invoke-direct {v8, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v14

    .line 158
    invoke-direct {v9, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v15

    .line 159
    invoke-direct {v12, v13}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v16

    .line 160
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ᐝ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 161
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ᐝ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 163
    new-instance v17, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    mul-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v1, v17

    invoke-direct {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>(I)V

    .line 164
    const/16 v18, 0x0

    :goto_1
    iget-object v0, v14, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    move/from16 v1, v18

    if-ge v1, v0, :cond_2

    .line 166
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    iget-object v1, v14, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v1, v1, v18

    aput-object v1, v0, v18

    .line 164
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 168
    :cond_2
    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    move/from16 v1, v18

    if-ge v1, v0, :cond_3

    .line 170
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    add-int v1, v7, v18

    move-object/from16 v2, v17

    iget-object v2, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    add-int v3, v7, v18

    aget-object v2, v2, v3

    move-object/from16 v3, v16

    iget-object v3, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v3, v3, v18

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v1

    .line 168
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 172
    :cond_3
    const/16 v18, 0x0

    :goto_3
    iget-object v0, v15, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    move/from16 v1, v18

    if-ge v1, v0, :cond_4

    .line 174
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    mul-int/lit8 v1, v7, 0x2

    add-int v1, v1, v18

    move-object/from16 v2, v17

    iget-object v2, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    mul-int/lit8 v3, v7, 0x2

    add-int v3, v3, v18

    aget-object v2, v2, v3

    iget-object v3, v15, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v3, v3, v18

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v1

    .line 172
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 176
    :cond_4
    return-object v17
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 357
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    invoke-virtual {v1}, [Ljava/math/BigInteger;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>([Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 370
    if-ne p0, p1, :cond_0

    .line 372
    const/4 v0, 0x1

    return v0

    .line 374
    :cond_0
    if-nez p1, :cond_1

    .line 376
    const/4 v0, 0x0

    return v0

    .line 378
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 380
    const/4 v0, 0x0

    return v0

    .line 382
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-object v2, v0

    .line 383
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    iget-object v1, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ˋ([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 385
    const/4 v0, 0x0

    return v0

    .line 387
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 362
    const/16 v2, 0x1f

    .line 363
    const/4 v3, 0x1

    .line 364
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1f

    .line 365
    return v3
.end method

.method public sM()I
    .locals 4

    .line 307
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->sN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    int-to-double v0, v0

    sget-wide v2, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjz:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public ˊ(Ljava/math/BigDecimal;I)Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;
    .locals 9

    .line 284
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->sN()Ljava/math/BigInteger;

    move-result-object v4

    .line 285
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    int-to-double v0, v0

    sget-wide v2, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjz:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v5, v0, 0x1

    .line 287
    sget-object v0, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->bjD:Ljava/math/BigDecimal;

    add-int v1, v5, p2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v6

    .line 290
    new-instance v7, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    invoke-direct {v7, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;-><init>(I)V

    .line 291
    const/4 v8, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 294
    iget-object v0, v7, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v2, v2, v8

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v6}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, p2, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v8

    .line 291
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 297
    :cond_0
    return-object v7
.end method

.method public ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    .locals 7

    .line 106
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v4, v0

    .line 107
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-eq v0, v4, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of coefficients must be the same"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v5

    .line 114
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-le v0, v4, :cond_2

    .line 116
    move v6, v4

    :goto_0
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 118
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    sub-int v1, v6, v4

    iget-object v2, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    sub-int v3, v6, v4

    aget-object v2, v2, v3

    iget-object v3, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v1

    .line 116
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    invoke-static {v0, v4}, Lorg/spongycastle/util/Arrays;->ˊ([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    .line 122
    :cond_2
    return-object v5
.end method

.method public ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V
    .locals 5

    .line 199
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v3, v0

    .line 202
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ˊ([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    .line 203
    move v4, v3

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->bjB:Ljava/math/BigInteger;

    aput-object v1, v0, v4

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 210
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v1, v1, v3

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v3

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 212
    :cond_1
    return-void
.end method

.method public י(Ljava/math/BigInteger;)V
    .locals 3

    .line 243
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v2

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method public ٴ(Ljava/math/BigInteger;)V
    .locals 5

    .line 267
    sget-object v0, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->bjC:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 268
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge v4, v0, :cond_1

    .line 270
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v1, v1, v4

    sget-object v2, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->bjB:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v1, v1, v4

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v1, v1, v4

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :goto_1
    aput-object v1, v0, v4

    .line 271
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v4

    .line 268
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 273
    :cond_1
    return-void
.end method

.method public ᐝ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V
    .locals 5

    .line 221
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v3, v0

    .line 224
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ˊ([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    .line 225
    move v4, v3

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->bjB:Ljava/math/BigInteger;

    aput-object v1, v0, v4

    .line 225
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 230
    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 232
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v1, v1, v3

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v3

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 234
    :cond_1
    return-void
.end method

.method public ᴵ(Ljava/math/BigInteger;)V
    .locals 3

    .line 331
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v2

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_0
    return-void
.end method
