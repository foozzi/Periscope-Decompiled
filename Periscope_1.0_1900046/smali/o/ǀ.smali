.class public Lo/ǀ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Lo/氵;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ʻ;Z)I
    .locals 3

    .line 63
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$ʻ;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_1
    if-nez p5, :cond_2

    .line 68
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˣ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˣ(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 70
    :cond_2
    invoke-virtual {p1, p3}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v1

    sub-int v2, v0, v1

    .line 72
    invoke-virtual {p1}, Lo/氵;->ᖦ()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Lo/氵;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ʻ;ZZ)I
    .locals 9

    .line 32
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$ʻ;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 36
    :cond_1
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˣ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˣ(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 38
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˣ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˣ(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 40
    if-eqz p6, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 43
    :goto_0
    if-nez p5, :cond_3

    .line 44
    return v5

    .line 46
    :cond_3
    invoke-virtual {p1, p3}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 48
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˣ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˣ(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 50
    int-to-float v0, v6

    int-to-float v1, v7

    div-float v8, v0, v1

    .line 52
    int-to-float v0, v5

    mul-float/2addr v0, v8

    invoke-virtual {p1}, Lo/氵;->ᓴ()I

    move-result v1

    invoke-virtual {p1, p2}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;Lo/氵;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ʻ;Z)I
    .locals 4

    .line 82
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$ʻ;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_1
    if-nez p5, :cond_2

    .line 87
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v0

    return v0

    .line 90
    :cond_2
    invoke-virtual {p1, p3}, Lo/氵;->ᐪ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2}, Lo/氵;->ᐡ(Landroid/view/View;)I

    move-result v1

    sub-int v2, v0, v1

    .line 92
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˣ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˣ(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 96
    int-to-float v0, v2

    int-to-float v1, v3

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
