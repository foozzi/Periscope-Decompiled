.class Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

.field final synthetic val$inFinished:Z

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;->val$streamId:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;->val$requestHeaders:Ljava/util/List;

    iput-boolean p6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .line 821
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushObserver:Lcom/squareup/okhttp/internal/spdy/PushObserver;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$2500(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/internal/spdy/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;->val$streamId:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;->val$requestHeaders:Ljava/util/List;

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;->val$inFinished:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/PushObserver;->onHeaders(ILjava/util/List;Z)Z

    move-result v4

    .line 823
    if-eqz v4, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;->val$streamId:I

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 824
    :cond_0
    if-nez v4, :cond_1

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;->val$inFinished:Z

    if-eqz v0, :cond_2

    .line 825
    :cond_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$2600(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;->val$streamId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 830
    :cond_2
    :goto_0
    goto :goto_1

    .line 829
    :catch_0
    move-exception v5

    .line 831
    :goto_1
    return-void
.end method
