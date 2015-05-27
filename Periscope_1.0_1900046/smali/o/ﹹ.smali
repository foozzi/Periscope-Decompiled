.class public abstract Lo/ﹹ;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﹹ$1;,
        Lo/ﹹ$ˏ;,
        Lo/ﹹ$if;,
        Lo/ﹹ$ˎ;,
        Lo/ﹹ$ˋ;,
        Lo/ﹹ$ˊ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::Landroid/widget/Adapter;>Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field public mInLayout:Z

.field private ĉ:I

.field č:Lo/ﹹ$ˎ;

.field public Ŷ:Lo/ﹹ$ˊ;

.field ż:Lo/ﹹ$ˋ;

.field public ƨ:Z

.field public ƫ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field Ƴ:J

.field public Ț:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field ȯ:J

.field private ɢ:Landroid/view/View;

.field public ʎ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field public ʝ:I

.field public ʭ:I

.field public λ:J

.field private ϋ:Z

.field private ϒ:Z

.field private Ϝ:Lo/ﹹ$ˏ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe79<TT;>.\u02cf;"
        }
    .end annotation
.end field

.field public к:Z

.field public ｚ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field ｫ:I

.field public ｮ:I

.field public ｱ:J

.field ﾏ:J

.field public ﾗ:Z

.field public ﾜ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 238
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lo/ﹹ;->ｚ:I

    .line 86
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/ﹹ;->ｱ:J

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﹹ;->ﾗ:Z

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﹹ;->mInLayout:Z

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lo/ﹹ;->ƫ:I

    .line 160
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/ﹹ;->Ƴ:J

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lo/ﹹ;->Ț:I

    .line 171
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/ﹹ;->ȯ:J

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lo/ﹹ;->ʭ:I

    .line 208
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/ﹹ;->λ:J

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﹹ;->к:Z

    .line 239
    return-void
.end method

.method static synthetic ˊ(Lo/ﹹ;)Landroid/os/Parcelable;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lo/ﹹ;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˊ(Lo/ﹹ;Landroid/os/Parcelable;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lo/ﹹ;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic ˋ(Lo/ﹹ;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lo/ﹹ;->ᴖ()V

    return-void
.end method

.method private י(Z)V
    .locals 6

    .line 735
    invoke-virtual {p0}, Lo/ﹹ;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    const/4 p1, 0x0

    .line 739
    :cond_0
    if-eqz p1, :cond_2

    .line 740
    iget-object v0, p0, Lo/ﹹ;->ɢ:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lo/ﹹ;->ɢ:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 742
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lo/ﹹ;->setVisibility(I)V

    goto :goto_0

    .line 745
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ﹹ;->setVisibility(I)V

    .line 751
    :goto_0
    iget-boolean v0, p0, Lo/ﹹ;->ƨ:Z

    if-eqz v0, :cond_4

    .line 752
    move-object v0, p0

    invoke-virtual {p0}, Lo/ﹹ;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lo/ﹹ;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lo/ﹹ;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lo/ﹹ;->getBottom()I

    move-result v5

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/ﹹ;->onLayout(ZIIII)V

    goto :goto_1

    .line 755
    :cond_2
    iget-object v0, p0, Lo/ﹹ;->ɢ:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/ﹹ;->ɢ:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 756
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ﹹ;->setVisibility(I)V

    .line 758
    :cond_4
    :goto_1
    return-void
.end method

.method private ᴖ()V
    .locals 8

    .line 893
    iget-object v0, p0, Lo/ﹹ;->č:Lo/ﹹ$ˎ;

    if-nez v0, :cond_0

    .line 894
    return-void

    .line 896
    :cond_0
    invoke-virtual {p0}, Lo/ﹹ;->getSelectedItemPosition()I

    move-result v6

    .line 897
    if-ltz v6, :cond_1

    .line 898
    invoke-virtual {p0}, Lo/ﹹ;->getSelectedView()Landroid/view/View;

    move-result-object v7

    .line 899
    iget-object v0, p0, Lo/ﹹ;->č:Lo/ﹹ$ˎ;

    move-object v1, p0

    move-object v2, v7

    move v3, v6

    invoke-virtual {p0}, Lo/ﹹ;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lo/ﹹ$ˎ;->ˋ(Lo/ﹹ;Landroid/view/View;IJ)V

    .line 901
    goto :goto_0

    .line 902
    :cond_1
    iget-object v0, p0, Lo/ﹹ;->č:Lo/ﹹ$ˎ;

    invoke-interface {v0, p0}, Lo/ﹹ$ˎ;->ˎ(Lo/ﹹ;)V

    .line 904
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    .line 463
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    .line 476
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 504
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 489
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .line 918
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/ﹹ;->ʎ:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 908
    invoke-virtual {p0}, Lo/ﹹ;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 909
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    const/4 v0, 0x1

    return v0

    .line 913
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/util/SparseArray<Landroid/os/Parcelable;>;)V"
        }
    .end annotation

    .line 795
    invoke-virtual {p0, p1}, Lo/ﹹ;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 796
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/util/SparseArray<Landroid/os/Parcelable;>;)V"
        }
    .end annotation

    .line 787
    invoke-virtual {p0, p1}, Lo/ﹹ;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 788
    return-void
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getItemIdAtPosition(I)J
    .locals 3

    .line 772
    invoke-virtual {p0}, Lo/ﹹ;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 773
    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 563
    iget-wide v0, p0, Lo/ﹹ;->Ƴ:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 554
    iget v0, p0, Lo/ﹹ;->ƫ:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method public handleDataChanged()V
    .locals 6

    .line 922
    iget v2, p0, Lo/ﹹ;->ʎ:I

    .line 923
    const/4 v3, 0x0

    .line 925
    if-lez v2, :cond_4

    .line 930
    iget-boolean v0, p0, Lo/ﹹ;->ﾗ:Z

    if-eqz v0, :cond_0

    .line 933
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﹹ;->ﾗ:Z

    .line 937
    invoke-virtual {p0}, Lo/ﹹ;->ᴱ()I

    move-result v4

    .line 938
    if-ltz v4, :cond_0

    .line 940
    const/4 v0, 0x1

    invoke-virtual {p0, v4, v0}, Lo/ﹹ;->ʽ(IZ)I

    move-result v5

    .line 941
    if-ne v5, v4, :cond_0

    .line 943
    invoke-virtual {p0, v4}, Lo/ﹹ;->ﾟ(I)V

    .line 944
    const/4 v3, 0x1

    .line 948
    :cond_0
    if-nez v3, :cond_4

    .line 950
    invoke-virtual {p0}, Lo/ﹹ;->getSelectedItemPosition()I

    move-result v4

    .line 953
    if-lt v4, v2, :cond_1

    .line 954
    add-int/lit8 v4, v2, -0x1

    .line 956
    :cond_1
    if-gez v4, :cond_2

    .line 957
    const/4 v4, 0x0

    .line 961
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v4, v0}, Lo/ﹹ;->ʽ(IZ)I

    move-result v5

    .line 962
    if-gez v5, :cond_3

    .line 964
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lo/ﹹ;->ʽ(IZ)I

    move-result v5

    .line 966
    :cond_3
    if-ltz v5, :cond_4

    .line 967
    invoke-virtual {p0, v5}, Lo/ﹹ;->ﾟ(I)V

    .line 968
    invoke-virtual {p0}, Lo/ﹹ;->ᴬ()V

    .line 969
    const/4 v3, 0x1

    .line 973
    :cond_4
    if-nez v3, :cond_5

    .line 975
    const/4 v0, -0x1

    iput v0, p0, Lo/ﹹ;->Ț:I

    .line 976
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/ﹹ;->ȯ:J

    .line 977
    const/4 v0, -0x1

    iput v0, p0, Lo/ﹹ;->ƫ:I

    .line 978
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/ﹹ;->Ƴ:J

    .line 979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﹹ;->ﾗ:Z

    .line 980
    invoke-virtual {p0}, Lo/ﹹ;->ᴬ()V

    .line 982
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 851
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 852
    iget-object v0, p0, Lo/ﹹ;->Ϝ:Lo/ﹹ$ˏ;

    invoke-virtual {p0, v0}, Lo/ﹹ;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 853
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 544
    invoke-virtual {p0}, Lo/ﹹ;->getHeight()I

    move-result v0

    iput v0, p0, Lo/ﹹ;->ĉ:I

    .line 545
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 6

    .line 305
    iget-object v0, p0, Lo/ﹹ;->Ŷ:Lo/ﹹ$ˊ;

    if-eqz v0, :cond_1

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ﹹ;->playSoundEffect(I)V

    .line 307
    if-eqz p1, :cond_0

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 310
    :cond_0
    iget-object v0, p0, Lo/ﹹ;->Ŷ:Lo/ﹹ$ˊ;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lo/ﹹ$ˊ;->ˊ(Lo/ﹹ;Landroid/view/View;IJ)V

    .line 311
    const/4 v0, 0x1

    return v0

    .line 314
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllViews()V
    .locals 2

    .line 539
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 517
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2

    .line 529
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3

    .line 661
    iput-object p1, p0, Lo/ﹹ;->ɢ:Landroid/view/View;

    .line 663
    invoke-virtual {p0}, Lo/ﹹ;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 664
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 665
    :goto_0
    invoke-direct {p0, v2}, Lo/ﹹ;->י(Z)V

    .line 666
    return-void
.end method

.method public setFocusable(Z)V
    .locals 3

    .line 691
    invoke-virtual {p0}, Lo/ﹹ;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 692
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 694
    :goto_0
    iput-boolean p1, p0, Lo/ﹹ;->ϋ:Z

    .line 695
    if-nez p1, :cond_2

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﹹ;->ϒ:Z

    .line 699
    :cond_2
    if-eqz p1, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lo/ﹹ;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 700
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3

    .line 704
    invoke-virtual {p0}, Lo/ﹹ;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 705
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 707
    :goto_0
    iput-boolean p1, p0, Lo/ﹹ;->ϒ:Z

    .line 708
    if-eqz p1, :cond_2

    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﹹ;->ϋ:Z

    .line 712
    :cond_2
    if-eqz p1, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lo/ﹹ;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 713
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 778
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lo/ﹹ$ˊ;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lo/ﹹ;->Ŷ:Lo/ﹹ$ˊ;

    .line 285
    return-void
.end method

.method public setOnItemLongClickListener(Lo/ﹹ$ˋ;)V
    .locals 1

    .line 347
    invoke-virtual {p0}, Lo/ﹹ;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ﹹ;->setLongClickable(Z)V

    .line 350
    :cond_0
    iput-object p1, p0, Lo/ﹹ;->ż:Lo/ﹹ$ˋ;

    .line 351
    return-void
.end method

.method public setOnItemSelectedListener(Lo/ﹹ$ˎ;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lo/ﹹ;->č:Lo/ﹹ$ˎ;

    .line 401
    return-void
.end method

.method public abstract setSelection(I)V
.end method

.method ʽ(IZ)I
    .locals 0

    .line 1088
    return p1
.end method

.method public ᓑ()V
    .locals 4

    .line 716
    invoke-virtual {p0}, Lo/ﹹ;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 717
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 718
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lo/ﹹ;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 722
    :goto_1
    if-eqz v3, :cond_4

    iget-boolean v0, p0, Lo/ﹹ;->ϒ:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 723
    if-eqz v3, :cond_5

    iget-boolean v0, p0, Lo/ﹹ;->ϋ:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 724
    iget-object v0, p0, Lo/ﹹ;->ɢ:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 725
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    invoke-direct {p0, v0}, Lo/ﹹ;->י(Z)V

    .line 727
    :cond_8
    return-void
.end method

.method ᔆ()V
    .locals 2

    .line 871
    iget-object v0, p0, Lo/ﹹ;->č:Lo/ﹹ$ˎ;

    if-eqz v0, :cond_3

    .line 872
    iget-boolean v0, p0, Lo/ﹹ;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/ﹹ;->к:Z

    if-eqz v0, :cond_2

    .line 877
    :cond_0
    iget-object v0, p0, Lo/ﹹ;->Ϝ:Lo/ﹹ$ˏ;

    if-nez v0, :cond_1

    .line 878
    new-instance v0, Lo/ﹹ$ˏ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ﹹ$ˏ;-><init>(Lo/ﹹ;Lo/ﹹ$1;)V

    iput-object v0, p0, Lo/ﹹ;->Ϝ:Lo/ﹹ$ˏ;

    .line 880
    :cond_1
    iget-object v0, p0, Lo/ﹹ;->Ϝ:Lo/ﹹ$ˏ;

    invoke-virtual {p0, v0}, Lo/ﹹ;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 882
    :cond_2
    invoke-direct {p0}, Lo/ﹹ;->ᴖ()V

    .line 887
    :cond_3
    :goto_0
    iget v0, p0, Lo/ﹹ;->Ț:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lo/ﹹ;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lo/ﹹ;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 888
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lo/ﹹ;->sendAccessibilityEvent(I)V

    .line 890
    :cond_4
    return-void
.end method

.method public ᴬ()V
    .locals 4

    .line 985
    iget v0, p0, Lo/ﹹ;->Ț:I

    iget v1, p0, Lo/ﹹ;->ʭ:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lo/ﹹ;->ȯ:J

    iget-wide v2, p0, Lo/ﹹ;->λ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 986
    :cond_0
    invoke-virtual {p0}, Lo/ﹹ;->ᔆ()V

    .line 987
    iget v0, p0, Lo/ﹹ;->Ț:I

    iput v0, p0, Lo/ﹹ;->ʭ:I

    .line 988
    iget-wide v0, p0, Lo/ﹹ;->ȯ:J

    iput-wide v0, p0, Lo/ﹹ;->λ:J

    .line 990
    :cond_1
    return-void
.end method

.method ᴱ()I
    .locals 18

    .line 1001
    move-object/from16 v0, p0

    iget v4, v0, Lo/ﹹ;->ʎ:I

    .line 1003
    if-nez v4, :cond_0

    .line 1004
    const/4 v0, -0x1

    return v0

    .line 1007
    :cond_0
    move-object/from16 v0, p0

    iget-wide v5, v0, Lo/ﹹ;->ｱ:J

    .line 1008
    move-object/from16 v0, p0

    iget v7, v0, Lo/ﹹ;->ｮ:I

    .line 1011
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v5, v0

    if-nez v0, :cond_1

    .line 1012
    const/4 v0, -0x1

    return v0

    .line 1016
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1017
    add-int/lit8 v0, v4, -0x1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1019
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long v8, v0, v2

    .line 1024
    move v12, v7

    .line 1027
    move v13, v7

    .line 1030
    const/4 v14, 0x0

    .line 1040
    invoke-virtual/range {p0 .. p0}, Lo/ﹹ;->getAdapter()Landroid/widget/Adapter;

    move-result-object v17

    .line 1041
    if-nez v17, :cond_2

    .line 1042
    const/4 v0, -0x1

    return v0

    .line 1045
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gtz v0, :cond_a

    .line 1046
    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v10

    .line 1047
    cmp-long v0, v10, v5

    if-nez v0, :cond_3

    .line 1049
    return v7

    .line 1052
    :cond_3
    add-int/lit8 v0, v4, -0x1

    if-ne v13, v0, :cond_4

    const/16 v16, 0x1

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    .line 1053
    :goto_1
    if-nez v12, :cond_5

    const/4 v15, 0x1

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    .line 1055
    :goto_2
    if-eqz v16, :cond_6

    if-eqz v15, :cond_6

    .line 1057
    goto :goto_3

    .line 1060
    :cond_6
    if-nez v15, :cond_7

    if-eqz v14, :cond_8

    if-nez v16, :cond_8

    .line 1062
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 1063
    move v7, v13

    .line 1065
    const/4 v14, 0x0

    goto :goto_0

    .line 1066
    :cond_8
    if-nez v16, :cond_9

    if-nez v14, :cond_2

    if-nez v15, :cond_2

    .line 1068
    :cond_9
    add-int/lit8 v12, v12, -0x1

    .line 1069
    move v7, v12

    .line 1071
    const/4 v14, 0x1

    goto :goto_0

    .line 1076
    :cond_a
    :goto_3
    const/4 v0, -0x1

    return v0
.end method

.method ᴲ()V
    .locals 4

    .line 1121
    invoke-virtual {p0}, Lo/ﹹ;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﹹ;->ﾗ:Z

    .line 1123
    iget v0, p0, Lo/ﹹ;->ĉ:I

    int-to-long v0, v0

    iput-wide v0, p0, Lo/ﹹ;->ﾏ:J

    .line 1124
    iget v0, p0, Lo/ﹹ;->Ț:I

    if-ltz v0, :cond_1

    .line 1126
    iget v0, p0, Lo/ﹹ;->Ț:I

    iget v1, p0, Lo/ﹹ;->ｚ:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lo/ﹹ;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1127
    iget-wide v0, p0, Lo/ﹹ;->Ƴ:J

    iput-wide v0, p0, Lo/ﹹ;->ｱ:J

    .line 1128
    iget v0, p0, Lo/ﹹ;->ƫ:I

    iput v0, p0, Lo/ﹹ;->ｮ:I

    .line 1129
    if-eqz v2, :cond_0

    .line 1130
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lo/ﹹ;->ｫ:I

    .line 1132
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lo/ﹹ;->ﾜ:I

    .line 1133
    goto :goto_1

    .line 1135
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ﹹ;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1136
    invoke-virtual {p0}, Lo/ﹹ;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    .line 1137
    iget v0, p0, Lo/ﹹ;->ｚ:I

    if-ltz v0, :cond_2

    iget v0, p0, Lo/ﹹ;->ｚ:I

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1138
    iget v0, p0, Lo/ﹹ;->ｚ:I

    invoke-interface {v3, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lo/ﹹ;->ｱ:J

    goto :goto_0

    .line 1140
    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ﹹ;->ｱ:J

    .line 1142
    :goto_0
    iget v0, p0, Lo/ﹹ;->ｚ:I

    iput v0, p0, Lo/ﹹ;->ｮ:I

    .line 1143
    if-eqz v2, :cond_3

    .line 1144
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lo/ﹹ;->ｫ:I

    .line 1146
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lo/ﹹ;->ﾜ:I

    .line 1149
    :cond_4
    :goto_1
    return-void
.end method

.method public ᵗ(I)V
    .locals 2

    .line 1096
    iput p1, p0, Lo/ﹹ;->Ț:I

    .line 1097
    invoke-virtual {p0, p1}, Lo/ﹹ;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lo/ﹹ;->ȯ:J

    .line 1098
    return-void
.end method

.method public ﾟ(I)V
    .locals 2

    .line 1106
    iput p1, p0, Lo/ﹹ;->ƫ:I

    .line 1107
    invoke-virtual {p0, p1}, Lo/ﹹ;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lo/ﹹ;->Ƴ:J

    .line 1109
    iget-boolean v0, p0, Lo/ﹹ;->ﾗ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lo/ﹹ;->ﾜ:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1110
    iput p1, p0, Lo/ﹹ;->ｮ:I

    .line 1111
    iget-wide v0, p0, Lo/ﹹ;->Ƴ:J

    iput-wide v0, p0, Lo/ﹹ;->ｱ:J

    .line 1113
    :cond_0
    return-void
.end method
