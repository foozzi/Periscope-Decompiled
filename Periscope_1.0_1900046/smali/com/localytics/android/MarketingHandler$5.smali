.class Lcom/localytics/android/MarketingHandler$5;
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
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;

.field final synthetic val$campaignId:I


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;I)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$5;->this$0:Lcom/localytics/android/MarketingHandler;

    iput p2, p0, Lcom/localytics/android/MarketingHandler$5;->val$campaignId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 11

    .line 451
    const/4 v7, 0x0

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$5;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_displayed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "campaign_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    # getter for: Lcom/localytics/android/MarketingHandler;->SELECTION_DISPLAYED_MARKETING_MESSAGE:Ljava/lang/String;
    invoke-static {}, Lcom/localytics/android/MarketingHandler;->access$500()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/localytics/android/MarketingHandler$5;->val$campaignId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 455
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 457
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 458
    const-string v0, "campaign_id"

    iget v1, p0, Lcom/localytics/android/MarketingHandler$5;->val$campaignId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$5;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_displayed"

    invoke-virtual {v0, v1, v8}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 464
    const/4 v0, 0x0

    if-eq v0, v7, :cond_1

    .line 466
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 467
    const/4 v7, 0x0

    :cond_1
    return-object v9

    .line 464
    :cond_2
    const/4 v0, 0x0

    if-eq v0, v7, :cond_4

    .line 466
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 467
    const/4 v7, 0x0

    goto :goto_1

    .line 464
    :catchall_0
    move-exception v10

    const/4 v0, 0x0

    if-eq v0, v7, :cond_3

    .line 466
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 467
    const/4 v7, 0x0

    :cond_3
    throw v10

    .line 471
    :cond_4
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 447
    invoke-virtual {p0}, Lcom/localytics/android/MarketingHandler$5;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
