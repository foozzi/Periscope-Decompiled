.class public Lorg/spongycastle/math/ec/WNafL2RMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected ˎ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 20

    .line 21
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/WNafL2RMultiplier;->ﾌ(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 23
    move-object/from16 v0, p1

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Lorg/spongycastle/math/ec/WNafUtil;->ˊ(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->pY()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 25
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->qg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 27
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lorg/spongycastle/math/ec/WNafUtil;->ˎ(ILjava/math/BigInteger;)[I

    move-result-object v7

    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 31
    array-length v9, v7

    .line 37
    const/4 v0, 0x1

    if-le v9, v0, :cond_2

    .line 39
    add-int/lit8 v9, v9, -0x1

    aget v10, v7, v9

    .line 40
    shr-int/lit8 v11, v10, 0x10

    const v0, 0xffff

    and-int v12, v10, v0

    .line 42
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 43
    if-gez v11, :cond_0

    move-object v14, v6

    goto :goto_0

    :cond_0
    move-object v14, v5

    .line 46
    :goto_0
    shl-int/lit8 v0, v13, 0x2

    const/4 v1, 0x1

    shl-int/2addr v1, v3

    if-ge v0, v1, :cond_1

    .line 48
    sget-object v0, Lorg/spongycastle/math/ec/LongArray;->bcM:[B

    aget-byte v15, v0, v13

    .line 51
    sub-int v16, v3, v15

    .line 52
    add-int/lit8 v0, v15, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    xor-int v17, v13, v0

    .line 54
    add-int/lit8 v0, v3, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v18, v0, -0x1

    .line 55
    shl-int v0, v17, v16

    add-int/lit8 v19, v0, 0x1

    .line 56
    ushr-int/lit8 v0, v18, 0x1

    aget-object v0, v14, v0

    ushr-int/lit8 v1, v19, 0x1

    aget-object v1, v14, v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 58
    sub-int v12, v12, v16

    .line 61
    goto :goto_1

    .line 64
    :cond_1
    ushr-int/lit8 v0, v13, 0x1

    aget-object v8, v14, v0

    .line 67
    :goto_1
    invoke-virtual {v8, v12}, Lorg/spongycastle/math/ec/ECPoint;->ﺬ(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 70
    :cond_2
    :goto_2
    if-lez v9, :cond_4

    .line 72
    add-int/lit8 v9, v9, -0x1

    aget v10, v7, v9

    .line 73
    shr-int/lit8 v11, v10, 0x10

    const v0, 0xffff

    and-int v12, v10, v0

    .line 75
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 76
    if-gez v11, :cond_3

    move-object v14, v6

    goto :goto_3

    :cond_3
    move-object v14, v5

    .line 77
    :goto_3
    ushr-int/lit8 v0, v13, 0x1

    aget-object v15, v14, v0

    .line 79
    invoke-virtual {v8, v15}, Lorg/spongycastle/math/ec/ECPoint;->ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 80
    invoke-virtual {v8, v12}, Lorg/spongycastle/math/ec/ECPoint;->ﺬ(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 81
    goto :goto_2

    .line 83
    :cond_4
    return-object v8
.end method

.method protected ﾌ(I)I
    .locals 1

    .line 94
    invoke-static {p1}, Lorg/spongycastle/math/ec/WNafUtil;->ﾌ(I)I

    move-result v0

    return v0
.end method
