.class Lcom/localytics/android/MarketingHandler$13$1;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/MarketingHandler$13;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler$13;)V
    .locals 0

    .line 1437
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$13$1;->this$1:Lcom/localytics/android/MarketingHandler$13;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1437
    move-object v0, p1

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler$13$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    .line 1441
    invoke-static {}, Lcom/localytics/android/Localytics;->getPushRegistrationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1437
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler$13$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .line 1447
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1449
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1451
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    move-object v3, v0

    .line 1452
    invoke-virtual {v3, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1453
    goto :goto_0

    .line 1456
    :cond_0
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    move-object v3, v0

    .line 1457
    invoke-virtual {v3, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1459
    :goto_0
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been copied to the clipboard."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1463
    :cond_1
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "No push token found. Please check your integration."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1465
    :goto_1
    return-void
.end method
