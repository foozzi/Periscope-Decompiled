.class Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$3;
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

    .line 793
    iput-object p1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$3;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 810
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$3;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    goto :goto_0

    .line 812
    :catch_0
    move-exception v2

    .line 814
    const-class v0, Ljava/lang/RuntimeException;

    const-string v1, "Localytics library threw an uncaught exception"

    invoke-static {v0, v1, v2}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    .line 816
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 820
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .line 796
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$3;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$500(Lcom/localytics/android/MarketingDialogFragment;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$3;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$500(Lcom/localytics/android/MarketingDialogFragment;)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    move-object v2, v0

    .line 799
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 801
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    :cond_0
    return-void
.end method
