.class final Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/uz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SpdyDataSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMIT_BUFFER_SIZE:J = 0x4000L


# instance fields
.field private closed:Z

.field private finished:Z

.field private final sendBuffer:Lo/ue;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 469
    const-class v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->$assertionsDisabled:Z

    return-void
.end method

.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    .locals 1

    .line 469
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    new-instance v0, Lo/ue;

    invoke-direct {v0}, Lo/ue;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lo/ue;

    return-void
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z

    return v0
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;Z)Z
    .locals 0

    .line 469
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z

    return p1
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z

    return v0
.end method

.method private emitDataFrame(Z)V
    .locals 11

    .line 500
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v8

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->writeTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 503
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iget-wide v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$800(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->waitForIo()V
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$900(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 507
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->writeTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->exitAndThrowIfTimedOut()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 508
    goto :goto_1

    .line 507
    :catchall_0
    move-exception v9

    :try_start_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->writeTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->exitAndThrowIfTimedOut()V

    throw v9

    .line 510
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->checkOutNotClosed()V
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    .line 511
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iget-wide v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lo/ue;

    invoke-virtual {v2}, Lo/ue;->size()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 512
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iget-wide v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    sub-long/2addr v1, v6

    iput-wide v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 513
    monitor-exit v8

    goto :goto_2

    :catchall_1
    move-exception v10

    monitor-exit v8

    throw v10

    .line 515
    :goto_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$600(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I

    move-result v1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lo/ue;

    invoke-virtual {v2}, Lo/ue;->size()J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lo/ue;

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeData(IZLo/ue;J)V

    .line 516
    return-void
.end method


# virtual methods
.method public close()V
    .locals 9

    .line 534
    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 535
    :cond_0
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v6

    .line 536
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit v6

    return-void

    .line 537
    :cond_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7

    .line 538
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->sink:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    iget-boolean v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z

    if-nez v0, :cond_3

    .line 540
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 541
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 542
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->emitDataFrame(Z)V

    goto :goto_1

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$600(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeData(IZLo/ue;J)V

    .line 549
    :cond_3
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v6

    .line 550
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 551
    monitor-exit v6

    goto :goto_2

    :catchall_1
    move-exception v8

    monitor-exit v6

    throw v8

    .line 552
    :goto_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->flush()V

    .line 553
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->cancelStreamIfNecessary()V
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    .line 554
    return-void
.end method

.method public flush()V
    .locals 6

    .line 519
    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 520
    :cond_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v4

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->checkOutNotClosed()V
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 523
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 524
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->emitDataFrame(Z)V

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->flush()V

    .line 527
    return-void
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->writeTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lo/ue;J)V
    .locals 4

    .line 487
    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lo/ue;

    invoke-virtual {v0, p1, p2, p3}, Lo/ue;->write(Lo/ue;J)V

    .line 489
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->emitDataFrame(Z)V

    goto :goto_0

    .line 492
    :cond_1
    return-void
.end method
