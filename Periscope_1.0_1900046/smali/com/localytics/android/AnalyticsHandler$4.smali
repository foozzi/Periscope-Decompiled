.class Lcom/localytics/android/AnalyticsHandler$4;
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


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$4;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$4;->this$0:Lcom/localytics/android/AnalyticsHandler;

    # invokes: Lcom/localytics/android/AnalyticsHandler;->_isOptedOut()Z
    invoke-static {v0}, Lcom/localytics/android/AnalyticsHandler;->access$200(Lcom/localytics/android/AnalyticsHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "Data collection is opted out"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 291
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$4;->this$0:Lcom/localytics/android/AnalyticsHandler;

    # invokes: Lcom/localytics/android/AnalyticsHandler;->_close()V
    invoke-static {v0}, Lcom/localytics/android/AnalyticsHandler;->access$400(Lcom/localytics/android/AnalyticsHandler;)V

    .line 295
    return-void
.end method
