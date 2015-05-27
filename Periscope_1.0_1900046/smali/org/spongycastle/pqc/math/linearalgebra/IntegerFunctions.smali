.class public final Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;

.field private static aKZ:Ljava/security/SecureRandom;

.field private static final aKc:Ljava/math/BigInteger;

.field private static final bci:Ljava/math/BigInteger;

.field private static final bjn:[I

.field private static final bjo:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 15
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 17
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->aKc:Ljava/math/BigInteger;

    .line 19
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->bci:Ljava/math/BigInteger;

    .line 21
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->bjn:[I

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->aKZ:Ljava/security/SecureRandom;

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->bjo:[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x0
        -0x1
        0x0
        -0x1
        0x0
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static Ꭻ(I)I
    .locals 3

    .line 356
    if-nez p0, :cond_0

    .line 358
    const/4 v0, 0x1

    return v0

    .line 361
    :cond_0
    if-gez p0, :cond_1

    .line 363
    neg-int v1, p0

    goto :goto_0

    .line 367
    :cond_1
    move v1, p0

    .line 370
    :goto_0
    const/4 v2, 0x0

    .line 371
    :goto_1
    if-lez v1, :cond_2

    .line 373
    add-int/lit8 v2, v2, 0x1

    .line 374
    ushr-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 376
    :cond_2
    return v2
.end method

.method public static ᵄ(II)Ljava/math/BigInteger;
    .locals 5

    .line 1024
    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 1026
    if-nez p0, :cond_1

    .line 1028
    if-nez p1, :cond_0

    .line 1030
    return-object v3

    .line 1032
    :cond_0
    sget-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 1036
    :cond_1
    ushr-int/lit8 v0, p0, 0x1

    if-le p1, v0, :cond_2

    .line 1038
    sub-int p1, p0, p1

    .line 1041
    :cond_2
    const/4 v4, 0x1

    :goto_0
    if-gt v4, p1, :cond_3

    .line 1043
    add-int/lit8 v0, v4, -0x1

    sub-int v0, p0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v1, v4

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1041
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1047
    :cond_3
    return-object v3
.end method
