.class Lcom/localytics/android/MarketingDialogFragment$1;
.super Lcom/localytics/android/MarketingCallable;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingDialogFragment;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingDialogFragment;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/localytics/android/MarketingDialogFragment$1;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 358
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 359
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$1;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$000(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    move-result-object v0

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mWebView:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$100(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;

    move-result-object v3

    .line 360
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$1;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$1;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingDialogFragment;->getActivity()Lo/ι;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/localytics/android/MarketingDialogFragment;->handleUrl(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/localytics/android/MarketingDialogFragment$1$1;

    invoke-direct {v1, p0, v3, v2}, Lcom/localytics/android/MarketingDialogFragment$1$1;-><init>(Lcom/localytics/android/MarketingDialogFragment$1;Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$MarketingWebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
