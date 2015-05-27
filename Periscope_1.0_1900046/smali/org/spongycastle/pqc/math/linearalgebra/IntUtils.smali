.class public final Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static equals([I[I)Z
    .locals 4

    .line 30
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 32
    const/4 v0, 0x0

    return v0

    .line 34
    :cond_0
    const/4 v2, 0x1

    .line 35
    array-length v0, p0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 37
    aget v0, p0, v3

    aget v1, p1, v3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    and-int/2addr v2, v0

    .line 35
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 39
    :cond_2
    return v2
.end method

.method public static י([I)[I
    .locals 4

    .line 50
    array-length v0, p0

    new-array v3, v0, [I

    .line 51
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    return-object v3
.end method
