.class public final Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final biK:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->biK:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static equals([B[B)Z
    .locals 4

    .line 29
    if-nez p0, :cond_1

    .line 31
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 33
    :cond_1
    if-nez p1, :cond_2

    .line 35
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_2
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 40
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_3
    const/4 v2, 0x1

    .line 43
    array-length v0, p0

    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-ltz v3, :cond_5

    .line 45
    aget-byte v0, p0, v3

    aget-byte v1, p1, v3

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    and-int/2addr v2, v0

    .line 43
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 47
    :cond_5
    return v2
.end method

.method public static ˮ([BII)[B
    .locals 3

    .line 379
    sub-int v0, p2, p1

    new-array v2, v0, [B

    .line 380
    sub-int v0, p2, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    return-object v2
.end method

.method public static ᐩ([BI)[[B
    .locals 4

    .line 356
    array-length v0, p0

    if-le p1, v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 360
    :cond_0
    const/4 v0, 0x2

    new-array v3, v0, [[B

    .line 361
    new-array v0, p1, [B

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 362
    array-length v0, p0

    sub-int/2addr v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x1

    aput-object v0, v3, v1

    .line 363
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    const/4 v0, 0x1

    aget-object v0, v3, v0

    array-length v1, p0

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    return-object v3
.end method

.method public static ﹶ([B[B)[B
    .locals 4

    .line 315
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v3, v0, [B

    .line 317
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    return-object v3
.end method
