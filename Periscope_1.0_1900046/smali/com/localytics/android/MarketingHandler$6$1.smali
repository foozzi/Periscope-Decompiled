.class Lcom/localytics/android/MarketingHandler$6$1;
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
.field final synthetic this$1:Lcom/localytics/android/MarketingHandler$6;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler$6;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$6$1;->this$1:Lcom/localytics/android/MarketingHandler$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$6$1;->this$1:Lcom/localytics/android/MarketingHandler$6;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler$6;->val$adapter:Lcom/localytics/android/MarketingRulesAdapter;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingRulesAdapter;->updateDataSet()Z

    .line 528
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$6$1;->this$1:Lcom/localytics/android/MarketingHandler$6;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler$6;->val$adapter:Lcom/localytics/android/MarketingRulesAdapter;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingRulesAdapter;->notifyDataSetChanged()V

    .line 529
    return-void
.end method
