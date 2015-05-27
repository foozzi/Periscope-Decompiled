.class Lcom/localytics/android/MarketingHandler$15$1;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<Lcom/localytics/android/MarketingMessage;Ljava/lang/Void;[Ljava/lang/Object;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/MarketingHandler$15;

.field final synthetic val$marketingMessage:Lcom/localytics/android/MarketingMessage;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler$15;Lcom/localytics/android/MarketingMessage;)V
    .locals 0

    .line 1512
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$15$1;->this$1:Lcom/localytics/android/MarketingHandler$15;

    iput-object p2, p0, Lcom/localytics/android/MarketingHandler$15$1;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1512
    move-object v0, p1

    check-cast v0, [Lcom/localytics/android/MarketingMessage;

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler$15$1;->doInBackground([Lcom/localytics/android/MarketingMessage;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/localytics/android/MarketingMessage;)[Ljava/lang/Object;
    .locals 3

    .line 1527
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$15$1;->this$1:Lcom/localytics/android/MarketingHandler$15;

    iget-object v1, v1, Lcom/localytics/android/MarketingHandler$15;->this$0:Lcom/localytics/android/MarketingHandler;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    # invokes: Lcom/localytics/android/MarketingHandler;->_updateDisplayingCandidate(Lcom/localytics/android/MarketingMessage;)Z
    invoke-static {v1, v2}, Lcom/localytics/android/MarketingHandler;->access$1200(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$15$1;->this$1:Lcom/localytics/android/MarketingHandler$15;

    iget-object v1, v1, Lcom/localytics/android/MarketingHandler$15;->this$0:Lcom/localytics/android/MarketingHandler;

    const/4 v2, 0x0

    # invokes: Lcom/localytics/android/MarketingHandler;->_getJavaScriptClientCallbacks(Ljava/util/Map;)Ljava/util/Map;
    invoke-static {v1, v2}, Lcom/localytics/android/MarketingHandler;->access$1300(Lcom/localytics/android/MarketingHandler;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1512
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler$15$1;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 7

    .line 1533
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    move-object v4, v0

    .line 1534
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Map;

    move-object v5, v0

    .line 1537
    if-nez v4, :cond_0

    .line 1539
    :try_start_0
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "The downloaded campaign file is broken."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1540
    return-void

    .line 1543
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$15$1;->this$1:Lcom/localytics/android/MarketingHandler$15;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler$15;->this$0:Lcom/localytics/android/MarketingHandler;

    # getter for: Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;
    invoke-static {v0}, Lcom/localytics/android/MarketingHandler;->access$600(Lcom/localytics/android/MarketingHandler;)Lo/ˈ;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$15$1;->this$1:Lcom/localytics/android/MarketingHandler$15;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler$15;->this$0:Lcom/localytics/android/MarketingHandler;

    # getter for: Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;
    invoke-static {v0}, Lcom/localytics/android/MarketingHandler;->access$600(Lcom/localytics/android/MarketingHandler;)Lo/ˈ;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "marketing_dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "campaign_id"

    invoke-virtual {v4, v2}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ˈ;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1545
    :cond_1
    return-void

    .line 1548
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/localytics/android/MarketingDialogFragment;->newInstance()Lcom/localytics/android/MarketingDialogFragment;

    move-result-object v6

    .line 1549
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/localytics/android/MarketingDialogFragment;->setRetainInstance(Z)V

    .line 1550
    invoke-virtual {v6, v4}, Lcom/localytics/android/MarketingDialogFragment;->setData(Lcom/localytics/android/MarketingMessage;)Lcom/localytics/android/MarketingDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$15$1;->this$1:Lcom/localytics/android/MarketingHandler$15;

    iget-object v1, v1, Lcom/localytics/android/MarketingHandler$15;->this$0:Lcom/localytics/android/MarketingHandler;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingHandler;->getDialogCallbacks()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingDialogFragment;->setCallbacks(Ljava/util/Map;)Lcom/localytics/android/MarketingDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/JavaScriptClient;

    invoke-direct {v1, v5}, Lcom/localytics/android/JavaScriptClient;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingDialogFragment;->setJavaScriptClient(Lcom/localytics/android/JavaScriptClient;)Lcom/localytics/android/MarketingDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$15$1;->this$1:Lcom/localytics/android/MarketingHandler$15;

    iget-object v1, v1, Lcom/localytics/android/MarketingHandler$15;->this$0:Lcom/localytics/android/MarketingHandler;

    # getter for: Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;
    invoke-static {v1}, Lcom/localytics/android/MarketingHandler;->access$600(Lcom/localytics/android/MarketingHandler;)Lo/ˈ;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "marketing_dialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "campaign_id"

    invoke-virtual {v4, v3}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/MarketingDialogFragment;->show(Lo/ˈ;Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$15$1;->this$1:Lcom/localytics/android/MarketingHandler$15;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler$15;->this$0:Lcom/localytics/android/MarketingHandler;

    # getter for: Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;
    invoke-static {v0}, Lcom/localytics/android/MarketingHandler;->access$600(Lcom/localytics/android/MarketingHandler;)Lo/ˈ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ˈ;->executePendingTransactions()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1561
    goto :goto_0

    .line 1558
    :catch_0
    move-exception v6

    .line 1560
    const-class v0, Ljava/lang/RuntimeException;

    const-string v1, "Localytics library threw an uncaught exception"

    invoke-static {v0, v1, v6}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    .line 1562
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .line 1516
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$15$1;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1517
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$15$1;->this$1:Lcom/localytics/android/MarketingHandler$15;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler$15;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$15$1;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    # invokes: Lcom/localytics/android/MarketingHandler;->_getRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/localytics/android/MarketingHandler;->access$1000(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 1518
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$15$1;->this$1:Lcom/localytics/android/MarketingHandler$15;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler$15;->this$0:Lcom/localytics/android/MarketingHandler;

    # invokes: Lcom/localytics/android/MarketingHandler;->_doesCreativeExist(IZ)Z
    invoke-static {v0, v3, v4}, Lcom/localytics/android/MarketingHandler;->access$1100(Lcom/localytics/android/MarketingHandler;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1520
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "Downloading the campaign...\nIt\'ll be shown in few seconds."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1522
    :cond_0
    return-void
.end method
