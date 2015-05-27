.class public Lo/ﺋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᵇ$ˊ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aB:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lo/ﺋ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 379
    iget-object v0, p0, Lo/ﺋ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 380
    iget-object v0, p0, Lo/ﺋ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 381
    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 419
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v3

    .line 420
    if-eqz v3, :cond_1

    .line 421
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ῐ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called attach on a child which is not detached: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᵨ()V

    .line 430
    :cond_1
    iget-object v0, p0, Lo/ﺋ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 431
    return-void
.end method

.method public detachViewFromParent(I)V
    .locals 5

    .line 435
    invoke-virtual {p0, p1}, Lo/ﺋ;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 436
    if-eqz v3, :cond_1

    .line 437
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v4

    .line 438
    if-eqz v4, :cond_1

    .line 439
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ῐ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called detach on an already detached child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    const/16 v0, 0x100

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 449
    :cond_1
    iget-object v0, p0, Lo/ﺋ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView;I)V

    .line 450
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .line 399
    iget-object v0, p0, Lo/ﺋ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 374
    iget-object v0, p0, Lo/ﺋ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 1

    .line 385
    iget-object v0, p0, Lo/ﺋ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public removeAllViews()V
    .locals 4

    .line 404
    invoke-virtual {p0}, Lo/ﺋ;->getChildCount()I

    move-result v2

    .line 405
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 406
    iget-object v0, p0, Lo/ﺋ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v3}, Lo/ﺋ;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˋ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 405
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lo/ﺋ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    .line 409
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    .line 390
    iget-object v0, p0, Lo/ﺋ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_0

    .line 392
    iget-object v0, p0, Lo/ﺋ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˋ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 394
    :cond_0
    iget-object v0, p0, Lo/ﺋ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeViewAt(I)V

    .line 395
    return-void
.end method

.method public ᵣ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 1

    .line 413
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v0

    return-object v0
.end method
