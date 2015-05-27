.class public abstract Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.super Lorg/spongycastle/math/ec/ECPoint;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFp"
.end annotation


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 0

    .line 523
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 524
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 0

    .line 528
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 529
    return-void
.end method


# virtual methods
.method protected pD()Z
    .locals 11

    .line 538
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 539
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 541
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->pG()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 544
    :pswitch_0
    goto/16 :goto_1

    .line 547
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v7, v0, v1

    .line 548
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 551
    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 552
    invoke-virtual {v4, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 553
    invoke-virtual {v5, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 554
    goto :goto_1

    .line 561
    :pswitch_2
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v7, v0, v1

    .line 562
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 565
    invoke-virtual {v4, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 566
    invoke-virtual {v5, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 567
    goto :goto_1

    .line 571
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_0
    :goto_1
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 575
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected pS()Z
    .locals 1

    .line 533
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->pB()Z

    move-result v0

    return v0
.end method
