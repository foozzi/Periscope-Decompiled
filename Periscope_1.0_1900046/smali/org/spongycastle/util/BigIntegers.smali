.class public final Lorg/spongycastle/util/BigIntegers;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʻ(ILjava/math/BigInteger;)[B
    .locals 6

    .line 45
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 46
    array-length v0, v2

    if-ne v0, p0, :cond_0

    .line 48
    return-object v2

    .line 51
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, v2, v0

    if-nez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 52
    :goto_0
    array-length v0, v2

    sub-int v4, v0, v3

    .line 54
    if-le v4, p0, :cond_2

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "standard length exceeded for value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_2
    new-array v5, p0, [B

    .line 60
    array-length v0, v5

    sub-int/2addr v0, v4

    invoke-static {v2, v3, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    return-object v5
.end method

.method public static ˏ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 6

    .line 77
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    .line 78
    if-ltz v3, :cond_1

    .line 80
    if-lez v3, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'min\' may not be greater than \'max\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    return-object p0

    .line 88
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_2

    .line 90
    sget-object v0, Lorg/spongycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/spongycastle/util/BigIntegers;->ˏ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 93
    :cond_2
    const/4 v4, 0x0

    :goto_0
    const/16 v0, 0x3e8

    if-ge v4, v0, :cond_4

    .line 95
    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {v5, v0, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 96
    invoke-virtual {v5, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {v5, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 98
    return-object v5

    .line 93
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 103
    :cond_4
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static ᐩ([BII)Ljava/math/BigInteger;
    .locals 3

    .line 113
    move-object v2, p0

    .line 114
    if-nez p1, :cond_0

    array-length v0, p0

    if-eq p2, v0, :cond_1

    .line 116
    :cond_0
    new-array v2, p2, [B

    .line 117
    const/4 v0, 0x0

    invoke-static {p0, p1, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static ᵎ(Ljava/math/BigInteger;)[B
    .locals 5

    .line 23
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 25
    const/4 v0, 0x0

    aget-byte v0, v3, v0

    if-nez v0, :cond_0

    .line 27
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    new-array v4, v0, [B

    .line 29
    array-length v0, v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    return-object v4

    .line 34
    :cond_0
    return-object v3
.end method
