.class Lo/ἱ;
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

.field final synthetic น:Lo/ᵘ;


# direct methods
.method constructor <init>(Lo/ᵖ;Lo/ᵖ$if;Lo/ᵘ;)V
    .locals 1

    .line 343
    iput-object p1, p0, Lo/ἱ;->ऱ:Lo/ᵖ;

    iput-object p2, p0, Lo/ἱ;->ต:Lo/ᵖ$if;

    iput-object p3, p0, Lo/ἱ;->น:Lo/ᵘ;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ᵖ$ˋ;-><init>(Lo/ᵟ;)V

    return-void
.end method


# virtual methods
.method public ᵢ(Landroid/view/View;)V
    .locals 3

    .line 346
    iget-object v0, p0, Lo/ἱ;->ऱ:Lo/ᵖ;

    iget-object v1, p0, Lo/ἱ;->ต:Lo/ᵖ$if;

    iget-object v1, v1, Lo/ᵖ$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/ᵖ;->ˋ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V

    .line 347
    return-void
.end method

.method public ⁱ(Landroid/view/View;)V
    .locals 3

    .line 351
    iget-object v0, p0, Lo/ἱ;->น:Lo/ᵘ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    .line 352
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 353
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 354
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 355
    iget-object v0, p0, Lo/ἱ;->ऱ:Lo/ᵖ;

    iget-object v1, p0, Lo/ἱ;->ต:Lo/ᵖ$if;

    iget-object v1, v1, Lo/ᵖ$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/ᵖ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Z)V

    .line 356
    iget-object v0, p0, Lo/ἱ;->ऱ:Lo/ᵖ;

    invoke-static {v0}, Lo/ᵖ;->ʽ(Lo/ᵖ;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/ἱ;->ต:Lo/ᵖ$if;

    iget-object v1, v1, Lo/ᵖ$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lo/ἱ;->ऱ:Lo/ᵖ;

    invoke-static {v0}, Lo/ᵖ;->ᐝ(Lo/ᵖ;)V

    .line 358
    return-void
.end method
