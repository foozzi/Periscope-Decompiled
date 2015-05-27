.class Lo/agw;
.super Lo/ags$ˋ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bDV:Lo/ags;

.field final synthetic bDX:Lo/ags$if;

.field final synthetic น:Lo/ᵘ;


# direct methods
.method constructor <init>(Lo/ags;Lo/ags$if;Lo/ᵘ;)V
    .locals 1

    .line 311
    iput-object p1, p0, Lo/agw;->bDV:Lo/ags;

    iput-object p2, p0, Lo/agw;->bDX:Lo/ags$if;

    iput-object p3, p0, Lo/agw;->น:Lo/ᵘ;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ags$ˋ;-><init>(Lo/agt;)V

    return-void
.end method


# virtual methods
.method public ᵢ(Landroid/view/View;)V
    .locals 3

    .line 314
    iget-object v0, p0, Lo/agw;->bDV:Lo/ags;

    iget-object v1, p0, Lo/agw;->bDX:Lo/ags$if;

    iget-object v1, v1, Lo/ags$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/ags;->ˋ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V

    .line 315
    return-void
.end method

.method public ⁱ(Landroid/view/View;)V
    .locals 3

    .line 319
    iget-object v0, p0, Lo/agw;->น:Lo/ᵘ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    .line 320
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 321
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 322
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 323
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lo/ﺑ;->ˏ(Landroid/view/View;F)V

    .line 324
    iget-object v0, p0, Lo/agw;->bDV:Lo/ags;

    iget-object v1, p0, Lo/agw;->bDX:Lo/ags$if;

    iget-object v1, v1, Lo/ags$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/ags;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V

    .line 325
    iget-object v0, p0, Lo/agw;->bDV:Lo/ags;

    invoke-static {v0}, Lo/ags;->ʼ(Lo/ags;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/agw;->bDX:Lo/ags$if;

    iget-object v1, v1, Lo/ags$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Lo/agw;->bDV:Lo/ags;

    invoke-static {v0}, Lo/ags;->ʻ(Lo/ags;)V

    .line 327
    return-void
.end method
