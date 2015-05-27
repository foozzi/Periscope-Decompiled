.class Lcom/localytics/android/AnalyticsHandler$2;
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
        "Ljava/lang/Object;Ljava/util/concurrent/Callable<Ljava/util/Map;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/AnalyticsHandler;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$2;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler$2;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .locals 11

    .line 183
    const/4 v6, 0x0

    .line 184
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$2;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget-object v0, v0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "identifiers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 191
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "key"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 194
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 195
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 200
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v6, :cond_1

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 203
    const/4 v6, 0x0

    .line 206
    :cond_1
    return-object v7

    .line 200
    :catchall_0
    move-exception v10

    const/4 v0, 0x0

    if-eq v0, v6, :cond_2

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 203
    const/4 v6, 0x0

    .line 206
    :cond_2
    return-object v7
.end method
