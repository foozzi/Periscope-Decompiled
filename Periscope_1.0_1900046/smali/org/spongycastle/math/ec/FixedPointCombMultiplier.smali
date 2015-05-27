.class public Lorg/spongycastle/math/ec/FixedPointCombMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected ˎ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 14

    .line 9
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 10
    invoke-static {v2}, Lorg/spongycastle/math/ec/FixedPointUtil;->ͺ(Lorg/spongycastle/math/ec/ECCurve;)I

    move-result v3

    .line 12
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;->ﺯ(I)I

    move-result v4

    .line 25
    invoke-static {p1, v4}, Lorg/spongycastle/math/ec/FixedPointUtil;->ˊ(Lorg/spongycastle/math/ec/ECPoint;I)Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v5

    .line 26
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 27
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v7

    .line 29
    add-int v0, v3, v7

    add-int/lit8 v0, v0, -0x1

    div-int v8, v0, v7

    .line 31
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 33
    mul-int v0, v8, v7

    add-int/lit8 v10, v0, -0x1

    .line 34
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v8, :cond_3

    .line 36
    const/4 v12, 0x0

    .line 38
    sub-int v13, v10, v11

    :goto_1
    if-ltz v13, :cond_2

    .line 40
    shl-int/lit8 v12, v12, 0x1

    .line 41
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    or-int/lit8 v12, v12, 0x1

    .line 38
    :cond_1
    sub-int/2addr v13, v8

    goto :goto_1

    .line 47
    :cond_2
    aget-object v0, v6, v12

    invoke-virtual {v9, v0}, Lorg/spongycastle/math/ec/ECPoint;->ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 34
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 50
    :cond_3
    return-object v9
.end method

.method protected ﺯ(I)I
    .locals 1

    .line 55
    const/16 v0, 0x101

    if-le p1, v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    return v0
.end method
