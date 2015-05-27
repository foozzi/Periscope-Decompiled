.class Lcom/localytics/android/TestModeListView$MenuDialog;
.super Landroid/app/Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/TestModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuDialog"
.end annotation


# instance fields
.field private mDialogLayout:Landroid/widget/LinearLayout;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field final synthetic this$0:Lcom/localytics/android/TestModeListView;


# direct methods
.method public constructor <init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;I)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    .line 447
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 449
    invoke-direct {p0}, Lcom/localytics/android/TestModeListView$MenuDialog;->setupViews()V

    .line 451
    invoke-direct {p0}, Lcom/localytics/android/TestModeListView$MenuDialog;->adjustLayout()V

    .line 452
    return-void
.end method

.method private adjustLayout()V
    .locals 5

    .line 568
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mMetrics:Landroid/util/DisplayMetrics;

    .line 569
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v0}, Lcom/localytics/android/TestModeListView;->getActivity()Lo/ι;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lo/ι;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    move-object v2, v0

    .line 570
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 575
    invoke-virtual {p0}, Lcom/localytics/android/TestModeListView$MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 576
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 577
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 578
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 581
    const/16 v0, 0x400

    const/16 v1, 0x400

    invoke-virtual {v3, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 582
    return-void
.end method

.method private setupViews()V
    .locals 10

    .line 457
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/localytics/android/TestModeListView$MenuDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 458
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 460
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 462
    invoke-virtual {p0}, Lcom/localytics/android/TestModeListView$MenuDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 465
    new-instance v5, Lcom/localytics/android/TestModeListView$MenuItemAdapter;

    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    iget-object v1, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v1}, Lcom/localytics/android/TestModeListView;->getActivity()Lo/ι;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/localytics/android/TestModeListView$MenuItemAdapter;-><init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;)V

    .line 466
    new-instance v6, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v0}, Lcom/localytics/android/TestModeListView;->getActivity()Lo/ι;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 467
    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 468
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 470
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 476
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 477
    new-instance v0, Lcom/localytics/android/TestModeListView$MenuDialog$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/TestModeListView$MenuDialog$1;-><init>(Lcom/localytics/android/TestModeListView$MenuDialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 525
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 528
    new-instance v7, Landroid/view/View;

    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v0}, Lcom/localytics/android/TestModeListView;->getActivity()Lo/ι;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 529
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 531
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 535
    :cond_1
    invoke-virtual {v7, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 537
    :goto_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v1}, Lcom/localytics/android/TestModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 540
    new-instance v8, Lcom/localytics/android/TestModeListView$CancelItemAdapter;

    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    iget-object v1, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v1}, Lcom/localytics/android/TestModeListView;->getActivity()Lo/ι;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Lcom/localytics/android/TestModeListView$CancelItemAdapter;-><init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;)V

    .line 541
    new-instance v9, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v0}, Lcom/localytics/android/TestModeListView;->getActivity()Lo/ι;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 542
    invoke-virtual {v9, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 543
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 545
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 549
    :cond_2
    invoke-virtual {v7, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 551
    :goto_2
    new-instance v0, Lcom/localytics/android/TestModeListView$MenuDialog$2;

    invoke-direct {v0, p0}, Lcom/localytics/android/TestModeListView$MenuDialog$2;-><init>(Lcom/localytics/android/TestModeListView$MenuDialog;)V

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 559
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 561
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/TestModeListView$MenuDialog;->requestWindowFeature(I)Z

    .line 562
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/localytics/android/TestModeListView$MenuDialog;->setContentView(Landroid/view/View;)V

    .line 563
    return-void
.end method
