.class Lo/aji;
.super Landroid/support/v7/widget/RecyclerView$ˑ;
.source ""


# instance fields
.field public final bHs:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 13
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ˑ;-><init>(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lo/aji;->bB:Landroid/view/View;

    const v1, 0x7f0b00c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aji;->bHs:Landroid/widget/TextView;

    .line 15
    return-void
.end method
