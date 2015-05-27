.class Lo/rc;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic WQ:Lo/qz;


# direct methods
.method constructor <init>(Lo/qz;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lo/rc;->WQ:Lo/qz;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    .line 302
    :try_start_0
    iget-object v0, p0, Lo/rc;->WQ:Lo/qz;

    invoke-virtual {p0}, Lo/rc;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lo/qz;->ˋ(Lo/qz;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 310
    goto :goto_0

    .line 303
    :catch_0
    move-exception v3

    .line 304
    const-string v0, "AsyncTask"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    goto :goto_0

    .line 305
    :catch_1
    move-exception v3

    .line 306
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An error occured while executing doInBackground()"

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 308
    :catch_2
    move-exception v3

    .line 309
    iget-object v0, p0, Lo/rc;->WQ:Lo/qz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/qz;->ˋ(Lo/qz;Ljava/lang/Object;)V

    .line 311
    :goto_0
    return-void
.end method
