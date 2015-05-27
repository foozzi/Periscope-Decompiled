.class Lcom/localytics/android/AnalyticsHandler$16;
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
        "Ljava/lang/Object;Ljava/util/concurrent/Callable<Ljava/lang/String;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/AnalyticsHandler;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$16;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 771
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler$16;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 9

    .line 775
    const/4 v6, 0x0

    .line 776
    const/4 v7, 0x0

    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$16;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget-object v0, v0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "registration_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    const-string v0, "registration_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v7, v0

    .line 789
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v6, :cond_1

    .line 791
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 792
    const/4 v6, 0x0

    .line 795
    :cond_1
    return-object v7

    .line 789
    :catchall_0
    move-exception v8

    const/4 v0, 0x0

    if-eq v0, v6, :cond_2

    .line 791
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 792
    const/4 v6, 0x0

    .line 795
    :cond_2
    return-object v7
.end method
