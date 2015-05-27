.class public Lo/ﮂ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 191
    iput-object p1, p0, Lo/ﮂ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 193
    iget-object v0, p0, Lo/ﮂ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lo/ﮂ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˋ(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lo/ﮂ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->氵()V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lo/ﮂ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0}, Lo/ᴗ;->ﯿ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lo/ﮂ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ḷ()V

    .line 201
    iget-object v0, p0, Lo/ﮂ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0}, Lo/ᴗ;->ﭤ()V

    .line 202
    iget-object v0, p0, Lo/ﮂ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˎ(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    iget-object v0, p0, Lo/ﮂ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ﮄ()V

    .line 207
    :cond_2
    iget-object v0, p0, Lo/ﮂ;->aB:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ⁱ(Z)V

    .line 209
    :cond_3
    :goto_0
    return-void
.end method
