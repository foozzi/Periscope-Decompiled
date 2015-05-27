.class Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

.field final synthetic val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

.field final synthetic val$replyExecutor:Ljava/util/concurrent/Executor;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->this$0:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$replyExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;)V
    .locals 7

    .line 72
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$replyExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;

    const-string v3, "OkHttp %s WebSocket Close Reply"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$url:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;-><init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public onMessage(Lo/ui;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/ws/WebSocketListener;->onMessage(Lo/ui;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)V

    .line 54
    return-void
.end method

.method public onPing(Lo/ue;)V
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$replyExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$1;

    const-string v2, "OkHttp %s WebSocket Pong Reply"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$url:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$1;-><init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;Ljava/lang/String;[Ljava/lang/Object;Lo/ue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public onPong(Lo/ue;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/ws/WebSocketListener;->onPong(Lo/ue;)V

    .line 69
    return-void
.end method
