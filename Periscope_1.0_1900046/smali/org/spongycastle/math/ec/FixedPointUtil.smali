.class public Lorg/spongycastle/math/ec/FixedPointUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lorg/spongycastle/math/ec/ECPoint;I)Lorg/spongycastle/math/ec/FixedPointPreCompInfo;
    .locals 13

    .line 27
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 29
    const/4 v0, 0x1

    shl-int v3, v0, p1

    .line 30
    const-string v0, "bc_fixed_point"

    invoke-virtual {v2, p0, v0}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/FixedPointUtil;->ˊ(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 33
    if-eqz v5, :cond_0

    array-length v0, v5

    if-ge v0, v3, :cond_4

    .line 35
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/math/ec/FixedPointUtil;->ͺ(Lorg/spongycastle/math/ec/ECCurve;)I

    move-result v6

    .line 36
    add-int v0, v6, p1

    add-int/lit8 v0, v0, -0x1

    div-int v7, v0, p1

    .line 38
    new-array v8, p1, [Lorg/spongycastle/math/ec/ECPoint;

    .line 39
    const/4 v0, 0x0

    aput-object p0, v8, v0

    .line 40
    const/4 v9, 0x1

    :goto_0
    if-ge v9, p1, :cond_1

    .line 42
    add-int/lit8 v0, v9, -0x1

    aget-object v0, v8, v0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECPoint;->ﺬ(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v8, v9

    .line 40
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v2, v8}, Lorg/spongycastle/math/ec/ECCurve;->ˊ([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 47
    new-array v5, v3, [Lorg/spongycastle/math/ec/ECPoint;

    .line 48
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    .line 50
    add-int/lit8 v9, p1, -0x1

    :goto_1
    if-ltz v9, :cond_3

    .line 52
    aget-object v10, v8, v9

    .line 54
    const/4 v0, 0x1

    shl-int v11, v0, v9

    .line 55
    move v12, v11

    :goto_2
    if-ge v12, v3, :cond_2

    .line 57
    sub-int v0, v12, v11

    aget-object v0, v5, v0

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v5, v12

    .line 55
    shl-int/lit8 v0, v11, 0x1

    add-int/2addr v12, v0

    goto :goto_2

    .line 50
    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {v2, v5}, Lorg/spongycastle/math/ec/ECCurve;->ˊ([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 63
    invoke-virtual {v4, v5}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->ˎ([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 64
    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->setWidth(I)V

    .line 66
    const-string v0, "bc_fixed_point"

    invoke-virtual {v2, p0, v0, v4}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V

    .line 69
    :cond_4
    return-object v4
.end method

.method public static ˊ(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/FixedPointPreCompInfo;
    .locals 1

    .line 17
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    if-eqz v0, :cond_0

    .line 19
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;-><init>()V

    return-object v0
.end method

.method public static ͺ(Lorg/spongycastle/math/ec/ECCurve;)I
    .locals 3

    .line 11
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    .line 12
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    :goto_0
    return v0
.end method
