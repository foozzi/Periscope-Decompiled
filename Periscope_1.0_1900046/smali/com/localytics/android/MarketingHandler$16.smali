.class Lcom/localytics/android/MarketingHandler$16;
.super Lcom/localytics/android/MarketingCallable;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;)V
    .locals 0

    .line 1703
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$16;->this$0:Lcom/localytics/android/MarketingHandler;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1710
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$16;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$16;->this$0:Lcom/localytics/android/MarketingHandler;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/16 v3, 0xca

    invoke-virtual {v1, v3, v2}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1711
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$16;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    check-cast v0, Lcom/localytics/android/MessagingListener;

    invoke-interface {v0}, Lcom/localytics/android/MessagingListener;->localyticsDidDismissInAppMessage()V

    .line 1712
    const/4 v0, 0x0

    return-object v0
.end method
