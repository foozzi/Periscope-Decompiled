.class Landroid/support/v7/widget/RecyclerView$ˊ;
.super Landroid/database/Observable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<Landroid/support/v7/widget/RecyclerView$\u02cb;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7891
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyChanged()V
    .locals 3

    .line 7901
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˊ;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 7902
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˊ;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˋ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˋ;->onChanged()V

    .line 7901
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7904
    :cond_0
    return-void
.end method

.method public ᵣ(II)V
    .locals 3

    .line 7911
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˊ;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 7912
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˊ;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˋ;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ˋ;->יּ(II)V

    .line 7911
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7914
    :cond_0
    return-void
.end method

.method public יִ(II)V
    .locals 3

    .line 7921
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˊ;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 7922
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˊ;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˋ;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ˋ;->ᐟ(II)V

    .line 7921
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7924
    :cond_0
    return-void
.end method

.method public ﾉ()Z
    .locals 1

    .line 7893
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˊ;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
