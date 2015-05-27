.class Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;
.super Lcom/squareup/okhttp/internal/ws/RealWebSocket;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/ws/WebSocketCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionWebSocket"
.end annotation


# instance fields
.field private final connection:Lcom/squareup/okhttp/Connection;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Connection;Lo/ui;Lo/uh;Ljava/util/Random;Ljava/util/concurrent/Executor;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/lang/String;)V
    .locals 8

    .line 216
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;-><init>(ZLo/ui;Lo/uh;Ljava/util/Random;Ljava/util/concurrent/Executor;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/lang/String;)V

    .line 217
    iput-object p1, p0, Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;->connection:Lcom/squareup/okhttp/Connection;

    .line 218
    return-void
.end method

.method static create(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Connection;Lo/ui;Lo/uh;Ljava/util/Random;Lcom/squareup/okhttp/ws/WebSocketListener;)Lcom/squareup/okhttp/internal/ws/RealWebSocket;
    .locals 10

    .line 202
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v8

    .line 203
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const-string v1, "OkHttp %s WebSocket"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    .line 205
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object v9, v0

    .line 206
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 208
    new-instance v0, Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v9

    move-object v6, p5

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;-><init>(Lcom/squareup/okhttp/Connection;Lo/ui;Lo/uh;Ljava/util/Random;Ljava/util/concurrent/Executor;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected closeConnection()V
    .locals 2

    .line 222
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1, p0}, Lcom/squareup/okhttp/internal/Internal;->closeIfOwnedBy(Lcom/squareup/okhttp/Connection;Ljava/lang/Object;)V

    .line 223
    return-void
.end method
