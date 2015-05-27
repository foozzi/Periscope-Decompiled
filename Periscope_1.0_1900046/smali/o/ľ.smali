.class Lo/ľ;
.super Lo/ﹾ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bL:Lo/ﾉ;


# direct methods
.method constructor <init>(Lo/ﾉ;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lo/ľ;->bL:Lo/ﾉ;

    invoke-direct {p0}, Lo/ﹾ;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 87
    invoke-super {p0, p1, p2, p3}, Lo/ﹾ;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lo/ľ;->bL:Lo/ﾉ;

    iget-object v0, v0, Lo/ﾉ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ᵖ()Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lo/ľ;->bL:Lo/ﾉ;

    iget-object v0, v0, Lo/ﾉ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ᵖ()Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 94
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Landroid/view/View;Lo/ﯩ;)V
    .locals 1

    .line 78
    invoke-super {p0, p1, p2}, Lo/ﹾ;->ˊ(Landroid/view/View;Lo/ﯩ;)V

    .line 79
    iget-object v0, p0, Lo/ľ;->bL:Lo/ﾉ;

    iget-object v0, v0, Lo/ﾉ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ᵖ()Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lo/ľ;->bL:Lo/ﾉ;

    iget-object v0, v0, Lo/ﾉ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ᵖ()Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˋ(Landroid/view/View;Lo/ﯩ;)V

    .line 83
    :cond_0
    return-void
.end method
