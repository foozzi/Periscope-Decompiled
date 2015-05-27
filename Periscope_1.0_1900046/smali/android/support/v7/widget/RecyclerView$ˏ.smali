.class Landroid/support/v7/widget/RecyclerView$ˏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cf"
.end annotation


# instance fields
.field final synthetic aB:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 8214
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ˏ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;Lo/ﮂ;)V
    .locals 0

    .line 8214
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ˏ;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public ՙ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 2

    .line 8234
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->setIsRecyclable(Z)V

    .line 8235
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->ｰ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8236
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˏ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ᐝ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    .line 8238
    :cond_0
    return-void
.end method

.method public י(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 2

    .line 8242
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->setIsRecyclable(Z)V

    .line 8270
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bG:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bH:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-nez v0, :cond_0

    .line 8271
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bG:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 8272
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->ʳ(Landroid/support/v7/widget/RecyclerView$ˑ;)I

    move-result v0

    const/16 v1, -0x41

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->setFlags(II)V

    .line 8276
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bH:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 8277
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->ｰ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8278
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˏ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ᐝ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    .line 8280
    :cond_1
    return-void
.end method

.method public ᐨ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 3

    .line 8218
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->setIsRecyclable(Z)V

    .line 8219
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˏ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ᐝ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ῐ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8220
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˏ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8222
    :cond_0
    return-void
.end method

.method public ﾞ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 2

    .line 8226
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->setIsRecyclable(Z)V

    .line 8227
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->ｰ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8228
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˏ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ᐝ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    .line 8230
    :cond_0
    return-void
.end method
