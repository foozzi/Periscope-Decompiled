.class public final Lorg/spongycastle/pqc/math/linearalgebra/BigIntUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static ՙ(Ljava/math/BigInteger;)[B
    .locals 5

    .line 128
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 129
    array-length v0, v3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    return-object v3

    .line 133
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    new-array v4, v0, [B

    .line 134
    array-length v0, v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    return-object v4
.end method
