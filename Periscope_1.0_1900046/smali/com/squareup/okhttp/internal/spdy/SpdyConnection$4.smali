.class Lcom/squareup/okhttp/internal/spdy/SpdyConnection$4;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$4;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$4;->val$streamId:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$4;->val$requestHeaders:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 803
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$4;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushObserver:Lcom/squareup/okhttp/internal/spdy/PushObserver;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$2500(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/internal/spdy/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$4;->val$streamId:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$4;->val$requestHeaders:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/PushObserver;->onRequest(ILjava/util/List;)Z

    move-result v3

    .line 805
    if-eqz v3, :cond_0

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$4;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$4;->val$streamId:I

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 807
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$4;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$4;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$2600(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$4;->val$streamId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 812
    :cond_0
    :goto_0
    goto :goto_1

    .line 811
    :catch_0
    move-exception v4

    .line 813
    :goto_1
    return-void
.end method
