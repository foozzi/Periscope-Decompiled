.class Landroid/support/v7/widget/LinearLayoutManager$ˋ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02cb"
.end annotation


# instance fields
.field ḯ:I

.field ト:Z

.field リ:I

.field ヮ:I

.field ヶ:I

.field 丫:I

.field 乁:I

.field 爫:I

.field ﬤ:Z

.field טּ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$\u02d1;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1786
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ト:Z

    .line 1827
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->爫:I

    .line 1834
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ﬤ:Z

    .line 1840
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->טּ:Ljava/util/List;

    return-void
.end method

.method private ڍ()Landroid/view/View;
    .locals 8

    .line 1872
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->טּ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1873
    const/4 v3, 0x0

    .line 1874
    const v4, 0x7fffffff

    .line 1875
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    .line 1876
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->טּ:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v6, v0

    .line 1877
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ﬤ:Z

    if-nez v0, :cond_0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1878
    goto :goto_1

    .line 1880
    :cond_0
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヶ:I

    mul-int v7, v0, v1

    .line 1882
    if-gez v7, :cond_1

    .line 1883
    goto :goto_1

    .line 1885
    :cond_1
    if-ge v7, v4, :cond_2

    .line 1886
    move-object v3, v6

    .line 1887
    move v4, v7

    .line 1888
    if-nez v7, :cond_2

    .line 1889
    goto :goto_2

    .line 1875
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1896
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 1897
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヶ:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    .line 1898
    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    return-object v0

    .line 1900
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method ˈ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z
    .locals 2

    .line 1846
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;)Landroid/view/View;
    .locals 3

    .line 1856
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->טּ:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1857
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ڍ()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1859
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᔉ(I)Landroid/view/View;

    move-result-object v2

    .line 1860
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヶ:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$ˋ;->ヮ:I

    .line 1861
    return-object v2
.end method
