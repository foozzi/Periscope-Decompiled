.class Lcom/localytics/android/MarketingHandler$7$1;
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
.field final synthetic this$1:Lcom/localytics/android/MarketingHandler$7;

.field final synthetic val$pushRegID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler$7;Ljava/lang/String;)V
    .locals 0

    .line 1006
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$7$1;->this$1:Lcom/localytics/android/MarketingHandler$7;

    iput-object p2, p0, Lcom/localytics/android/MarketingHandler$7$1;->val$pushRegID:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1006
    move-object v0, p1

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler$7$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 13

    .line 1023
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$7$1;->val$pushRegID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1025
    invoke-static {}, Lcom/localytics/android/Localytics;->getInstallId()Ljava/lang/String;

    move-result-object v6

    .line 1026
    const-string v0, "http://pushapi.localytics.com/push_test?platform=android&type=prod&campaign=%s&creative=%s&token=%s&install_id=%s&client_ts=%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/localytics/android/MarketingHandler$7$1;->this$1:Lcom/localytics/android/MarketingHandler$7;

    iget-object v2, v2, Lcom/localytics/android/MarketingHandler$7;->val$campaign:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/localytics/android/MarketingHandler$7$1;->this$1:Lcom/localytics/android/MarketingHandler$7;

    iget-object v2, v2, Lcom/localytics/android/MarketingHandler$7;->val$creative:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/localytics/android/MarketingHandler$7$1;->val$pushRegID:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v6, v1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1027
    const/4 v8, 0x0

    .line 1030
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 1031
    const/16 v0, 0x1388

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1032
    const/16 v0, 0x1388

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1033
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1034
    const-string v0, "x-install-id"

    invoke-virtual {v8, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v0, "x-app-id"

    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string v0, "x-client-version"

    const-string v1, "androida_3.1.1"

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v0, "x-app-version"

    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const-string v0, "x-customer-id"

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$7$1;->this$1:Lcom/localytics/android/MarketingHandler$7;

    iget-object v1, v1, Lcom/localytics/android/MarketingHandler$7;->val$customerID:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    const/4 v0, 0x0

    if-eq v0, v8, :cond_3

    .line 1056
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1057
    const/4 v8, 0x0

    goto :goto_0

    .line 1041
    :catch_0
    move-exception v9

    .line 1043
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v0, "Unfortunately, something went wrong. Push test activation was unsuccessful."

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1044
    invoke-static {}, Lcom/localytics/android/Localytics;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, v9, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_0

    .line 1046
    const-string v0, "\n\nCause:\nPush registration token has not yet been processed. Please wait a few minutes and try again."

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    const-string v0, "Activating push test has failed"

    invoke-static {v0, v9}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1050
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 1054
    const/4 v0, 0x0

    if-eq v0, v8, :cond_1

    .line 1056
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1057
    const/4 v8, 0x0

    :cond_1
    return-object v11

    .line 1054
    :catchall_0
    move-exception v12

    const/4 v0, 0x0

    if-eq v0, v8, :cond_2

    .line 1056
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1057
    const/4 v8, 0x0

    :cond_2
    throw v12

    .line 1061
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1006
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler$7$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 1067
    const/4 v0, 0x0

    if-eq v0, p1, :cond_0

    .line 1069
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1071
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 1010
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$7$1;->val$pushRegID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1012
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "Push Test Activated\nYou should receive a notification soon."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1016
    :cond_0
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "App isn\'t registered with GCM to receive push notifications. Please make sure that Localytics.registerPush(<PROJECT_ID>) has been called."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1018
    :goto_0
    return-void
.end method
