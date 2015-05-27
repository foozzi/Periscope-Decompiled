.class Lcom/localytics/android/BaseProvider$1;
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
.field final synthetic this$0:Lcom/localytics/android/BaseProvider;


# direct methods
.method constructor <init>(Lcom/localytics/android/BaseProvider;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/localytics/android/BaseProvider$1;->this$0:Lcom/localytics/android/BaseProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 267
    const/4 v3, 0x0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/BaseProvider$1;->this$0:Lcom/localytics/android/BaseProvider;

    iget-object v0, v0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PRAGMA incremental_vacuum(0);"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    .line 271
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v3, :cond_2

    .line 284
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 285
    const/4 v3, 0x0

    goto :goto_1

    .line 276
    :catch_0
    move-exception v4

    .line 278
    const-string v0, "Auto-vacuum error"

    :try_start_1
    invoke-static {v0, v4}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    const/4 v0, 0x0

    if-eq v0, v3, :cond_2

    .line 284
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 285
    const/4 v3, 0x0

    goto :goto_1

    .line 282
    :catchall_0
    move-exception v5

    const/4 v0, 0x0

    if-eq v0, v3, :cond_1

    .line 284
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 285
    const/4 v3, 0x0

    :cond_1
    throw v5

    .line 288
    :cond_2
    :goto_1
    return-void
.end method
