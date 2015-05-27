.class Lo/ṛ;
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


# direct methods
.method constructor <init>(Lo/ᵖ;Landroid/support/v7/widget/RecyclerView$ˑ;Lo/ᵘ;)V
    .locals 1

    .line 196
    iput-object p1, p0, Lo/ṛ;->ऱ:Lo/ᵖ;

    iput-object p2, p0, Lo/ṛ;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    iput-object p3, p0, Lo/ṛ;->ষ:Lo/ᵘ;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ᵖ$ˋ;-><init>(Lo/ᵟ;)V

    return-void
.end method


# virtual methods
.method public ᵢ(Landroid/view/View;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lo/ṛ;->ऱ:Lo/ᵖ;

    iget-object v1, p0, Lo/ṛ;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Lo/ᵖ;->ˍ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 200
    return-void
.end method

.method public ⁱ(Landroid/view/View;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lo/ṛ;->ষ:Lo/ᵘ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    .line 204
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lo/ﺑ;->ˎ(Landroid/view/View;F)V

    .line 205
    iget-object v0, p0, Lo/ṛ;->ऱ:Lo/ᵖ;

    iget-object v1, p0, Lo/ṛ;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Lo/ᵖ;->ˈ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 206
    iget-object v0, p0, Lo/ṛ;->ऱ:Lo/ᵖ;

    invoke-static {v0}, Lo/ᵖ;->ˏ(Lo/ᵖ;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/ṛ;->ঘ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lo/ṛ;->ऱ:Lo/ᵖ;

    invoke-static {v0}, Lo/ᵖ;->ᐝ(Lo/ᵖ;)V

    .line 208
    return-void
.end method
