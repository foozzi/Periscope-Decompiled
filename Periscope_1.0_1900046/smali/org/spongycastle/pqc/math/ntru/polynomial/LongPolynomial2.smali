.class public Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bjL:[J

.field private bjM:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 10

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    iput v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjM:I

    .line 23
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjM:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjM:I

    if-ge v6, v0, :cond_3

    .line 27
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    move v1, v6

    add-int/lit8 v6, v6, 0x1

    aget v7, v0, v1

    .line 28
    :goto_1
    if-gez v7, :cond_0

    .line 30
    add-int/lit16 v7, v7, 0x800

    goto :goto_1

    .line 32
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjM:I

    if-ge v6, v0, :cond_1

    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    move v1, v6

    add-int/lit8 v6, v6, 0x1

    aget v0, v0, v1

    int-to-long v8, v0

    goto :goto_2

    :cond_1
    const-wide/16 v8, 0x0

    .line 33
    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gez v0, :cond_2

    .line 35
    const-wide/16 v0, 0x800

    add-long/2addr v8, v0

    goto :goto_2

    .line 37
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    int-to-long v1, v7

    const/16 v3, 0x18

    shl-long v3, v8, v3

    add-long/2addr v1, v3

    aput-wide v1, v0, v5

    .line 38
    add-int/lit8 v5, v5, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    return-void
.end method

.method private constructor <init>([J)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    .line 45
    return-void
.end method

.method private ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .locals 21

    .line 113
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    .line 114
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    .line 116
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v8, v0

    .line 117
    const/16 v0, 0x20

    if-gt v8, v0, :cond_2

    .line 119
    mul-int/lit8 v9, v8, 0x2

    .line 120
    new-instance v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    new-array v0, v9, [J

    invoke-direct {v10, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 121
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_1

    .line 123
    sub-int v0, v11, v8

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_1
    add-int/lit8 v0, v8, -0x1

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gt v12, v0, :cond_0

    .line 125
    sub-int v0, v11, v12

    aget-wide v0, v6, v0

    aget-wide v2, v7, v12

    mul-long v13, v0, v2

    .line 126
    const-wide/16 v0, 0x7ff

    and-long/2addr v0, v13

    const-wide v2, 0x7ff000000L

    add-long/2addr v0, v2

    and-long v15, v13, v0

    .line 127
    const/16 v0, 0x30

    ushr-long v0, v13, v0

    const-wide/16 v2, 0x7ff

    and-long v17, v0, v2

    .line 129
    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    iget-object v1, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v1, v1, v11

    add-long/2addr v1, v15

    const-wide v3, 0x7ff0007ffL

    and-long/2addr v1, v3

    aput-wide v1, v0, v11

    .line 130
    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    add-int/lit8 v1, v11, 0x1

    iget-object v2, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    add-int/lit8 v3, v11, 0x1

    aget-wide v2, v2, v3

    add-long v2, v2, v17

    const-wide v4, 0x7ff0007ffL

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 123
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 121
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 133
    :cond_1
    return-object v10

    .line 137
    :cond_2
    div-int/lit8 v9, v8, 0x2

    .line 139
    new-instance v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v6, v9}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 140
    new-instance v11, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v6, v9, v8}, Lorg/spongycastle/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 141
    new-instance v12, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v7, v9}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-direct {v12, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 142
    new-instance v13, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v7, v9, v8}, Lorg/spongycastle/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    invoke-direct {v13, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 144
    invoke-virtual {v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-object v14, v0

    .line 145
    invoke-direct {v14, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 146
    invoke-virtual {v12}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-object v15, v0

    .line 147
    invoke-direct {v15, v13}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 149
    invoke-direct {v10, v12}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v16

    .line 150
    invoke-direct {v11, v13}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v17

    .line 151
    invoke-direct {v14, v15}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v18

    .line 152
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 153
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 155
    new-instance v19, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    mul-int/lit8 v0, v8, 0x2

    move-object/from16 v1, v19

    invoke-direct {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>(I)V

    .line 156
    const/16 v20, 0x0

    :goto_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v0, v0

    move/from16 v1, v20

    if-ge v1, v0, :cond_3

    .line 158
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    move-object/from16 v1, v16

    iget-object v1, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v1, v1, v20

    const-wide v3, 0x7ff0007ffL

    and-long/2addr v1, v3

    aput-wide v1, v0, v20

    .line 156
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 160
    :cond_3
    const/16 v20, 0x0

    :goto_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v0, v0

    move/from16 v1, v20

    if-ge v1, v0, :cond_4

    .line 162
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    add-int v1, v9, v20

    move-object/from16 v2, v19

    iget-object v2, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    add-int v3, v9, v20

    aget-wide v2, v2, v3

    move-object/from16 v4, v18

    iget-object v4, v4, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v4, v4, v20

    add-long/2addr v2, v4

    const-wide v4, 0x7ff0007ffL

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 160
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 164
    :cond_4
    const/16 v20, 0x0

    :goto_4
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v0, v0

    move/from16 v1, v20

    if-ge v1, v0, :cond_5

    .line 166
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    mul-int/lit8 v1, v9, 0x2

    add-int v1, v1, v20

    move-object/from16 v2, v19

    iget-object v2, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    mul-int/lit8 v3, v9, 0x2

    add-int v3, v3, v20

    aget-wide v2, v2, v3

    move-object/from16 v4, v17

    iget-object v4, v4, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v4, v4, v20

    add-long/2addr v2, v4

    const-wide v4, 0x7ff0007ffL

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 164
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 168
    :cond_5
    return-object v19
.end method

.method private ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V
    .locals 6

    .line 179
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    .line 183
    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v0, v0

    if-ge v5, v0, :cond_1

    .line 185
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v1, v1, v5

    iget-object v3, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v3, v3, v5

    add-long/2addr v1, v3

    const-wide v3, 0x7ff0007ffL

    and-long/2addr v1, v3

    aput-wide v1, v0, v5

    .line 183
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 187
    :cond_1
    return-void
.end method

.method private ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V
    .locals 6

    .line 196
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    .line 200
    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v0, v0

    if-ge v5, v0, :cond_1

    .line 202
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v1, v1, v5

    const-wide v3, 0x800000800000L

    add-long/2addr v1, v3

    iget-object v3, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v3, v3, v5

    sub-long/2addr v1, v3

    const-wide v3, 0x7ff0007ffL

    and-long/2addr v1, v3

    aput-wide v1, v0, v5

    .line 200
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 204
    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 239
    new-instance v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-direct {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 240
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjM:I

    iput v0, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjM:I

    .line 241
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 246
    instance-of v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    iget-object v1, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ˏ([J[J)Z

    move-result v0

    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ta()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 8

    .line 95
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjM:I

    new-array v5, v0, [I

    .line 96
    const/4 v6, 0x0

    .line 97
    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v0, v0

    if-ge v7, v0, :cond_1

    .line 99
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v1, v1, v7

    const-wide/16 v3, 0x7ff

    and-long/2addr v1, v3

    long-to-int v1, v1

    aput v1, v5, v0

    .line 100
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjM:I

    if-ge v6, v0, :cond_0

    .line 102
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v1, v1, v7

    const/16 v3, 0x18

    shr-long/2addr v1, v3

    const-wide/16 v3, 0x7ff

    and-long/2addr v1, v3

    long-to-int v1, v1

    aput v1, v5, v0

    .line 97
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 105
    :cond_1
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v0, v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .locals 11

    .line 57
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v8, v0

    .line 58
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v0, v0

    if-ne v0, v8, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjM:I

    iget v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjM:I

    if-eq v0, v1, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of coefficients must be the same"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v9

    .line 65
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v0, v0

    if-le v0, v8, :cond_5

    .line 67
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjM:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 69
    move v10, v8

    :goto_0
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v0, v0

    if-ge v10, v0, :cond_2

    .line 71
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    sub-int v1, v10, v8

    iget-object v2, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    sub-int v3, v10, v8

    aget-wide v2, v2, v3

    iget-object v4, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v4, v4, v10

    add-long/2addr v2, v4

    const-wide v4, 0x7ff0007ffL

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 69
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    invoke-static {v0, v8}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    goto/16 :goto_2

    .line 77
    :cond_3
    move v10, v8

    :goto_1
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v0, v0

    if-ge v10, v0, :cond_4

    .line 79
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    sub-int v1, v10, v8

    iget-object v2, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    sub-int v3, v10, v8

    aget-wide v2, v2, v3

    iget-object v4, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    add-int/lit8 v5, v10, -0x1

    aget-wide v4, v4, v5

    const/16 v6, 0x18

    shr-long/2addr v4, v6

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 80
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    sub-int v1, v10, v8

    iget-object v2, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    sub-int v3, v10, v8

    aget-wide v2, v2, v3

    iget-object v4, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v4, v4, v10

    const-wide/16 v6, 0x7ff

    and-long/2addr v4, v6

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 81
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    sub-int v1, v10, v8

    aget-wide v2, v0, v1

    const-wide v4, 0x7ff0007ffL

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 77
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 83
    :cond_4
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    invoke-static {v0, v8}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    .line 84
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    iget-object v1, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x7ff

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 88
    :cond_5
    :goto_2
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    iget-object v1, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    move-object v9, v0

    .line 89
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjM:I

    iput v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjM:I

    .line 90
    return-object v9
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;I)V
    .locals 8

    .line 215
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    int-to-long v2, p2

    add-long v5, v0, v2

    .line 216
    const/4 v7, 0x0

    :goto_0
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v1, v1, v7

    const-wide v3, 0x800000800000L

    add-long/2addr v1, v3

    iget-object v3, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v3, v3, v7

    sub-long/2addr v1, v3

    and-long/2addr v1, v5

    aput-wide v1, v0, v7

    .line 216
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method public לּ(I)V
    .locals 7

    .line 230
    int-to-long v0, p1

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    int-to-long v2, p1

    add-long v4, v0, v2

    .line 231
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->bjL:[J

    aget-wide v1, v1, v6

    const/4 v3, 0x1

    shl-long/2addr v1, v3

    and-long/2addr v1, v4

    aput-wide v1, v0, v6

    .line 231
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method
