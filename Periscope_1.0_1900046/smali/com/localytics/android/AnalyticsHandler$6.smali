.class Lcom/localytics/android/AnalyticsHandler$6;
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

.field final synthetic val$screen:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$6;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iput-object p2, p0, Lcom/localytics/android/AnalyticsHandler$6;->val$screen:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$6;->this$0:Lcom/localytics/android/AnalyticsHandler;

    # invokes: Lcom/localytics/android/AnalyticsHandler;->_isOptedOut()Z
    invoke-static {v0}, Lcom/localytics/android/AnalyticsHandler;->access$200(Lcom/localytics/android/AnalyticsHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "Data collection is opted out"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 339
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$6;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler$6;->val$screen:Ljava/lang/String;

    # invokes: Lcom/localytics/android/AnalyticsHandler;->_tagScreen(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/localytics/android/AnalyticsHandler;->access$600(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    .line 343
    return-void
.end method
