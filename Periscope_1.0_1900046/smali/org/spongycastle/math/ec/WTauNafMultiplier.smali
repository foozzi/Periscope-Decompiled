.class public Lorg/spongycastle/math/ec/WTauNafMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method

.method private ˊ(Lorg/spongycastle/math/ec/ECPoint$F2m;Lorg/spongycastle/math/ec/ZTauElement;Lorg/spongycastle/math/ec/PreCompInfo;BB)Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 9

    .line 55
    if-nez p4, :cond_0

    sget-object v6, Lorg/spongycastle/math/ec/Tnaf;->bcW:[Lorg/spongycastle/math/ec/ZTauElement;

    goto :goto_0

    :cond_0
    sget-object v6, Lorg/spongycastle/math/ec/Tnaf;->bcY:[Lorg/spongycastle/math/ec/ZTauElement;

    .line 57
    :goto_0
    const/4 v0, 0x4

    invoke-static {p5, v0}, Lorg/spongycastle/math/ec/Tnaf;->ˏ(BI)Ljava/math/BigInteger;

    move-result-object v7

    .line 59
    move v0, p5

    move-object v1, p2

    const-wide/16 v2, 0x10

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move-object v4, v7

    move-object v5, v6

    const/4 v2, 0x4

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/Tnaf;->ˊ(BLorg/spongycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lorg/spongycastle/math/ec/ZTauElement;)[B

    move-result-object v8

    .line 62
    invoke-static {p1, v8, p3}, Lorg/spongycastle/math/ec/WTauNafMultiplier;->ˊ(Lorg/spongycastle/math/ec/ECPoint$F2m;[BLorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Lorg/spongycastle/math/ec/ECPoint$F2m;[BLorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 8

    .line 76
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    move-object v2, v0

    .line 77
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    move-result v3

    .line 80
    if-eqz p2, :cond_0

    instance-of v0, p2, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    invoke-static {p0, v3}, Lorg/spongycastle/math/ec/Tnaf;->ˊ(Lorg/spongycastle/math/ec/ECPoint$F2m;B)[Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    .line 84
    new-instance v5, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;

    invoke-direct {v5}, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;-><init>()V

    .line 85
    invoke-virtual {v5, v4}, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;->ˊ([Lorg/spongycastle/math/ec/ECPoint$F2m;)V

    .line 86
    const-string v0, "bc_wtnaf"

    invoke-virtual {v2, p0, v0, v5}, Lorg/spongycastle/math/ec/ECCurve$F2m;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V

    .line 87
    goto :goto_0

    .line 90
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;->qi()[Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    .line 94
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-object v5, v0

    .line 95
    array-length v0, p1

    add-int/lit8 v6, v0, -0x1

    :goto_1
    if-ltz v6, :cond_4

    .line 97
    invoke-static {v5}, Lorg/spongycastle/math/ec/Tnaf;->ˎ(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v5

    .line 98
    aget-byte v7, p1, v6

    .line 99
    if-eqz v7, :cond_3

    .line 101
    if-lez v7, :cond_2

    .line 103
    aget-object v0, v4, v7

    invoke-virtual {v5, v0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->ˊ(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v5

    goto :goto_2

    .line 107
    :cond_2
    neg-int v0, v7

    aget-object v0, v4, v0

    invoke-virtual {v5, v0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->ˋ(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v5

    .line 95
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 112
    :cond_4
    return-object v5
.end method


# virtual methods
.method protected ˎ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 13

    .line 24
    instance-of v0, p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only ECPoint.F2m can be used in WTauNafMultiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-object v6, v0

    .line 31
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint$F2m;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    move-object v7, v0

    .line 32
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v8

    .line 33
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    move-result v9

    .line 34
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECCurve$F2m;->ps()B

    move-result v10

    .line 35
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pt()[Ljava/math/BigInteger;

    move-result-object v11

    .line 37
    move-object v0, p2

    move v1, v8

    move v2, v9

    move-object v3, v11

    move v4, v10

    const/16 v5, 0xa

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/Tnaf;->ˊ(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lorg/spongycastle/math/ec/ZTauElement;

    move-result-object v12

    .line 39
    move-object v0, p0

    move-object v1, v6

    move-object v2, v12

    const-string v3, "bc_wtnaf"

    invoke-virtual {v7, v6, v3}, Lorg/spongycastle/math/ec/ECCurve$F2m;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v3

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/WTauNafMultiplier;->ˊ(Lorg/spongycastle/math/ec/ECPoint$F2m;Lorg/spongycastle/math/ec/ZTauElement;Lorg/spongycastle/math/ec/PreCompInfo;BB)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method
