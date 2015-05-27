.class Lcom/localytics/android/MarketingHandler$20;
.super Lcom/localytics/android/MarketingCallable;
.source ""


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

    .line 1764
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$20;->this$0:Lcom/localytics/android/MarketingHandler;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1768
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1769
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 1770
    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1771
    const-wide/16 v7, 0x0

    .line 1773
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1775
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1777
    const-class v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event cannot be null or empty"

    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 1782
    :cond_0
    :try_start_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/localytics/android/MarketingHandler;->JS_STRINGS_THAT_MEAN_NULL:Ljava/util/List;
    invoke-static {}, Lcom/localytics/android/MarketingHandler;->access$1400()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1784
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v10

    .line 1785
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v12, v0

    .line 1787
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1788
    goto :goto_0

    .line 1795
    :cond_1
    goto :goto_1

    .line 1791
    :catch_0
    move-exception v10

    .line 1793
    const-string v0, "[JavaScriptClient]: Failed to parse the json object in tagEventNative"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1794
    const/4 v0, 0x0

    return-object v0

    .line 1799
    :goto_1
    :try_start_1
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    move-wide v7, v0

    .line 1820
    goto :goto_3

    .line 1801
    :catch_1
    move-exception v10

    .line 1807
    :try_start_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    # getter for: Lcom/localytics/android/MarketingHandler;->JS_STRINGS_THAT_MEAN_NULL:Ljava/util/List;
    invoke-static {}, Lcom/localytics/android/MarketingHandler;->access$1400()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1809
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v11

    .line 1810
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v13, v0

    .line 1812
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1813
    goto :goto_2

    .line 1819
    :cond_2
    goto :goto_3

    .line 1816
    :catch_2
    move-exception v11

    .line 1822
    :goto_3
    const/4 v0, 0x0

    if-eq v0, v5, :cond_7

    .line 1828
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1830
    const-string v0, "attributes is empty.  Did the caller make an error?"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1833
    :cond_3
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_4

    .line 1835
    const-string v0, "attributes size is %d, exceeding the maximum size of %d.  Did the caller make an error?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1838
    :cond_4
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v11, v0

    .line 1840
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 1841
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1843
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1845
    const-class v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attributes cannot contain null or empty keys"

    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 1848
    :cond_5
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1850
    const-class v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attributes cannot contain null or empty values"

    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 1852
    :cond_6
    goto :goto_4

    .line 1855
    :cond_7
    invoke-static {v4, v9, v7, v8}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 1856
    const/4 v0, 0x0

    return-object v0
.end method
