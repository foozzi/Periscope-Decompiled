.class Lo/agv;
.super Lo/ags$ˋ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bDV:Lo/ags;

.field final synthetic bDW:Lo/ags$ˊ;

.field final synthetic ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

.field final synthetic ষ:Lo/ᵘ;

.field final synthetic ঢ়:I

.field final synthetic ฑ:I


# direct methods
.method constructor <init>(Lo/ags;Lo/ags$ˊ;Landroid/support/v7/widget/RecyclerView$ˑ;IILo/ᵘ;)V
    .locals 1

    .line 230
    iput-object p1, p0, Lo/agv;->bDV:Lo/ags;

    iput-object p2, p0, Lo/agv;->bDW:Lo/ags$ˊ;

    iput-object p3, p0, Lo/agv;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    iput p4, p0, Lo/agv;->ঢ়:I

    iput p5, p0, Lo/agv;->ฑ:I

    iput-object p6, p0, Lo/agv;->ষ:Lo/ᵘ;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ags$ˋ;-><init>(Lo/agt;)V

    return-void
.end method


# virtual methods
.method public ᵢ(Landroid/view/View;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lo/agv;->bDW:Lo/ags$ˊ;

    iget-boolean v0, v0, Lo/ags$ˊ;->bEa:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lo/agv;->bDV:Lo/ags;

    iget-object v1, p0, Lo/agv;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Lo/ags;->ـ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lo/agv;->bDV:Lo/ags;

    iget-object v1, p0, Lo/agv;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Lo/ags;->ˑ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 238
    :goto_0
    return-void
.end method

.method public ⁱ(Landroid/view/View;)V
    .locals 2

    .line 252
    iget-object v0, p0, Lo/agv;->ষ:Lo/ᵘ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    .line 253
    iget-object v0, p0, Lo/agv;->bDW:Lo/ags$ˊ;

    iget-boolean v0, v0, Lo/ags$ˊ;->bEa:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lo/agv;->bDV:Lo/ags;

    iget-object v1, p0, Lo/agv;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Lo/ags;->ˌ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 255
    iget-object v0, p0, Lo/agv;->bDV:Lo/ags;

    invoke-static {v0}, Lo/ags;->ˏ(Lo/ags;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/agv;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lo/agv;->bDV:Lo/ags;

    iget-object v1, p0, Lo/agv;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Lo/ags;->ˉ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 258
    iget-object v0, p0, Lo/agv;->bDV:Lo/ags;

    invoke-static {v0}, Lo/ags;->ᐝ(Lo/ags;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/agv;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 260
    :goto_0
    iget-object v0, p0, Lo/agv;->bDV:Lo/ags;

    invoke-static {v0}, Lo/ags;->ʻ(Lo/ags;)V

    .line 261
    return-void
.end method

.method public ﹶ(Landroid/view/View;)V
    .locals 1

    .line 242
    iget v0, p0, Lo/agv;->ঢ়:I

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 245
    :cond_0
    iget v0, p0, Lo/agv;->ฑ:I

    if-eqz v0, :cond_1

    .line 246
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 248
    :cond_1
    return-void
.end method
