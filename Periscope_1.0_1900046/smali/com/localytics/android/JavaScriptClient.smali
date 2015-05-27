.class final Lcom/localytics/android/JavaScriptClient;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/localytics/android/JavaScriptClient;->mCallbacks:Ljava/util/Map;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/JavaScriptClient;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 82
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/localytics/android/JavaScriptClient;->mCallbacks:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/localytics/android/JavaScriptClient;->mCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    move-object v3, v0

    .line 87
    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {v3, p2}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 93
    :cond_0
    return-object v2
.end method


# virtual methods
.method getAttributes()Ljava/lang/String;
    .locals 2

    .line 77
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getCallbacks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/localytics/android/JavaScriptClient;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method getCustomDimensions()Ljava/lang/String;
    .locals 2

    .line 72
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getIdentifiers()Ljava/lang/String;
    .locals 2

    .line 67
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getJsGlueCode()Ljava/lang/String;
    .locals 4

    .line 34
    const-string v0, "javascript:(function() {  var localyticsScript = document.createElement(\'script\');  localyticsScript.type = \'text/javascript\';  localyticsScript.text = \'  localytics.identifers = %s;  localytics.customDimensions = %s;  localytics.attributes = %s;  localytics.libraryVersion = \"%s\";  localytics.tagEvent = function(event, attributes, customerValueIncrease) {     localytics.nativeTagEvent(event, JSON.stringify(attributes), JSON.stringify(customerValueIncrease));  };  localytics.setCustomDimension = function(number, value) {     if (number != null && value != null)        localytics.nativeSetCustomDimension(number, value);  };  window.open = function(url) {     if (url != null)        localytics.navigate(url);  };  localytics.close = function() {     localytics.nativeClose();  };\';  document.getElementsByTagName(\'body\')[0].appendChild(localyticsScript);})()"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/localytics/android/JavaScriptClient;->getIdentifiers()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/localytics/android/JavaScriptClient;->getCustomDimensions()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/localytics/android/JavaScriptClient;->getAttributes()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {}, Lcom/localytics/android/Localytics;->getLibraryVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nativeClose()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 119
    const-string v0, "[JavaScriptClient]: nativeClose is being called"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/localytics/android/JavaScriptClient$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/JavaScriptClient$1;-><init>(Lcom/localytics/android/JavaScriptClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method public nativeSetCustomDimension(JLjava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 106
    const-string v0, "[JavaScriptClient]: nativeSetCustomDimension is being called"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public nativeTagEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 99
    const-string v0, "[JavaScriptClient]: nativeTagEvent is being called"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public navigate(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method
