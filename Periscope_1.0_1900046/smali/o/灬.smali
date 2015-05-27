.class final Lo/灬;
.super Lo/氵;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$ʻ;)V
    .locals 1

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/氵;-><init>(Landroid/support/v7/widget/RecyclerView$ʻ;Lo/灬;)V

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .line 202
    iget-object v0, p0, Lo/灬;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getWidth()I

    move-result v0

    return v0
.end method

.method public ʸ(I)V
    .locals 1

    .line 207
    iget-object v0, p0, Lo/灬;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˁ(I)V

    .line 208
    return-void
.end method

.method public ᐡ(Landroid/view/View;)I
    .locals 3

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v2, v0

    .line 242
    iget-object v0, p0, Lo/灬;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->เ(Landroid/view/View;)I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/RecyclerView$ʼ;->leftMargin:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public ᐪ(Landroid/view/View;)I
    .locals 3

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v2, v0

    .line 235
    iget-object v0, p0, Lo/灬;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ᐤ(Landroid/view/View;)I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/RecyclerView$ʼ;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public ᒽ(Landroid/view/View;)I
    .locals 3

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v2, v0

    .line 219
    iget-object v0, p0, Lo/灬;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ו(Landroid/view/View;)I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/RecyclerView$ʼ;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/support/v7/widget/RecyclerView$ʼ;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public ᓴ()I
    .locals 1

    .line 212
    iget-object v0, p0, Lo/灬;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public ᔇ(Landroid/view/View;)I
    .locals 3

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v2, v0

    .line 227
    iget-object v0, p0, Lo/灬;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ۦ(Landroid/view/View;)I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/RecyclerView$ʼ;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/support/v7/widget/RecyclerView$ʼ;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public ᔥ()I
    .locals 2

    .line 197
    iget-object v0, p0, Lo/灬;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getWidth()I

    move-result v0

    iget-object v1, p0, Lo/灬;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public ᖦ()I
    .locals 2

    .line 247
    iget-object v0, p0, Lo/灬;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getWidth()I

    move-result v0

    iget-object v1, p0, Lo/灬;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lo/灬;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public ᴗ()I
    .locals 1

    .line 258
    iget-object v0, p0, Lo/灬;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingRight()I

    move-result v0

    return v0
.end method
