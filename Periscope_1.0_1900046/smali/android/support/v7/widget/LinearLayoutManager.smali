.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$ʻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutManager$ˊ;,
        Landroid/support/v7/widget/LinearLayoutManager$if;,
        Landroid/support/v7/widget/LinearLayoutManager$SavedState;,
        Landroid/support/v7/widget/LinearLayoutManager$ˋ;
    }
.end annotation


# instance fields
.field ᔺ:I

.field private ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

.field ᗀ:Lo/氵;

.field private ᘥ:Z

.field private ᵆ:Z

.field Ḟ:Z

.field private Ḹ:Z

.field private Ḽ:Z

.field Ṿ:I

.field Ὑ:I

.field private Ῠ:Z

.field Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field final Ὺ:Landroid/support/v7/widget/LinearLayoutManager$if;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 141
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 150
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᵆ:Z

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḹ:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḽ:Z

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ṿ:I

    .line 123
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὑ:I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 151
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$if;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager$if;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὺ:Landroid/support/v7/widget/LinearLayoutManager$if;

    .line 152
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 153
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->ᵔ(Z)V

    .line 154
    return-void
.end method

.method private Ɨ()V
    .locals 2

    .line 322
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᔺ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ƚ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᵆ:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    goto :goto_1

    .line 325
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᵆ:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    .line 327
    :goto_1
    return-void
.end method

.method private ǐ()Landroid/view/View;
    .locals 2

    .line 1427
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private Ȋ()Landroid/view/View;
    .locals 2

    .line 1437
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private ɩ(I)Landroid/view/View;
    .locals 2

    .line 1513
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->ʼ(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private ʳ(II)V
    .locals 2

    .line 847
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1}, Lo/氵;->ᔥ()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    .line 848
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヶ:I

    .line 850
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    .line 851
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->丫:I

    .line 852
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    .line 853
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    .line 854
    return-void
.end method

.method private ʴ(II)V
    .locals 2

    .line 861
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1}, Lo/氵;->ᓴ()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    .line 862
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    .line 863
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヶ:I

    .line 865
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->丫:I

    .line 866
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    .line 867
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    .line 869
    return-void
.end method

.method private ʼ(III)Landroid/view/View;
    .locals 9

    .line 1517
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ǐ()V

    .line 1518
    const/4 v1, 0x0

    .line 1519
    const/4 v2, 0x0

    .line 1520
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᓴ()I

    move-result v3

    .line 1521
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᔥ()I

    move-result v4

    .line 1522
    if-le p2, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    .line 1523
    :goto_0
    move v6, p1

    :goto_1
    if-eq v6, p2, :cond_5

    .line 1524
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1525
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/LinearLayoutManager;->ˣ(Landroid/view/View;)I

    move-result v8

    .line 1526
    if-ltz v8, :cond_4

    if-ge v8, p3, :cond_4

    .line 1527
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʼ;->ϲ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1528
    if-nez v1, :cond_4

    .line 1529
    move-object v1, v7

    goto :goto_2

    .line 1531
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v7}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v0

    if-ge v0, v4, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v7}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_3

    .line 1533
    :cond_2
    if-nez v2, :cond_4

    .line 1534
    move-object v2, v7

    goto :goto_2

    .line 1537
    :cond_3
    return-object v7

    .line 1523
    :cond_4
    :goto_2
    add-int/2addr v6, v5

    goto :goto_1

    .line 1541
    :cond_5
    if-eqz v2, :cond_6

    move-object v0, v2

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    return-object v0
.end method

.method private ʽ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 7

    .line 993
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 994
    const/4 v0, 0x0

    return v0

    .line 996
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ǐ()V

    .line 997
    move-object v0, p1

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḽ:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->ˎ(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḽ:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->ˏ(ZZ)Landroid/view/View;

    move-result-object v3

    move-object v4, p0

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḽ:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    invoke-static/range {v0 .. v6}, Lo/ǀ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Lo/氵;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ʻ;ZZ)I

    move-result v0

    return v0
.end method

.method private ʾ(Landroid/support/v7/widget/RecyclerView$ˉ;)Landroid/view/View;
    .locals 1

    .line 1488
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ﹾ(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ɩ(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private ʿ(Landroid/support/v7/widget/RecyclerView$ˉ;)Landroid/view/View;
    .locals 1

    .line 1504
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ɩ(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ﹾ(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private ˊ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I
    .locals 3

    .line 797
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᔥ()I

    move-result v0

    sub-int v1, v0, p1

    .line 798
    const/4 v2, 0x0

    .line 799
    if-lez v1, :cond_0

    .line 800
    neg-int v0, v1

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->ˎ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    neg-int v2, v0

    goto :goto_0

    .line 802
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 805
    :goto_0
    add-int/2addr p1, v2

    .line 806
    if-eqz p4, :cond_1

    .line 808
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᔥ()I

    move-result v0

    sub-int v1, v0, p1

    .line 809
    if-lez v1, :cond_1

    .line 810
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v1}, Lo/氵;->ʸ(I)V

    .line 811
    add-int v0, v1, v2

    return v0

    .line 814
    :cond_1
    return v2
.end method

.method private ˊ(IIZLandroid/support/v7/widget/RecyclerView$ˉ;)V
    .locals 5

    .line 1059
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->爫:I

    .line 1060
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->丫:I

    .line 1062
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1063
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->爫:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v2}, Lo/氵;->ᴗ()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->爫:I

    .line 1065
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ȋ()Landroid/view/View;

    move-result-object v4

    .line 1067
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヶ:I

    .line 1069
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->ˣ(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヶ:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    .line 1070
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1, v4}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    .line 1072
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v4}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1}, Lo/氵;->ᔥ()I

    move-result v1

    sub-int v3, v0, v1

    .line 1075
    goto :goto_2

    .line 1076
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ǐ()Landroid/view/View;

    move-result-object v4

    .line 1077
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->爫:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v2}, Lo/氵;->ᓴ()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->爫:I

    .line 1078
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヶ:I

    .line 1080
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->ˣ(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヶ:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    .line 1081
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1, v4}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    .line 1082
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v4}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1}, Lo/氵;->ᓴ()I

    move-result v1

    add-int v3, v0, v1

    .line 1085
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    .line 1086
    if-eqz p3, :cond_3

    .line 1087
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    .line 1089
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    .line 1090
    return-void
.end method

.method private ˊ(Landroid/support/v7/widget/LinearLayoutManager$if;)V
    .locals 2

    .line 843
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$if;->Ύ:I

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->ʳ(II)V

    .line 844
    return-void
.end method

.method private ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;I)V
    .locals 5

    .line 1158
    if-gez p2, :cond_0

    .line 1163
    return-void

    .line 1166
    :cond_0
    move v1, p2

    .line 1167
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    .line 1168
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v0, :cond_3

    .line 1169
    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 1170
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1171
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v4}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 1172
    add-int/lit8 v0, v2, -0x1

    invoke-direct {p0, p1, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;II)V

    .line 1173
    return-void

    .line 1169
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    .line 1177
    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    .line 1178
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1179
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v4}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v0

    if-le v0, v1, :cond_4

    .line 1180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;II)V

    .line 1181
    return-void

    .line 1177
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1185
    :cond_5
    :goto_2
    return-void
.end method

.method private ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;II)V
    .locals 2

    .line 1131
    if-ne p2, p3, :cond_0

    .line 1132
    return-void

    .line 1137
    :cond_0
    if-le p3, p2, :cond_2

    .line 1138
    add-int/lit8 v1, p3, -0x1

    :goto_0
    if-lt v1, p2, :cond_1

    .line 1139
    invoke-virtual {p0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(ILandroid/support/v7/widget/RecyclerView$ʾ;)V

    .line 1138
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    .line 1142
    :cond_2
    move v1, p2

    :goto_1
    if-le v1, p3, :cond_3

    .line 1143
    invoke-virtual {p0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(ILandroid/support/v7/widget/RecyclerView$ʾ;)V

    .line 1142
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1146
    :cond_3
    :goto_2
    return-void
.end method

.method private ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/LinearLayoutManager$ˋ;)V
    .locals 2

    .line 1238
    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ト:Z

    if-nez v0, :cond_0

    .line 1239
    return-void

    .line 1241
    :cond_0
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->丫:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1242
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˋ(Landroid/support/v7/widget/RecyclerView$ʾ;I)V

    goto :goto_0

    .line 1244
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;I)V

    .line 1246
    :goto_0
    return-void
.end method

.method private ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;II)V
    .locals 12

    .line 593
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ˉ;->ઽ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ˉ;->ڏ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ד()Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    :cond_0
    return-void

    .line 599
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 600
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ʾ;->с()Ljava/util/List;

    move-result-object v5

    .line 601
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˣ(Landroid/view/View;)I

    move-result v7

    .line 603
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_5

    .line 604
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v9, v0

    .line 605
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v10

    .line 606
    if-ge v10, v7, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eq v0, v1, :cond_3

    const/4 v11, -0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x1

    .line 608
    :goto_2
    const/4 v0, -0x1

    if-ne v11, v0, :cond_4

    .line 609
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    iget-object v1, v9, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0, v1}, Lo/氵;->ᒽ(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_3

    .line 611
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    iget-object v1, v9, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0, v1}, Lo/氵;->ᒽ(Landroid/view/View;)I

    move-result v0

    add-int/2addr v4, v0

    .line 603
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 619
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iput-object v5, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->טּ:Ljava/util/List;

    .line 620
    if-lez v3, :cond_7

    .line 621
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ǐ()Landroid/view/View;

    move-result-object v8

    .line 622
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/LinearLayoutManager;->ˣ(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->ʴ(II)V

    .line 623
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->爫:I

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    .line 625
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, -0x1

    :goto_4
    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    .line 626
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/LinearLayoutManager$ˋ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I

    .line 629
    :cond_7
    if-lez v4, :cond_9

    .line 630
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ȋ()Landroid/view/View;

    move-result-object v8

    .line 631
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/LinearLayoutManager;->ˣ(Landroid/view/View;)I

    move-result v0

    move/from16 v1, p4

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->ʳ(II)V

    .line 632
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iput v4, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->爫:I

    .line 633
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    .line 634
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x1

    :goto_5
    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    .line 635
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/LinearLayoutManager$ˋ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I

    .line 637
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->טּ:Ljava/util/List;

    .line 638
    return-void
.end method

.method private ˋ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I
    .locals 4

    .line 822
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᓴ()I

    move-result v0

    sub-int v2, p1, v0

    .line 823
    const/4 v3, 0x0

    .line 824
    if-lez v2, :cond_0

    .line 826
    invoke-virtual {p0, v2, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->ˎ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    neg-int v3, v0

    goto :goto_0

    .line 828
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 830
    :goto_0
    add-int/2addr p1, v3

    .line 831
    if-eqz p4, :cond_1

    .line 833
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᓴ()I

    move-result v0

    sub-int v2, p1, v0

    .line 834
    if-lez v2, :cond_1

    .line 835
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    neg-int v1, v2

    invoke-virtual {v0, v1}, Lo/氵;->ʸ(I)V

    .line 836
    sub-int v0, v3, v2

    return v0

    .line 839
    :cond_1
    return v3
.end method

.method private ˋ(Landroid/support/v7/widget/LinearLayoutManager$if;)V
    .locals 2

    .line 857
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$if;->Ύ:I

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->ʴ(II)V

    .line 858
    return-void
.end method

.method private ˋ(Landroid/support/v7/widget/RecyclerView$ʾ;I)V
    .locals 5

    .line 1197
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1198
    if-gez p2, :cond_0

    .line 1203
    return-void

    .line 1205
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->getEnd()I

    move-result v0

    sub-int v2, v0, p2

    .line 1206
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v0, :cond_3

    .line 1207
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1208
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1209
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v4}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 1210
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;II)V

    .line 1211
    return-void

    .line 1207
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    .line 1215
    :cond_3
    add-int/lit8 v3, v1, -0x1

    :goto_1
    if-ltz v3, :cond_5

    .line 1216
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1217
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v4}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v0

    if-ge v0, v2, :cond_4

    .line 1218
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, p1, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;II)V

    .line 1219
    return-void

    .line 1215
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1224
    :cond_5
    :goto_2
    return-void
.end method

.method private ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/support/v7/widget/LinearLayoutManager$if;)V
    .locals 2

    .line 641
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->ˏ(Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/support/v7/widget/LinearLayoutManager$if;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    return-void

    .line 648
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->ˎ(Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/support/v7/widget/LinearLayoutManager$if;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    return-void

    .line 657
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$if;->ױ()V

    .line 658
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḹ:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->Ύ:I

    .line 659
    return-void
.end method

.method private ˎ(ZZ)Landroid/view/View;
    .locals 2

    .line 1449
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v0, :cond_0

    .line 1450
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1453
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private ˎ(Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/support/v7/widget/LinearLayoutManager$if;)Z
    .locals 5

    .line 668
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 669
    const/4 v0, 0x0

    return v0

    .line 671
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 672
    if-eqz v2, :cond_1

    invoke-virtual {p2, v2, p1}, Landroid/support/v7/widget/LinearLayoutManager$if;->ˊ(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ˉ;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    const/4 v0, 0x1

    return v0

    .line 679
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᘥ:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḹ:Z

    if-eq v0, v1, :cond_2

    .line 680
    const/4 v0, 0x0

    return v0

    .line 683
    :cond_2
    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->ʾ(Landroid/support/v7/widget/RecyclerView$ˉ;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->ʿ(Landroid/support/v7/widget/RecyclerView$ˉ;)Landroid/view/View;

    move-result-object v3

    .line 685
    :goto_0
    if-eqz v3, :cond_8

    .line 686
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/LinearLayoutManager$if;->ᐟ(Landroid/view/View;)V

    .line 689
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ڏ()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ד()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 691
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v3}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1}, Lo/氵;->ᔥ()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v3}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1}, Lo/氵;->ᓴ()I

    move-result v1

    if-ge v0, v1, :cond_5

    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    .line 696
    :goto_1
    if-eqz v4, :cond_7

    .line 697
    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᔥ()I

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᓴ()I

    move-result v0

    :goto_2
    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    .line 702
    :cond_7
    const/4 v0, 0x1

    return v0

    .line 704
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private ˏ(ZZ)Landroid/view/View;
    .locals 2

    .line 1467
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v0, :cond_0

    .line 1468
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1471
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private ˏ(Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/support/v7/widget/LinearLayoutManager$if;)Z
    .locals 6

    .line 712
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ڏ()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ṿ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 713
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 716
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ṿ:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ṿ:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 717
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ṿ:I

    .line 718
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὑ:I

    .line 722
    const/4 v0, 0x0

    return v0

    .line 727
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ṿ:I

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->Ύ:I

    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ۃ()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 731
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ﭖ:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    .line 732
    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    if-eqz v0, :cond_4

    .line 733
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᔥ()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ףּ:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    goto :goto_0

    .line 736
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᓴ()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ףּ:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    .line 739
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 742
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὑ:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_e

    .line 743
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ṿ:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ﯨ(I)Landroid/view/View;

    move-result-object v2

    .line 744
    if-eqz v2, :cond_a

    .line 745
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v2}, Lo/氵;->ᒽ(Landroid/view/View;)I

    move-result v3

    .line 746
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᖦ()I

    move-result v0

    if-le v3, v0, :cond_6

    .line 748
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$if;->ױ()V

    .line 749
    const/4 v0, 0x1

    return v0

    .line 751
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v2}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1}, Lo/氵;->ᓴ()I

    move-result v1

    sub-int v4, v0, v1

    .line 753
    if-gez v4, :cond_7

    .line 754
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᓴ()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    .line 756
    const/4 v0, 0x1

    return v0

    .line 758
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᔥ()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1, v2}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v1

    sub-int v5, v0, v1

    .line 760
    if-gez v5, :cond_8

    .line 761
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᔥ()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    .line 762
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    .line 763
    const/4 v0, 0x1

    return v0

    .line 765
    :cond_8
    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v2}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1}, Lo/氵;->ᓱ()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v2}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v0

    :goto_1
    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    .line 769
    goto :goto_4

    .line 770
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_d

    .line 772
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˣ(Landroid/view/View;)I

    move-result v3

    .line 773
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ṿ:I

    if-ge v0, v3, :cond_b

    const/4 v0, 0x1

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    :goto_2
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    .line 776
    :cond_d
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$if;->ױ()V

    .line 778
    :goto_4
    const/4 v0, 0x1

    return v0

    .line 781
    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    .line 782
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v0, :cond_f

    .line 783
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᔥ()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὑ:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    goto :goto_5

    .line 786
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᓴ()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὑ:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    .line 789
    :goto_5
    const/4 v0, 0x1

    return v0
.end method

.method private ͺ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 6

    .line 1004
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    const/4 v0, 0x0

    return v0

    .line 1007
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ǐ()V

    .line 1008
    move-object v0, p1

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḽ:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->ˎ(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḽ:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->ˏ(ZZ)Landroid/view/View;

    move-result-object v3

    move-object v4, p0

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḽ:Z

    invoke-static/range {v0 .. v5}, Lo/ǀ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Lo/氵;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ʻ;Z)I

    move-result v0

    return v0
.end method

.method private ι(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 6

    .line 1015
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    const/4 v0, 0x0

    return v0

    .line 1018
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ǐ()V

    .line 1019
    move-object v0, p1

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḽ:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->ˎ(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḽ:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->ˏ(ZZ)Landroid/view/View;

    move-result-object v3

    move-object v4, p0

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḽ:Z

    invoke-static/range {v0 .. v5}, Lo/ǀ;->ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;Lo/氵;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ʻ;Z)I

    move-result v0

    return v0
.end method

.method private ﹸ(I)I
    .locals 2

    .line 1394
    sparse-switch p1, :sswitch_data_0

    goto :goto_4

    .line 1396
    :sswitch_0
    const/4 v0, -0x1

    return v0

    .line 1398
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 1400
    :sswitch_2
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᔺ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    return v0

    .line 1403
    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᔺ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/high16 v0, -0x80000000

    :goto_1
    return v0

    .line 1406
    :sswitch_4
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᔺ:I

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_2

    :cond_2
    const/high16 v0, -0x80000000

    :goto_2
    return v0

    .line 1409
    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᔺ:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/high16 v0, -0x80000000

    :goto_3
    return v0

    .line 1415
    :goto_4
    const/high16 v0, -0x80000000

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private ﹾ(I)Landroid/view/View;
    .locals 2

    .line 1509
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->ʼ(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 204
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 205
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    invoke-static {p1}, Lo/ﯦ;->ˊ(Landroid/view/accessibility/AccessibilityEvent;)Lo/ז;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ʅ()I

    move-result v0

    invoke-virtual {v1, v0}, Lo/ז;->setFromIndex(I)V

    .line 209
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ί()I

    move-result v0

    invoke-virtual {v1, v0}, Lo/ז;->setToIndex(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 242
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 243
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 244
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 251
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 215
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    return-object v0

    .line 218
    :cond_0
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v2}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 219
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 220
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ǐ()V

    .line 221
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᘥ:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    xor-int v3, v0, v1

    .line 222
    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ﭖ:Z

    .line 223
    if-eqz v3, :cond_1

    .line 224
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ȋ()Landroid/view/View;

    move-result-object v4

    .line 225
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᔥ()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1, v4}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ףּ:I

    .line 227
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->ˣ(Landroid/view/View;)I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->סּ:I

    .line 228
    goto :goto_0

    .line 229
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ǐ()Landroid/view/View;

    move-result-object v4

    .line 230
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->ˣ(Landroid/view/View;)I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->סּ:I

    .line 231
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v4}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1}, Lo/氵;->ᓴ()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ףּ:I

    .line 234
    :goto_0
    goto :goto_1

    .line 235
    :cond_2
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->৳()V

    .line 237
    :goto_1
    return-object v2
.end method

.method public setOrientation(I)V
    .locals 3

    .line 303
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˎ(Ljava/lang/String;)V

    .line 307
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᔺ:I

    if-ne p1, v0, :cond_1

    .line 308
    return-void

    .line 310
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᔺ:I

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    .line 312
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 313
    return-void
.end method

.method public ł()Landroid/support/v7/widget/RecyclerView$ʼ;
    .locals 3

    .line 161
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ʼ;-><init>(II)V

    return-object v0
.end method

.method public ŗ()Z
    .locals 1

    .line 258
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᔺ:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ſ()Z
    .locals 2

    .line 266
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᔺ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected ƚ()Z
    .locals 2

    .line 872
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method Ǐ()V
    .locals 1

    .line 876
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    if-nez v0, :cond_0

    .line 877
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$ˋ;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    .line 879
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    if-nez v0, :cond_1

    .line 880
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᔺ:I

    invoke-static {p0, v0}, Lo/氵;->ˊ(Landroid/support/v7/widget/RecyclerView$ʻ;I)Lo/氵;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    .line 882
    :cond_1
    return-void
.end method

.method public ʅ()I
    .locals 5

    .line 1563
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(IIZZ)Landroid/view/View;

    move-result-object v4

    .line 1564
    if-nez v4, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->ˣ(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public ʻ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 984
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->ι(Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    return v0
.end method

.method public ʼ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 989
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->ι(Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    return v0
.end method

.method public ˊ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 2

    .line 944
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᔺ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 945
    const/4 v0, 0x0

    return v0

    .line 947
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->ˎ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    return v0
.end method

.method ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/LinearLayoutManager$ˋ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I
    .locals 6

    .line 1262
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    .line 1263
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1265
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    if-gez v0, :cond_0

    .line 1266
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    .line 1268
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/LinearLayoutManager$ˋ;)V

    .line 1270
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->爫:I

    add-int v4, v0, v1

    .line 1271
    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager$ˊ;

    invoke-direct {v5}, Landroid/support/v7/widget/LinearLayoutManager$ˊ;-><init>()V

    .line 1272
    :cond_2
    if-lez v4, :cond_8

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ˈ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1273
    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->ڌ()V

    .line 1274
    invoke-virtual {p0, p1, p3, p2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/support/v7/widget/LinearLayoutManager$ˋ;Landroid/support/v7/widget/LinearLayoutManager$ˊ;)V

    .line 1275
    iget-boolean v0, v5, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->っ:Z

    if-eqz v0, :cond_3

    .line 1276
    goto/16 :goto_0

    .line 1278
    :cond_3
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->く:I

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->丫:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    .line 1285
    iget-boolean v0, v5, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->へ:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->טּ:Ljava/util/List;

    if-nez v0, :cond_4

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ˉ;->ڏ()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1287
    :cond_4
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->く:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    .line 1289
    iget v0, v5, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->く:I

    sub-int/2addr v4, v0

    .line 1292
    :cond_5
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    .line 1293
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->く:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    .line 1294
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    if-gez v0, :cond_6

    .line 1295
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    .line 1297
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/LinearLayoutManager$ˋ;)V

    .line 1299
    :cond_7
    if-eqz p4, :cond_2

    iget-boolean v0, v5, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->ゥ:Z

    if-eqz v0, :cond_2

    .line 1300
    .line 1306
    :cond_8
    :goto_0
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    sub-int v0, v3, v0

    return v0
.end method

.method protected ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 392
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ᓰ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᖦ()I

    move-result v0

    return v0

    .line 395
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method ˊ(IIZZ)Landroid/view/View;
    .locals 9

    .line 1626
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ǐ()V

    .line 1627
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᓴ()I

    move-result v1

    .line 1628
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᔥ()I

    move-result v2

    .line 1629
    if-le p2, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 1630
    :goto_0
    const/4 v4, 0x0

    .line 1631
    move v5, p1

    :goto_1
    if-eq v5, p2, :cond_4

    .line 1632
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1633
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v6}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v7

    .line 1634
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v6}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v8

    .line 1635
    if-ge v7, v2, :cond_3

    if-le v8, v1, :cond_3

    .line 1636
    if-eqz p3, :cond_2

    .line 1637
    if-lt v7, v1, :cond_1

    if-gt v8, v2, :cond_1

    .line 1638
    return-object v6

    .line 1639
    :cond_1
    if-eqz p4, :cond_3

    if-nez v4, :cond_3

    .line 1640
    move-object v4, v6

    goto :goto_2

    .line 1643
    :cond_2
    return-object v6

    .line 1631
    :cond_3
    :goto_2
    add-int/2addr v5, v3

    goto :goto_1

    .line 1647
    :cond_4
    return-object v4
.end method

.method public ˊ(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)Landroid/view/View;
    .locals 6

    .line 1653
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ɨ()V

    .line 1654
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1655
    const/4 v0, 0x0

    return-object v0

    .line 1658
    :cond_0
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->ﹸ(I)I

    move-result v2

    .line 1659
    const/high16 v0, -0x80000000

    if-ne v2, v0, :cond_1

    .line 1660
    const/4 v0, 0x0

    return-object v0

    .line 1662
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ǐ()V

    .line 1664
    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    .line 1665
    invoke-direct {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->ʿ(Landroid/support/v7/widget/RecyclerView$ˉ;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 1667
    :cond_2
    invoke-direct {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->ʾ(Landroid/support/v7/widget/RecyclerView$ˉ;)Landroid/view/View;

    move-result-object v3

    .line 1669
    :goto_0
    if-nez v3, :cond_3

    .line 1674
    const/4 v0, 0x0

    return-object v0

    .line 1676
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ǐ()V

    .line 1677
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᖦ()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 1678
    const/4 v0, 0x0

    invoke-direct {p0, v2, v4, v0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(IIZLandroid/support/v7/widget/RecyclerView$ˉ;)V

    .line 1679
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    .line 1680
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ト:Z

    .line 1681
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v0, p4, v1}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/LinearLayoutManager$ˋ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I

    .line 1683
    const/4 v0, -0x1

    if-ne v2, v0, :cond_4

    .line 1684
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ǐ()Landroid/view/View;

    move-result-object v5

    goto :goto_1

    .line 1686
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ȋ()Landroid/view/View;

    move-result-object v5

    .line 1688
    :goto_1
    if-eq v5, v3, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1689
    :cond_5
    const/4 v0, 0x0

    return-object v0

    .line 1691
    :cond_6
    return-object v5
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)V
    .locals 10

    .line 442
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ۃ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->סּ:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ṿ:I

    .line 446
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ǐ()V

    .line 447
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ト:Z

    .line 449
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ɨ()V

    .line 451
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὺ:Landroid/support/v7/widget/LinearLayoutManager$if;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$if;->reset()V

    .line 452
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὺ:Landroid/support/v7/widget/LinearLayoutManager$if;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḹ:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὺ:Landroid/support/v7/widget/LinearLayoutManager$if;

    invoke-direct {p0, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/support/v7/widget/LinearLayoutManager$if;)V

    .line 463
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v5

    .line 465
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ˉ;->ᓰ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ˉ;->ເ()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὺ:Landroid/support/v7/widget/LinearLayoutManager$if;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$if;->Ύ:I

    if-ge v0, v1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 467
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὺ:Landroid/support/v7/widget/LinearLayoutManager$if;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    if-ne v6, v0, :cond_2

    .line 468
    move v4, v5

    .line 469
    const/4 v3, 0x0

    goto :goto_1

    .line 471
    :cond_2
    move v3, v5

    .line 472
    const/4 v4, 0x0

    .line 474
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᓴ()I

    move-result v0

    add-int/2addr v3, v0

    .line 475
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᴗ()I

    move-result v0

    add-int/2addr v4, v0

    .line 476
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ˉ;->ڏ()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ṿ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὑ:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_5

    .line 481
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ṿ:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ﯨ(I)Landroid/view/View;

    move-result-object v7

    .line 482
    if-eqz v7, :cond_5

    .line 485
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    if-eqz v0, :cond_3

    .line 486
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᔥ()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1, v7}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v1

    sub-int v8, v0, v1

    .line 488
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὑ:I

    sub-int v9, v8, v0

    goto :goto_2

    .line 490
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v7}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1}, Lo/氵;->ᓴ()I

    move-result v1

    sub-int v8, v0, v1

    .line 492
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὑ:I

    sub-int v9, v0, v8

    .line 494
    :goto_2
    if-lez v9, :cond_4

    .line 495
    add-int/2addr v3, v9

    goto :goto_3

    .line 497
    :cond_4
    sub-int/2addr v4, v9

    .line 503
    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὺ:Landroid/support/v7/widget/LinearLayoutManager$if;

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/support/v7/widget/LinearLayoutManager$if;)V

    .line 504
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->ˋ(Landroid/support/v7/widget/RecyclerView$ʾ;)V

    .line 505
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ˉ;->ڏ()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ﬤ:Z

    .line 506
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὺ:Landroid/support/v7/widget/LinearLayoutManager$if;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    if-eqz v0, :cond_7

    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὺ:Landroid/support/v7/widget/LinearLayoutManager$if;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˋ(Landroid/support/v7/widget/LinearLayoutManager$if;)V

    .line 509
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->爫:I

    .line 510
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/LinearLayoutManager$ˋ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I

    .line 511
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    .line 512
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    if-lez v0, :cond_6

    .line 513
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    add-int/2addr v4, v0

    .line 516
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὺ:Landroid/support/v7/widget/LinearLayoutManager$if;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/LinearLayoutManager$if;)V

    .line 517
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iput v4, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->爫:I

    .line 518
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヶ:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    .line 519
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/LinearLayoutManager$ˋ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I

    .line 520
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v8, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    goto :goto_4

    .line 523
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὺ:Landroid/support/v7/widget/LinearLayoutManager$if;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/LinearLayoutManager$if;)V

    .line 524
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iput v4, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->爫:I

    .line 525
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/LinearLayoutManager$ˋ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I

    .line 526
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v8, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    .line 527
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    if-lez v0, :cond_8

    .line 528
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->リ:I

    add-int/2addr v3, v0

    .line 531
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὺ:Landroid/support/v7/widget/LinearLayoutManager$if;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˋ(Landroid/support/v7/widget/LinearLayoutManager$if;)V

    .line 532
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->爫:I

    .line 533
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヶ:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    .line 534
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/LinearLayoutManager$ˋ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I

    .line 535
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    .line 541
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 545
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḹ:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 546
    const/4 v0, 0x1

    invoke-direct {p0, v8, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I

    move-result v9

    .line 547
    add-int/2addr v7, v9

    .line 548
    add-int/2addr v8, v9

    .line 549
    const/4 v0, 0x0

    invoke-direct {p0, v7, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˋ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I

    move-result v9

    .line 550
    add-int/2addr v7, v9

    .line 551
    add-int/2addr v8, v9

    .line 552
    goto :goto_5

    .line 553
    :cond_9
    const/4 v0, 0x1

    invoke-direct {p0, v7, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˋ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I

    move-result v9

    .line 554
    add-int/2addr v7, v9

    .line 555
    add-int/2addr v8, v9

    .line 556
    const/4 v0, 0x0

    invoke-direct {p0, v8, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I

    move-result v9

    .line 557
    add-int/2addr v7, v9

    .line 558
    add-int/2addr v8, v9

    .line 561
    :cond_a
    :goto_5
    invoke-direct {p0, p1, p2, v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;II)V

    .line 562
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ˉ;->ڏ()Z

    move-result v0

    if-nez v0, :cond_b

    .line 563
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ṿ:I

    .line 564
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὑ:I

    .line 565
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᓯ()V

    .line 567
    :cond_b
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḹ:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᘥ:Z

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 572
    return-void
.end method

.method ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/support/v7/widget/LinearLayoutManager$ˋ;Landroid/support/v7/widget/LinearLayoutManager$ˊ;)V
    .locals 12

    .line 1311
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;)Landroid/view/View;

    move-result-object v6

    .line 1312
    if-nez v6, :cond_0

    .line 1318
    const/4 v0, 0x1

    move-object/from16 v1, p4

    iput-boolean v0, v1, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->っ:Z

    .line 1319
    return-void

    .line 1321
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v7, v0

    .line 1322
    iget-object v0, p3, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->טּ:Ljava/util/List;

    if-nez v0, :cond_3

    .line 1323
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->丫:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ne v0, v1, :cond_2

    .line 1325
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1327
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1330
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḟ:Z

    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->丫:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-ne v0, v1, :cond_5

    .line 1332
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/LinearLayoutManager;->ː(Landroid/view/View;)V

    goto :goto_2

    .line 1334
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ʿ(Landroid/view/View;I)V

    .line 1337
    :goto_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v6, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->ᐝ(Landroid/view/View;II)V

    .line 1338
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v6}, Lo/氵;->ᒽ(Landroid/view/View;)I

    move-result v0

    move-object/from16 v1, p4

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->く:I

    .line 1340
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᔺ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 1341
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ƚ()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1342
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 1343
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v6}, Lo/氵;->ᔇ(Landroid/view/View;)I

    move-result v0

    sub-int v8, v10, v0

    goto :goto_3

    .line 1345
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v8

    .line 1346
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v6}, Lo/氵;->ᔇ(Landroid/view/View;)I

    move-result v0

    add-int v10, v8, v0

    .line 1348
    :goto_3
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->丫:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 1349
    iget v11, p3, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    .line 1350
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    move-object/from16 v1, p4

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->く:I

    sub-int v9, v0, v1

    goto :goto_4

    .line 1352
    :cond_7
    iget v9, p3, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    .line 1353
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    move-object/from16 v1, p4

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->く:I

    add-int v11, v0, v1

    goto :goto_4

    .line 1356
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v9

    .line 1357
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, v6}, Lo/氵;->ᔇ(Landroid/view/View;)I

    move-result v0

    add-int v11, v9, v0

    .line 1359
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->丫:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 1360
    iget v10, p3, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    .line 1361
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    move-object/from16 v1, p4

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->く:I

    sub-int v8, v0, v1

    goto :goto_4

    .line 1363
    :cond_9
    iget v8, p3, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    .line 1364
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ḯ:I

    move-object/from16 v1, p4

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->く:I

    add-int v10, v0, v1

    .line 1369
    :goto_4
    move-object v0, p0

    move-object v1, v6

    iget v2, v7, Landroid/support/v7/widget/RecyclerView$ʼ;->leftMargin:I

    add-int/2addr v2, v8

    iget v3, v7, Landroid/support/v7/widget/RecyclerView$ʼ;->topMargin:I

    add-int/2addr v3, v9

    iget v4, v7, Landroid/support/v7/widget/RecyclerView$ʼ;->rightMargin:I

    sub-int v4, v10, v4

    iget v5, v7, Landroid/support/v7/widget/RecyclerView$ʼ;->bottomMargin:I

    sub-int v5, v11, v5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->ᐝ(Landroid/view/View;IIII)V

    .line 1377
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ʼ;->ϲ()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ʼ;->ϳ()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1378
    :cond_a
    const/4 v0, 0x1

    move-object/from16 v1, p4

    iput-boolean v0, v1, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->へ:Z

    .line 1380
    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->isFocusable()Z

    move-result v0

    move-object/from16 v1, p4

    iput-boolean v0, v1, Landroid/support/v7/widget/LinearLayoutManager$ˊ;->ゥ:Z

    .line 1381
    return-void
.end method

.method ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/support/v7/widget/LinearLayoutManager$if;)V
    .locals 0

    .line 582
    return-void
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ʾ;)V
    .locals 1

    .line 195
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ʾ;)V

    .line 196
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῠ:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->ˏ(Landroid/support/v7/widget/RecyclerView$ʾ;)V

    .line 198
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ʾ;->clear()V

    .line 200
    :cond_0
    return-void
.end method

.method public ˋ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 956
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᔺ:I

    if-nez v0, :cond_0

    .line 957
    const/4 v0, 0x0

    return v0

    .line 959
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->ˎ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    return v0
.end method

.method public ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 964
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->ʽ(Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    return v0
.end method

.method ˎ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 7

    .line 1093
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1094
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1096
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ト:Z

    .line 1097
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Ǐ()V

    .line 1098
    if-lez p1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .line 1099
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1100
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(IIZLandroid/support/v7/widget/RecyclerView$ˉ;)V

    .line 1101
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->乁:I

    .line 1102
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᖺ:Landroid/support/v7/widget/LinearLayoutManager$ˋ;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, p3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/LinearLayoutManager$ˋ;Landroid/support/v7/widget/RecyclerView$ˉ;Z)I

    move-result v0

    add-int v5, v4, v0

    .line 1103
    if-gez v5, :cond_3

    .line 1107
    const/4 v0, 0x0

    return v0

    .line 1109
    :cond_3
    if-le v3, v5, :cond_4

    mul-int v6, v2, v5

    goto :goto_1

    :cond_4
    move v6, p1

    .line 1110
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    neg-int v1, v6

    invoke-virtual {v0, v1}, Lo/氵;->ʸ(I)V

    .line 1114
    return v6
.end method

.method public ˎ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 969
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->ʽ(Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    return v0
.end method

.method public ˎ(Ljava/lang/String;)V
    .locals 1

    .line 1119
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1120
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˎ(Ljava/lang/String;)V

    .line 1122
    :cond_0
    return-void
.end method

.method public ˏ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 974
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->ͺ(Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    return v0
.end method

.method public ί()I
    .locals 5

    .line 1603
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->ˊ(IIZZ)Landroid/view/View;

    move-result-object v4

    .line 1604
    if-nez v4, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->ˣ(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public ד()Z
    .locals 2

    .line 1760
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᘥ:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḹ:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ᐝ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 979
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->ͺ(Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    return v0
.end method

.method public ᵎ(Z)V
    .locals 1

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˎ(Ljava/lang/String;)V

    .line 274
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḹ:Z

    if-ne v0, p1, :cond_0

    .line 275
    return-void

    .line 277
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ḹ:Z

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 279
    return-void
.end method

.method public ᵔ(Z)V
    .locals 1

    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˎ(Ljava/lang/String;)V

    .line 355
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᵆ:Z

    if-ne p1, v0, :cond_0

    .line 356
    return-void

    .line 358
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ᵆ:Z

    .line 359
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 360
    return-void
.end method

.method public ﯨ(I)Landroid/view/View;
    .locals 4

    .line 367
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 368
    if-nez v1, :cond_0

    .line 369
    const/4 v0, 0x0

    return-object v0

    .line 371
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ˣ(Landroid/view/View;)I

    move-result v2

    .line 372
    sub-int v3, p1, v2

    .line 373
    if-ltz v3, :cond_1

    if-ge v3, v1, :cond_1

    .line 374
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 376
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public ﹴ(I)V
    .locals 1

    .line 900
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ṿ:I

    .line 901
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ὑ:I

    .line 902
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->Ῡ:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->৳()V

    .line 905
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 906
    return-void
.end method
