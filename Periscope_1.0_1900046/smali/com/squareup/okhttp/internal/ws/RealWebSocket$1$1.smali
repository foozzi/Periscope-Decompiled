.class Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$1;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;

.field final synthetic val$buffer:Lo/ue;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;Ljava/lang/String;[Ljava/lang/Object;Lo/ue;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$1;->this$1:Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$1;->val$buffer:Lo/ue;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 3

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$1;->this$1:Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->this$0:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    # getter for: Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->access$000(Lcom/squareup/okhttp/internal/ws/RealWebSocket;)Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$1;->val$buffer:Lo/ue;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writePong(Lo/ue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    .line 63
    :goto_0
    return-void
.end method
