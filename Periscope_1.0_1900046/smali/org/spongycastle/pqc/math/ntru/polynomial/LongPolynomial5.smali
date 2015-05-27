.class public Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bjL:[J

.field private bjM:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 8

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    iput v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjM:I

    .line 24
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjM:I

    add-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjL:[J

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjM:I

    if-ge v7, v0, :cond_1

    .line 29
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjL:[J

    aget-wide v1, v0, v5

    iget-object v3, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v3, v3, v7

    int-to-long v3, v3

    shl-long/2addr v3, v6

    or-long/2addr v1, v3

    aput-wide v1, v0, v5

    .line 30
    add-int/lit8 v6, v6, 0xc

    .line 31
    const/16 v0, 0x3c

    if-lt v6, v0, :cond_0

    .line 33
    const/4 v6, 0x0

    .line 34
    add-int/lit8 v5, v5, 0x1

    .line 27
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method private constructor <init>([JI)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjL:[J

    .line 42
    iput p2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjM:I

    .line 43
    return-void
.end method


# virtual methods
.method public ta()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 8

    .line 134
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjM:I

    new-array v4, v0, [I

    .line 135
    const/4 v5, 0x0

    .line 136
    const/4 v6, 0x0

    .line 137
    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjM:I

    if-ge v7, v0, :cond_1

    .line 139
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjL:[J

    aget-wide v0, v0, v5

    shr-long/2addr v0, v6

    const-wide/16 v2, 0x7ff

    and-long/2addr v0, v2

    long-to-int v0, v0

    aput v0, v4, v7

    .line 140
    add-int/lit8 v6, v6, 0xc

    .line 141
    const/16 v0, 0x3c

    if-lt v6, v0, :cond_0

    .line 143
    const/4 v6, 0x0

    .line 144
    add-int/lit8 v5, v5, 0x1

    .line 137
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;
    .locals 21

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjL:[J

    array-length v0, v0

    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x5

    filled-new-array {v1, v0}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    .line 53
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;->sP()[I

    move-result-object v6

    .line 54
    const/4 v7, 0x0

    :goto_0
    array-length v0, v6

    if-eq v7, v0, :cond_1

    .line 56
    aget v8, v6, v7

    .line 57
    div-int/lit8 v9, v8, 0x5

    .line 58
    mul-int/lit8 v0, v9, 0x5

    sub-int v10, v8, v0

    .line 59
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjL:[J

    array-length v0, v0

    if-ge v11, v0, :cond_0

    .line 61
    aget-object v0, v5, v10

    aget-object v1, v5, v10

    aget-wide v1, v1, v9

    move-object/from16 v3, p0

    iget-object v3, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjL:[J

    aget-wide v3, v3, v11

    add-long/2addr v1, v3

    const-wide v3, 0x7ff7ff7ff7ff7ffL    # 3.726599941343702E-270

    and-long/2addr v1, v3

    aput-wide v1, v0, v9

    .line 62
    add-int/lit8 v9, v9, 0x1

    .line 59
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 54
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;->sQ()[I

    move-result-object v7

    .line 68
    const/4 v8, 0x0

    :goto_2
    array-length v0, v7

    if-eq v8, v0, :cond_3

    .line 70
    aget v9, v7, v8

    .line 71
    div-int/lit8 v10, v9, 0x5

    .line 72
    mul-int/lit8 v0, v10, 0x5

    sub-int v11, v9, v0

    .line 73
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjL:[J

    array-length v0, v0

    if-ge v12, v0, :cond_2

    .line 75
    aget-object v0, v5, v11

    aget-object v1, v5, v11

    aget-wide v1, v1, v10

    const-wide v3, 0x800800800800800L

    add-long/2addr v1, v3

    move-object/from16 v3, p0

    iget-object v3, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjL:[J

    aget-wide v3, v3, v12

    sub-long/2addr v1, v3

    const-wide v3, 0x7ff7ff7ff7ff7ffL    # 3.726599941343702E-270

    and-long/2addr v1, v3

    aput-wide v1, v0, v10

    .line 76
    add-int/lit8 v10, v10, 0x1

    .line 73
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 68
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 81
    :cond_3
    const/4 v0, 0x0

    aget-object v0, v5, v0

    const/4 v1, 0x0

    aget-object v1, v5, v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    .line 82
    const/4 v9, 0x1

    :goto_4
    const/4 v0, 0x4

    if-gt v9, v0, :cond_5

    .line 84
    mul-int/lit8 v10, v9, 0xc

    .line 85
    rsub-int/lit8 v11, v10, 0x3c

    .line 86
    const-wide/16 v0, 0x1

    shl-long/2addr v0, v11

    const-wide/16 v2, 0x1

    sub-long v12, v0, v2

    .line 87
    aget-object v0, v5, v9

    array-length v14, v0

    .line 88
    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_4

    .line 91
    aget-object v0, v5, v9

    aget-wide v0, v0, v15

    shr-long v16, v0, v11

    .line 92
    aget-object v0, v5, v9

    aget-wide v0, v0, v15

    and-long v18, v0, v12

    .line 94
    aget-wide v0, v8, v15

    shl-long v2, v18, v10

    add-long/2addr v0, v2

    const-wide v2, 0x7ff7ff7ff7ff7ffL    # 3.726599941343702E-270

    and-long/2addr v0, v2

    aput-wide v0, v8, v15

    .line 95
    add-int/lit8 v20, v15, 0x1

    .line 96
    aget-wide v0, v8, v20

    add-long v0, v0, v16

    const-wide v2, 0x7ff7ff7ff7ff7ffL    # 3.726599941343702E-270

    and-long/2addr v0, v2

    aput-wide v0, v8, v20

    .line 88
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 82
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 101
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjM:I

    rem-int/lit8 v0, v0, 0x5

    mul-int/lit8 v9, v0, 0xc

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjL:[J

    array-length v0, v0

    add-int/lit8 v10, v0, -0x1

    :goto_6
    array-length v0, v8

    if-ge v10, v0, :cond_9

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjL:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_7

    .line 108
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjM:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    const-wide/16 v11, 0x0

    goto :goto_7

    :cond_6
    aget-wide v0, v8, v10

    shr-long v11, v0, v9

    .line 109
    :goto_7
    const/4 v13, 0x0

    goto :goto_8

    .line 113
    :cond_7
    aget-wide v11, v8, v10

    .line 114
    mul-int/lit8 v0, v10, 0x5

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjM:I

    sub-int v13, v0, v1

    .line 117
    :goto_8
    div-int/lit8 v14, v13, 0x5

    .line 118
    mul-int/lit8 v0, v14, 0x5

    sub-int v15, v13, v0

    .line 119
    mul-int/lit8 v0, v15, 0xc

    shl-long v16, v11, v0

    .line 120
    rsub-int/lit8 v0, v15, 0x5

    mul-int/lit8 v0, v0, 0xc

    shr-long v18, v11, v0

    .line 121
    aget-wide v0, v8, v14

    add-long v0, v0, v16

    const-wide v2, 0x7ff7ff7ff7ff7ffL    # 3.726599941343702E-270

    and-long/2addr v0, v2

    aput-wide v0, v8, v14

    .line 122
    add-int/lit8 v20, v14, 0x1

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjL:[J

    array-length v0, v0

    move/from16 v1, v20

    if-ge v1, v0, :cond_8

    .line 125
    aget-wide v0, v8, v20

    add-long v0, v0, v18

    const-wide v2, 0x7ff7ff7ff7ff7ffL    # 3.726599941343702E-270

    and-long/2addr v0, v2

    aput-wide v0, v8, v20

    .line 102
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 129
    :cond_9
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->bjM:I

    invoke-direct {v0, v8, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;-><init>([JI)V

    return-object v0
.end method
