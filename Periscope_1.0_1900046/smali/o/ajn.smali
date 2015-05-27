.class public Lo/ajn;
.super Lo/ajs;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ajs<Lo/ajp;Lo/ajo;>;"
    }
.end annotation


# instance fields
.field protected bHz:Lo/ajo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/zo;Lo/amw;)V
    .locals 1

    .line 18
    new-instance v0, Lo/ajh;

    invoke-direct {v0}, Lo/ajh;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lo/ajs;-><init>(Landroid/content/Context;Lo/zo;Lo/amw;Lo/ajh;)V

    .line 19
    new-instance v0, Lo/ajo;

    invoke-direct {v0, p2}, Lo/ajo;-><init>(Lo/zo;)V

    iput-object v0, p0, Lo/ajn;->bHz:Lo/ajo;

    .line 20
    return-void
.end method


# virtual methods
.method protected An()Lo/ajo;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/ajn;->bHz:Lo/ajo;

    return-object v0
.end method

.method protected synthetic Ao()Lo/amx;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lo/ajn;->An()Lo/ajo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItemCount()I
    .locals 1

    .line 12
    invoke-super {p0}, Lo/ajs;->getItemCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItemViewType(I)I
    .locals 1

    .line 12
    invoke-super {p0, p1}, Lo/ajs;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method protected synthetic ʻ(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 1

    .line 12
    invoke-virtual {p0, p1}, Lo/ajn;->ᐝ(Landroid/view/ViewGroup;)Lo/ajp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;I)V
    .locals 0

    .line 12
    invoke-super {p0, p1, p2}, Lo/ajs;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;I)V

    return-void
.end method

.method public bridge synthetic ˎ(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 1

    .line 12
    invoke-super {p0, p1, p2}, Lo/ajs;->ˎ(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v0

    return-object v0
.end method

.method protected ᐝ(Landroid/view/ViewGroup;)Lo/ajp;
    .locals 4

    .line 27
    iget-object v0, p0, Lo/ajn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 29
    new-instance v0, Lo/ajp;

    iget-object v1, p0, Lo/ajn;->byZ:Lo/amw;

    invoke-direct {v0, v3, v1}, Lo/ajp;-><init>(Landroid/view/View;Lo/amw;)V

    return-object v0
.end method
