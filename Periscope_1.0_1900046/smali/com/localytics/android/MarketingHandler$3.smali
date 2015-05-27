.class Lcom/localytics/android/MarketingHandler$3;
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


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$3;->this$0:Lcom/localytics/android/MarketingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$3;->this$0:Lcom/localytics/android/MarketingHandler;

    # invokes: Lcom/localytics/android/MarketingHandler;->__showMarketingTest()V
    invoke-static {v0}, Lcom/localytics/android/MarketingHandler;->access$300(Lcom/localytics/android/MarketingHandler;)V

    .line 416
    return-void
.end method
