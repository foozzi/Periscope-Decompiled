.class Lcom/localytics/android/AnalyticsHandler$13;
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
.field final synthetic this$0:Lcom/localytics/android/AnalyticsHandler;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;Landroid/content/Intent;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$13;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iput-object p2, p0, Lcom/localytics/android/AnalyticsHandler$13;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$13;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler$13;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/localytics/android/AnalyticsHandler;->_handlePushRegistration(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/localytics/android/AnalyticsHandler;->access$1300(Lcom/localytics/android/AnalyticsHandler;Landroid/content/Intent;)V

    .line 473
    return-void
.end method
