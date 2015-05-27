.class Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 745
    iput-object p1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$2;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$2;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    iget-object v0, v0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mExitAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$300(Lcom/localytics/android/MarketingDialogFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$2;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->dismissWithAnimation()V

    .line 752
    :cond_0
    return-void
.end method
