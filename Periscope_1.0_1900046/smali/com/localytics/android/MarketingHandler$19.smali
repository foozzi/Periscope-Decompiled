.class Lcom/localytics/android/MarketingHandler$19;
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

    .line 1743
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$19;->this$0:Lcom/localytics/android/MarketingHandler;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1747
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$19;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    check-cast v0, Lcom/localytics/android/MessagingListener;

    invoke-interface {v0}, Lcom/localytics/android/MessagingListener;->localyticsWillDismissInAppMessage()V

    .line 1748
    const/4 v0, 0x0

    return-object v0
.end method
