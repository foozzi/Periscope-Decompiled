.class Lcom/localytics/android/MarketingHandler$23;
.super Lcom/localytics/android/MarketingCallable;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;

.field final synthetic val$attributes:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;Ljava/util/Map;)V
    .locals 0

    .line 1912
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$23;->this$0:Lcom/localytics/android/MarketingHandler;

    iput-object p2, p0, Lcom/localytics/android/MarketingHandler$23;->val$attributes:Ljava/util/Map;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1916
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$23;->val$attributes:Ljava/util/Map;

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    .line 1918
    const/4 v0, 0x0

    return-object v0

    .line 1921
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$23;->val$attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1923
    const/4 v0, 0x0

    return-object v0

    .line 1929
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1930
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$23;->val$attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v4, v0

    .line 1932
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 1933
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1934
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1935
    goto :goto_0

    .line 1936
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1938
    :catch_0
    move-exception v2

    .line 1940
    const-string v0, "[JavaScriptClient]: Failed to get attributes"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1941
    const/4 v0, 0x0

    return-object v0
.end method
