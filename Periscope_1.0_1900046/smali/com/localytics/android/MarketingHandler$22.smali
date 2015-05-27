.class Lcom/localytics/android/MarketingHandler$22;
.super Lcom/localytics/android/MarketingCallable;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;

.field final synthetic val$jsonCustomDimensions:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;Lorg/json/JSONObject;)V
    .locals 0

    .line 1902
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$22;->this$0:Lcom/localytics/android/MarketingHandler;

    iput-object p2, p0, Lcom/localytics/android/MarketingHandler$22;->val$jsonCustomDimensions:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1906
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$22;->val$jsonCustomDimensions:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
