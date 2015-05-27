.class public abstract Lo/sn$ˏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u02cf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/concurrent/Callable<TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 625
    const/4 v1, 0x0

    .line 627
    :try_start_0
    invoke-virtual {p0}, Lo/sn$ˏ;->run()Ljava/lang/Object;
    :try_end_0
    .catch Lo/sn$ˎ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 636
    :try_start_1
    invoke-virtual {p0}, Lo/sn$ˏ;->done()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 640
    goto :goto_0

    .line 637
    :catch_0
    move-exception v3

    .line 638
    if-nez v1, :cond_0

    .line 639
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v3}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 640
    :cond_0
    :goto_0
    return-object v2

    .line 628
    :catch_1
    move-exception v2

    .line 629
    const/4 v1, 0x1

    .line 630
    :try_start_2
    throw v2

    .line 631
    :catch_2
    move-exception v2

    .line 632
    const/4 v1, 0x1

    .line 633
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v2}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 635
    :catchall_0
    move-exception v4

    .line 636
    :try_start_3
    invoke-virtual {p0}, Lo/sn$ˏ;->done()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 640
    goto :goto_1

    .line 637
    :catch_3
    move-exception v5

    .line 638
    if-nez v1, :cond_1

    .line 639
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v5}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 640
    :cond_1
    :goto_1
    throw v4
.end method

.method protected abstract done()V
.end method

.method protected abstract run()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method
