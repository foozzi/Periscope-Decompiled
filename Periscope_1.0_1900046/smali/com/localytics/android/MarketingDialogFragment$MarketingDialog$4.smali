.class Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

    .line 828
    iput-object p1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$4;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 838
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$4;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$500(Lcom/localytics/android/MarketingDialogFragment;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$4;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$500(Lcom/localytics/android/MarketingDialogFragment;)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    move-object v3, v0

    .line 841
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    .line 843
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$4;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    iget-object v1, v1, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mMarketingMessage:Lcom/localytics/android/MarketingMessage;
    invoke-static {v1}, Lcom/localytics/android/MarketingDialogFragment;->access$200(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/MarketingMessage;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {v3, v0}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 852
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 833
    return-void
.end method
