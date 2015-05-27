.class public final Lcom/squareup/okhttp/internal/spdy/SpdyStream;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;,
        Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;,
        Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field private final connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

.field private errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

.field private final id:I

.field private final readTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
        }
    .end annotation
.end field

.field final sink:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

.field private final source:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

.field unacknowledgedBytesRead:J

.field private final writeTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    return-void
.end method

.method constructor <init>(ILcom/squareup/okhttp/internal/spdy/SpdyConnection;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILcom/squareup/okhttp/internal/spdy/SpdyConnection;ZZLjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->unacknowledgedBytesRead:J

    .line 65
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    .line 66
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->writeTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 77
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    .line 80
    iput-object p2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .line 81
    iget-object v0, p2, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 82
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    .line 83
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    iget-object v1, p2, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 84
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;JLcom/squareup/okhttp/internal/spdy/SpdyStream$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->source:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    .line 85
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->sink:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    .line 86
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->source:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z
    invoke-static {v0, p4}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->access$102(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;Z)Z

    .line 87
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->sink:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z
    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$202(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;Z)Z

    .line 88
    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->requestHeaders:Ljava/util/List;

    .line 89
    return-void
.end method

.method static synthetic access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->cancelStreamIfNecessary()V

    return-void
.end method

.method static synthetic access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->writeTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->checkOutNotClosed()V

    return-void
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I
    .locals 1

    .line 34
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    return v0
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    return-object v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->waitForIo()V

    return-void
.end method

.method private cancelStreamIfNecessary()V
    .locals 6

    .line 447
    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 450
    :cond_0
    move-object v4, p0

    monitor-enter v4

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->source:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->access$100(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->source:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->closed:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->access$300(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->sink:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$200(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->sink:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$400(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 452
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 453
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 454
    :goto_1
    if-eqz v3, :cond_3

    .line 459
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_2

    .line 460
    :cond_3
    if-nez v2, :cond_4

    .line 461
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 463
    :cond_4
    :goto_2
    return-void
.end method

.method private checkOutNotClosed()V
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->sink:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$400(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->sink:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$200(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-eqz v0, :cond_2

    .line 572
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_2
    return-void
.end method

.method private closeInternal(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z
    .locals 4

    .line 237
    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 238
    :cond_0
    move-object v2, p0

    monitor-enter v2

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 240
    monitor-exit v2

    const/4 v0, 0x0

    return v0

    .line 242
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->source:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->access$100(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->sink:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$200(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    monitor-exit v2

    const/4 v0, 0x0

    return v0

    .line 245
    :cond_2
    :try_start_2
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method private waitForIo()V
    .locals 2

    .line 582
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    goto :goto_0

    .line 583
    :catch_0
    move-exception v1

    .line 584
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 586
    :goto_0
    return-void
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 2

    .line 562
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    .line 563
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 564
    :cond_0
    return-void
.end method

.method public close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 2

    .line 218
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->closeInternal(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynReset(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 222
    return-void
.end method

.method public closeLater(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 2

    .line 229
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->closeInternal(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 233
    return-void
.end method

.method public getConnection()Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    return-object v0
.end method

.method public declared-synchronized getErrorCode()Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .locals 2

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getId()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    return v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->requestHeaders:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getResponseHeaders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
        }
    .end annotation

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->waitForIo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->exitAndThrowIfTimedOut()V

    .line 143
    goto :goto_1

    .line 142
    :catchall_0
    move-exception v3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->exitAndThrowIfTimedOut()V

    throw v3

    .line 144
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    monitor-exit p0

    return-object v0

    .line 145
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getSink()Lo/uz;
    .locals 4

    .line 205
    move-object v2, p0

    monitor-enter v2

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->sink:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    return-object v0
.end method

.method public getSource()Lo/va;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->source:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .locals 3

    .line 119
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-boolean v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->client:Z

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-eqz v0, :cond_0

    .line 107
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->source:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->access$100(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->source:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->closed:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->access$300(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->sink:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    .line 110
    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$200(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->sink:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$400(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 112
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 114
    :cond_3
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public readTimeout()Lo/vb;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    return-object v0
.end method

.method receiveData(Lo/ui;I)V
    .locals 3

    .line 284
    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->source:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->receive(Lo/ui;J)V

    .line 286
    return-void
.end method

.method receiveFin()V
    .locals 5

    .line 289
    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 291
    :cond_0
    move-object v3, p0

    monitor-enter v3

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->source:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    const/4 v1, 0x1

    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->access$102(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;Z)Z

    .line 293
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v2

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 296
    :goto_0
    if-nez v2, :cond_1

    .line 297
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 299
    :cond_1
    return-void
.end method

.method receiveHeaders(Ljava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V"
        }
    .end annotation

    .line 253
    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 254
    :cond_0
    const/4 v2, 0x0

    .line 255
    const/4 v3, 0x1

    .line 256
    move-object v4, p0

    monitor-enter v4

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_2

    .line 258
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfHeadersAbsent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    goto :goto_0

    .line 261
    :cond_1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    .line 262
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v3

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfHeadersPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->STREAM_IN_USE:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    goto :goto_0

    .line 269
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    iput-object v5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :goto_0
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v4

    throw v6

    .line 276
    :goto_1
    if-eqz v2, :cond_4

    .line 277
    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_2

    .line 278
    :cond_4
    if-nez v3, :cond_5

    .line 279
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 281
    :cond_5
    :goto_2
    return-void
.end method

.method declared-synchronized receiveRstStream(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 1

    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-nez v0, :cond_0

    .line 303
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reply(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;Z)V"
        }
    .end annotation

    .line 163
    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 164
    :cond_0
    const/4 v2, 0x0

    .line 165
    move-object v3, p0

    monitor-enter v3

    .line 166
    if-nez p1, :cond_1

    .line 167
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "responseHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply already sent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_2
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    .line 173
    if-nez p2, :cond_3

    .line 174
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->sink:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    const/4 v1, 0x1

    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$202(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    const/4 v2, 0x1

    .line 177
    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynReply(IZLjava/util/List;)V

    .line 180
    if-eqz v2, :cond_4

    .line 181
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->flush()V

    .line 183
    :cond_4
    return-void
.end method

.method public writeTimeout()Lo/vb;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->writeTimeout:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    return-object v0
.end method
