.class public Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field private bjs:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field protected bjt:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field protected bju:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 43
    iput-object p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bjs:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 44
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sI()V

    .line 45
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sJ()V

    .line 46
    return-void
.end method

.method private sI()V
    .locals 7

    .line 70
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bjs:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->qs()I

    move-result v3

    .line 71
    new-array v0, v3, [Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bjt:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 72
    const/4 v4, 0x0

    :goto_0
    shr-int/lit8 v0, v3, 0x1

    if-ge v4, v0, :cond_0

    .line 74
    shl-int/lit8 v0, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    .line 75
    shl-int/lit8 v0, v4, 0x1

    const/4 v1, 0x1

    aput v1, v5, v0

    .line 76
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bjt:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    aput-object v1, v0, v4

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    :cond_0
    shr-int/lit8 v4, v3, 0x1

    :goto_1
    if-ge v4, v3, :cond_1

    .line 80
    shl-int/lit8 v0, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    .line 81
    shl-int/lit8 v0, v4, 0x1

    const/4 v1, 0x1

    aput v1, v5, v0

    .line 82
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v6, v0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    .line 84
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bjt:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bjs:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v6, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ˏ(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v1

    aput-object v1, v0, v4

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 86
    :cond_1
    return-void
.end method

.method private sJ()V
    .locals 11

    .line 94
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bjs:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->qs()I

    move-result v3

    .line 97
    new-array v4, v3, [Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 98
    add-int/lit8 v5, v3, -0x1

    :goto_0
    if-ltz v5, :cond_0

    .line 100
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bjt:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v1, v1, v5

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    aput-object v0, v4, v5

    .line 98
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 104
    :cond_0
    new-array v0, v3, [Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bju:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 105
    add-int/lit8 v5, v3, -0x1

    :goto_1
    if-ltz v5, :cond_1

    .line 107
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bju:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;I)V

    aput-object v1, v0, v5

    .line 105
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 112
    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_7

    .line 115
    aget-object v0, v4, v5

    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->Ꮣ(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 117
    const/4 v6, 0x0

    .line 119
    add-int/lit8 v7, v5, 0x1

    :goto_3
    if-ge v7, v3, :cond_3

    .line 121
    aget-object v0, v4, v7

    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->Ꮣ(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const/4 v6, 0x1

    .line 125
    invoke-static {v4, v5, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->ˊ([Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;II)V

    .line 126
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bju:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-static {v0, v5, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->ˊ([Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;II)V

    .line 128
    move v7, v3

    .line 119
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 133
    :cond_3
    if-nez v6, :cond_4

    .line 136
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Squaring matrix is not invertible."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_4
    aget-object v0, v4, v5

    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->Ꮣ(I)I

    move-result v6

    .line 143
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ܕ(I)I

    move-result v7

    .line 144
    aget-object v0, v4, v5

    invoke-virtual {v0, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᖟ(I)V

    .line 145
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bju:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v0, v0, v5

    invoke-virtual {v0, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᖟ(I)V

    .line 148
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v3, :cond_6

    .line 150
    if-eq v8, v5, :cond_5

    .line 152
    aget-object v0, v4, v8

    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->Ꮣ(I)I

    move-result v6

    .line 153
    if-eqz v6, :cond_5

    .line 155
    aget-object v0, v4, v5

    invoke-virtual {v0, v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᒫ(I)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v9

    .line 157
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bju:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v0, v0, v5

    invoke-virtual {v0, v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᒫ(I)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v10

    .line 159
    aget-object v0, v4, v8

    invoke-virtual {v0, v9}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ˋ(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    .line 160
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bju:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v0, v0, v8

    invoke-virtual {v0, v10}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ˋ(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    .line 148
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 112
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 165
    :cond_7
    return-void
.end method

.method private static ˊ([Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;II)V
    .locals 2

    .line 170
    aget-object v1, p0, p1

    .line 171
    aget-object v0, p0, p2

    aput-object v0, p0, p1

    .line 172
    aput-object v1, p0, p2

    .line 173
    return-void
.end method


# virtual methods
.method public sH()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->bju:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method
