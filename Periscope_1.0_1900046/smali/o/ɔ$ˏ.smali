.class public Lo/ɔ$ˏ;
.super Lo/ᴴ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ɔ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02cf"
.end annotation


# instance fields
.field private cM:I

.field private cN:Lo/ɔ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1634
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ɔ$ˏ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1635
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1638
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lo/ɔ$ˏ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1639
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1642
    invoke-direct {p0, p1, p2, p3}, Lo/ᴴ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1643
    invoke-virtual {p0}, Lo/ɔ$ˏ;->getThreshold()I

    move-result v0

    iput v0, p0, Lo/ɔ$ˏ;->cM:I

    .line 1644
    return-void
.end method

.method private isEmpty()Z
    .locals 1

    .line 1660
    invoke-virtual {p0}, Lo/ɔ$ˏ;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic ˊ(Lo/ɔ$ˏ;)Z
    .locals 1

    .line 1628
    invoke-direct {p0}, Lo/ɔ$ˏ;->isEmpty()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    .line 1713
    iget v0, p0, Lo/ɔ$ˏ;->cM:I

    if-lez v0, :cond_0

    invoke-super {p0}, Lo/ᴴ;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 1703
    invoke-super {p0, p1, p2, p3}, Lo/ᴴ;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1704
    iget-object v0, p0, Lo/ɔ$ˏ;->cN:Lo/ɔ;

    invoke-virtual {v0}, Lo/ɔ;->ȉ()V

    .line 1705
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1718
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1721
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1722
    invoke-virtual {p0}, Lo/ɔ$ˏ;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 1723
    if-eqz v2, :cond_0

    .line 1724
    invoke-virtual {v2, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1726
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1727
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1728
    invoke-virtual {p0}, Lo/ɔ$ˏ;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 1729
    if-eqz v2, :cond_2

    .line 1730
    invoke-virtual {v2, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1732
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1733
    iget-object v0, p0, Lo/ɔ$ˏ;->cN:Lo/ɔ;

    invoke-virtual {v0}, Lo/ɔ;->clearFocus()V

    .line 1734
    iget-object v0, p0, Lo/ɔ$ˏ;->cN:Lo/ɔ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ɔ;->ˊ(Lo/ɔ;Z)V

    .line 1735
    const/4 v0, 0x1

    return v0

    .line 1739
    :cond_3
    invoke-super {p0, p1, p2}, Lo/ᴴ;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1687
    invoke-super {p0, p1}, Lo/ᴴ;->onWindowFocusChanged(Z)V

    .line 1689
    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/ɔ$ˏ;->cN:Lo/ɔ;

    invoke-virtual {v0}, Lo/ɔ;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/ɔ$ˏ;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1690
    invoke-virtual {p0}, Lo/ɔ$ˏ;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    move-object v2, v0

    .line 1692
    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1695
    invoke-virtual {p0}, Lo/ɔ$ˏ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ɔ;->ˈ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1696
    sget-object v0, Lo/ɔ;->cw:Lo/ɔ$if;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lo/ɔ$if;->ˊ(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1699
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    .line 1679
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1669
    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    .line 1652
    invoke-super {p0, p1}, Lo/ᴴ;->setThreshold(I)V

    .line 1653
    iput p1, p0, Lo/ɔ$ˏ;->cM:I

    .line 1654
    return-void
.end method

.method ˍ(Lo/ɔ;)V
    .locals 0

    .line 1647
    iput-object p1, p0, Lo/ɔ$ˏ;->cN:Lo/ɔ;

    .line 1648
    return-void
.end method
