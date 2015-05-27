.class public Lorg/spongycastle/math/ec/ECPoint$Fp;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 606
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 607
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 2

    .line 621
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 623
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

    .line 625
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_2
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    .line 629
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    .line 633
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 635
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    .line 636
    return-void
.end method


# virtual methods
.method protected pF()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .line 640
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public pT()Lorg/spongycastle/math/ec/ECPoint;
    .locals 8

    .line 1267
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    return-object p0

    .line 1272
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 1273
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pn()I

    move-result v7

    .line 1275
    const/4 v0, 0x0

    if-eq v0, v7, :cond_1

    .line 1277
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->pw()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1280
    :cond_1
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->pw()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    invoke-direct {v0, v6, v1, v2, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public pU()Lorg/spongycastle/math/ec/ECPoint;
    .locals 24

    .line 882
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    return-object p0

    .line 887
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 889
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 890
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 895
    :cond_1
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pn()I

    move-result v8

    .line 897
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 899
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_7

    .line 903
    :pswitch_0
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 904
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˈ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 905
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v9}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 906
    invoke-virtual {v9, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 908
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v1, p0

    iget-boolean v1, v1, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    invoke-direct {v0, v6, v12, v13, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 913
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v10, v0, v1

    .line 915
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v11

    .line 918
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 919
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v11, :cond_2

    .line 921
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 923
    :cond_2
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˈ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 925
    if-eqz v11, :cond_3

    move-object v13, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 926
    :goto_0
    if-eqz v11, :cond_4

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    goto :goto_1

    :cond_4
    invoke-virtual {v13, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 927
    :goto_1
    invoke-virtual {v9, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 928
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˉ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 929
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 931
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 932
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 933
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 934
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 935
    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    goto :goto_2

    :cond_5
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 936
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 938
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v23, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 943
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v10, v0, v1

    .line 945
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v11

    .line 947
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 948
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 950
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 951
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->pw()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 954
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 956
    if-eqz v11, :cond_6

    move-object/from16 v18, v10

    goto :goto_3

    :cond_6
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 957
    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v9, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˈ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 958
    invoke-virtual {v12, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˉ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 959
    goto :goto_6

    .line 962
    :cond_7
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 963
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˈ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 964
    if-eqz v11, :cond_8

    .line 966
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    goto :goto_5

    .line 968
    :cond_8
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_b

    .line 970
    if-eqz v11, :cond_9

    move-object/from16 v19, v10

    goto :goto_4

    :cond_9
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 971
    :goto_4
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 972
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v0

    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 974
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    goto :goto_5

    .line 978
    :cond_a
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 982
    :cond_b
    :goto_5
    invoke-virtual {v9, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˉ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 985
    :goto_6
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 986
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v13}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˌ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 988
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 989
    if-nez v11, :cond_c

    .line 991
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 997
    :cond_c
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v20, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1002
    :pswitch_3
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->І(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-result-object v0

    return-object v0

    .line 1007
    :goto_7
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public pV()Lorg/spongycastle/math/ec/ECPoint;
    .locals 19

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    return-object p0

    .line 1096
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1097
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1099
    return-object p0

    .line 1102
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v5

    .line 1103
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->pn()I

    move-result v6

    .line 1105
    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    .line 1109
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1111
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1112
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1113
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˈ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1114
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1116
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˈ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1117
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1122
    :cond_2
    invoke-virtual {v12, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1123
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->py()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1124
    invoke-virtual {v12, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1125
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1127
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v15, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1128
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1129
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v1, p0

    iget-boolean v1, v1, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v5, v2, v3, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1133
    :sswitch_1
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->І(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1138
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected pX()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .line 1311
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x1

    aget-object v3, v0, v1

    .line 1312
    if-nez v3, :cond_0

    .line 1315
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    const/4 v1, 0x1

    aput-object v3, v0, v1

    .line 1317
    :cond_0
    return-object v3
.end method

.method public ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 31

    .line 656
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    return-object p1

    .line 660
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    return-object p0

    .line 664
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 666
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 669
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 670
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pn()I

    move-result v7

    .line 672
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 673
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/spongycastle/math/ec/ECPoint;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/spongycastle/math/ec/ECPoint;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 675
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_a

    .line 679
    :pswitch_0
    invoke-virtual {v10, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 681
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 683
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 686
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 690
    :cond_3
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 693
    :cond_4
    invoke-virtual {v13, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 694
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 695
    invoke-virtual {v8, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 697
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v1, p0

    iget-boolean v1, v1, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    move-object/from16 v2, v16

    invoke-direct {v0, v6, v15, v2, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 702
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v12, v0, v1

    .line 703
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v13, v0, v1

    .line 705
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v14

    .line 706
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v15

    .line 708
    if-eqz v14, :cond_5

    move-object/from16 v16, v11

    goto :goto_0

    :cond_5
    invoke-virtual {v11, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 709
    :goto_0
    if-eqz v15, :cond_6

    move-object/from16 v17, v9

    goto :goto_1

    :cond_6
    invoke-virtual {v9, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 710
    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 711
    if-eqz v14, :cond_7

    move-object/from16 v19, v10

    goto :goto_2

    :cond_7
    invoke-virtual {v10, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 712
    :goto_2
    if-eqz v15, :cond_8

    move-object/from16 v20, v8

    goto :goto_3

    :cond_8
    invoke-virtual {v8, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 713
    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 716
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 718
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 721
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 725
    :cond_9
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 729
    :cond_a
    if-eqz v14, :cond_b

    move-object/from16 v22, v13

    goto :goto_4

    :cond_b
    if-eqz v15, :cond_c

    move-object/from16 v22, v12

    goto :goto_4

    :cond_c
    invoke-virtual {v12, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 730
    :goto_4
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 731
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 732
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 733
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 735
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v27

    .line 736
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v28

    .line 737
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 739
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v29, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 745
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v12, v0, v1

    .line 746
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v13, v0, v1

    .line 748
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v14

    .line 750
    const/16 v18, 0x0

    .line 752
    if-nez v14, :cond_10

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 756
    invoke-virtual {v8, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    invoke-virtual {v9, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 757
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 759
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 761
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 763
    :cond_d
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 766
    :cond_e
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 767
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 768
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 770
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 771
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 772
    move-object/from16 v17, v19

    .line 774
    if-eqz v14, :cond_f

    .line 776
    move-object/from16 v18, v21

    goto :goto_5

    .line 780
    :cond_f
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 782
    :goto_5
    goto/16 :goto_8

    .line 786
    :cond_10
    if-eqz v14, :cond_11

    .line 788
    move-object/from16 v19, v12

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    goto :goto_6

    .line 792
    :cond_11
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 793
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 794
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 795
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 798
    :goto_6
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v22

    .line 800
    if-eqz v22, :cond_12

    .line 802
    move-object/from16 v23, v13

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    goto :goto_7

    .line 806
    :cond_12
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 807
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 808
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 809
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 812
    :goto_7
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 813
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v27

    .line 816
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 818
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 821
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 825
    :cond_13
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 828
    :cond_14
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v28

    .line 829
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 830
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v30

    .line 832
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 833
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 835
    move-object/from16 v17, v26

    .line 836
    if-nez v14, :cond_15

    .line 838
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 840
    :cond_15
    if-nez v22, :cond_16

    .line 842
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 850
    :cond_16
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_17

    .line 852
    move-object/from16 v18, v28

    .line 857
    :cond_17
    :goto_8
    const/4 v0, 0x4

    if-ne v7, v0, :cond_18

    .line 860
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 862
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v19, v0

    const/4 v0, 0x0

    aput-object v17, v19, v0

    const/4 v0, 0x1

    aput-object v20, v19, v0

    .line 863
    goto :goto_9

    .line 866
    :cond_18
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v19, v0

    const/4 v0, 0x0

    aput-object v17, v19, v0

    .line 869
    :goto_9
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    move-object v1, v6

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v19

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 874
    :goto_a
    :pswitch_3
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
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 21

    .line 1014
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 1016
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pV()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1018
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    return-object p1

    .line 1022
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1024
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1027
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1028
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1030
    return-object p1

    .line 1033
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v5

    .line 1034
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->pn()I

    move-result v6

    .line 1036
    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    .line 1040
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1041
    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/spongycastle/math/ec/ECPoint;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/spongycastle/math/ec/ECPoint;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1043
    invoke-virtual {v8, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v9, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1045
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1047
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1050
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pV()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1054
    :cond_4
    return-object p0

    .line 1062
    :cond_5
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1063
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1064
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1066
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1069
    :cond_6
    invoke-virtual {v14, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1070
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->py()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1071
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1072
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1073
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1074
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 1076
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v1, p0

    iget-boolean v1, v1, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v5, v2, v3, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1080
    :sswitch_1
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->І(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1084
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 1237
    invoke-virtual {p1, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected ˈ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 1242
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected ˉ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 1247
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected ˌ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 1252
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˉ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected ˏ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .line 1285
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1286
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1288
    :cond_0
    return-object v2

    .line 1291
    :cond_1
    if-nez p2, :cond_2

    .line 1293
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 1296
    :cond_2
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1297
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->pw()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1298
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v0

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1300
    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->pw()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_0

    .line 1304
    :cond_3
    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1306
    :goto_0
    return-object v3
.end method

.method protected І(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;
    .locals 21

    .line 1322
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v8, v0, v1

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pX()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1324
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1325
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˈ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1326
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1327
    invoke-virtual {v12, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1328
    invoke-virtual {v6, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1329
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v14}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1330
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1331
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1332
    invoke-virtual {v14, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1333
    if-eqz p1, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    goto :goto_0

    :cond_0
    const/16 v19, 0x0

    .line 1334
    :goto_0
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v20, v12

    goto :goto_1

    :cond_1
    invoke-virtual {v12, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 1336
    :goto_1
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v20, v4, v2

    const/4 v2, 0x1

    aput-object v19, v4, v2

    move-object/from16 v2, p0

    iget-boolean v5, v2, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    move-object v2, v15

    move-object/from16 v3, v18

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public ﺌ(I)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .line 645
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pG()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pX()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    .line 650
    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->ﺌ(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public ﺬ(I)Lorg/spongycastle/math/ec/ECPoint;
    .locals 20

    .line 1145
    if-gez p1, :cond_0

    .line 1147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'e\' cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1151
    :cond_1
    return-object p0

    .line 1153
    :cond_2
    move/from16 v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1158
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 1160
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1161
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1163
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1166
    :cond_4
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pn()I

    move-result v8

    .line 1168
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1169
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_5

    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v0}, Lorg/spongycastle/math/ec/ECCurve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v11, v0, v1

    .line 1172
    :goto_0
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1174
    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 1177
    :pswitch_0
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1178
    invoke-virtual {v10, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1179
    invoke-virtual {v7, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1180
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1181
    goto :goto_1

    .line 1183
    :pswitch_1
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1184
    goto :goto_1

    .line 1186
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->pX()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1191
    :cond_6
    :goto_1
    :pswitch_3
    const/4 v12, 0x0

    :goto_2
    move/from16 v0, p1

    if-ge v12, v0, :cond_a

    .line 1193
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1195
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1198
    :cond_7
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1199
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ˈ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1200
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1201
    invoke-virtual {v15, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1202
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1203
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1204
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1206
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1208
    invoke-virtual {v14, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1209
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1212
    :cond_8
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->ʿ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1213
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1214
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v11, v15

    goto :goto_3

    :cond_9
    invoke-virtual {v15, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1191
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 1217
    :cond_a
    packed-switch v8, :pswitch_data_1

    goto/16 :goto_4

    .line 1220
    :pswitch_4
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->py()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1221
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    invoke-virtual {v10, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v7, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v3, p0

    iget-boolean v3, v3, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    invoke-direct {v0, v6, v1, v2, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1223
    :pswitch_5
    invoke-virtual {v10, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1224
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1225
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v11, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    move-object v1, v6

    move-object v2, v10

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1227
    :pswitch_6
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v11, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    move-object v1, v6

    move-object v2, v10

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1229
    :pswitch_7
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v1, 0x2

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v11, v4, v1

    const/4 v1, 0x1

    aput-object v9, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/ECPoint$Fp;->aWJ:Z

    move-object v1, v6

    move-object v2, v10

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1231
    :goto_4
    :pswitch_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
