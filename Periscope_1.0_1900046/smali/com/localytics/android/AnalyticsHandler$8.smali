.class Lcom/localytics/android/AnalyticsHandler$8;
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

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$8;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iput-object p2, p0, Lcom/localytics/android/AnalyticsHandler$8;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/localytics/android/AnalyticsHandler$8;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$8;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler$8;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler$8;->val$value:Ljava/lang/String;

    # invokes: Lcom/localytics/android/AnalyticsHandler;->_setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/localytics/android/AnalyticsHandler;->access$800(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void
.end method
