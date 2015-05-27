.class public Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ZERO:Ljava/math/BigDecimal;

.field private static final bjx:Ljava/math/BigDecimal;


# instance fields
.field bjy:[Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ZERO:Ljava/math/BigDecimal;

    .line 13
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.5"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjx:Ljava/math/BigDecimal;

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, p1, [Ljava/math/BigDecimal;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    .line 25
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 27
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    sget-object v1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ZERO:Ljava/math/BigDecimal;

    aput-object v1, v0, v2

    .line 25
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V
    .locals 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v3, v0

    .line 49
    new-array v0, v3, [Ljava/math/BigDecimal;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    .line 50
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 52
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v2, v2, v4

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    aput-object v1, v0, v4

    .line 50
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method constructor <init>([Ljava/math/BigDecimal;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    .line 39
    return-void
.end method

.method private ˊ([Ljava/math/BigDecimal;I)[Ljava/math/BigDecimal;
    .locals 4

    .line 232
    new-array v3, p2, [Ljava/math/BigDecimal;

    .line 234
    array-length v0, p1

    if-ge v0, p2, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    return-object v3
.end method

.method private ˊ([Ljava/math/BigDecimal;II)[Ljava/math/BigDecimal;
    .locals 4

    .line 241
    sub-int v2, p3, p2

    .line 242
    sub-int v0, p3, p2

    new-array v3, v0, [Ljava/math/BigDecimal;

    .line 244
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, v2, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, p2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    return-object v3
.end method

.method private ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;
    .locals 19

    .line 112
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    .line 113
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    .line 115
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v6, v0

    .line 116
    const/4 v0, 0x1

    if-gt v6, v0, :cond_1

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    invoke-virtual {v0}, [Ljava/math/BigDecimal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/math/BigDecimal;

    move-object v7, v0

    .line 119
    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 121
    aget-object v0, v7, v8

    move-object/from16 v1, p1

    iget-object v1, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v7, v8

    .line 119
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    invoke-direct {v0, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;-><init>([Ljava/math/BigDecimal;)V

    return-object v0

    .line 127
    :cond_1
    div-int/lit8 v7, v6, 0x2

    .line 129
    new-instance v8, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˊ([Ljava/math/BigDecimal;I)[Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;-><init>([Ljava/math/BigDecimal;)V

    .line 130
    new-instance v9, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˊ([Ljava/math/BigDecimal;II)[Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;-><init>([Ljava/math/BigDecimal;)V

    .line 131
    new-instance v10, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˊ([Ljava/math/BigDecimal;I)[Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;-><init>([Ljava/math/BigDecimal;)V

    .line 132
    new-instance v11, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˊ([Ljava/math/BigDecimal;II)[Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;-><init>([Ljava/math/BigDecimal;)V

    .line 134
    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-object v12, v0

    .line 135
    invoke-virtual {v12, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)V

    .line 136
    invoke-virtual {v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-object v13, v0

    .line 137
    invoke-virtual {v13, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)V

    .line 139
    invoke-direct {v8, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v14

    .line 140
    invoke-direct {v9, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v15

    .line 141
    invoke-direct {v12, v13}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v16

    .line 142
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)V

    .line 143
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)V

    .line 145
    new-instance v17, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    mul-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v1, v17

    invoke-direct {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;-><init>(I)V

    .line 146
    const/16 v18, 0x0

    :goto_1
    iget-object v0, v14, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v0, v0

    move/from16 v1, v18

    if-ge v1, v0, :cond_2

    .line 148
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    iget-object v1, v14, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    aget-object v1, v1, v18

    aput-object v1, v0, v18

    .line 146
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 150
    :cond_2
    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v0, v0

    move/from16 v1, v18

    if-ge v1, v0, :cond_3

    .line 152
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    add-int v1, v7, v18

    move-object/from16 v2, v17

    iget-object v2, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    add-int v3, v7, v18

    aget-object v2, v2, v3

    move-object/from16 v3, v16

    iget-object v3, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    aget-object v3, v3, v18

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v0, v1

    .line 150
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 154
    :cond_3
    const/16 v18, 0x0

    :goto_3
    iget-object v0, v15, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v0, v0

    move/from16 v1, v18

    if-ge v1, v0, :cond_4

    .line 156
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    mul-int/lit8 v1, v7, 0x2

    add-int v1, v1, v18

    move-object/from16 v2, v17

    iget-object v2, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    mul-int/lit8 v3, v7, 0x2

    add-int v3, v3, v18

    aget-object v2, v2, v3

    iget-object v3, v15, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    aget-object v3, v3, v18

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v0, v1

    .line 154
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 158
    :cond_4
    return-object v17
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 227
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    invoke-virtual {v1}, [Ljava/math/BigDecimal;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;-><init>([Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public sK()V
    .locals 4

    .line 61
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    aget-object v1, v1, v3

    sget-object v2, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjx:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v3

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public sL()Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    .locals 7

    .line 213
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v4, v0

    .line 214
    new-instance v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-direct {v5, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>(I)V

    .line 215
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    .line 217
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    aget-object v1, v1, v6

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v6

    .line 215
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return-object v5
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;
    .locals 7

    .line 88
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v4, v0

    .line 89
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-eq v0, v4, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of coefficients must be the same"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v5

    .line 96
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-le v0, v4, :cond_2

    .line 98
    move v6, v4

    :goto_0
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 100
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    sub-int v1, v6, v4

    iget-object v2, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    sub-int v3, v6, v4

    aget-object v2, v2, v3

    iget-object v3, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v0, v1

    .line 98
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    invoke-direct {p0, v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˊ([Ljava/math/BigDecimal;I)[Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    .line 104
    :cond_2
    return-object v5
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;
    .locals 1

    .line 76
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    invoke-direct {v0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)V
    .locals 5

    .line 169
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v3, v0

    .line 172
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v1, v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˊ([Ljava/math/BigDecimal;I)[Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    .line 173
    move v4, v3

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    sget-object v1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ZERO:Ljava/math/BigDecimal;

    aput-object v1, v0, v4

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 180
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    aget-object v1, v1, v3

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v3

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 182
    :cond_1
    return-void
.end method

.method ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)V
    .locals 5

    .line 191
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v3, v0

    .line 194
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v1, v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ˊ([Ljava/math/BigDecimal;I)[Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    .line 195
    move v4, v3

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    sget-object v1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->ZERO:Ljava/math/BigDecimal;

    aput-object v1, v0, v4

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 200
    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 202
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    aget-object v1, v1, v3

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->bjy:[Ljava/math/BigDecimal;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v3

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 204
    :cond_1
    return-void
.end method
