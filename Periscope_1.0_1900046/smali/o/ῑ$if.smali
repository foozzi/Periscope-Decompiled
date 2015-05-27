.class Lo/ῑ$if;
.super Lo/ŀ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ῑ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lo/ᵘ;

.field private o:Lo/ᐥ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1550
    sget v0, Lo/ڊ$if;->dropDownListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lo/ŀ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1551
    iput-boolean p2, p0, Lo/ῑ$if;->l:Z

    .line 1552
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ῑ$if;->setCacheColorHint(I)V

    .line 1553
    return-void
.end method

.method private ʾ(Landroid/view/View;I)V
    .locals 3

    .line 1622
    invoke-virtual {p0, p2}, Lo/ῑ$if;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 1623
    invoke-virtual {p0, p1, p2, v1, v2}, Lo/ῑ$if;->performItemClick(Landroid/view/View;IJ)Z

    .line 1624
    return-void
.end method

.method private ˊ(Landroid/view/View;IFF)V
    .locals 1

    .line 1639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ῑ$if;->m:Z

    .line 1643
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ῑ$if;->setPressed(Z)V

    .line 1644
    invoke-virtual {p0}, Lo/ῑ$if;->layoutChildren()V

    .line 1647
    invoke-virtual {p0, p2}, Lo/ῑ$if;->setSelection(I)V

    .line 1648
    invoke-virtual {p0, p2, p1, p3, p4}, Lo/ῑ$if;->ˊ(ILandroid/view/View;FF)V

    .line 1653
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ῑ$if;->ٴ(Z)V

    .line 1657
    invoke-virtual {p0}, Lo/ῑ$if;->refreshDrawableState()V

    .line 1658
    return-void
.end method

.method static synthetic ˊ(Lo/ῑ$if;Z)Z
    .locals 0

    .line 1498
    iput-boolean p1, p0, Lo/ῑ$if;->k:Z

    return p1
.end method

.method private ᐞ()V
    .locals 1

    .line 1627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ῑ$if;->m:Z

    .line 1628
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ῑ$if;->setPressed(Z)V

    .line 1630
    invoke-virtual {p0}, Lo/ῑ$if;->drawableStateChanged()V

    .line 1632
    iget-object v0, p0, Lo/ῑ$if;->n:Lo/ᵘ;

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lo/ῑ$if;->n:Lo/ᵘ;

    invoke-virtual {v0}, Lo/ᵘ;->cancel()V

    .line 1634
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ῑ$if;->n:Lo/ᵘ;

    .line 1636
    :cond_0
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .line 1698
    iget-boolean v0, p0, Lo/ῑ$if;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/ŀ;->hasFocus()Z

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

.method public hasWindowFocus()Z
    .locals 1

    .line 1678
    iget-boolean v0, p0, Lo/ῑ$if;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/ŀ;->hasWindowFocus()Z

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

.method public isFocused()Z
    .locals 1

    .line 1688
    iget-boolean v0, p0, Lo/ῑ$if;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/ŀ;->isFocused()Z

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

.method public isInTouchMode()Z
    .locals 1

    .line 1668
    iget-boolean v0, p0, Lo/ῑ$if;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/ῑ$if;->k:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lo/ŀ;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ʻ(Landroid/view/MotionEvent;I)Z
    .locals 10

    .line 1562
    const/4 v2, 0x1

    .line 1563
    const/4 v3, 0x0

    .line 1565
    invoke-static {p1}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;)I

    move-result v4

    .line 1566
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 1568
    :pswitch_0
    const/4 v2, 0x0

    .line 1569
    goto :goto_0

    .line 1571
    :pswitch_1
    const/4 v2, 0x0

    .line 1574
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 1575
    if-gez v5, :cond_0

    .line 1576
    const/4 v2, 0x0

    .line 1577
    goto :goto_0

    .line 1580
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v6, v0

    .line 1581
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v7, v0

    .line 1582
    invoke-virtual {p0, v6, v7}, Lo/ῑ$if;->pointToPosition(II)I

    move-result v8

    .line 1583
    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    .line 1584
    const/4 v3, 0x1

    .line 1585
    goto :goto_0

    .line 1588
    :cond_1
    invoke-virtual {p0}, Lo/ῑ$if;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v8, v0

    invoke-virtual {p0, v0}, Lo/ῑ$if;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1589
    int-to-float v0, v6

    int-to-float v1, v7

    invoke-direct {p0, v9, v8, v0, v1}, Lo/ῑ$if;->ˊ(Landroid/view/View;IFF)V

    .line 1590
    const/4 v2, 0x1

    .line 1592
    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    .line 1593
    invoke-direct {p0, v9, v8}, Lo/ῑ$if;->ʾ(Landroid/view/View;I)V

    .line 1599
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    if-eqz v3, :cond_4

    .line 1600
    :cond_3
    invoke-direct {p0}, Lo/ῑ$if;->ᐞ()V

    .line 1604
    :cond_4
    if-eqz v2, :cond_6

    .line 1605
    iget-object v0, p0, Lo/ῑ$if;->o:Lo/ᐥ;

    if-nez v0, :cond_5

    .line 1606
    new-instance v0, Lo/ᐥ;

    invoke-direct {v0, p0}, Lo/ᐥ;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Lo/ῑ$if;->o:Lo/ᐥ;

    .line 1608
    :cond_5
    iget-object v0, p0, Lo/ῑ$if;->o:Lo/ᐥ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ᐥ;->ͺ(Z)Lo/נ;

    .line 1609
    iget-object v0, p0, Lo/ῑ$if;->o:Lo/ᐥ;

    invoke-virtual {v0, p0, p1}, Lo/ᐥ;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1610
    :cond_6
    iget-object v0, p0, Lo/ῑ$if;->o:Lo/ᐥ;

    if-eqz v0, :cond_7

    .line 1611
    iget-object v0, p0, Lo/ῑ$if;->o:Lo/ᐥ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᐥ;->ͺ(Z)Lo/נ;

    .line 1614
    :cond_7
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected ᵅ()Z
    .locals 1

    .line 1662
    iget-boolean v0, p0, Lo/ῑ$if;->m:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/ŀ;->ᵅ()Z

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
