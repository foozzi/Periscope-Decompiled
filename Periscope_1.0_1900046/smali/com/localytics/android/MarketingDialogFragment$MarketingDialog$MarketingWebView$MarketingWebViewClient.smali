.class final Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MarketingWebViewClient"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field final synthetic this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;Landroid/app/Activity;)V
    .locals 0

    .line 1060
    iput-object p1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 1061
    iput-object p2, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->mActivity:Landroid/app/Activity;

    .line 1062
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10

    .line 1073
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$200(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/MarketingMessage;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1074
    const-string v0, "center"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$1200(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v5, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1075
    :goto_0
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$1200(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v1, v1, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$1200(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v6, v0, v5

    .line 1076
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$1200(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v1, v1, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$1200(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v7, v0, v5

    .line 1077
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWidth:F
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$1300(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)F

    move-result v0

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v1, v1, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$1200(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v1, v1, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$1200(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v8, v0, v1

    .line 1078
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mHeight:F
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$1400(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)F

    move-result v0

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v1, v1, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$1200(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v1, v1, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$1200(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v9, v0, v1

    .line 1080
    const-string v0, "javascript:(function() {  var viewportNode = document.createElement(\'meta\');  viewportNode.name    = \'viewport\';  viewportNode.content = \'width=%f, height=%f, user-scalable=no, minimum-scale=.25, maximum-scale=1\';  viewportNode.id      = \'metatag\';  document.getElementsByTagName(\'head\')[0].appendChild(viewportNode);})()"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$1100(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/JavaScriptClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/JavaScriptClient;->getJsGlueCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$700(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1093
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$1500(Lcom/localytics/android/MarketingDialogFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1095
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->enterWithAnimation()V

    .line 1097
    :cond_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1067
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->this$2:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p2, v1}, Lcom/localytics/android/MarketingDialogFragment;->handleUrl(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
