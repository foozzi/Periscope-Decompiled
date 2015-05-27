.class Lcom/localytics/android/MarketingRulesAdapter$2;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingRulesAdapter;

.field final synthetic val$fTask:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingRulesAdapter;Ljava/util/concurrent/FutureTask;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/localytics/android/MarketingRulesAdapter$2;->this$0:Lcom/localytics/android/MarketingRulesAdapter;

    iput-object p2, p0, Lcom/localytics/android/MarketingRulesAdapter$2;->val$fTask:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter$2;->val$fTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 67
    return-void
.end method
