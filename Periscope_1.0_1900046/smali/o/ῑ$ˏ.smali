.class Lo/ῑ$ˏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ῑ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cf"
.end annotation


# instance fields
.field final synthetic j:Lo/ῑ;


# direct methods
.method private constructor <init>(Lo/ῑ;)V
    .locals 0

    .line 1751
    iput-object p1, p0, Lo/ῑ$ˏ;->j:Lo/ῑ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ῑ;Lo/‿;)V
    .locals 0

    .line 1751
    invoke-direct {p0, p1}, Lo/ῑ$ˏ;-><init>(Lo/ῑ;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1755
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 1758
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lo/ῑ$ˏ;->j:Lo/ῑ;

    invoke-virtual {v0}, Lo/ῑ;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ῑ$ˏ;->j:Lo/ῑ;

    invoke-static {v0}, Lo/ῑ;->ˋ(Lo/ῑ;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lo/ῑ$ˏ;->j:Lo/ῑ;

    invoke-static {v0}, Lo/ῑ;->ˏ(Lo/ῑ;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/ῑ$ˏ;->j:Lo/ῑ;

    invoke-static {v1}, Lo/ῑ;->ˎ(Lo/ῑ;)Lo/ῑ$ᐝ;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1761
    iget-object v0, p0, Lo/ῑ$ˏ;->j:Lo/ῑ;

    invoke-static {v0}, Lo/ῑ;->ˎ(Lo/ῑ;)Lo/ῑ$ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ῑ$ᐝ;->run()V

    .line 1763
    :cond_0
    return-void
.end method
