.class Lcom/squareup/okhttp/ws/WebSocketCall$2;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/ws/WebSocketCall;

.field final synthetic val$webSocket:Lcom/squareup/okhttp/internal/ws/RealWebSocket;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/ws/WebSocketCall;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/ws/RealWebSocket;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/squareup/okhttp/ws/WebSocketCall$2;->this$0:Lcom/squareup/okhttp/ws/WebSocketCall;

    iput-object p4, p0, Lcom/squareup/okhttp/ws/WebSocketCall$2;->val$webSocket:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/ws/WebSocketCall$2;->val$webSocket:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method
