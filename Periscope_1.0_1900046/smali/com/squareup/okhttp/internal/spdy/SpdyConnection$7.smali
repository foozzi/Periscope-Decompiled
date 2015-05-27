.class Lcom/squareup/okhttp/internal/spdy/SpdyConnection$7;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

.field final synthetic val$errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$7;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$7;->val$streamId:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$7;->val$errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 864
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$7;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushObserver:Lcom/squareup/okhttp/internal/spdy/PushObserver;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$2500(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/internal/spdy/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$7;->val$streamId:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$7;->val$errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/PushObserver;->onReset(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 865
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$7;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v3

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$7;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$2600(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$7;->val$streamId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 868
    :goto_0
    return-void
.end method
