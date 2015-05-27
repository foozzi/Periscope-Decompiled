.class public Lorg/spongycastle/math/ec/ECPoint$F2m;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 1435
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 1436
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 2

    .line 1448
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1450
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eq v0, v1, :cond_2

    .line 1452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1455
    :cond_2
    if-eqz p2, :cond_3

    .line 1458
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ˋ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1461
    if-eqz p1, :cond_3

    .line 1463
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ˋ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1467
    :cond_3
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    .line 1470
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    .line 1474
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1476
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    .line 1479
    return-void
.end method

.method private static ˊ(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 2

    .line 1624
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v1, p1, Lorg/spongycastle/math/ec/ECPoint;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    if-eq v0, v1, :cond_0

    .line 1626
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only points on the same curve can be added or subtracted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1631
    :cond_0
    return-void
.end method


# virtual methods
.method protected pF()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .line 1483
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public pK()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 7

    .line 1488
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pG()I

    move-result v2

    .line 1490
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1495
    :sswitch_0
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1497
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pR()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1499
    :cond_0
    return-object v4

    .line 1503
    :cond_1
    invoke-virtual {v4, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1504
    const/4 v0, 0x6

    if-ne v0, v2, :cond_2

    .line 1506
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v6, v0, v1

    .line 1507
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1509
    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1512
    :cond_2
    return-object v5

    .line 1516
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected pS()Z
    .locals 4

    .line 1591
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pL()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1592
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    const/4 v0, 0x0

    return v0

    .line 1597
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pM()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1599
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pG()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 1605
    :sswitch_0
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->pB()Z

    move-result v0

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->pB()Z

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1609
    :goto_1
    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->pB()Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public pT()Lorg/spongycastle/math/ec/ECPoint;
    .locals 9

    .line 2081
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2083
    return-object p0

    .line 2086
    :cond_0
    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 2087
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2089
    return-object p0

    .line 2092
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pG()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2096
    :pswitch_0
    iget-object v7, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 2097
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v7, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 2101
    :pswitch_1
    iget-object v7, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v8, v0, v1

    .line 2102
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v7, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v8, v4, v2

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 2106
    :pswitch_2
    iget-object v7, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 2107
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->pv()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 2112
    :pswitch_3
    iget-object v7, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v8, v0, v1

    .line 2113
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v7, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v8, v4, v2

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 2117
    :goto_0
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public pU()Lorg/spongycastle/math/ec/ECPoint;
    .locals 23

    .line 1896
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1898
    return-object p0

    .line 1901
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 1903
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1904
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1907
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1910
    :cond_1
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pn()I

    move-result v8

    .line 1912
    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_a

    .line 1916
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1918
    invoke-virtual {v9, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1920
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1921
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->pv()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1923
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-object/from16 v1, p0

    iget-boolean v1, v1, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    invoke-direct {v0, v6, v11, v12, v1}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1927
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v10, v0, v1

    .line 1929
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v11

    .line 1930
    if-eqz v11, :cond_2

    move-object v12, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1931
    :goto_0
    if-eqz v11, :cond_3

    move-object v13, v9

    goto :goto_1

    :cond_3
    invoke-virtual {v9, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1933
    :goto_1
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1934
    invoke-virtual {v14, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1935
    move-object/from16 v16, v12

    .line 1936
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1937
    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1938
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v1, v15, v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ˋ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1940
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 1941
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->ˋ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 1942
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 1944
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v22, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1948
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v10, v0, v1

    .line 1950
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v11

    .line 1951
    if-eqz v11, :cond_4

    move-object v12, v9

    goto :goto_2

    :cond_4
    invoke-virtual {v9, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1952
    :goto_2
    if-eqz v11, :cond_5

    move-object v13, v10

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1953
    :goto_3
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1954
    if-eqz v11, :cond_6

    move-object v15, v14

    goto :goto_4

    :cond_6
    invoke-virtual {v14, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1955
    :goto_4
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1956
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1958
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->pz()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v2, p0

    iget-boolean v2, v2, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    move-object/from16 v3, v16

    invoke-direct {v0, v6, v3, v1, v2}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1961
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1962
    if-eqz v11, :cond_8

    move-object/from16 v18, v16

    goto :goto_5

    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1964
    :goto_5
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1966
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v0

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_c

    .line 1968
    invoke-virtual {v9, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 1970
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1972
    invoke-virtual {v15, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    goto :goto_6

    .line 1977
    :cond_9
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v15, v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 1979
    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 1980
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1982
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    goto :goto_7

    .line 1984
    :cond_a
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1986
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->pv()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 1988
    :cond_b
    :goto_7
    goto :goto_9

    .line 1991
    :cond_c
    if-eqz v11, :cond_d

    move-object/from16 v21, v7

    goto :goto_8

    :cond_d
    invoke-virtual {v7, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 1992
    :goto_8
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 1995
    :goto_9
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v18, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1999
    :goto_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public pW()Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 11

    .line 1863
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1865
    return-object p0

    .line 1868
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 1869
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pn()I

    move-result v7

    .line 1871
    iget-object v8, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1873
    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 1878
    :pswitch_0
    iget-object v9, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1879
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    invoke-direct {v0, v6, v1, v2, v3}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1884
    :pswitch_1
    iget-object v9, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v10, v0, v1

    .line 1885
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1889
    :goto_0
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 1638
    invoke-static {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$F2m;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)V

    .line 1639
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->ˊ(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 26

    .line 2006
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2008
    return-object p1

    .line 2010
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2012
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 2015
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 2017
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 2018
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2021
    return-object p1

    .line 2024
    :cond_2
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pn()I

    move-result v8

    .line 2026
    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_0

    .line 2031
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/spongycastle/math/ec/ECPoint;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v10, v0, v1

    .line 2032
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2034
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 2037
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v12, v0, v1

    .line 2038
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/spongycastle/math/ec/ECPoint;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 2040
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 2041
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 2042
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 2043
    invoke-virtual {v11, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 2045
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 2046
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->pv()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 2047
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v14, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->ˋ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 2048
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 2049
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 2051
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2053
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2055
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 2058
    :cond_5
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 2061
    :cond_6
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2063
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->pz()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v2, p0

    iget-boolean v2, v2, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    move-object/from16 v3, v20

    invoke-direct {v0, v6, v3, v1, v2}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 2066
    :cond_7
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 2067
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 2068
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->ˋ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 2070
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v24, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 2074
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public ʾ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    .line 1563
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    return-object p0

    .line 1568
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pG()I

    move-result v3

    .line 1570
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 1575
    :sswitch_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pL()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pM()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1578
    invoke-virtual {v5, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1580
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pN()[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-boolean v2, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    invoke-virtual {v0, v4, v6, v1, v2}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1584
    :goto_0
    invoke-super {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->ʾ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public ˊ(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 30

    .line 1653
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    return-object p1

    .line 1657
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1659
    return-object p0

    .line 1662
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 1663
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pn()I

    move-result v7

    .line 1665
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1666
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1668
    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_5

    .line 1672
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1673
    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1675
    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v10, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1676
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1678
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1680
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    return-object v0

    .line 1683
    :cond_2
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    return-object v0

    .line 1686
    :cond_3
    invoke-virtual {v13, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1688
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1689
    invoke-virtual {v8, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1691
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-object/from16 v1, p0

    iget-boolean v1, v1, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    move-object/from16 v2, v16

    invoke-direct {v0, v6, v15, v2, v1}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1695
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v11, v0, v1

    .line 1696
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v13, v0, v1

    .line 1698
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v14

    .line 1700
    invoke-virtual {v11, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1701
    if-eqz v14, :cond_4

    move-object/from16 v16, v10

    goto :goto_0

    :cond_4
    invoke-virtual {v10, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1702
    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1703
    invoke-virtual {v11, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1704
    if-eqz v14, :cond_5

    move-object/from16 v19, v8

    goto :goto_1

    :cond_5
    invoke-virtual {v8, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1705
    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 1707
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1709
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1711
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    return-object v0

    .line 1714
    :cond_6
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    return-object v0

    .line 1717
    :cond_7
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 1718
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 1719
    if-eqz v14, :cond_8

    move-object/from16 v23, v11

    goto :goto_2

    :cond_8
    invoke-virtual {v11, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 1720
    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 1721
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v21

    invoke-virtual {v1, v2, v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ˋ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 1723
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 1724
    if-eqz v14, :cond_9

    move-object/from16 v27, v21

    goto :goto_3

    :cond_9
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v27

    .line 1725
    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ˋ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->ˋ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v28

    .line 1726
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 1728
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v29, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1732
    :sswitch_2
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1734
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1736
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    return-object v0

    .line 1739
    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$F2m;->ˊ(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0

    .line 1742
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v11, v0, v1

    .line 1743
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v13, v0, v1

    .line 1745
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v14

    .line 1746
    move-object v15, v9

    move-object/from16 v16, v12

    .line 1747
    if-nez v14, :cond_c

    .line 1749
    invoke-virtual {v15, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1750
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1753
    :cond_c
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v17

    .line 1754
    move-object/from16 v18, v8

    move-object/from16 v19, v10

    .line 1755
    if-nez v17, :cond_d

    .line 1757
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1758
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1761
    :cond_d
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 1762
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 1764
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1766
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1768
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    return-object v0

    .line 1771
    :cond_e
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    return-object v0

    .line 1775
    :cond_f
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1778
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v25

    .line 1779
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ec/ECPoint;->pJ()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1780
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ec/ECPoint;->pK()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 1782
    move-object/from16 v27, v12

    .line 1783
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v28

    .line 1785
    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 1786
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1788
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->pz()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v2, p0

    iget-boolean v2, v2, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    move-object/from16 v3, v22

    invoke-direct {v0, v6, v3, v1, v2}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1791
    :cond_10
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 1792
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 1793
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v0}, Lorg/spongycastle/math/ec/ECCurve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 1794
    goto/16 :goto_4

    .line 1797
    :cond_11
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 1799
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 1800
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 1802
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 1803
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1805
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->pz()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v2, p0

    iget-boolean v2, v2, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    move-object/from16 v3, v22

    invoke-direct {v0, v6, v3, v1, v2}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1808
    :cond_12
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v27

    .line 1809
    if-nez v17, :cond_13

    .line 1811
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v27

    .line 1814
    :cond_13
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v10, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v2, v27

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 1816
    move-object/from16 v24, v27

    .line 1817
    if-nez v14, :cond_14

    .line 1819
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 1823
    :cond_14
    :goto_4
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v24, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1827
    :goto_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public ˋ(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 1

    .line 1852
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1854
    return-object p0

    .line 1858
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pT()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->ˊ(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public ι(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 10

    .line 1523
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1525
    return-object p0

    .line 1528
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pG()I

    move-result v3

    .line 1530
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 1535
    :sswitch_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pL()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pM()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1537
    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1538
    invoke-virtual {v5, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1540
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pN()[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-boolean v2, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    invoke-virtual {v0, v4, v7, v1, v2}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1545
    :sswitch_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pL()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pM()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->pN()[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v6, v0, v1

    .line 1548
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1549
    invoke-virtual {v5, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1550
    invoke-virtual {v6, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1552
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    iget-boolean v2, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->aWJ:Z

    invoke-virtual {v0, v7, v8, v1, v2}, Lorg/spongycastle/math/ec/ECCurve;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1556
    :goto_0
    invoke-super {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->ι(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method
