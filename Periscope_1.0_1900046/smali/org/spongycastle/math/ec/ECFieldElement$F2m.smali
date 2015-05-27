.class public Lorg/spongycastle/math/ec/ECFieldElement$F2m;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# instance fields
.field private avL:I

.field private bcx:I

.field private bcy:[I

.field private bcz:Lorg/spongycastle/math/ec/LongArray;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 2

    .line 550
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 551
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 553
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcx:I

    .line 554
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    goto :goto_0

    .line 558
    :cond_0
    if-lt p3, p4, :cond_1

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be smaller than k3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_1
    if-gtz p3, :cond_2

    .line 565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcx:I

    .line 569
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    .line 572
    :goto_0
    iput p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    .line 573
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v0, p5}, Lorg/spongycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    .line 574
    return-void
.end method

.method private constructor <init>(I[ILorg/spongycastle/math/ec/LongArray;)V
    .locals 2

    .line 593
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 594
    iput p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    .line 595
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcx:I

    .line 596
    iput-object p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    .line 597
    iput-object p3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    .line 598
    return-void
.end method

.method public static ˋ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 4

    .line 650
    instance-of v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-nez v0, :cond_1

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_1
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    move-object v2, v0

    .line 657
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    move-object v3, v0

    .line 659
    iget v0, v2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcx:I

    iget v1, v3, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcx:I

    if-eq v0, v1, :cond_2

    .line 662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One of the F2m field elements has incorrect representation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_2
    iget v0, v2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget v1, v3, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    if-ne v0, v1, :cond_3

    iget-object v0, v2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    iget-object v1, v3, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ՙ([I[I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 667
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field elements are not elements of the same field F2m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_4
    return-void
.end method


# virtual methods
.method public bitLength()I
    .locals 1

    .line 602
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->qa()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 845
    if-ne p1, p0, :cond_0

    .line 847
    const/4 v0, 0x1

    return v0

    .line 850
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-nez v0, :cond_1

    .line 852
    const/4 v0, 0x0

    return v0

    .line 855
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    move-object v2, v0

    .line 857
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget v1, v2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcx:I

    iget v1, v2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcx:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    iget-object v1, v2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ՙ([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    iget-object v1, v2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 632
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 865
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 612
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    return v0
.end method

.method public pA()Z
    .locals 1

    .line 607
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->pA()Z

    move-result v0

    return v0
.end method

.method public pB()Z
    .locals 1

    .line 617
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->pB()Z

    move-result v0

    return v0
.end method

.method public pv()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .line 684
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/LongArray;->qb()Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public pw()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    .line 738
    return-object p0
.end method

.method public px()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6

    .line 743
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    iget v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/math/ec/LongArray;->ˎ(I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public py()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6

    .line 771
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    iget v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/math/ec/LongArray;->ᐝ(I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public pz()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .line 776
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    .line 777
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/LongArray;->pA()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    :cond_0
    return-object p0

    .line 782
    :cond_1
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-virtual {v3, v0, v1, v2}, Lorg/spongycastle/math/ec/LongArray;->ˏ(II[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v4

    .line 783
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-direct {v0, v1, v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 622
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 7

    .line 702
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    move-object v4, p1

    check-cast v4, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object v4, v4, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    iget v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-virtual {v3, v4, v5, v6}, Lorg/spongycastle/math/ec/LongArray;->ˊ(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .line 731
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->py()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 732
    invoke-virtual {p0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 8

    .line 753
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    move-object v0, p2

    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object v5, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    .line 755
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/math/ec/LongArray;->ˏ(I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v6

    .line 756
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-virtual {v4, v5, v0, v1}, Lorg/spongycastle/math/ec/LongArray;->ˋ(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v7

    .line 758
    if-ne v6, v3, :cond_0

    .line 760
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/LongArray;

    move-object v6, v0

    .line 763
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v6, v7, v0}, Lorg/spongycastle/math/ec/LongArray;->ˊ(Lorg/spongycastle/math/ec/LongArray;I)V

    .line 764
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-virtual {v6, v0, v1}, Lorg/spongycastle/math/ec/LongArray;->ˋ(I[I)V

    .line 766
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-direct {v0, v1, v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 707
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ˋ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 9

    .line 712
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    move-object v0, p2

    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object v5, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    move-object v0, p3

    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object v6, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    .line 714
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-virtual {v3, v4, v0, v1}, Lorg/spongycastle/math/ec/LongArray;->ˋ(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v7

    .line 715
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-virtual {v5, v6, v0, v1}, Lorg/spongycastle/math/ec/LongArray;->ˋ(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v8

    .line 717
    if-eq v7, v3, :cond_0

    if-ne v7, v4, :cond_1

    .line 719
    :cond_0
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/LongArray;

    move-object v7, v0

    .line 722
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v7, v8, v0}, Lorg/spongycastle/math/ec/LongArray;->ˊ(Lorg/spongycastle/math/ec/LongArray;I)V

    .line 723
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-virtual {v7, v0, v1}, Lorg/spongycastle/math/ec/LongArray;->ˋ(I[I)V

    .line 725
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-direct {v0, v1, v2, v7}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .line 676
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/LongArray;

    move-object v3, v0

    .line 677
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    move-object v4, v0

    .line 678
    iget-object v0, v4, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcz:Lorg/spongycastle/math/ec/LongArray;

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/math/ec/LongArray;->ˊ(Lorg/spongycastle/math/ec/LongArray;I)V

    .line 679
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->avL:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->bcy:[I

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 690
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
