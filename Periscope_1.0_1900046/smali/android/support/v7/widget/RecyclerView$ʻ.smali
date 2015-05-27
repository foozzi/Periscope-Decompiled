.class public abstract Landroid/support/v7/widget/RecyclerView$ʻ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u02bb"
.end annotation


# instance fields
.field K:Lo/ᵇ;

.field aL:Landroid/support/v7/widget/RecyclerView;

.field aM:Landroid/support/v7/widget/RecyclerView$ˈ;

.field private aN:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4791
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aN:Z

    return-void
.end method

.method static synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ʻ;Landroid/support/v7/widget/RecyclerView$ˈ;)V
    .locals 0

    .line 4784
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˈ;)V

    return-void
.end method

.method private ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;ILandroid/view/View;)V
    .locals 2

    .line 5757
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v1

    .line 5758
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5762
    return-void

    .line 5764
    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ḯ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ἱ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$if;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5766
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->removeViewAt(I)V

    .line 5767
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᵔ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    goto :goto_0

    .line 5769
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ι(I)V

    .line 5770
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$ʾ;->ﯨ(Landroid/view/View;)V

    .line 5772
    :goto_0
    return-void
.end method

.method private ˊ(Landroid/support/v7/widget/RecyclerView$ˈ;)V
    .locals 1

    .line 6484
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aM:Landroid/support/v7/widget/RecyclerView$ˈ;

    if-ne v0, p1, :cond_0

    .line 6485
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aM:Landroid/support/v7/widget/RecyclerView$ˈ;

    .line 6487
    :cond_0
    return-void
.end method

.method static synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ʻ;Z)Z
    .locals 0

    .line 4784
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aN:Z

    return p1
.end method

.method public static ˋ(IIIZ)I
    .locals 5

    .line 5873
    sub-int v0, p0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5874
    const/4 v3, 0x0

    .line 5875
    const/4 v4, 0x0

    .line 5877
    if-eqz p3, :cond_1

    .line 5878
    if-ltz p2, :cond_0

    .line 5879
    move v3, p2

    .line 5880
    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_0

    .line 5884
    :cond_0
    const/4 v3, 0x0

    .line 5885
    const/4 v4, 0x0

    goto :goto_0

    .line 5888
    :cond_1
    if-ltz p2, :cond_2

    .line 5889
    move v3, p2

    .line 5890
    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_0

    .line 5891
    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 5892
    move v3, v2

    .line 5893
    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_0

    .line 5894
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_4

    .line 5895
    move v3, v2

    .line 5896
    const/high16 v4, -0x80000000

    .line 5899
    :cond_4
    :goto_0
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private ˋ(Landroid/view/View;IZ)V
    .locals 6

    .line 5220
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v3

    .line 5221
    if-nez p3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5223
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->ˎ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    goto :goto_0

    .line 5230
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->ˏ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 5232
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v4, v0

    .line 5233
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᵈ()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴛ()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5234
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴛ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5235
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴺ()V

    goto :goto_1

    .line 5237
    :cond_3
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᵑ()V

    .line 5239
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lo/ᵇ;->ˊ(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_2

    .line 5243
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, v1, :cond_8

    .line 5245
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    invoke-virtual {v0, p1}, Lo/ᵇ;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 5246
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 5247
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->getChildCount()I

    move-result p2

    .line 5249
    :cond_5
    const/4 v0, -0x1

    if-ne v5, v0, :cond_6

    .line 5250
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5254
    :cond_6
    if-eq v5, p2, :cond_7

    .line 5255
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˏ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    invoke-virtual {v0, v5, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ᐡ(II)V

    .line 5257
    :cond_7
    goto :goto_2

    .line 5258
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lo/ᵇ;->ˊ(Landroid/view/View;IZ)V

    .line 5259
    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/support/v7/widget/RecyclerView$ʼ;->aQ:Z

    .line 5260
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aM:Landroid/support/v7/widget/RecyclerView$ˈ;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aM:Landroid/support/v7/widget/RecyclerView$ˈ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˈ;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5261
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aM:Landroid/support/v7/widget/RecyclerView$ˈ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ˈ;->ᵀ(Landroid/view/View;)V

    .line 5264
    :cond_9
    :goto_2
    iget-boolean v0, v4, Landroid/support/v7/widget/RecyclerView$ʼ;->aR:Z

    if-eqz v0, :cond_a

    .line 5268
    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5269
    const/4 v0, 0x0

    iput-boolean v0, v4, Landroid/support/v7/widget/RecyclerView$ʼ;->aR:Z

    .line 5271
    :cond_a
    return-void
.end method

.method static synthetic ˎ(Landroid/support/v7/widget/RecyclerView$ʻ;)Z
    .locals 1

    .line 4784
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aN:Z

    return v0
.end method

.method private ˏ(ILandroid/view/View;)V
    .locals 1

    .line 5407
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    invoke-virtual {v0, p1}, Lo/ᵇ;->detachViewFromParent(I)V

    .line 5408
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 5204
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->addView(Landroid/view/View;I)V

    .line 5205
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 5216
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˋ(Landroid/view/View;IZ)V

    .line 5217
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .line 5548
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    invoke-virtual {v0, p1}, Lo/ᵇ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 5539
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->getChildCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 2

    .line 5649
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 5650
    const/4 v0, 0x0

    return-object v0

    .line 5652
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 5653
    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    invoke-virtual {v0, v1}, Lo/ᵇ;->ᑊ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5654
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 5656
    :cond_2
    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .line 5566
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .line 5146
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lo/ﺑ;->ˌ(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 5602
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 5575
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 5593
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 5584
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 5557
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 6573
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6574
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 6475
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 6469
    const/4 v0, 0x0

    return-object v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 6725
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 5282
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    invoke-virtual {v0, p1}, Lo/ᵇ;->removeView(Landroid/view/View;)V

    .line 5283
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    .line 5294
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5295
    if-eqz v1, :cond_0

    .line 5296
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    invoke-virtual {v0, p1}, Lo/ᵇ;->removeViewAt(I)V

    .line 5298
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 4808
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4809
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4811
    :cond_0
    return-void
.end method

.method public abstract ł()Landroid/support/v7/widget/RecyclerView$ʼ;
.end method

.method public ŗ()Z
    .locals 1

    .line 5076
    const/4 v0, 0x0

    return v0
.end method

.method public ſ()Z
    .locals 1

    .line 5086
    const/4 v0, 0x0

    return v0
.end method

.method public ʹ(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 4873
    return-void
.end method

.method public ʻ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 6368
    const/4 v0, 0x0

    return v0
.end method

.method public ʻ(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 6307
    return-void
.end method

.method public ʼ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 6413
    const/4 v0, 0x0

    return v0
.end method

.method public ʿ(Landroid/view/View;I)V
    .locals 1

    .line 5193
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˋ(Landroid/view/View;IZ)V

    .line 5194
    return-void
.end method

.method public ˀ(I)V
    .locals 1

    .line 5693
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5694
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->ˀ(I)V

    .line 5696
    :cond_0
    return-void
.end method

.method public ˁ(I)V
    .locals 1

    .line 5681
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5682
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->ˁ(I)V

    .line 5684
    :cond_0
    return-void
.end method

.method public ˈ(Landroid/view/View;I)V
    .locals 1

    .line 5441
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$ʼ;)V

    .line 5442
    return-void
.end method

.method public ˉ(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 6136
    const/4 v0, 0x0

    return-object v0
.end method

.method public ˊ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 5049
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$ʼ;
    .locals 1

    .line 5032
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʼ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public ˊ(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)Landroid/view/View;
    .locals 1

    .line 6116
    const/4 v0, 0x0

    return-object v0
.end method

.method public ˊ(ILandroid/support/v7/widget/RecyclerView$ʾ;)V
    .locals 1

    .line 5527
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5528
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->removeViewAt(I)V

    .line 5529
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᵛ(Landroid/view/View;)V

    .line 5530
    return-void
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$if;Landroid/support/v7/widget/RecyclerView$if;)V
    .locals 0

    .line 6237
    return-void
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)V
    .locals 2

    .line 4960
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4961
    return-void
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/view/View;Lo/ﯩ;)V
    .locals 9

    .line 6630
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ſ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˣ(Landroid/view/View;)I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 6631
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ŗ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˣ(Landroid/view/View;)I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 6632
    :goto_1
    move v0, v6

    move v2, v7

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lo/ﯩ$ʽ;->ˋ(IIIIZZ)Lo/ﯩ$ʽ;

    move-result-object v8

    .line 6635
    invoke-virtual {p4, v8}, Lo/ﯩ;->ʽ(Ljava/lang/Object;)V

    .line 6636
    return-void
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 6589
    invoke-static {p3}, Lo/ﯦ;->ˊ(Landroid/view/accessibility/AccessibilityEvent;)Lo/ז;

    move-result-object v2

    .line 6591
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 6592
    :cond_0
    return-void

    .line 6594
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ﺑ;->ˎ(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lo/ﺑ;->ˎ(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lo/ﺑ;->ˋ(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ﺑ;->ˋ(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lo/ז;->setScrollable(Z)V

    .line 6599
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6600
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$if;->getItemCount()I

    move-result v0

    invoke-virtual {v2, v0}, Lo/ז;->setItemCount(I)V

    .line 6602
    :cond_4
    return-void
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Lo/ﯩ;)V
    .locals 5

    .line 6551
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lo/ﯩ;->setClassName(Ljava/lang/CharSequence;)V

    .line 6552
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lo/ﺑ;->ˎ(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lo/ﺑ;->ˋ(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6554
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Lo/ﯩ;->addAction(I)V

    .line 6555
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lo/ﯩ;->setScrollable(Z)V

    .line 6557
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ﺑ;->ˎ(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ﺑ;->ˋ(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6559
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Lo/ﯩ;->addAction(I)V

    .line 6560
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lo/ﯩ;->setScrollable(Z)V

    .line 6562
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˎ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˏ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ᐝ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)Z

    move-result v2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˋ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lo/ﯩ$ʼ;->ˋ(IIZI)Lo/ﯩ$ʼ;

    move-result-object v4

    .line 6568
    invoke-virtual {p3, v4}, Lo/ﯩ;->ʼ(Ljava/lang/Object;)V

    .line 6569
    return-void
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .line 6323
    return-void
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ʾ;)V
    .locals 0

    .line 4896
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ՙ(Landroid/support/v7/widget/RecyclerView;)V

    .line 4897
    return-void
.end method

.method public ˊ(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$ʼ;)V
    .locals 3

    .line 5420
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v2

    .line 5421
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5422
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->ˎ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    goto :goto_0

    .line 5424
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->ˏ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 5426
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lo/ᵇ;->ˊ(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 5430
    return-void
.end method

.method public ˊ(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ʾ;)V
    .locals 0

    .line 5516
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->removeView(Landroid/view/View;)V

    .line 5517
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᵛ(Landroid/view/View;)V

    .line 5518
    return-void
.end method

.method public ˊ(Lo/ﯩ;)V
    .locals 2

    .line 6520
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Lo/ﯩ;)V

    .line 6522
    return-void
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ʼ;)Z
    .locals 1

    .line 4991
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;ILandroid/os/Bundle;)Z
    .locals 4

    .line 6741
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 6742
    const/4 v0, 0x0

    return v0

    .line 6744
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6745
    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    .line 6747
    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lo/ﺑ;->ˎ(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6748
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v2, v0

    .line 6750
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lo/ﺑ;->ˋ(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6751
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v3, v0

    goto :goto_0

    .line 6755
    :sswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ﺑ;->ˎ(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6756
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingBottom()I

    move-result v1

    sub-int v2, v0, v1

    .line 6758
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ﺑ;->ˋ(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6759
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 6763
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 6764
    const/4 v0, 0x0

    return v0

    .line 6766
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 6767
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 6793
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 6221
    invoke-virtual {p0, p1, p3, p4}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 16

    .line 6156
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingLeft()I

    move-result v2

    .line 6157
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingTop()I

    move-result v3

    .line 6158
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    .line 6159
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 6160
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    move-object/from16 v1, p3

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int v6, v0, v1

    .line 6161
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    move-object/from16 v1, p3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int v7, v0, v1

    .line 6162
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int v8, v6, v0

    .line 6163
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int v9, v7, v0

    .line 6165
    sub-int v0, v6, v2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 6166
    sub-int v0, v7, v3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 6167
    sub-int v0, v8, v4

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 6168
    sub-int v0, v9, v5

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 6173
    invoke-static/range {p1 .. p1}, Lo/ﺑ;->ˌ(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6174
    if-eqz v12, :cond_0

    move v14, v12

    goto :goto_0

    :cond_0
    move v14, v10

    :goto_0
    goto :goto_1

    .line 6176
    :cond_1
    if-eqz v10, :cond_2

    move v14, v10

    goto :goto_1

    :cond_2
    move v14, v12

    .line 6180
    :goto_1
    if-eqz v11, :cond_3

    move v15, v11

    goto :goto_2

    :cond_3
    move v15, v13

    .line 6182
    :goto_2
    if-nez v14, :cond_4

    if-eqz v15, :cond_6

    .line 6183
    :cond_4
    if-eqz p4, :cond_5

    .line 6184
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_3

    .line 6186
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 6188
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 6190
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6199
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˠ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ـ(Landroid/support/v7/widget/RecyclerView;)Z

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

.method public ˊ(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList<Landroid/view/View;>;II)Z"
        }
    .end annotation

    .line 6265
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .line 6772
    move-object v0, p0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public ˋ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 5066
    const/4 v0, 0x0

    return v0
.end method

.method public ˋ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 6668
    const/4 v0, 0x0

    return v0
.end method

.method public ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 6353
    const/4 v0, 0x0

    return v0
.end method

.method public ˋ(Landroid/support/v7/widget/RecyclerView$ʾ;)V
    .locals 4

    .line 5749
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getChildCount()I

    move-result v1

    .line 5750
    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 5751
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$ʻ;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5752
    invoke-direct {p0, p1, v2, v3}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;ILandroid/view/View;)V

    .line 5750
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5754
    :cond_0
    return-void
.end method

.method public ˋ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;II)V
    .locals 1

    .line 6431
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p3, p4}, Landroid/support/v7/widget/RecyclerView;->ˎ(Landroid/support/v7/widget/RecyclerView;II)V

    .line 6432
    return-void
.end method

.method public ˋ(Landroid/view/View;Lo/ﯩ;)V
    .locals 3

    .line 6606
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v2

    .line 6608
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6609
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/view/View;Lo/ﯩ;)V

    .line 6612
    :cond_0
    return-void
.end method

.method public ˎ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 6684
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6685
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 6687
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ſ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$if;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public ˎ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 6398
    const/4 v0, 0x0

    return v0
.end method

.method public ˎ(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$ʼ;
    .locals 2

    .line 5008
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$ʼ;

    if-eqz v0, :cond_0

    .line 5009
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ʼ;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʼ;-><init>(Landroid/support/v7/widget/RecyclerView$ʼ;)V

    return-object v0

    .line 5010
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 5011
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʼ;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 5013
    :cond_1
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʼ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method ˎ(Landroid/support/v7/widget/RecyclerView$ʾ;)V
    .locals 6

    .line 5784
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ʾ;->х()I

    move-result v2

    .line 5785
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 5786
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᔋ(I)Landroid/view/View;

    move-result-object v4

    .line 5787
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v5

    .line 5788
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5789
    goto :goto_1

    .line 5791
    :cond_0
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ῐ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5792
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5794
    :cond_1
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᵥ(Landroid/view/View;)V

    .line 5785
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5796
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ʾ;->ј()V

    .line 5797
    if-lez v2, :cond_3

    .line 5798
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 5800
    :cond_3
    return-void
.end method

.method public ˎ(Ljava/lang/String;)V
    .locals 1

    .line 4834
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4835
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->ˎ(Ljava/lang/String;)V

    .line 4837
    :cond_0
    return-void
.end method

.method public ˏ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 6703
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6704
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 6706
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ŗ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$if;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public ˏ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 6338
    const/4 v0, 0x0

    return v0
.end method

.method public ˏ(Landroid/support/v7/widget/RecyclerView$ʾ;)V
    .locals 4

    .line 6510
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getChildCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 6511
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$ʻ;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6512
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6513
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(ILandroid/support/v7/widget/RecyclerView$ʾ;)V

    .line 6510
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6516
    :cond_1
    return-void
.end method

.method public ˏ(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 6287
    return-void
.end method

.method public ː(Landroid/view/View;)V
    .locals 1

    .line 5175
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ʿ(Landroid/view/View;I)V

    .line 5176
    return-void
.end method

.method public ˠ()Z
    .locals 1

    .line 5133
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aM:Landroid/support/v7/widget/RecyclerView$ˈ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aM:Landroid/support/v7/widget/RecyclerView$ˈ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˈ;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˣ(Landroid/view/View;)I
    .locals 1

    .line 5320
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʼ;->Ј()I

    move-result v0

    return v0
.end method

.method Ί()V
    .locals 1

    .line 6478
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aM:Landroid/support/v7/widget/RecyclerView$ˈ;

    if-eqz v0, :cond_0

    .line 6479
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aM:Landroid/support/v7/widget/RecyclerView$ˈ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˈ;->stop()V

    .line 6481
    :cond_0
    return-void
.end method

.method public ι(I)V
    .locals 1

    .line 5400
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˏ(ILandroid/view/View;)V

    .line 5401
    return-void
.end method

.method public ՙ(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4882
    return-void
.end method

.method public ד()Z
    .locals 1

    .line 4860
    const/4 v0, 0x0

    return v0
.end method

.method public ו(Landroid/view/View;)I
    .locals 3

    .line 5912
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ʼ;->aP:Landroid/graphics/Rect;

    .line 5913
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public י(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 6275
    return-void
.end method

.method public ۦ(Landroid/view/View;)I
    .locals 3

    .line 5926
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ʼ;->aP:Landroid/graphics/Rect;

    .line 5927
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public ৲(I)V
    .locals 0

    .line 6495
    return-void
.end method

.method public เ(Landroid/view/View;)I
    .locals 2

    .line 5972
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ᵌ(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public Ꭵ(Landroid/view/View;)I
    .locals 2

    .line 5984
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ᒢ(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public ᐝ(Landroid/support/v7/widget/RecyclerView$ˉ;)I
    .locals 1

    .line 6383
    const/4 v0, 0x0

    return v0
.end method

.method public ᐝ(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 6297
    return-void
.end method

.method public ᐝ(Landroid/view/View;II)V
    .locals 8

    .line 5843
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v4, v0

    .line 5845
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->ᵗ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    .line 5846
    iget v0, v5, Landroid/graphics/Rect;->left:I

    iget v1, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 5847
    iget v0, v5, Landroid/graphics/Rect;->top:I

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr p3, v0

    .line 5849
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v4, Landroid/support/v7/widget/RecyclerView$ʼ;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v4, Landroid/support/v7/widget/RecyclerView$ʼ;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    iget v2, v4, Landroid/support/v7/widget/RecyclerView$ʼ;->width:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ŗ()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˋ(IIIZ)I

    move-result v6

    .line 5853
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v4, Landroid/support/v7/widget/RecyclerView$ʼ;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v4, Landroid/support/v7/widget/RecyclerView$ʼ;->bottomMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v4, Landroid/support/v7/widget/RecyclerView$ʼ;->height:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ſ()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˋ(IIIZ)I

    move-result v7

    .line 5857
    invoke-virtual {p1, v6, v7}, Landroid/view/View;->measure(II)V

    .line 5858
    return-void
.end method

.method public ᐝ(Landroid/view/View;IIII)V
    .locals 5

    .line 5958
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$ʼ;->aP:Landroid/graphics/Rect;

    .line 5959
    iget v0, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iget v1, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iget v2, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, p4, v2

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p5, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 5961
    return-void
.end method

.method public ᐝ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)Z
    .locals 1

    .line 6720
    const/4 v0, 0x0

    return v0
.end method

.method public ᐡ(II)V
    .locals 4

    .line 5472
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5473
    if-nez v3, :cond_0

    .line 5474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot move a child from non-existing index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5477
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ι(I)V

    .line 5478
    invoke-virtual {p0, v3, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˈ(Landroid/view/View;I)V

    .line 5479
    return-void
.end method

.method public ᐤ(Landroid/view/View;)I
    .locals 2

    .line 5996
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ᵓ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public ᒡ(Landroid/view/View;)I
    .locals 2

    .line 6008
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ᖮ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public ᒢ(Landroid/view/View;)I
    .locals 1

    .line 6049
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ʼ;->aP:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public ᖮ(Landroid/view/View;)I
    .locals 1

    .line 6064
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ʼ;->aP:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public ᵌ(Landroid/view/View;)I
    .locals 1

    .line 6079
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ʼ;->aP:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public ᵓ(Landroid/view/View;)I
    .locals 1

    .line 6094
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ʼ;->aP:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public ﯨ(I)Landroid/view/View;
    .locals 5

    .line 5347
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->getChildCount()I

    move-result v1

    .line 5348
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 5349
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$ʻ;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5350
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v4

    .line 5351
    if-nez v4, :cond_0

    .line 5352
    goto :goto_1

    .line 5354
    :cond_0
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->ڏ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5356
    :cond_1
    return-object v3

    .line 5348
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5359
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public ﹴ(I)V
    .locals 0

    .line 5099
    return-void
.end method

.method ﾞ(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 4794
    if-nez p1, :cond_0

    .line 4795
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    .line 4796
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    goto :goto_0

    .line 4798
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    .line 4799
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʻ;->K:Lo/ᵇ;

    .line 4802
    :goto_0
    return-void
.end method
