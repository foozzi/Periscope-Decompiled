.class public Lo/ali;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/amx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/amx<Lo/alj;Lo/ale;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Ljava/lang/Object;I)V
    .locals 2

    .line 3
    move-object v0, p1

    check-cast v0, Lo/alj;

    move-object v1, p2

    check-cast v1, Lo/ale;

    invoke-virtual {p0, v0, v1, p3}, Lo/ali;->ˊ(Lo/alj;Lo/ale;I)V

    return-void
.end method

.method public ˊ(Lo/alj;Lo/ale;I)V
    .locals 3

    .line 7
    iput-object p2, p1, Lo/alj;->bLN:Lo/ale;

    .line 8
    iget-object v0, p1, Lo/alj;->bLM:Lo/alh;

    invoke-interface {p2}, Lo/ale;->getIconResId()I

    move-result v1

    invoke-interface {p2}, Lo/ale;->getIconTint()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/alh;->setIcon(II)V

    .line 9
    iget-object v0, p1, Lo/alj;->bLM:Lo/alh;

    iget-object v1, p1, Lo/alj;->bB:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2, v1}, Lo/ale;->ʲ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lo/ale;->xi()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/alh;->setLabel(Ljava/lang/CharSequence;I)V

    .line 11
    return-void
.end method
