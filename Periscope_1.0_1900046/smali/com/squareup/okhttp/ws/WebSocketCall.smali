.class public Lcom/squareup/okhttp/ws/WebSocketCall;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;
    }
.end annotation


# instance fields
.field private final call:Lcom/squareup/okhttp/Call;

.field private final key:Ljava/lang/String;

.field private final random:Ljava/util/Random;

.field private final request:Lcom/squareup/okhttp/Request;


# direct methods
.method protected constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V
    .locals 1

    .line 59
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/okhttp/ws/WebSocketCall;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;Ljava/util/Random;)V

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;Ljava/util/Random;)V
    .locals 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "GET"

    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request must be GET: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v3

    .line 68
    const-string v0, "ws://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "wss://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 72
    :cond_2
    const-string v0, "http://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    :cond_3
    move-object v4, v3

    goto :goto_0

    .line 75
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request url must use \'ws\', \'wss\', \'http\', or \'https\' scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :goto_0
    iput-object p3, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->random:Ljava/util/Random;

    .line 81
    const/16 v0, 0x10

    new-array v5, v0, [B

    .line 82
    invoke-virtual {p3, v5}, Ljava/util/Random;->nextBytes([B)V

    .line 83
    invoke-static {v5}, Lo/uj;->ᐨ([B)Lo/uj;

    move-result-object v0

    invoke-virtual {v0}, Lo/uj;->ej()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->key:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->clone()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object p1

    .line 89
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 91
    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    const-string v1, "Upgrade"

    const-string v2, "websocket"

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    const-string v1, "Connection"

    const-string v2, "Upgrade"

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key"

    iget-object v2, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->key:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Version"

    const-string v2, "13"

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p2

    .line 98
    iput-object p2, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->request:Lcom/squareup/okhttp/Request;

    .line 100
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/ws/WebSocketCall;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ws/WebSocketListener;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/ws/WebSocketCall;->createWebSocket(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ws/WebSocketListener;)V

    return-void
.end method

.method public static create(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/ws/WebSocketCall;
    .locals 1

    .line 50
    new-instance v0, Lcom/squareup/okhttp/ws/WebSocketCall;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/ws/WebSocketCall;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V

    return-object v0
.end method

.method private createWebSocket(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ws/WebSocketListener;)V
    .locals 15

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 142
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/Internal;->callEngineReleaseConnection(Lcom/squareup/okhttp/Call;)V

    .line 143
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected HTTP 101 response but was \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    const-string v0, "Connection"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    const-string v0, "Upgrade"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    const-string v0, "Upgrade"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 156
    const-string v0, "websocket"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_2
    const-string v0, "Sec-WebSocket-Accept"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->shaBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 162
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 163
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' but was \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_3
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/Internal;->callEngineGetConnection(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/Connection;

    move-result-object v10

    .line 173
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v0, v10}, Lcom/squareup/okhttp/internal/Internal;->clearOwner(Lcom/squareup/okhttp/Connection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to take ownership of connection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_4
    invoke-virtual {v10}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v11

    .line 178
    invoke-static {v11}, Lo/up;->ˋ(Ljava/net/Socket;)Lo/va;

    move-result-object v0

    invoke-static {v0}, Lo/up;->ˋ(Lo/va;)Lo/ui;

    move-result-object v12

    .line 179
    invoke-static {v11}, Lo/up;->ˊ(Ljava/net/Socket;)Lo/uz;

    move-result-object v0

    invoke-static {v0}, Lo/up;->ˊ(Lo/uz;)Lo/uh;

    move-result-object v13

    .line 181
    move-object/from16 v0, p1

    move-object v1, v10

    move-object v2, v12

    move-object v3, v13

    iget-object v4, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->random:Ljava/util/Random;

    move-object/from16 v5, p2

    .line 182
    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;->create(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Connection;Lo/ui;Lo/uh;Ljava/util/Random;Lcom/squareup/okhttp/ws/WebSocketListener;)Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    move-result-object v14

    .line 185
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/squareup/okhttp/ws/WebSocketCall$2;

    const-string v2, "OkHttp WebSocket reader %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, p0, v2, v3, v14}, Lcom/squareup/okhttp/ws/WebSocketCall$2;-><init>(Lcom/squareup/okhttp/ws/WebSocketCall;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/ws/RealWebSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 193
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v0, v10, v14}, Lcom/squareup/okhttp/internal/Internal;->connectionSetOwner(Lcom/squareup/okhttp/Connection;Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-interface {v1, v14, v0, v2}, Lcom/squareup/okhttp/ws/WebSocketListener;->onOpen(Lcom/squareup/okhttp/ws/WebSocket;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V

    .line 196
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 136
    return-void
.end method

.method public enqueue(Lcom/squareup/okhttp/ws/WebSocketListener;)V
    .locals 4

    .line 116
    new-instance v3, Lcom/squareup/okhttp/ws/WebSocketCall$1;

    invoke-direct {v3, p0, p1}, Lcom/squareup/okhttp/ws/WebSocketCall$1;-><init>(Lcom/squareup/okhttp/ws/WebSocketCall;Lcom/squareup/okhttp/ws/WebSocketListener;)V

    .line 130
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/squareup/okhttp/internal/Internal;->callEnqueue(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;Z)V

    .line 131
    return-void
.end method
