.class Lo/adw$ˎ;
.super Lo/ʟ$if;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/adw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ce"
.end annotation


# instance fields
.field final synthetic bzs:Lo/adw;


# direct methods
.method private constructor <init>(Lo/adw;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-direct {p0}, Lo/ʟ$if;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/adw;Lo/adw$1;)V
    .locals 0

    .line 703
    invoke-direct {p0, p1}, Lo/adw$ˎ;-><init>(Lo/adw;)V

    return-void
.end method


# virtual methods
.method public ʴ(Landroid/view/View;)I
    .locals 1

    .line 748
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 750
    :sswitch_0
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    iget v0, v0, Lo/adw;->bzd:F

    float-to-int v0, v0

    return v0

    .line 752
    :goto_0
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0, p1}, Lo/adw;->ˊ(Lo/adw;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 755
    :cond_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0089 -> :sswitch_0
    .end sparse-switch
.end method

.method public ʽ(Landroid/view/View;I)Z
    .locals 2

    .line 781
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0, p1}, Lo/adw;->ˊ(Lo/adw;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0, p1}, Lo/adw;->ˋ(Lo/adw;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0}, Lo/adw;->ˏ(Lo/adw;)F

    move-result v0

    iget-object v1, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v1}, Lo/adw;->ᐝ(Lo/adw;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 785
    :cond_1
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0, p1}, Lo/adw;->ˋ(Lo/adw;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0}, Lo/adw;->ʻ(Lo/adw;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public ˋ(Landroid/view/View;FF)V
    .locals 6

    .line 792
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0}, Lo/adw;->ʻ(Lo/adw;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 793
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    iget v1, v1, Lo/adw;->bze:F

    float-to-int v1, v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 795
    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    iget v0, v0, Lo/adw;->bzd:F

    float-to-int v4, v0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 796
    :goto_1
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0}, Lo/adw;->ˋ(Lo/adw;)Lo/ʟ;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lo/ʟ;->ι(II)Z

    .line 797
    if-nez v2, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 798
    :goto_2
    goto :goto_5

    .line 799
    :cond_4
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-virtual {v0}, Lo/adw;->getHeight()I

    move-result v4

    .line 800
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_5

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    div-int/lit8 v1, v4, 0x2

    if-le v0, v1, :cond_6

    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 802
    :goto_3
    if-eqz v2, :cond_7

    move v5, v4

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v5, v4, v0

    .line 803
    :goto_4
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0}, Lo/adw;->ˋ(Lo/adw;)Lo/ʟ;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lo/ʟ;->ι(II)Z

    .line 804
    move v3, v2

    .line 806
    :goto_5
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-virtual {v0}, Lo/adw;->invalidate()V

    .line 807
    if-eqz v3, :cond_8

    .line 808
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0}, Lo/adw;->ʼ(Lo/adw;)Lo/vj;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 809
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0}, Lo/adw;->ʼ(Lo/adw;)Lo/vj;

    move-result-object v0

    invoke-virtual {v0}, Lo/vj;->tO()V

    goto :goto_6

    .line 812
    :cond_8
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0}, Lo/adw;->ʼ(Lo/adw;)Lo/vj;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 813
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0}, Lo/adw;->ʼ(Lo/adw;)Lo/vj;

    move-result-object v0

    invoke-virtual {v0}, Lo/vj;->tN()V

    .line 816
    :cond_9
    :goto_6
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0, p1, v3}, Lo/adw;->ˊ(Lo/adw;Landroid/view/View;Z)V

    .line 817
    return-void
.end method

.method public ˋ(Landroid/view/View;IIII)V
    .locals 10

    .line 724
    const/4 v7, 0x0

    .line 725
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 727
    :sswitch_0
    int-to-float v0, p3

    iget-object v1, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    iget v1, v1, Lo/adw;->bzd:F

    div-float v7, v0, v1

    .line 728
    goto :goto_1

    .line 730
    :goto_0
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0, p1}, Lo/adw;->ˊ(Lo/adw;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-virtual {v0}, Lo/adw;->getHeight()I

    move-result v8

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 733
    sub-int v0, v8, p3

    int-to-float v0, v0

    int-to-float v1, v9

    div-float v7, v0, v1

    .line 738
    :cond_0
    :goto_1
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0}, Lo/adw;->ˊ(Lo/adw;)Lo/adw$ˋ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0}, Lo/adw;->ˊ(Lo/adw;)Lo/adw$ˋ;

    move-result-object v0

    move-object v1, p1

    move v2, v7

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lo/adw$ˋ;->ˊ(Landroid/view/View;FIIII)V

    .line 741
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/adw$ˊ;

    move-object v8, v0

    .line 742
    iput v7, v8, Lo/adw$ˊ;->bzt:F

    .line 743
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-virtual {v0}, Lo/adw;->invalidate()V

    .line 744
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0089 -> :sswitch_0
    .end sparse-switch
.end method

.method public ˏ(Landroid/view/View;II)I
    .locals 4

    .line 761
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 763
    :sswitch_0
    int-to-float v0, p2

    iget-object v1, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    iget v1, v1, Lo/adw;->bzd:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 764
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    iget v0, v0, Lo/adw;->bzd:F

    float-to-int v0, v0

    return v0

    .line 765
    :cond_0
    if-gez p2, :cond_1

    .line 766
    const/4 v0, 0x0

    return v0

    .line 768
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v1, p3

    iget-object v2, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v2}, Lo/adw;->ˎ(Lo/adw;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    .line 771
    :goto_0
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0, p1}, Lo/adw;->ˊ(Lo/adw;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-virtual {v0}, Lo/adw;->getHeight()I

    move-result v3

    .line 773
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v3, v0

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 775
    :cond_2
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0089 -> :sswitch_0
    .end sparse-switch
.end method

.method public ᕀ(I)V
    .locals 2

    .line 717
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0}, Lo/adw;->ˊ(Lo/adw;)Lo/adw$ˋ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v0}, Lo/adw;->ˊ(Lo/adw;)Lo/adw$ˋ;

    move-result-object v0

    iget-object v1, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-static {v1}, Lo/adw;->ˋ(Lo/adw;)Lo/ʟ;

    move-result-object v1

    invoke-virtual {v1}, Lo/ʟ;->ᕑ()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lo/adw$ˋ;->ˍ(Landroid/view/View;I)V

    .line 720
    :cond_0
    return-void
.end method

.method public ᵣ(I)I
    .locals 4

    .line 706
    move v2, p1

    :goto_0
    if-ltz v2, :cond_1

    .line 707
    iget-object v0, p0, Lo/adw$ˎ;->bzs:Lo/adw;

    invoke-virtual {v0, v2}, Lo/adw;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 708
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 709
    return v2

    .line 706
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 712
    :cond_1
    return p1
.end method
