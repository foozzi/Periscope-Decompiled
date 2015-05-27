.class public Lorg/spongycastle/math/ec/ECCurve$F2m;
.super Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# instance fields
.field private aOe:I

.field private aOf:I

.field private aOg:I

.field private avL:I

.field private bcs:Lorg/spongycastle/math/ec/ECPoint$F2m;

.field private bct:B

.field private bcu:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    .line 780
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 781
    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3

    .line 816
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 692
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bct:B

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcu:[Ljava/math/BigInteger;

    .line 818
    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->avL:I

    .line 819
    iput p2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOe:I

    .line 820
    iput p3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOf:I

    .line 821
    iput p4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOg:I

    .line 822
    iput-object p7, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcm:Ljava/math/BigInteger;

    .line 823
    iput-object p8, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcn:Ljava/math/BigInteger;

    .line 825
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcs:Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 826
    invoke-virtual {p0, p5}, Lorg/spongycastle/math/ec/ECCurve$F2m;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bck:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 827
    invoke-virtual {p0, p6}, Lorg/spongycastle/math/ec/ECCurve$F2m;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcl:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 828
    const/4 v0, 0x6

    iput v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bco:I

    .line 829
    return-void
.end method

.method protected constructor <init>(IIIILorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3

    .line 833
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 692
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bct:B

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcu:[Ljava/math/BigInteger;

    .line 835
    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->avL:I

    .line 836
    iput p2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOe:I

    .line 837
    iput p3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOf:I

    .line 838
    iput p4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOg:I

    .line 839
    iput-object p7, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcm:Ljava/math/BigInteger;

    .line 840
    iput-object p8, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcn:Ljava/math/BigInteger;

    .line 842
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcs:Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 843
    iput-object p5, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bck:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 844
    iput-object p6, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcl:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 845
    const/4 v0, 0x6

    iput v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bco:I

    .line 846
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    .line 749
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 750
    return-void
.end method

.method private ˎ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 10

    .line 1034
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    return-object p1

    .line 1039
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1041
    const/4 v3, 0x0

    .line 1042
    const/4 v4, 0x0

    .line 1044
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 1047
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->avL:I

    invoke-direct {v0, v1, v5}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1048
    move-object v3, v2

    .line 1049
    move-object v7, p1

    .line 1050
    const/4 v8, 0x1

    :goto_0
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->avL:I

    add-int/lit8 v0, v0, -0x1

    if-gt v8, v0, :cond_2

    .line 1052
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1053
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v9, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1054
    invoke-virtual {v9, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1050
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1056
    :cond_2
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1058
    const/4 v0, 0x0

    return-object v0

    .line 1060
    :cond_3
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1062
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1064
    return-object v3
.end method


# virtual methods
.method public getFieldSize()I
    .locals 1

    .line 878
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->avL:I

    return v0
.end method

.method public getM()I
    .locals 1

    .line 1069
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->avL:I

    return v0
.end method

.method public gt()I
    .locals 1

    .line 1084
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOe:I

    return v0
.end method

.method public gu()I
    .locals 1

    .line 1089
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOf:I

    return v0
.end method

.method public gv()I
    .locals 1

    .line 1094
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOg:I

    return v0
.end method

.method protected pg()Lorg/spongycastle/math/ec/ECCurve;
    .locals 9

    .line 850
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->avL:I

    iget v2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOe:I

    iget v3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOf:I

    iget v4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOg:I

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bck:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcl:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcm:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcn:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method protected ph()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .line 868
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    new-instance v0, Lorg/spongycastle/math/ec/WTauNafMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/WTauNafMultiplier;-><init>()V

    return-object v0

    .line 873
    :cond_0
    invoke-super {p0}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;->ph()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    return-object v0
.end method

.method public pi()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 930
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcs:Lorg/spongycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method

.method public pr()Z
    .locals 1

    .line 939
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcm:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcn:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcl:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bck:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bck:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized ps()B
    .locals 2

    monitor-enter p0

    .line 950
    :try_start_0
    iget-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bct:B

    if-nez v0, :cond_0

    .line 952
    invoke-static {p0}, Lorg/spongycastle/math/ec/Tnaf;->ˊ(Lorg/spongycastle/math/ec/ECCurve$F2m;)B

    move-result v0

    iput-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bct:B

    .line 954
    :cond_0
    iget-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bct:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized pt()[Ljava/math/BigInteger;
    .locals 2

    monitor-enter p0

    .line 964
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcu:[Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 966
    invoke-static {p0}, Lorg/spongycastle/math/ec/Tnaf;->ˋ(Lorg/spongycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcu:[Ljava/math/BigInteger;

    .line 968
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcu:[Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public pu()Z
    .locals 1

    .line 1079
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOf:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOg:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 920
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .line 925
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected ˋ(ILjava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .line 982
    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve$F2m;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    .line 983
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcl:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->pz()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_2

    .line 989
    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->py()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bcl:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->bck:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 990
    invoke-direct {p0, v4}, Lorg/spongycastle/math/ec/ECCurve$F2m;->ˎ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 991
    if-eqz v5, :cond_3

    .line 993
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->pB()Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eq v0, v1, :cond_2

    .line 995
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->pv()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 998
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pn()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 1003
    :sswitch_0
    invoke-virtual {v5, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1004
    goto :goto_2

    .line 1008
    :goto_1
    invoke-virtual {v5, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1015
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 1017
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid point compression"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .line 888
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve$F2m;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 890
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pn()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 895
    :sswitch_0
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 899
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 905
    :cond_0
    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 907
    .line 915
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v3, p3}, Lorg/spongycastle/math/ec/ECCurve$F2m;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6

    .line 883
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->avL:I

    iget v2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOe:I

    iget v3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOf:I

    iget v4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->aOg:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v0
.end method

.method public ﭨ(I)Z
    .locals 1

    .line 855
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 860
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 862
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
