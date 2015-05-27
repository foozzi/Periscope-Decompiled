.class Landroid/support/v4/view/ViewPager$ˎ;
.super Lo/ﹾ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ce"
.end annotation


# instance fields
.field final synthetic ⅹ:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .line 2767
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lo/ﹾ;-><init>()V

    return-void
.end method

.method private ʲ()Z
    .locals 2

    .line 2819
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->ˊ(Landroid/support/v4/view/ViewPager;)Lo/ﹲ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->ˊ(Landroid/support/v4/view/ViewPager;)Lo/ﹲ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﹲ;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 2771
    invoke-super {p0, p1, p2}, Lo/ﹾ;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2772
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2773
    invoke-static {}, Lo/ז;->ۦ()Lo/ז;

    move-result-object v2

    .line 2774
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$ˎ;->ʲ()Z

    move-result v0

    invoke-virtual {v2, v0}, Lo/ז;->setScrollable(Z)V

    .line 2775
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->ˊ(Landroid/support/v4/view/ViewPager;)Lo/ﹲ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2777
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->ˊ(Landroid/support/v4/view/ViewPager;)Lo/ﹲ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﹲ;->getCount()I

    move-result v0

    invoke-virtual {v2, v0}, Lo/ז;->setItemCount(I)V

    .line 2778
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->ˋ(Landroid/support/v4/view/ViewPager;)I

    move-result v0

    invoke-virtual {v2, v0}, Lo/ז;->setFromIndex(I)V

    .line 2779
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->ˋ(Landroid/support/v4/view/ViewPager;)I

    move-result v0

    invoke-virtual {v2, v0}, Lo/ז;->setToIndex(I)V

    .line 2781
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .line 2798
    invoke-super {p0, p1, p2, p3}, Lo/ﹾ;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2799
    const/4 v0, 0x1

    return v0

    .line 2801
    :cond_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 2803
    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2804
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->ˋ(Landroid/support/v4/view/ViewPager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2805
    const/4 v0, 0x1

    return v0

    .line 2807
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 2809
    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2810
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->ˋ(Landroid/support/v4/view/ViewPager;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2811
    const/4 v0, 0x1

    return v0

    .line 2813
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 2815
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public ˊ(Landroid/view/View;Lo/ﯩ;)V
    .locals 2

    .line 2785
    invoke-super {p0, p1, p2}, Lo/ﹾ;->ˊ(Landroid/view/View;Lo/ﯩ;)V

    .line 2786
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/ﯩ;->setClassName(Ljava/lang/CharSequence;)V

    .line 2787
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$ˎ;->ʲ()Z

    move-result v0

    invoke-virtual {p2, v0}, Lo/ﯩ;->setScrollable(Z)V

    .line 2788
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2789
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Lo/ﯩ;->addAction(I)V

    .line 2791
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ˎ;->ⅹ:Landroid/support/v4/view/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2792
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Lo/ﯩ;->addAction(I)V

    .line 2794
    :cond_1
    return-void
.end method
