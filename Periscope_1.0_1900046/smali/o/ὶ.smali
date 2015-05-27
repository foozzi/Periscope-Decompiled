.class Lo/ὶ;
.super Lo/ᵖ$ˋ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ऱ:Lo/ᵖ;

.field final synthetic ต:Lo/ᵖ$if;

.field final synthetic ม:Lo/ᵘ;

.field final synthetic อ:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/ᵖ;Lo/ᵖ$if;Lo/ᵘ;Landroid/view/View;)V
    .locals 1

    .line 365
    iput-object p1, p0, Lo/ὶ;->ऱ:Lo/ᵖ;

    iput-object p2, p0, Lo/ὶ;->ต:Lo/ᵖ$if;

    iput-object p3, p0, Lo/ὶ;->ม:Lo/ᵘ;

    iput-object p4, p0, Lo/ὶ;->อ:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ᵖ$ˋ;-><init>(Lo/ᵟ;)V

    return-void
.end method


# virtual methods
.method public ᵢ(Landroid/view/View;)V
    .locals 3

    .line 368
    iget-object v0, p0, Lo/ὶ;->ऱ:Lo/ᵖ;

    iget-object v1, p0, Lo/ὶ;->ต:Lo/ᵖ$if;

    iget-object v1, v1, Lo/ᵖ$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ᵖ;->ˋ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V

    .line 369
    return-void
.end method

.method public ⁱ(Landroid/view/View;)V
    .locals 3

    .line 372
    iget-object v0, p0, Lo/ὶ;->ม:Lo/ᵘ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    .line 373
    iget-object v0, p0, Lo/ὶ;->อ:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 374
    iget-object v0, p0, Lo/ὶ;->อ:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 375
    iget-object v0, p0, Lo/ὶ;->อ:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 376
    iget-object v0, p0, Lo/ὶ;->ऱ:Lo/ᵖ;

    iget-object v1, p0, Lo/ὶ;->ต:Lo/ᵖ$if;

    iget-object v1, v1, Lo/ᵖ$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ᵖ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V

    .line 377
    iget-object v0, p0, Lo/ὶ;->ऱ:Lo/ᵖ;

    invoke-static {v0}, Lo/ᵖ;->ʽ(Lo/ᵖ;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/ὶ;->ต:Lo/ᵖ$if;

    iget-object v1, v1, Lo/ᵖ$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lo/ὶ;->ऱ:Lo/ᵖ;

    invoke-static {v0}, Lo/ᵖ;->ᐝ(Lo/ᵖ;)V

    .line 379
    return-void
.end method
