.class public abstract Landroid/support/v7/widget/RecyclerView$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:Landroid/support/v7/widget/RecyclerView$\u02d1;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final aC:Landroid/support/v7/widget/RecyclerView$ˊ;

.field private aD:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4333
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ˊ;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$ˊ;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$if;->aC:Landroid/support/v7/widget/RecyclerView$ˊ;

    .line 4334
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$if;->aD:Z

    return-void
.end method


# virtual methods
.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2

    .line 4449
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 4421
    const/4 v0, 0x0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 4467
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$if;->aD:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 4641
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$if;->aC:Landroid/support/v7/widget/RecyclerView$ˊ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˊ;->notifyChanged()V

    .line 4642
    return-void
.end method

.method public ʾ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 4534
    return-void
.end method

.method public ʿ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 4546
    return-void
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ˋ;)V
    .locals 1

    .line 4574
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$if;->aC:Landroid/support/v7/widget/RecyclerView$ˊ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ˊ;->registerObserver(Ljava/lang/Object;)V

    .line 4575
    return-void
.end method

.method public abstract ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public ˋ(Landroid/support/v7/widget/RecyclerView$ˋ;)V
    .locals 1

    .line 4588
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$if;->aC:Landroid/support/v7/widget/RecyclerView$ˊ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ˊ;->unregisterObserver(Ljava/lang/Object;)V

    .line 4589
    return-void
.end method

.method public final ˋ(Landroid/support/v7/widget/RecyclerView$ˑ;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 4398
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    .line 4399
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$if;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4400
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$if;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bD:J

    .line 4402
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$if;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;I)V

    .line 4403
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ˑ;->setFlags(II)V

    .line 4406
    return-void
.end method

.method public abstract ˎ(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ˑ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/view/ViewGroup;I)TVH;"
        }
    .end annotation
.end method

.method public final ˏ(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/view/ViewGroup;I)TVH;"
        }
    .end annotation

    .line 4385
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$if;->ˎ(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v0

    .line 4386
    iput p2, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bE:I

    .line 4387
    return-object v0
.end method

.method public final ˢ(I)V
    .locals 2

    .line 4656
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$if;->aC:Landroid/support/v7/widget/RecyclerView$ˊ;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$ˊ;->ᵣ(II)V

    .line 4657
    return-void
.end method

.method public final ˤ(I)V
    .locals 2

    .line 4690
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$if;->aC:Landroid/support/v7/widget/RecyclerView$ˊ;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$ˊ;->יִ(II)V

    .line 4691
    return-void
.end method

.method public ͺ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 4483
    return-void
.end method

.method public ᐨ(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 4600
    return-void
.end method

.method public final ᵣ(II)V
    .locals 1

    .line 4673
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$if;->aC:Landroid/support/v7/widget/RecyclerView$ˊ;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ˊ;->ᵣ(II)V

    .line 4674
    return-void
.end method

.method public ι(Landroid/support/v7/widget/RecyclerView$ˑ;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .line 4520
    const/4 v0, 0x0

    return v0
.end method

.method public final יִ(II)V
    .locals 1

    .line 4724
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$if;->aC:Landroid/support/v7/widget/RecyclerView$ˊ;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ˊ;->יִ(II)V

    .line 4725
    return-void
.end method

.method public ﹳ(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 4609
    return-void
.end method

.method public ﹶ(Z)V
    .locals 2

    .line 4433
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$if;->ﾉ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4434
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4437
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$if;->aD:Z

    .line 4438
    return-void
.end method

.method public final ﾉ()Z
    .locals 1

    .line 4554
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$if;->aC:Landroid/support/v7/widget/RecyclerView$ˊ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˊ;->ﾉ()Z

    move-result v0

    return v0
.end method
