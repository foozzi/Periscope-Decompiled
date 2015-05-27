.class Lcom/localytics/android/AnalyticsHandler$12;
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

.field final synthetic val$newSenderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$12;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iput-object p2, p0, Lcom/localytics/android/AnalyticsHandler$12;->val$newSenderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$12;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler$12;->val$newSenderId:Ljava/lang/String;

    # invokes: Lcom/localytics/android/AnalyticsHandler;->_registerPush(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/localytics/android/AnalyticsHandler;->access$1200(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    .line 457
    return-void
.end method
