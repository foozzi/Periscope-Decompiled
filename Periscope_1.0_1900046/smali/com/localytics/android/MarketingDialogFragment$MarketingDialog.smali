.class final Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;
.super Landroid/app/Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MarketingDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MarketingDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;,
        Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;
    }
.end annotation


# static fields
.field private static final LOCATION_BOTTOM:Ljava/lang/String; = "bottom"

.field private static final LOCATION_CENTER:Ljava/lang/String; = "center"

.field private static final LOCATION_FULL:Ljava/lang/String; = "full"

.field private static final LOCATION_TOP:Ljava/lang/String; = "top"

.field private static final MARGIN:I = 0xa

.field private static final MAX_BANNER_WIDTH_DIP:I = 0x168


# instance fields
.field private mAnimBottomIn:Landroid/view/animation/TranslateAnimation;

.field private mAnimBottomOut:Landroid/view/animation/TranslateAnimation;

.field private mAnimCenterIn:Landroid/view/animation/TranslateAnimation;

.field private mAnimCenterOut:Landroid/view/animation/TranslateAnimation;

.field private mAnimFullIn:Landroid/view/animation/TranslateAnimation;

.field private mAnimFullOut:Landroid/view/animation/TranslateAnimation;

.field private mAnimTopIn:Landroid/view/animation/TranslateAnimation;

.field private mAnimTopOut:Landroid/view/animation/TranslateAnimation;

.field private mBtnClose:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;

.field private mDialogLayout:Landroid/widget/RelativeLayout;

.field private mHeight:F

.field private mLocation:Ljava/lang/String;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mWebView:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

.field private mWidth:F

.field final synthetic this$0:Lcom/localytics/android/MarketingDialogFragment;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingDialogFragment;Landroid/content/Context;I)V
    .locals 3

    .line 684
    iput-object p1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    .line 685
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 688
    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;
    invoke-static {p1}, Lcom/localytics/android/MarketingDialogFragment;->access$200(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/MarketingMessage;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    .line 690
    invoke-virtual {p1}, Lcom/localytics/android/MarketingDialogFragment;->dismiss()V

    .line 691
    return-void

    .line 693
    :cond_0
    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;
    invoke-static {p1}, Lcom/localytics/android/MarketingDialogFragment;->access$200(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/MarketingMessage;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mLocation:Ljava/lang/String;

    .line 695
    invoke-direct {p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->setupViews()V

    .line 696
    invoke-direct {p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->createAnimations()V

    .line 697
    invoke-direct {p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->adjustLayout()V

    .line 704
    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;
    invoke-static {p1}, Lcom/localytics/android/MarketingDialogFragment;->access$200(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/MarketingMessage;

    move-result-object v0

    const-string v1, "html_url"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 705
    const/4 v0, 0x0

    if-eq v0, v2, :cond_1

    .line 707
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWebView:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    invoke-virtual {v0, v2}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$1;-><init>(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;Lcom/localytics/android/MarketingDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 720
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWebView:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimBottomOut:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)F
    .locals 1

    .line 593
    iget v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWidth:F

    return v0
.end method

.method static synthetic access$1400(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)F
    .locals 1

    .line 593
    iget v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mHeight:F

    return v0
.end method

.method static synthetic access$600(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimCenterOut:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/widget/RelativeLayout;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimFullOut:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$900(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimTopOut:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method private adjustLayout()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 864
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;

    .line 865
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment;->getActivity()Lo/ι;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lo/ι;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    move-object v4, v0

    .line 866
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 869
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$200(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/MarketingMessage;

    move-result-object v0

    const-string v1, "display_width"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWidth:F

    .line 870
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$200(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/MarketingMessage;

    move-result-object v0

    const-string v1, "display_height"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mHeight:F

    .line 873
    iget v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mHeight:F

    iget v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWidth:F

    div-float v5, v0, v1

    .line 874
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 879
    invoke-virtual {p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 880
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 882
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 883
    const/16 v0, 0x20

    const/16 v1, 0x20

    invoke-virtual {v7, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 886
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mLocation:Ljava/lang/String;

    const-string v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 891
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 892
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWebView:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v10, v0

    .line 893
    shl-int/lit8 v0, v9, 0x1

    int-to-float v0, v0

    sub-float v0, v6, v0

    iget v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWidth:F

    iget-object v2, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    shl-int/lit8 v1, v9, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 894
    shl-int/lit8 v0, v9, 0x1

    int-to-float v0, v0

    sub-float v0, v6, v0

    iget v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWidth:F

    iget-object v2, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    shl-int/lit8 v1, v9, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 895
    invoke-virtual {v10, v9, v9, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 896
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWebView:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    invoke-virtual {v0, v10}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWebView:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->requestLayout()V

    .line 899
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mBtnClose:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v11, v0

    .line 900
    neg-int v0, v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11, v1, v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 901
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mBtnClose:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;

    invoke-virtual {v0, v11}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mBtnClose:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->requestLayout()V

    .line 903
    goto :goto_0

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mLocation:Ljava/lang/String;

    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v0, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mLocation:Ljava/lang/String;

    const-string v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 913
    const v0, -0xfffffff

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 914
    const/4 v0, 0x0

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 916
    float-to-int v0, v6

    mul-float v1, v6, v5

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 919
    :cond_2
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mLocation:Ljava/lang/String;

    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 921
    const v0, 0xfffffff

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 922
    const/4 v0, 0x0

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 924
    float-to-int v0, v6

    mul-float v1, v6, v5

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 928
    :cond_3
    :goto_0
    const/16 v0, 0x400

    const/16 v1, 0x400

    invoke-virtual {v7, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 929
    return-void
.end method

.method private createAnimations()V
    .locals 11

    .line 772
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimCenterIn:Landroid/view/animation/TranslateAnimation;

    .line 773
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimCenterIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 774
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimCenterOut:Landroid/view/animation/TranslateAnimation;

    .line 775
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimCenterOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 777
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimTopIn:Landroid/view/animation/TranslateAnimation;

    .line 778
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimTopIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 779
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimTopOut:Landroid/view/animation/TranslateAnimation;

    .line 780
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimTopOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 782
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimBottomIn:Landroid/view/animation/TranslateAnimation;

    .line 783
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimBottomIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 784
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimBottomOut:Landroid/view/animation/TranslateAnimation;

    .line 785
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimBottomOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 787
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimFullIn:Landroid/view/animation/TranslateAnimation;

    .line 788
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimFullIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 789
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimFullOut:Landroid/view/animation/TranslateAnimation;

    .line 790
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimFullOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 792
    new-instance v9, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$3;

    invoke-direct {v9, p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$3;-><init>(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)V

    .line 822
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimCenterOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 823
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimTopOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 824
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimBottomOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 825
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimFullOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 827
    new-instance v10, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$4;

    invoke-direct {v10, p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$4;-><init>(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)V

    .line 854
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimCenterIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 855
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimTopIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 856
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimBottomIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 857
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimFullIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 858
    return-void
.end method

.method private setupViews()V
    .locals 6

    .line 725
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 726
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    const-string v1, "amp_view"

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    .line 732
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 733
    const/16 v0, 0xd

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 734
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 738
    new-instance v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    invoke-virtual {p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;-><init>(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWebView:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    .line 739
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWebView:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->setId(I)V

    .line 740
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWebView:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 743
    new-instance v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;

    invoke-virtual {p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;-><init>(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mBtnClose:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;

    .line 744
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mBtnClose:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;

    new-instance v1, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$2;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$2;-><init>(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    # getter for: Lcom/localytics/android/MarketingDialogFragment;->dismissButtonLocation:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    invoke-static {}, Lcom/localytics/android/MarketingDialogFragment;->access$400()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    move-result-object v0

    sget-object v1, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;->RIGHT:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    if-ne v0, v1, :cond_0

    .line 756
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mBtnClose:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v5, v0

    .line 757
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWebView:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->getId()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 758
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mBtnClose:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;

    invoke-virtual {v0, v5}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mBtnClose:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 762
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->requestWindowFeature(I)Z

    .line 764
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->setContentView(Landroid/view/View;)V

    .line 765
    return-void
.end method


# virtual methods
.method dismissWithAnimation()V
    .locals 2

    .line 937
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$5;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$5;-><init>(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 966
    return-void
.end method

.method enterWithAnimation()V
    .locals 3

    .line 973
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$200(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/MarketingMessage;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 976
    const-string v0, "center"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimCenterIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 981
    :cond_0
    const-string v0, "full"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 983
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimFullIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 986
    :cond_1
    const-string v0, "top"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 988
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimTopIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 991
    :cond_2
    const-string v0, "bottom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 993
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimBottomIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 995
    :cond_3
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1010
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mExitAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$300(Lcom/localytics/android/MarketingDialogFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->dismissWithAnimation()V

    .line 1016
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1018
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mBtnClose:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mBtnClose:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->release()V

    .line 1004
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1005
    return-void
.end method
