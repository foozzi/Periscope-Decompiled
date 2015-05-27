.class public Lo/ﾉ;
.super Lo/ﹾ;
.source ""


# instance fields
.field final aL:Landroid/support/v7/widget/RecyclerView;

.field final bK:Lo/ﹾ;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lo/ﹾ;-><init>()V

    .line 75
    new-instance v0, Lo/ľ;

    invoke-direct {v0, p0}, Lo/ľ;-><init>(Lo/ﾉ;)V

    iput-object v0, p0, Lo/ﾉ;->bK:Lo/ﹾ;

    .line 35
    iput-object p1, p0, Lo/ﾉ;->aL:Landroid/support/v7/widget/RecyclerView;

    .line 36
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 61
    invoke-super {p0, p1, p2}, Lo/ﹾ;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 62
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 63
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    move-object v1, v0

    .line 65
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->ᵖ()Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->ᵖ()Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 69
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 40
    invoke-super {p0, p1, p2, p3}, Lo/ﹾ;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    return v0

    .line 43
    :cond_0
    iget-object v0, p0, Lo/ﾉ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ᵖ()Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lo/ﾉ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ᵖ()Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/RecyclerView$ʻ;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 47
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Landroid/view/View;Lo/ﯩ;)V
    .locals 1

    .line 52
    invoke-super {p0, p1, p2}, Lo/ﹾ;->ˊ(Landroid/view/View;Lo/ﯩ;)V

    .line 53
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/ﯩ;->setClassName(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lo/ﾉ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ᵖ()Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lo/ﾉ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ᵖ()Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Lo/ﯩ;)V

    .line 57
    :cond_0
    return-void
.end method

.method public ⅹ()Lo/ﹾ;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/ﾉ;->bK:Lo/ﹾ;

    return-object v0
.end method
