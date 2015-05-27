.class Lo/afg;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bBV:Lo/aet;


# direct methods
.method constructor <init>(Lo/aet;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lo/afg;->bBV:Lo/aet;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 566
    :try_start_0
    iget-object v0, p0, Lo/afg;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ﹳ(Lo/aet;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 567
    iget-object v0, p0, Lo/afg;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ﾞ(Lo/aet;)Lo/yp;

    move-result-object v0

    invoke-interface {v0}, Lo/yp;->us()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 569
    :goto_0
    iget-object v0, p0, Lo/afg;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ﾞ(Lo/aet;)Lo/yp;

    move-result-object v0

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Lo/yp;->ﻩ(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    iget-object v0, p0, Lo/afg;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ﹳ(Lo/aet;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 574
    goto :goto_2

    .line 571
    :catch_0
    move-exception v2

    .line 573
    iget-object v0, p0, Lo/afg;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ﹳ(Lo/aet;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 574
    goto :goto_2

    .line 573
    :catchall_0
    move-exception v3

    iget-object v0, p0, Lo/afg;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ﹳ(Lo/aet;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    throw v3

    .line 575
    :goto_2
    return-void
.end method
