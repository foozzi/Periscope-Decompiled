.class Lcom/localytics/android/MarketingHandler$8$1;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/MarketingHandler$8;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler$8;)V
    .locals 0

    .line 1244
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$8$1;->this$1:Lcom/localytics/android/MarketingHandler$8;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 1249
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$8$1;->this$1:Lcom/localytics/android/MarketingHandler$8;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler$8;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$8$1;->this$1:Lcom/localytics/android/MarketingHandler$8;

    iget-object v1, v1, Lcom/localytics/android/MarketingHandler$8;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    const-string v2, "campaign_id"

    invoke-virtual {v1, v2}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/localytics/android/MarketingHandler;->setMarketingMessageAsDisplayed(I)Z
    invoke-static {v0, v1}, Lcom/localytics/android/MarketingHandler;->access$800(Lcom/localytics/android/MarketingHandler;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1244
    move-object v0, p1

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler$8$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    .line 1255
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1257
    invoke-static {}, Lcom/localytics/android/MarketingDialogFragment;->newInstance()Lcom/localytics/android/MarketingDialogFragment;

    move-result-object v3

    .line 1258
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$8$1;->this$1:Lcom/localytics/android/MarketingHandler$8;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler$8;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    invoke-virtual {v3, v0}, Lcom/localytics/android/MarketingDialogFragment;->setData(Lcom/localytics/android/MarketingMessage;)Lcom/localytics/android/MarketingDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$8$1;->this$1:Lcom/localytics/android/MarketingHandler$8;

    iget-object v1, v1, Lcom/localytics/android/MarketingHandler$8;->this$0:Lcom/localytics/android/MarketingHandler;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingHandler;->getDialogCallbacks()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingDialogFragment;->setCallbacks(Ljava/util/Map;)Lcom/localytics/android/MarketingDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/JavaScriptClient;

    iget-object v2, p0, Lcom/localytics/android/MarketingHandler$8$1;->this$1:Lcom/localytics/android/MarketingHandler$8;

    iget-object v2, v2, Lcom/localytics/android/MarketingHandler$8;->val$jsCallbacks:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/localytics/android/JavaScriptClient;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingDialogFragment;->setJavaScriptClient(Lcom/localytics/android/JavaScriptClient;)Lcom/localytics/android/MarketingDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$8$1;->this$1:Lcom/localytics/android/MarketingHandler$8;

    iget-object v1, v1, Lcom/localytics/android/MarketingHandler$8;->this$0:Lcom/localytics/android/MarketingHandler;

    # getter for: Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;
    invoke-static {v1}, Lcom/localytics/android/MarketingHandler;->access$600(Lcom/localytics/android/MarketingHandler;)Lo/ˈ;

    move-result-object v1

    const-string v2, "marketing_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/MarketingDialogFragment;->show(Lo/ˈ;Ljava/lang/String;)V

    .line 1260
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$8$1;->this$1:Lcom/localytics/android/MarketingHandler$8;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler$8;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    check-cast v0, Lcom/localytics/android/MessagingListener;

    invoke-interface {v0}, Lcom/localytics/android/MessagingListener;->localyticsWillDisplayInAppMessage()V

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$8$1;->this$1:Lcom/localytics/android/MarketingHandler$8;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler$8;->this$0:Lcom/localytics/android/MarketingHandler;

    # getter for: Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;
    invoke-static {v0}, Lcom/localytics/android/MarketingHandler;->access$600(Lcom/localytics/android/MarketingHandler;)Lo/ˈ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ˈ;->executePendingTransactions()Z

    .line 1271
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$8$1;->this$1:Lcom/localytics/android/MarketingHandler$8;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler$8;->this$0:Lcom/localytics/android/MarketingHandler;

    const/4 v1, 0x0

    # setter for: Lcom/localytics/android/MarketingHandler;->isMidDisplayingInApp:Z
    invoke-static {v0, v1}, Lcom/localytics/android/MarketingHandler;->access$702(Lcom/localytics/android/MarketingHandler;Z)Z

    .line 1272
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1244
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler$8$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
