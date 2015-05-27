.class Lcom/localytics/android/MarketingRulesAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingRulesAdapter;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingRulesAdapter;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/localytics/android/MarketingRulesAdapter$1;->this$0:Lcom/localytics/android/MarketingRulesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5

    .line 49
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter$1;->this$0:Lcom/localytics/android/MarketingRulesAdapter;

    # getter for: Lcom/localytics/android/MarketingRulesAdapter;->mHandler:Lcom/localytics/android/MarketingHandler;
    invoke-static {v0}, Lcom/localytics/android/MarketingRulesAdapter;->access$000(Lcom/localytics/android/MarketingRulesAdapter;)Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->getMarketingMessages()Ljava/util/List;

    move-result-object v2

    .line 52
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    move-object v4, v0

    .line 54
    const/4 v1, 0x1

    .line 55
    iget-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter$1;->this$0:Lcom/localytics/android/MarketingRulesAdapter;

    # getter for: Lcom/localytics/android/MarketingRulesAdapter;->mMarketingRules:Ljava/util/List;
    invoke-static {v0}, Lcom/localytics/android/MarketingRulesAdapter;->access$100(Lcom/localytics/android/MarketingRulesAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/localytics/android/MarketingRulesAdapter$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
