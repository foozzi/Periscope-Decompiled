.class public Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field private biU:I

.field private bjr:[I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;I)V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 123
    iput p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    .line 124
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    .line 125
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    const/4 v1, 0x1

    aput v1, v0, p2

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;ICLjava/security/SecureRandom;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 69
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 72
    :sswitch_0
    invoke-direct {p0, p2, p4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᐝ(ILjava/security/SecureRandom;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    .line 73
    goto :goto_1

    .line 75
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Error: type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not defined for GF2smallmPolynomial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :goto_1
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->sG()V

    .line 80
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x49 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 138
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵔ([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    .line 139
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->sG()V

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;)V
    .locals 2

    .line 213
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->rk()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->ss()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    .line 214
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 200
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    .line 201
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->י([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    .line 202
    return-void
.end method

.method private sG()V
    .locals 2

    .line 1070
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    .line 1071
    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    goto :goto_0

    .line 1075
    :cond_0
    return-void
.end method

.method private static ʹ([I[I)Z
    .locals 5

    .line 1017
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v2

    .line 1018
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v3

    .line 1019
    if-eq v2, v3, :cond_0

    .line 1021
    const/4 v0, 0x0

    return v0

    .line 1023
    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-gt v4, v2, :cond_2

    .line 1025
    aget v0, p0, v4

    aget v1, p1, v4

    if-eq v0, v1, :cond_1

    .line 1027
    const/4 v0, 0x0

    return v0

    .line 1023
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1030
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private ʽ([II)[I
    .locals 5

    .line 440
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v2

    .line 441
    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    if-nez p2, :cond_1

    .line 443
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0

    .line 446
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 448
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->י([I)[I

    move-result-object v0

    return-object v0

    .line 451
    :cond_2
    add-int/lit8 v0, v2, 0x1

    new-array v3, v0, [I

    .line 452
    move v4, v2

    :goto_0
    if-ltz v4, :cond_3

    .line 454
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget v1, p1, v4

    invoke-virtual {v0, v1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ᕽ(II)I

    move-result v0

    aput v0, v3, v4

    .line 452
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 457
    :cond_3
    return-object v3
.end method

.method private ˌ([I[I[I)[I
    .locals 1

    .line 821
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ﹳ([I[I)[I

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ﾞ([I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private ˍ([I[I[I)[I
    .locals 9

    .line 915
    invoke-static {p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵔ([I)[I

    move-result-object v2

    .line 916
    invoke-direct {p0, p2, p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ﾞ([I[I)[I

    move-result-object v3

    .line 917
    const/4 v0, 0x1

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 918
    invoke-direct {p0, p1, p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ﾞ([I[I)[I

    move-result-object v5

    .line 921
    :goto_0
    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 923
    invoke-direct {p0, v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᐧ([I[I)[[I

    move-result-object v7

    .line 924
    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵔ([I)[I

    move-result-object v2

    .line 925
    const/4 v0, 0x1

    aget-object v0, v7, v0

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵔ([I)[I

    move-result-object v3

    .line 926
    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-direct {p0, v0, v5, p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ˌ([I[I[I)[I

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v6

    .line 927
    invoke-static {v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵔ([I)[I

    move-result-object v4

    .line 928
    invoke-static {v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵔ([I)[I

    move-result-object v5

    goto :goto_0

    .line 931
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ٴ([I)I

    move-result v8

    .line 932
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ܕ(I)I

    move-result v0

    invoke-direct {p0, v4, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ʽ([II)[I

    move-result-object v4

    .line 933
    return-object v4

    nop

    :array_0
    .array-data 4
        0x0
    .end array-data
.end method

.method private static ͺ([II)[I
    .locals 4

    .line 481
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v2

    .line 482
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 484
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0

    .line 486
    :cond_0
    add-int v0, v2, p1

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [I

    .line 487
    add-int/lit8 v0, v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    return-object v3
.end method

.method private ـ([I[I)[I
    .locals 6

    .line 358
    array-length v0, p1

    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 360
    array-length v0, p2

    new-array v3, v0, [I

    .line 361
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    move-object v4, p1

    goto :goto_0

    .line 366
    :cond_0
    array-length v0, p1

    new-array v3, v0, [I

    .line 367
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    move-object v4, p2

    .line 371
    :goto_0
    array-length v0, v4

    add-int/lit8 v5, v0, -0x1

    :goto_1
    if-ltz v5, :cond_1

    .line 373
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget v1, v3, v5

    aget v2, v4, v5

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ᕑ(II)I

    move-result v0

    aput v0, v3, v5

    .line 371
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 376
    :cond_1
    return-object v3
.end method

.method private static ٴ([I)I
    .locals 2

    .line 256
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v1

    .line 257
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 259
    const/4 v0, 0x0

    return v0

    .line 261
    :cond_0
    aget v0, p0, v1

    return v0
.end method

.method private ᐝ(ILjava/security/SecureRandom;)[I
    .locals 4

    .line 92
    add-int/lit8 v0, p1, 0x1

    new-array v2, v0, [I

    .line 93
    const/4 v0, 0x1

    aput v0, v2, p1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ˋ(Ljava/security/SecureRandom;)I

    move-result v0

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 95
    const/4 v3, 0x1

    :goto_0
    if-ge v3, p1, :cond_0

    .line 97
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ˊ(Ljava/security/SecureRandom;)I

    move-result v0

    aput v0, v2, v3

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_0
    :goto_1
    invoke-direct {p0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᴵ([I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    invoke-static {p2, p1}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->ˎ(Ljava/security/SecureRandom;I)I

    move-result v3

    .line 102
    if-nez v3, :cond_1

    .line 104
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ˋ(Ljava/security/SecureRandom;)I

    move-result v0

    const/4 v1, 0x0

    aput v0, v2, v1

    goto :goto_2

    .line 108
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ˊ(Ljava/security/SecureRandom;)I

    move-result v0

    aput v0, v2, v3

    .line 110
    :goto_2
    goto :goto_1

    .line 111
    :cond_2
    return-object v2
.end method

.method private ᐧ([I[I)[[I
    .locals 11

    .line 516
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v4

    .line 517
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 518
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 520
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division by zero."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_0
    const/4 v0, 0x2

    new-array v6, v0, [[I

    .line 523
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 524
    new-array v0, v5, [I

    const/4 v1, 0x1

    aput-object v0, v6, v1

    .line 525
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ٴ([I)I

    move-result v7

    .line 526
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ܕ(I)I

    move-result v7

    .line 527
    const/4 v0, 0x0

    aget-object v0, v6, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 528
    const/4 v0, 0x1

    aget-object v0, v6, v0

    const/4 v1, 0x1

    aget-object v1, v6, v1

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    :goto_0
    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v0

    if-gt v4, v0, :cond_1

    .line 532
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 533
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ٴ([I)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ᕽ(II)I

    move-result v0

    const/4 v1, 0x0

    aput v0, v9, v1

    .line 534
    const/4 v0, 0x0

    aget v0, v9, v0

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ʽ([II)[I

    move-result-object v8

    .line 535
    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v0

    sub-int v10, v0, v4

    .line 536
    invoke-static {v8, v10}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ͺ([II)[I

    move-result-object v8

    .line 537
    invoke-static {v9, v10}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ͺ([II)[I

    move-result-object v9

    .line 538
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-direct {p0, v9, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 539
    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-direct {p0, v8, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    .line 540
    goto :goto_0

    .line 541
    :cond_1
    return-object v6
.end method

.method private ᐨ([I[I)[I
    .locals 6

    .line 566
    move-object v3, p1

    .line 567
    move-object v4, p2

    .line 568
    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 570
    return-object v4

    .line 572
    :cond_0
    :goto_0
    invoke-static {v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 574
    invoke-direct {p0, v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ﾞ([I[I)[I

    move-result-object v5

    .line 575
    array-length v0, v4

    new-array v3, v0, [I

    .line 576
    array-length v0, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v4, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    array-length v0, v5

    new-array v4, v0, [I

    .line 578
    array-length v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    goto :goto_0

    .line 580
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ٴ([I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ܕ(I)I

    move-result v5

    .line 581
    invoke-direct {p0, v3, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ʽ([II)[I

    move-result-object v0

    return-object v0
.end method

.method private ᴵ([I)Z
    .locals 8

    .line 689
    const/4 v0, 0x0

    aget v0, p1, v0

    if-nez v0, :cond_0

    .line 691
    const/4 v0, 0x0

    return v0

    .line 693
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v0

    shr-int/lit8 v2, v0, 0x1

    .line 694
    const/4 v0, 0x2

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    .line 695
    const/4 v0, 0x2

    new-array v4, v0, [I

    fill-array-data v4, :array_1

    .line 696
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->qs()I

    move-result v5

    .line 697
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_3

    .line 699
    add-int/lit8 v7, v5, -0x1

    :goto_1
    if-ltz v7, :cond_1

    .line 701
    invoke-direct {p0, v3, v3, p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ˌ([I[I[I)[I

    move-result-object v3

    .line 699
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 703
    :cond_1
    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵔ([I)[I

    move-result-object v3

    .line 704
    invoke-direct {p0, v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᐨ([I[I)[I

    move-result-object v7

    .line 705
    invoke-static {v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 707
    const/4 v0, 0x0

    return v0

    .line 697
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 710
    :cond_3
    const/4 v0, 0x1

    return v0

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private static ᵎ([I)I
    .locals 3

    .line 1087
    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_0

    aget v0, p0, v2

    if-nez v0, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1091
    :cond_0
    return v2
.end method

.method private static ᵔ([I)[I
    .locals 5

    .line 1102
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v3

    .line 1105
    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 1108
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0

    .line 1112
    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v3, 0x1

    if-ne v0, v1, :cond_1

    .line 1115
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->י([I)[I

    move-result-object v0

    return-object v0

    .line 1119
    :cond_1
    add-int/lit8 v0, v3, 0x1

    new-array v4, v0, [I

    .line 1120
    add-int/lit8 v0, v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1121
    return-object v4
.end method

.method private ﹳ([I[I)[I
    .locals 18

    .line 608
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v0

    invoke-static/range {p2 .. p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 610
    move-object/from16 v3, p2

    .line 611
    move-object/from16 v4, p1

    goto :goto_0

    .line 615
    :cond_0
    move-object/from16 v3, p1

    .line 616
    move-object/from16 v4, p2

    .line 619
    :goto_0
    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵔ([I)[I

    move-result-object v3

    .line 620
    invoke-static {v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵔ([I)[I

    move-result-object v4

    .line 622
    array-length v0, v4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 624
    const/4 v0, 0x0

    aget v0, v4, v0

    move-object/from16 v1, p0

    invoke-direct {v1, v3, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ʽ([II)[I

    move-result-object v0

    return-object v0

    .line 627
    :cond_1
    array-length v5, v3

    .line 628
    array-length v6, v4

    .line 629
    add-int v0, v5, v6

    add-int/lit8 v0, v0, -0x1

    new-array v7, v0, [I

    .line 631
    if-eq v6, v5, :cond_2

    .line 633
    new-array v8, v6, [I

    .line 634
    sub-int v0, v5, v6

    new-array v9, v0, [I

    .line 635
    array-length v0, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    array-length v0, v9

    const/4 v1, 0x0

    invoke-static {v3, v6, v9, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ﹳ([I[I)[I

    move-result-object v8

    .line 638
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ﹳ([I[I)[I

    move-result-object v9

    .line 639
    invoke-static {v9, v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ͺ([II)[I

    move-result-object v9

    .line 640
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v7

    .line 641
    goto/16 :goto_1

    .line 644
    :cond_2
    add-int/lit8 v0, v5, 0x1

    ushr-int/lit8 v6, v0, 0x1

    .line 645
    sub-int v8, v5, v6

    .line 646
    new-array v9, v6, [I

    .line 647
    new-array v10, v6, [I

    .line 648
    new-array v11, v8, [I

    .line 649
    new-array v12, v8, [I

    .line 650
    array-length v0, v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v1, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    array-length v0, v11

    const/4 v1, 0x0

    invoke-static {v3, v6, v11, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 655
    array-length v0, v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v4, v1, v10, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    array-length v0, v12

    const/4 v1, 0x0

    invoke-static {v4, v6, v12, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v13

    .line 661
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v14

    .line 662
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ﹳ([I[I)[I

    move-result-object v15

    .line 663
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ﹳ([I[I)[I

    move-result-object v16

    .line 664
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ﹳ([I[I)[I

    move-result-object v17

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v16

    .line 666
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v16

    .line 667
    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ͺ([II)[I

    move-result-object v17

    .line 668
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v7

    .line 669
    invoke-static {v7, v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ͺ([II)[I

    move-result-object v7

    .line 670
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v7

    .line 673
    :goto_1
    return-object v7
.end method

.method private ﾞ([I[I)[I
    .locals 8

    .line 734
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v3

    .line 735
    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 737
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_0
    array-length v0, p1

    new-array v4, v0, [I

    .line 740
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ٴ([I)I

    move-result v5

    .line 741
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ܕ(I)I

    move-result v5

    .line 742
    array-length v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 743
    :goto_0
    invoke-static {v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v0

    if-gt v3, v0, :cond_1

    .line 746
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ٴ([I)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ᕽ(II)I

    move-result v7

    .line 747
    invoke-static {v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {p2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ͺ([II)[I

    move-result-object v6

    .line 748
    invoke-direct {p0, v6, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ʽ([II)[I

    move-result-object v6

    .line 749
    invoke-direct {p0, v6, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v4

    .line 750
    goto :goto_0

    .line 751
    :cond_1
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 991
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    if-nez v0, :cond_1

    .line 993
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 996
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-object v2, v0

    .line 998
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    iget v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ʹ([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1001
    const/4 v0, 0x1

    return v0

    .line 1004
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getEncoded()[B
    .locals 7

    .line 286
    const/16 v2, 0x8

    .line 287
    const/4 v3, 0x1

    .line 288
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->qs()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 290
    add-int/lit8 v3, v3, 0x1

    .line 291
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    array-length v0, v0

    mul-int/2addr v0, v3

    new-array v4, v0, [B

    .line 295
    const/4 v3, 0x0

    .line 296
    const/4 v5, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    array-length v0, v0

    if-ge v5, v0, :cond_2

    .line 298
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_1

    .line 300
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    aget v1, v1, v5

    ushr-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 298
    add-int/lit8 v6, v6, 0x8

    goto :goto_2

    .line 296
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 304
    :cond_2
    return-object v4
.end method

.method public hashCode()I
    .locals 4

    .line 1038
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->hashCode()I

    move-result v2

    .line 1039
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 1041
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    aget v1, v1, v3

    add-int v2, v0, v1

    .line 1039
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1043
    :cond_0
    return v2
.end method

.method public qs()I
    .locals 3

    .line 228
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 229
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 231
    const/4 v0, -0x1

    return v0

    .line 233
    :cond_0
    return v2
.end method

.method public sF()I
    .locals 2

    .line 241
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 243
    const/4 v0, 0x0

    return v0

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    aget v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Polynomial over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1055
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->แ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Y^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1055
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1059
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1061
    return-object v3
.end method

.method public ʻ(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 10

    .line 959
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    shr-int/lit8 v3, v0, 0x1

    .line 960
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵔ([I)[I

    move-result-object v4

    .line 961
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ﾞ([I[I)[I

    move-result-object v5

    .line 962
    const/4 v0, 0x1

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    .line 963
    const/4 v0, 0x1

    new-array v7, v0, [I

    fill-array-data v7, :array_1

    .line 964
    :goto_0
    invoke-static {v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᵎ([I)I

    move-result v0

    if-le v0, v3, :cond_0

    .line 966
    invoke-direct {p0, v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ᐧ([I[I)[[I

    move-result-object v8

    .line 967
    move-object v4, v5

    .line 968
    const/4 v0, 0x1

    aget-object v5, v8, v0

    .line 969
    const/4 v0, 0x0

    aget-object v0, v8, v0

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    invoke-direct {p0, v0, v7, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ˌ([I[I[I)[I

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v9

    .line 970
    move-object v6, v7

    .line 971
    move-object v7, v9

    .line 972
    goto :goto_0

    .line 974
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0

    :array_0
    .array-data 4
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
    .end array-data
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3

    .line 332
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v2

    .line 333
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v0
.end method

.method public ˊ([Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 8

    .line 856
    array-length v3, p1

    .line 858
    new-array v4, v3, [I

    .line 861
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    .line 864
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_2

    .line 866
    aget-object v0, p1, v6

    iget-object v0, v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    array-length v0, v0

    if-lt v5, v0, :cond_0

    .line 868
    goto :goto_2

    .line 870
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 872
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget-object v1, p1, v6

    iget-object v1, v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    aget v1, v1, v5

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    aget v2, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ᕽ(II)I

    move-result v7

    .line 874
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget v1, v4, v5

    invoke-virtual {v0, v1, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ᕑ(II)I

    move-result v0

    aput v0, v4, v5

    .line 864
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 861
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 880
    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_4

    .line 882
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget v1, v4, v5

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ণ(I)I

    move-result v0

    aput v0, v4, v5

    .line 880
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 885
    :cond_4
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    .line 344
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->sG()V

    .line 345
    return-void
.end method

.method public ˎ(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3

    .line 593
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ﹳ([I[I)[I

    move-result-object v2

    .line 594
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v0
.end method

.method public ˏ(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3

    .line 721
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ﾞ([I[I)[I

    move-result-object v2

    .line 722
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v0
.end method

.method public Ꮣ(I)I
    .locals 1

    .line 272
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    if-le p1, v0, :cond_1

    .line 274
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 276
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    aget v0, v0, p1

    return v0
.end method

.method public ᐝ(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 4

    .line 944
    const/4 v0, 0x1

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 945
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    invoke-direct {p0, v2, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ˍ([I[I[I)[I

    move-result-object v3

    .line 946
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v0

    :array_0
    .array-data 4
        0x1
    .end array-data
.end method

.method public ᒦ(I)I
    .locals 4

    .line 316
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    aget v2, v0, v1

    .line 317
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->biU:I

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 319
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, v2, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ᕽ(II)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    aget v1, v1, v3

    xor-int v2, v0, v1

    .line 317
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 321
    :cond_0
    return v2
.end method

.method public ᒨ(I)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 4

    .line 387
    add-int/lit8 v0, p1, 0x1

    new-array v2, v0, [I

    .line 388
    const/4 v0, 0x1

    aput v0, v2, p1

    .line 389
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    invoke-direct {p0, v0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ـ([I[I)[I

    move-result-object v3

    .line 390
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v0
.end method

.method public ᒫ(I)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3

    .line 403
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->จ(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Not an element of the finite field this polynomial is defined over."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ʽ([II)[I

    move-result-object v2

    .line 409
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v0
.end method

.method public ᖟ(I)V
    .locals 2

    .line 421
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->จ(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Not an element of the finite field this polynomial is defined over."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ʽ([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    .line 427
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->sG()V

    .line 428
    return-void
.end method

.method public ᘇ(I)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3

    .line 468
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bjr:[I

    invoke-static {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->ͺ([II)[I

    move-result-object v2

    .line 469
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v0
.end method
