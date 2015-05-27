.class Lo/ῑ$aux;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ῑ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "aux"
.end annotation


# instance fields
.field final synthetic j:Lo/ῑ;


# direct methods
.method private constructor <init>(Lo/ῑ;)V
    .locals 0

    .line 1734
    iput-object p1, p0, Lo/ῑ$aux;->j:Lo/ῑ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ῑ;Lo/‿;)V
    .locals 0

    .line 1734
    invoke-direct {p0, p1}, Lo/ῑ$aux;-><init>(Lo/ῑ;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1736
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1737
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v5, v0

    .line 1738
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v6, v0

    .line 1740
    if-nez v4, :cond_0

    iget-object v0, p0, Lo/ῑ$aux;->j:Lo/ῑ;

    invoke-static {v0}, Lo/ῑ;->ˋ(Lo/ῑ;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ῑ$aux;->j:Lo/ῑ;

    invoke-static {v0}, Lo/ῑ;->ˋ(Lo/ῑ;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz v5, :cond_0

    iget-object v0, p0, Lo/ῑ$aux;->j:Lo/ῑ;

    invoke-static {v0}, Lo/ῑ;->ˋ(Lo/ῑ;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    if-ge v5, v0, :cond_0

    if-ltz v6, :cond_0

    iget-object v0, p0, Lo/ῑ$aux;->j:Lo/ῑ;

    invoke-static {v0}, Lo/ῑ;->ˋ(Lo/ῑ;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1743
    iget-object v0, p0, Lo/ῑ$aux;->j:Lo/ῑ;

    invoke-static {v0}, Lo/ῑ;->ˏ(Lo/ῑ;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/ῑ$aux;->j:Lo/ῑ;

    invoke-static {v1}, Lo/ῑ;->ˎ(Lo/ῑ;)Lo/ῑ$ᐝ;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1744
    :cond_0
    const/4 v0, 0x1

    if-ne v4, v0, :cond_1

    .line 1745
    iget-object v0, p0, Lo/ῑ$aux;->j:Lo/ῑ;

    invoke-static {v0}, Lo/ῑ;->ˏ(Lo/ῑ;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/ῑ$aux;->j:Lo/ῑ;

    invoke-static {v1}, Lo/ῑ;->ˎ(Lo/ῑ;)Lo/ῑ$ᐝ;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1747
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
