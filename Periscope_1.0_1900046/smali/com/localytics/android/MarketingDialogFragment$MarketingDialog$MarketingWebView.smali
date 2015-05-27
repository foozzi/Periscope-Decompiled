.class final Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;
.super Landroid/webkit/WebView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MarketingWebView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1029
    iput-object p1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    .line 1030
    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1033
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1035
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1038
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1039
    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1040
    invoke-virtual {p0, v2}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->setBackgroundColor(I)V

    .line 1043
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->setInitialScale(I)V

    .line 1044
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1045
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->setVerticalScrollBarEnabled(Z)V

    .line 1047
    new-instance v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;

    iget-object v1, p1, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingDialogFragment;->getActivity()Lo/ι;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView$MarketingWebViewClient;-><init>(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1049
    invoke-virtual {p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 1050
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1051
    iget-object v0, p1, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$1100(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/JavaScriptClient;

    move-result-object v0

    const-string v1, "localytics"

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1053
    return-void
.end method
