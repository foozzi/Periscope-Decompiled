.class Lcom/localytics/android/MarketingHandler$8;
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
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;

.field final synthetic val$jsCallbacks:Ljava/util/Map;

.field final synthetic val$marketingMessage:Lcom/localytics/android/MarketingMessage;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)V
    .locals 0

    .line 1224
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$8;->this$0:Lcom/localytics/android/MarketingHandler;

    iput-object p2, p0, Lcom/localytics/android/MarketingHandler$8;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    iput-object p3, p0, Lcom/localytics/android/MarketingHandler$8;->val$jsCallbacks:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1228
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$8;->this$0:Lcom/localytics/android/MarketingHandler;

    # getter for: Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;
    invoke-static {v0}, Lcom/localytics/android/MarketingHandler;->access$600(Lcom/localytics/android/MarketingHandler;)Lo/ˈ;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    .line 1230
    return-void

    .line 1235
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$8;->this$0:Lcom/localytics/android/MarketingHandler;

    # getter for: Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;
    invoke-static {v0}, Lcom/localytics/android/MarketingHandler;->access$600(Lcom/localytics/android/MarketingHandler;)Lo/ˈ;

    move-result-object v0

    const-string v1, "marketing_dialog"

    invoke-virtual {v0, v1}, Lo/ˈ;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1237
    return-void

    .line 1240
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$8;->this$0:Lcom/localytics/android/MarketingHandler;

    # getter for: Lcom/localytics/android/MarketingHandler;->isMidDisplayingInApp:Z
    invoke-static {v0}, Lcom/localytics/android/MarketingHandler;->access$700(Lcom/localytics/android/MarketingHandler;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1242
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$8;->this$0:Lcom/localytics/android/MarketingHandler;

    const/4 v1, 0x1

    # setter for: Lcom/localytics/android/MarketingHandler;->isMidDisplayingInApp:Z
    invoke-static {v0, v1}, Lcom/localytics/android/MarketingHandler;->access$702(Lcom/localytics/android/MarketingHandler;Z)Z

    .line 1243
    new-instance v0, Lcom/localytics/android/MarketingHandler$8$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/MarketingHandler$8$1;-><init>(Lcom/localytics/android/MarketingHandler$8;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler$8$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1279
    :cond_2
    goto :goto_0

    .line 1276
    :catch_0
    move-exception v2

    .line 1278
    const-class v0, Ljava/lang/RuntimeException;

    const-string v1, "Localytics library threw an uncaught exception"

    invoke-static {v0, v1, v2}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    .line 1280
    :goto_0
    return-void
.end method
