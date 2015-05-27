.class Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$5;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 942
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$5;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$200(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/MarketingMessage;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 945
    const-string v0, "center"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$5;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$700(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$5;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimCenterOut:Landroid/view/animation/TranslateAnimation;
    invoke-static {v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$600(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 950
    :cond_0
    const-string v0, "full"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$5;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$700(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$5;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimFullOut:Landroid/view/animation/TranslateAnimation;
    invoke-static {v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$800(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 955
    :cond_1
    const-string v0, "top"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 957
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$5;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$700(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$5;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimTopOut:Landroid/view/animation/TranslateAnimation;
    invoke-static {v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$900(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 960
    :cond_2
    const-string v0, "bottom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 962
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$5;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mRootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$700(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$5;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    # getter for: Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->mAnimBottomOut:Landroid/view/animation/TranslateAnimation;
    invoke-static {v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->access$1000(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 964
    :cond_3
    :goto_0
    return-void
.end method
