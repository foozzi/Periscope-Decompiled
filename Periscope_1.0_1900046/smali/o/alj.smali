.class public Lo/alj;
.super Landroid/support/v7/widget/RecyclerView$ˑ;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final bLM:Lo/alh;

.field public bLN:Lo/ale;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ˑ;-><init>(Landroid/view/View;)V

    .line 13
    move-object v0, p1

    check-cast v0, Lo/alh;

    iput-object v0, p0, Lo/alj;->bLM:Lo/alh;

    .line 14
    iget-object v0, p0, Lo/alj;->bLM:Lo/alh;

    invoke-virtual {v0, p0}, Lo/alh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lo/alj;->bLM:Lo/alh;

    if-ne v0, p1, :cond_0

    .line 20
    iget-object v0, p0, Lo/alj;->bLN:Lo/ale;

    invoke-interface {v0}, Lo/ale;->execute()Z

    .line 22
    :cond_0
    return-void
.end method
