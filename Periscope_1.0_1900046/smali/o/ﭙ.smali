.class final Lo/ﭙ;
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

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/氵;-><init>(Landroid/support/v7/widget/RecyclerView$ʻ;Lo/灬;)V

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .line 278
    iget-object v0, p0, Lo/ﭙ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getHeight()I

    move-result v0

    return v0
.end method

.method public ʸ(I)V
    .locals 1

    .line 283
    iget-object v0, p0, Lo/ﭙ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˀ(I)V

    .line 284
    return-void
.end method

.method public ᐡ(Landroid/view/View;)I
    .locals 3

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v2, v0

    .line 318
    iget-object v0, p0, Lo/ﭙ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->Ꭵ(Landroid/view/View;)I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/RecyclerView$ʼ;->topMargin:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public ᐪ(Landroid/view/View;)I
    .locals 3

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v2, v0

    .line 311
    iget-object v0, p0, Lo/ﭙ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ᒡ(Landroid/view/View;)I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/RecyclerView$ʼ;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public ᒽ(Landroid/view/View;)I
    .locals 3

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v2, v0

    .line 295
    iget-object v0, p0, Lo/ﭙ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ۦ(Landroid/view/View;)I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/RecyclerView$ʼ;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/support/v7/widget/RecyclerView$ʼ;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public ᓴ()I
    .locals 1

    .line 288
    iget-object v0, p0, Lo/ﭙ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public ᔇ(Landroid/view/View;)I
    .locals 3

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v2, v0

    .line 303
    iget-object v0, p0, Lo/ﭙ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ו(Landroid/view/View;)I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/RecyclerView$ʼ;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/support/v7/widget/RecyclerView$ʼ;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public ᔥ()I
    .locals 2

    .line 273
    iget-object v0, p0, Lo/ﭙ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getHeight()I

    move-result v0

    iget-object v1, p0, Lo/ﭙ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public ᖦ()I
    .locals 2

    .line 323
    iget-object v0, p0, Lo/ﭙ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getHeight()I

    move-result v0

    iget-object v1, p0, Lo/ﭙ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lo/ﭙ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public ᴗ()I
    .locals 1

    .line 334
    iget-object v0, p0, Lo/ﭙ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingBottom()I

    move-result v0

    return v0
.end method
