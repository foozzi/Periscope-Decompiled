.class Lo/ἰ;
.super Lo/ᵖ$ˋ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ऱ:Lo/ᵖ;

.field final synthetic ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

.field final synthetic ষ:Lo/ᵘ;

.field final synthetic ঢ়:I

.field final synthetic ฑ:I


# direct methods
.method constructor <init>(Lo/ᵖ;Landroid/support/v7/widget/RecyclerView$ˑ;IILo/ᵘ;)V
    .locals 1

    .line 284
    iput-object p1, p0, Lo/ἰ;->ऱ:Lo/ᵖ;

    iput-object p2, p0, Lo/ἰ;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    iput p3, p0, Lo/ἰ;->ঢ়:I

    iput p4, p0, Lo/ἰ;->ฑ:I

    iput-object p5, p0, Lo/ἰ;->ষ:Lo/ᵘ;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ᵖ$ˋ;-><init>(Lo/ᵟ;)V

    return-void
.end method


# virtual methods
.method public ᵢ(Landroid/view/View;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lo/ἰ;->ऱ:Lo/ᵖ;

    iget-object v1, p0, Lo/ἰ;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Lo/ᵖ;->ˑ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 288
    return-void
.end method

.method public ⁱ(Landroid/view/View;)V
    .locals 2

    .line 300
    iget-object v0, p0, Lo/ἰ;->ষ:Lo/ᵘ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    .line 301
    iget-object v0, p0, Lo/ἰ;->ऱ:Lo/ᵖ;

    iget-object v1, p0, Lo/ἰ;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Lo/ᵖ;->ˉ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 302
    iget-object v0, p0, Lo/ἰ;->ऱ:Lo/ᵖ;

    invoke-static {v0}, Lo/ᵖ;->ʼ(Lo/ᵖ;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/ἰ;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lo/ἰ;->ऱ:Lo/ᵖ;

    invoke-static {v0}, Lo/ᵖ;->ᐝ(Lo/ᵖ;)V

    .line 304
    return-void
.end method

.method public ﹶ(Landroid/view/View;)V
    .locals 1

    .line 291
    iget v0, p0, Lo/ἰ;->ঢ়:I

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 294
    :cond_0
    iget v0, p0, Lo/ἰ;->ฑ:I

    if-eqz v0, :cond_1

    .line 295
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 297
    :cond_1
    return-void
.end method
