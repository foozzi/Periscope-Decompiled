.class Lcom/localytics/android/MarketingHandler$12;
.super Lcom/localytics/android/MarketingCallable;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;

.field final synthetic val$adapter:Lcom/localytics/android/MarketingRulesAdapter;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingRulesAdapter;)V
    .locals 0

    .line 1419
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$12;->this$0:Lcom/localytics/android/MarketingHandler;

    iput-object p2, p0, Lcom/localytics/android/MarketingHandler$12;->val$adapter:Lcom/localytics/android/MarketingRulesAdapter;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1423
    const-string v0, "Test Mode Update Data"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$12;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$12;->val$adapter:Lcom/localytics/android/MarketingRulesAdapter;

    # setter for: Lcom/localytics/android/MarketingHandler;->testCampaignsListAdapter:Lcom/localytics/android/MarketingRulesAdapter;
    invoke-static {v0, v1}, Lcom/localytics/android/MarketingHandler;->access$902(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingRulesAdapter;)Lcom/localytics/android/MarketingRulesAdapter;

    .line 1425
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$12;->this$0:Lcom/localytics/android/MarketingHandler;

    invoke-static {}, Lcom/localytics/android/Localytics;->getCustomerIdInMemory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->upload(Ljava/lang/String;)V

    .line 1426
    const/4 v0, 0x0

    return-object v0
.end method
