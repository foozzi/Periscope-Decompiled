.class Lo/adu;
.super Lo/ali;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bzb:Lo/ads$ˋ;


# direct methods
.method constructor <init>(Lo/ads$ˋ;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lo/adu;->bzb:Lo/ads$ˋ;

    invoke-direct {p0}, Lo/ali;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Ljava/lang/Object;I)V
    .locals 2

    .line 136
    move-object v0, p1

    check-cast v0, Lo/alj;

    move-object v1, p2

    check-cast v1, Lo/ale;

    invoke-virtual {p0, v0, v1, p3}, Lo/adu;->ˊ(Lo/alj;Lo/ale;I)V

    return-void
.end method

.method public ˊ(Lo/alj;Lo/ale;I)V
    .locals 3

    .line 139
    invoke-super {p0, p1, p2, p3}, Lo/ali;->ˊ(Lo/alj;Lo/ale;I)V

    .line 141
    iget-object v0, p0, Lo/adu;->bzb:Lo/ads$ˋ;

    iget-object v0, v0, Lo/ads$ˋ;->brj:Lo/ant;

    invoke-virtual {v0}, Lo/ant;->Cn()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v2}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p1, Lo/alj;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ᓲ;->ˌ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Lo/ઽ;->ﹷ(I)Lo/ڏ;

    move-result-object v0

    sget-object v1, Lo/abe;->bvo:Lo/ﮆ;

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Lo/ﮆ;)Lo/ڏ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ڏ;->ץ()Lo/ڏ;

    move-result-object v0

    iget-object v1, p1, Lo/alj;->bLM:Lo/alh;

    invoke-virtual {v1}, Lo/alh;->Bw()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    .line 152
    :cond_0
    return-void
.end method
