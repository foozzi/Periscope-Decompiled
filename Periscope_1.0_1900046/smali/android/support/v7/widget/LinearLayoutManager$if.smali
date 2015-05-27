.class Landroid/support/v7/widget/LinearLayoutManager$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field Ύ:I

.field K:I

.field Ⅽ:Z

.field final synthetic Ↄ:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    .line 1970
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ↄ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .line 1975
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ύ:I

    .line 1976
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    .line 1977
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    .line 1978
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ύ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ˉ;)Z
    .locals 3

    .line 2004
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v2, v0

    .line 2005
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ʼ;->ϲ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ʼ;->Ј()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ʼ;->Ј()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2007
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager$if;->ᐟ(Landroid/view/View;)V

    .line 2008
    const/4 v0, 0x1

    return v0

    .line 2010
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method ױ()V
    .locals 1

    .line 1985
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ↄ:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᔥ()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ↄ:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0}, Lo/氵;->ᓴ()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    .line 1988
    return-void
.end method

.method public ᐟ(Landroid/view/View;)V
    .locals 2

    .line 2014
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ⅽ:Z

    if-eqz v0, :cond_0

    .line 2015
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ↄ:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, p1}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ↄ:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v1}, Lo/氵;->ᓱ()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    goto :goto_0

    .line 2018
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ↄ:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->ᗀ:Lo/氵;

    invoke-virtual {v0, p1}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->K:I

    .line 2021
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ↄ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->ˣ(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$if;->Ύ:I

    .line 2022
    return-void
.end method
