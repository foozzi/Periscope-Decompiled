.class Lcom/localytics/android/AnalyticsHandler$10;
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

.field final synthetic val$disabled:I


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;I)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$10;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iput p2, p0, Lcom/localytics/android/AnalyticsHandler$10;->val$disabled:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$10;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget v1, p0, Lcom/localytics/android/AnalyticsHandler$10;->val$disabled:I

    # invokes: Lcom/localytics/android/AnalyticsHandler;->_setPushDisabled(I)V
    invoke-static {v0, v1}, Lcom/localytics/android/AnalyticsHandler;->access$1000(Lcom/localytics/android/AnalyticsHandler;I)V

    .line 425
    return-void
.end method
