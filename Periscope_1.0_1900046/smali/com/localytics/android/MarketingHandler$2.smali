.class Lcom/localytics/android/MarketingHandler$2;
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
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;

.field final synthetic val$marketingMessage:Lcom/localytics/android/MarketingMessage;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingMessage;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$2;->this$0:Lcom/localytics/android/MarketingHandler;

    iput-object p2, p0, Lcom/localytics/android/MarketingHandler$2;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$2;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$2;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    # invokes: Lcom/localytics/android/MarketingHandler;->_destroyLocalMarketingMessage(Lcom/localytics/android/MarketingMessage;)V
    invoke-static {v0, v1}, Lcom/localytics/android/MarketingHandler;->access$200(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingMessage;)V

    .line 397
    return-void
.end method
