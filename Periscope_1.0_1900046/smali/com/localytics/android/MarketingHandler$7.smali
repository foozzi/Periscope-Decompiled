.class Lcom/localytics/android/MarketingHandler$7;
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
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;

.field final synthetic val$campaign:Ljava/lang/String;

.field final synthetic val$creative:Ljava/lang/String;

.field final synthetic val$customerID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 995
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$7;->this$0:Lcom/localytics/android/MarketingHandler;

    iput-object p2, p0, Lcom/localytics/android/MarketingHandler$7;->val$campaign:Ljava/lang/String;

    iput-object p3, p0, Lcom/localytics/android/MarketingHandler$7;->val$creative:Ljava/lang/String;

    iput-object p4, p0, Lcom/localytics/android/MarketingHandler$7;->val$customerID:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 995
    move-object v0, p1

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    .line 999
    invoke-static {}, Lcom/localytics/android/Localytics;->getPushRegistrationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 995
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler$7;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 1005
    new-instance v0, Lcom/localytics/android/MarketingHandler$7$1;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/MarketingHandler$7$1;-><init>(Lcom/localytics/android/MarketingHandler$7;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler$7$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1074
    return-void
.end method