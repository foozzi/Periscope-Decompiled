.class final Lcom/localytics/android/AnalyticsUploadHandler;
.super Lcom/localytics/android/BaseUploadThread;
.source ""


# static fields
.field private static final ANALYTICS_URL_HTTP:Ljava/lang/String; = "http://%s/api/v2/applications/%s/uploads"

.field private static final ANALYTICS_URL_HTTPS:Ljava/lang/String; = "https://%s/api/v2/uploads"


# direct methods
.method constructor <init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;Ljava/lang/String;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/BaseUploadThread;-><init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method uploadData()I
    .locals 11

    .line 34
    const/4 v5, 0x0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsUploadHandler;->mData:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/localytics/android/AnalyticsUploadHandler;->mData:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsUploadHandler;->getApiKey()Ljava/lang/String;

    move-result-object v9

    .line 44
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v7, v0

    .line 47
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lcom/localytics/android/BaseUploadThread$UploadType;->ANALYTICS:Lcom/localytics/android/BaseUploadThread$UploadType;

    sget-boolean v1, Lcom/localytics/android/Constants;->USE_HTTPS:Z

    if-eqz v1, :cond_1

    const-string v1, "https://%s/api/v2/uploads"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/localytics/android/Constants;->ANALYTICS_HOST:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "http://%s/api/v2/applications/%s/uploads"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/localytics/android/Constants;->ANALYTICS_HOST:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v9, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/localytics/android/AnalyticsUploadHandler;->upload(Lcom/localytics/android/BaseUploadThread$UploadType;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/localytics/android/AnalyticsUploadHandler;->mData:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v5, v0

    .line 59
    :cond_2
    return v5

    :catchall_0
    move-exception v10

    return v5
.end method
