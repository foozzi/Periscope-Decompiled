.class final Lcom/localytics/android/TestModeListView$CancelItemAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/TestModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CancelItemAdapter"
.end annotation


# instance fields
.field private final MENU_ITEMS:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/localytics/android/TestModeListView;


# direct methods
.method constructor <init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;)V
    .locals 3

    .line 696
    iput-object p1, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 691
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Cancel"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    .line 697
    iput-object p2, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->mContext:Landroid/content/Context;

    .line 698
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .line 689
    invoke-virtual {p0, p1}, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 715
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 721
    move-object v4, p2

    .line 723
    if-nez v4, :cond_1

    .line 725
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 726
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 728
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v6, v0

    .line 729
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v6, v1, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 732
    new-instance v7, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 733
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setId(I)V

    .line 734
    const/high16 v0, 0x41d00000    # 26.0f

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 735
    const/16 v0, 0xff

    const/4 v1, 0x0

    const/16 v2, 0x5b

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 736
    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 737
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 740
    move-object v4, v5

    .line 742
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v0}, Lcom/localytics/android/TestModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v8, v0, v1

    .line 743
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v9, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 744
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 745
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v8, v0, v1

    const/4 v1, 0x1

    aput v8, v0, v1

    const/4 v1, 0x2

    aput v8, v0, v1

    const/4 v1, 0x3

    aput v8, v0, v1

    const/4 v1, 0x4

    aput v8, v0, v1

    const/4 v1, 0x5

    aput v8, v0, v1

    const/4 v1, 0x6

    aput v8, v0, v1

    const/4 v1, 0x7

    aput v8, v0, v1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 746
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 748
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 752
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 757
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 758
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 761
    return-object v4

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method
