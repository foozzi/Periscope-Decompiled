.class final Lcom/localytics/android/TestModeListView$MenuItemAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/TestModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MenuItemAdapter"
.end annotation


# instance fields
.field private final MENU_ITEMS:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/localytics/android/TestModeListView;


# direct methods
.method public constructor <init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;)V
    .locals 3

    .line 592
    iput-object p1, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 587
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Disable Test Mode"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Refresh"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Copy Push Token"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Copy Install ID"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    .line 593
    iput-object p2, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->mContext:Landroid/content/Context;

    .line 594
    return-void
.end method

.method private getShape(I)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 616
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v0}, Lcom/localytics/android/TestModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v4, v0, v1

    .line 618
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 619
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 620
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 623
    :pswitch_0
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v4, v0, v1

    const/4 v1, 0x1

    aput v4, v0, v1

    const/4 v1, 0x2

    aput v4, v0, v1

    const/4 v1, 0x3

    aput v4, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x7

    aput v1, v0, v2

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 624
    goto :goto_0

    .line 627
    :pswitch_1
    goto :goto_0

    .line 629
    :pswitch_2
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 633
    :goto_0
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .line 585
    invoke-virtual {p0, p1}, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 611
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 639
    move-object v4, p2

    .line 641
    if-nez v4, :cond_1

    .line 643
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 644
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 646
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->mContext:Landroid/content/Context;

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

    .line 647
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v6, v1, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 650
    new-instance v7, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 651
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setId(I)V

    .line 652
    const/high16 v0, 0x41d00000    # 26.0f

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 653
    const/16 v0, 0xff

    const/4 v1, 0x0

    const/16 v2, 0x5b

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 654
    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 655
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 658
    move-object v4, v5

    .line 660
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 662
    invoke-direct {p0, p1}, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->getShape(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 666
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 671
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 672
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 677
    :pswitch_0
    const/high16 v0, -0x10000

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 678
    .line 685
    :goto_1
    :pswitch_1
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
