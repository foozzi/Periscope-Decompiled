.class Lcom/localytics/android/MarketingDialogFragment$2;
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

    .line 376
    iput-object p1, p0, Lcom/localytics/android/MarketingDialogFragment$2;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$2;->this$0:Lcom/localytics/android/MarketingDialogFragment;

    # getter for: Lcom/localytics/android/MarketingDialogFragment;->mMarketingDialog:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;
    invoke-static {v0}, Lcom/localytics/android/MarketingDialogFragment;->access$000(Lcom/localytics/android/MarketingDialogFragment;)Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;->dismissWithAnimation()V

    .line 382
    const/4 v0, 0x0

    return-object v0
.end method
