.class Lo/ﭜ$if;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﭜ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic ﮋ:Lo/ﭜ;

.field private ﺏ:Lo/ﭕ;

.field private ﺔ:I

.field private ﺣ:Z

.field private ﻡ:Z

.field private ｕ:Z


# direct methods
.method private constructor <init>(Lo/ﭜ;)V
    .locals 1

    .line 639
    iput-object p1, p0, Lo/ﭜ$if;->ﮋ:Lo/ﭜ;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 653
    const/4 v0, 0x4

    iput v0, p0, Lo/ﭜ$if;->ﺔ:I

    return-void
.end method

.method synthetic constructor <init>(Lo/ﭜ;Lo/ﭡ;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lo/ﭜ$if;-><init>(Lo/ﭜ;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 688
    const/4 v1, 0x0

    .line 689
    iget-object v0, p0, Lo/ﭜ$if;->ﺏ:Lo/ﭕ;

    invoke-virtual {v0}, Lo/ﭕ;->ȋ()I

    move-result v2

    .line 690
    iget-boolean v0, p0, Lo/ﭜ$if;->ﺣ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ﭜ$if;->ﺏ:Lo/ﭕ;

    invoke-virtual {v0}, Lo/ﭕ;->ɨ()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 691
    add-int/lit8 v2, v2, -0x1

    .line 693
    :cond_0
    iget v0, p0, Lo/ﭜ$if;->ﺔ:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 694
    iget-boolean v0, p0, Lo/ﭜ$if;->ｕ:Z

    if-eqz v0, :cond_1

    .line 695
    add-int/lit8 v1, v1, 0x1

    .line 697
    :cond_1
    return v1
.end method

.method public getHistorySize()I
    .locals 1

    .line 804
    iget-object v0, p0, Lo/ﭜ$if;->ﺏ:Lo/ﭕ;

    invoke-virtual {v0}, Lo/ﭕ;->getHistorySize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 701
    invoke-virtual {p0, p1}, Lo/ﭜ$if;->getItemViewType(I)I

    move-result v1

    .line 702
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 704
    :sswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 706
    :sswitch_1
    iget-boolean v0, p0, Lo/ﭜ$if;->ﺣ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ﭜ$if;->ﺏ:Lo/ﭕ;

    invoke-virtual {v0}, Lo/ﭕ;->ɨ()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 707
    add-int/lit8 p1, p1, 0x1

    .line 709
    :cond_0
    iget-object v0, p0, Lo/ﭜ$if;->ﺏ:Lo/ﭕ;

    invoke-virtual {v0, p1}, Lo/ﭕ;->ᗮ(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    .line 711
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public getItemId(I)J
    .locals 2

    .line 716
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 675
    iget-boolean v0, p0, Lo/ﭜ$if;->ｕ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/ﭜ$if;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 676
    const/4 v0, 0x1

    return v0

    .line 678
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 720
    invoke-virtual {p0, p1}, Lo/ﭜ$if;->getItemViewType(I)I

    move-result v3

    .line 721
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    .line 723
    :sswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 724
    :cond_0
    iget-object v0, p0, Lo/ﭜ$if;->ﮋ:Lo/ﭜ;

    invoke-virtual {v0}, Lo/ﭜ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lo/ڊ$ᐝ;->abc_activity_chooser_view_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 726
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 727
    sget v0, Lo/ڊ$ˏ;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    .line 728
    iget-object v0, p0, Lo/ﭜ$if;->ﮋ:Lo/ﭜ;

    invoke-virtual {v0}, Lo/ﭜ;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/ڊ$ʻ;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    :cond_1
    return-object p2

    .line 733
    :sswitch_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lo/ڊ$ˏ;->list_item:I

    if-eq v0, v1, :cond_3

    .line 734
    :cond_2
    iget-object v0, p0, Lo/ﭜ$if;->ﮋ:Lo/ﭜ;

    invoke-virtual {v0}, Lo/ﭜ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lo/ڊ$ᐝ;->abc_activity_chooser_view_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 737
    :cond_3
    iget-object v0, p0, Lo/ﭜ$if;->ﮋ:Lo/ﭜ;

    invoke-virtual {v0}, Lo/ﭜ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 739
    sget v0, Lo/ڊ$ˏ;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v5, v0

    .line 740
    invoke-virtual {p0, p1}, Lo/ﭜ$if;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    .line 741
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 743
    sget v0, Lo/ڊ$ˏ;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    .line 744
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    iget-boolean v0, p0, Lo/ﭜ$if;->ﺣ:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    iget-boolean v0, p0, Lo/ﭜ$if;->ﻡ:Z

    if-eqz v0, :cond_4

    .line 747
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;Z)V

    goto :goto_0

    .line 749
    :cond_4
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;Z)V

    .line 751
    :goto_0
    return-object p2

    .line 753
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 684
    const/4 v0, 0x3

    return v0
.end method

.method public ȋ()I
    .locals 1

    .line 800
    iget-object v0, p0, Lo/ﭜ$if;->ﺏ:Lo/ﭕ;

    invoke-virtual {v0}, Lo/ﭕ;->ȋ()I

    move-result v0

    return v0
.end method

.method public ɨ()Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 789
    iget-object v0, p0, Lo/ﭜ$if;->ﺏ:Lo/ﭕ;

    invoke-virtual {v0}, Lo/ﭕ;->ɨ()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(ZZ)V
    .locals 1

    .line 813
    iget-boolean v0, p0, Lo/ﭜ$if;->ﺣ:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lo/ﭜ$if;->ﻡ:Z

    if-eq v0, p2, :cond_1

    .line 815
    :cond_0
    iput-boolean p1, p0, Lo/ﭜ$if;->ﺣ:Z

    .line 816
    iput-boolean p2, p0, Lo/ﭜ$if;->ﻡ:Z

    .line 817
    invoke-virtual {p0}, Lo/ﭜ$if;->notifyDataSetChanged()V

    .line 819
    :cond_1
    return-void
.end method

.method public ˎ(Lo/ﭕ;)V
    .locals 2

    .line 662
    iget-object v0, p0, Lo/ﭜ$if;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ˊ(Lo/ﭜ;)Lo/ﭜ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﭜ$if;->ᐦ()Lo/ﭕ;

    move-result-object v1

    .line 663
    if-eqz v1, :cond_0

    iget-object v0, p0, Lo/ﭜ$if;->ﮋ:Lo/ﭜ;

    invoke-virtual {v0}, Lo/ﭜ;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lo/ﭜ$if;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ͺ(Lo/ﭜ;)Landroid/database/DataSetObserver;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/ﭕ;->unregisterObserver(Ljava/lang/Object;)V

    .line 666
    :cond_0
    iput-object p1, p0, Lo/ﭜ$if;->ﺏ:Lo/ﭕ;

    .line 667
    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/ﭜ$if;->ﮋ:Lo/ﭜ;

    invoke-virtual {v0}, Lo/ﭜ;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lo/ﭜ$if;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ͺ(Lo/ﭜ;)Landroid/database/DataSetObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/ﭕ;->registerObserver(Ljava/lang/Object;)V

    .line 670
    :cond_1
    invoke-virtual {p0}, Lo/ﭜ$if;->notifyDataSetChanged()V

    .line 671
    return-void
.end method

.method public ՙ(Z)V
    .locals 1

    .line 793
    iget-boolean v0, p0, Lo/ﭜ$if;->ｕ:Z

    if-eq v0, p1, :cond_0

    .line 794
    iput-boolean p1, p0, Lo/ﭜ$if;->ｕ:Z

    .line 795
    invoke-virtual {p0}, Lo/ﭜ$if;->notifyDataSetChanged()V

    .line 797
    :cond_0
    return-void
.end method

.method public ן()I
    .locals 9

    .line 760
    iget v2, p0, Lo/ﭜ$if;->ﺔ:I

    .line 761
    const v0, 0x7fffffff

    iput v0, p0, Lo/ﭜ$if;->ﺔ:I

    .line 763
    const/4 v3, 0x0

    .line 764
    const/4 v4, 0x0

    .line 766
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 767
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 768
    invoke-virtual {p0}, Lo/ﭜ$if;->getCount()I

    move-result v7

    .line 770
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    .line 771
    const/4 v0, 0x0

    invoke-virtual {p0, v8, v4, v0}, Lo/ﭜ$if;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 772
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 773
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 770
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 776
    :cond_0
    iput v2, p0, Lo/ﭜ$if;->ﺔ:I

    .line 778
    return v3
.end method

.method public ᐦ()Lo/ﭕ;
    .locals 1

    .line 808
    iget-object v0, p0, Lo/ﭜ$if;->ﺏ:Lo/ﭕ;

    return-object v0
.end method

.method public ᒄ()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Lo/ﭜ$if;->ﺣ:Z

    return v0
.end method

.method public ᵋ(I)V
    .locals 1

    .line 782
    iget v0, p0, Lo/ﭜ$if;->ﺔ:I

    if-eq v0, p1, :cond_0

    .line 783
    iput p1, p0, Lo/ﭜ$if;->ﺔ:I

    .line 784
    invoke-virtual {p0}, Lo/ﭜ$if;->notifyDataSetChanged()V

    .line 786
    :cond_0
    return-void
.end method
