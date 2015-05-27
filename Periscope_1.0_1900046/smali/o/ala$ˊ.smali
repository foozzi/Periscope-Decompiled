.class Lo/ala$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ala;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ca"
.end annotation


# instance fields
.field final synthetic bLl:Lo/ala;

.field private bLm:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<Lo/akz;>;"
        }
    .end annotation
.end field

.field private bLn:J

.field private bLo:J

.field private bLp:Ljava/util/Date;

.field private bLq:Z

.field private bLr:J

.field private bLs:J

.field private bLt:Ljava/util/Date;

.field private bqT:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lo/ala;)V
    .locals 2

    .line 50
    iput-object p1, p0, Lo/ala$ˊ;->bLl:Lo/ala;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lo/ala$ˊ;->bLm:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ala$ˊ;->bLr:J

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ala$ˊ;->bLs:J

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ala$ˊ;->bLt:Ljava/util/Date;

    .line 51
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lo/ala$ˊ;->bqT:Ljava/lang/Thread;

    .line 52
    iget-object v0, p0, Lo/ala$ˊ;->bqT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method


# virtual methods
.method public AZ()J
    .locals 4

    .line 122
    move-object v2, p0

    monitor-enter v2

    .line 124
    :try_start_0
    iget-wide v0, p0, Lo/ala$ˊ;->bLn:J

    iput-wide v0, p0, Lo/ala$ˊ;->bLr:J

    .line 125
    iget-wide v0, p0, Lo/ala$ˊ;->bLo:J

    iput-wide v0, p0, Lo/ala$ˊ;->bLs:J

    .line 126
    iget-object v0, p0, Lo/ala$ˊ;->bLp:Ljava/util/Date;

    iput-object v0, p0, Lo/ala$ˊ;->bLt:Ljava/util/Date;

    .line 127
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lo/ala$ˊ;->bLp:Ljava/util/Date;

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ala$ˊ;->bLo:J

    .line 130
    iget-wide v0, p0, Lo/ala$ˊ;->bLs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-wide v0

    .line 131
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public Ba()J
    .locals 2

    .line 135
    iget-wide v0, p0, Lo/ala$ˊ;->bLr:J

    return-wide v0
.end method

.method public Bb()Ljava/util/Date;
    .locals 1

    .line 139
    iget-object v0, p0, Lo/ala$ˊ;->bLt:Ljava/util/Date;

    return-object v0
.end method

.method public run()V
    .locals 8

    .line 83
    const/4 v4, 0x0

    .line 85
    :try_start_0
    iget-object v0, p0, Lo/ala$ˊ;->bLl:Lo/ala;

    invoke-static {v0}, Lo/ala;->ˏ(Lo/ala;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception v5

    .line 87
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 92
    :goto_0
    const/4 v5, 0x0

    .line 94
    :try_start_1
    iget-object v0, p0, Lo/ala$ˊ;->bLm:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akz;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v0

    .line 97
    goto :goto_1

    .line 95
    :catch_1
    move-exception v6

    .line 96
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 98
    :goto_1
    iget-boolean v0, p0, Lo/ala$ˊ;->bLq:Z

    if-eqz v0, :cond_0

    .line 100
    goto :goto_4

    .line 102
    :cond_0
    if-eqz v5, :cond_1

    .line 104
    move-object v6, p0

    monitor-enter v6

    .line 106
    :try_start_2
    iget-wide v0, p0, Lo/ala$ˊ;->bLn:J

    iget v2, v5, Lo/akz;->length:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/ala$ˊ;->bLn:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7

    .line 111
    :cond_1
    :goto_2
    :try_start_3
    iget-object v0, v5, Lo/akz;->buffer:[B

    iget v1, v5, Lo/akz;->length:I

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 112
    iget-wide v0, p0, Lo/ala$ˊ;->bLo:J

    iget v2, v5, Lo/akz;->length:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ala$ˊ;->bLo:J

    .line 113
    iget-object v0, p0, Lo/ala$ˊ;->bLl:Lo/ala;

    invoke-static {v0}, Lo/ala;->ˎ(Lo/ala;)Lo/aky;

    move-result-object v0

    invoke-virtual {v0, v5}, Lo/aky;->ˋ(Lo/akz;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 116
    goto :goto_3

    .line 114
    :catch_2
    move-exception v6

    .line 115
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 117
    :goto_3
    goto :goto_0

    .line 118
    :goto_4
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ala$ˊ;->bLq:Z

    .line 58
    iget-object v0, p0, Lo/ala$ˊ;->bqT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 60
    :try_start_0
    iget-object v0, p0, Lo/ala$ˊ;->bqT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 64
    :goto_0
    return-void
.end method

.method public יִ([BII)V
    .locals 7

    .line 68
    move-object v4, p0

    monitor-enter v4

    .line 70
    :try_start_0
    iget-object v0, p0, Lo/ala$ˊ;->bLp:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lo/ala$ˊ;->bLp:Ljava/util/Date;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ala$ˊ;->bLo:J

    .line 75
    :cond_0
    iget-object v0, p0, Lo/ala$ˊ;->bLl:Lo/ala;

    invoke-static {v0}, Lo/ala;->ˎ(Lo/ala;)Lo/aky;

    move-result-object v0

    invoke-virtual {v0, p3}, Lo/aky;->ᓽ(I)Lo/akz;

    move-result-object v5

    .line 76
    invoke-virtual {v5, p1, p2, p3}, Lo/akz;->ᵣ([BII)V

    .line 77
    iget-object v0, p0, Lo/ala$ˊ;->bLm:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 78
    iget-wide v0, p0, Lo/ala$ˊ;->bLn:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ala$ˊ;->bLn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v4

    throw v6

    .line 80
    :goto_0
    return-void
.end method
