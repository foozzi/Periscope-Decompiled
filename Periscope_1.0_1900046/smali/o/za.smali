.class Lo/za;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/ws/WebSocketListener;


# instance fields
.field private bqY:Lcom/squareup/okhttp/ws/WebSocket;

.field private bqZ:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<Lo/za;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method public static ˊ(Lo/ant;)Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v1, Lo/ada;

    const-string v0, ""

    invoke-direct {v1, v0, p0}, Lo/ada;-><init>(Ljava/lang/String;Lo/ant;)V

    .line 124
    new-instance v0, Lo/fl;

    invoke-direct {v0}, Lo/fl;-><init>()V

    invoke-virtual {v0, v1}, Lo/fl;->ᴸ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Lo/zd$if;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/zd$if;)Ljava/util/concurrent/Future<Lo/za;>;"
        }
    .end annotation

    .line 38
    iget-object v3, p0, Lo/zd$if;->bri:Ljava/lang/String;

    .line 39
    const-string v0, "127.0.0.1:8088"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v3, "10.0.2.2:8088"

    .line 43
    :cond_0
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "joinop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/zd$if;->brf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v4, Lo/za;

    invoke-direct {v4}, Lo/za;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lo/zb;

    invoke-direct {v1}, Lo/zb;-><init>()V

    invoke-direct {v0, v1, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, v4, Lo/za;->bqZ:Ljava/util/concurrent/FutureTask;

    .line 51
    new-instance v5, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v5}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 52
    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ws://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/chatapi/v1/chatnow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v6

    .line 55
    invoke-static {v5, v6}, Lcom/squareup/okhttp/ws/WebSocketCall;->create(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/ws/WebSocketCall;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/ws/WebSocketCall;->enqueue(Lcom/squareup/okhttp/ws/WebSocketListener;)V

    .line 56
    invoke-virtual {v5}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 58
    iget-object v0, v4, Lo/za;->bqZ:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method public static ᵪ(Ljava/lang/String;)Lo/ant;
    .locals 2

    .line 128
    new-instance v0, Lo/gb;

    invoke-direct {v0}, Lo/gb;-><init>()V

    invoke-virtual {v0, p0}, Lo/gb;->ᐤ(Ljava/lang/String;)Lo/fw;

    move-result-object v0

    invoke-virtual {v0}, Lo/fw;->r()Lo/fz;

    move-result-object v1

    .line 129
    const-string v0, ""

    invoke-static {v0, v1}, Lo/ant;->ˎ(Ljava/lang/String;Lo/fz;)Lo/ant;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 62
    const-string v0, "ChatMan"

    const-string v1, "close by self"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lo/za;->bqY:Lcom/squareup/okhttp/ws/WebSocket;

    const-string v1, "close by self"

    const/16 v2, 0x3e8

    invoke-interface {v0, v2, v1}, Lcom/squareup/okhttp/ws/WebSocket;->close(ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public onClose(ILjava/lang/String;)V
    .locals 4

    .line 108
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onclose "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :try_start_0
    iget-object v0, p0, Lo/za;->bqY:Lcom/squareup/okhttp/ws/WebSocket;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/ws/WebSocket;->close(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v3

    .line 112
    const-string v0, "ChatMan"

    const-string v1, "close websocket exception"

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :goto_0
    return-void
.end method

.method public onFailure(Ljava/io/IOException;)V
    .locals 2

    .line 118
    const-string v0, "ChatMan"

    const-string v1, "onfailure"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    return-void
.end method

.method public onMessage(Lo/ui;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)V
    .locals 7

    .line 81
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_0
    sget-object v0, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;->TEXT:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    if-eq p2, v0, :cond_0

    .line 84
    const-string v0, "ChatMan"

    const-string v1, "unexpected binary message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected binary message"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    invoke-interface {p1}, Lo/ui;->ed()Ljava/lang/String;

    move-result-object v4

    .line 88
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message payload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    invoke-static {v4}, Lo/za;->ᵪ(Ljava/lang/String;)Lo/ant;

    move-result-object v5

    .line 92
    invoke-static {}, Lo/vf;->tH()Lo/ot;

    move-result-object v0

    new-instance v1, Lo/acb;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v5, v2, v3}, Lo/acb;-><init>(Lo/ant;J)V

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v5

    .line 94
    const-string v0, "ChatMan"

    const-string v1, "decodemessage error"

    :try_start_2
    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :goto_0
    invoke-interface {p1}, Lo/ui;->close()V

    .line 98
    goto :goto_1

    .line 97
    :catchall_0
    move-exception v6

    invoke-interface {p1}, Lo/ui;->close()V

    throw v6

    .line 99
    :goto_1
    return-void
.end method

.method public onOpen(Lcom/squareup/okhttp/ws/WebSocket;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V
    .locals 2

    .line 74
    const-string v0, "ChatMan"

    const-string v1, "websocket opened"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object p1, p0, Lo/za;->bqY:Lcom/squareup/okhttp/ws/WebSocket;

    .line 76
    iget-object v0, p0, Lo/za;->bqZ:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 77
    return-void
.end method

.method public onPong(Lo/ue;)V
    .locals 2

    .line 103
    const-string v0, "ChatMan"

    const-string v1, "onpong"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public ˊ(Lo/anp;)V
    .locals 4

    .line 67
    new-instance v0, Lo/fl;

    invoke-direct {v0}, Lo/fl;-><init>()V

    invoke-virtual {v0, p1}, Lo/fl;->ᴸ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 68
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send json "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lo/za;->bqY:Lcom/squareup/okhttp/ws/WebSocket;

    sget-object v1, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;->TEXT:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    new-instance v2, Lo/ue;

    invoke-direct {v2}, Lo/ue;-><init>()V

    invoke-virtual {v2, v3}, Lo/ue;->ﯾ(Ljava/lang/String;)Lo/ue;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/ws/WebSocket;->sendMessage(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lo/ue;)V

    .line 70
    return-void
.end method
