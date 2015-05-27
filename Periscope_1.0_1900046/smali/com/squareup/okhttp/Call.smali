.class public Lcom/squareup/okhttp/Call;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;,
        Lcom/squareup/okhttp/Call$AsyncCall;
    }
.end annotation


# instance fields
.field volatile canceled:Z

.field private final client:Lcom/squareup/okhttp/OkHttpClient;

.field engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

.field private executed:Z

.field originalRequest:Lcom/squareup/okhttp/Request;


# direct methods
.method protected constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->copyWithDefaults()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 49
    iput-object p2, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/Call;Z)Lcom/squareup/okhttp/Response;
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/squareup/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/Call;)Ljava/lang/String;
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/squareup/okhttp/Call;->toLoggableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method

.method private getResponseWithInterceptorChain(Z)Lcom/squareup/okhttp/Response;
    .locals 3

    .line 198
    new-instance v2, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;

    iget-object v0, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;-><init>(Lcom/squareup/okhttp/Call;ILcom/squareup/okhttp/Request;Z)V

    .line 199
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method private toLoggableString()Ljava/lang/String;
    .locals 5

    .line 188
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->canceled:Z

    if-eqz v0, :cond_0

    const-string v3, "canceled call"

    goto :goto_0

    :cond_0
    const-string v3, "call"

    .line 190
    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v1

    const-string v2, "/..."

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 192
    :catch_0
    move-exception v4

    .line 193
    return-object v3
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/Call;->canceled:Z

    .line 122
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->disconnect()V

    .line 123
    :cond_0
    return-void
.end method

.method public enqueue(Lcom/squareup/okhttp/Callback;)V
    .locals 1

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;Z)V

    .line 106
    return-void
.end method

.method enqueue(Lcom/squareup/okhttp/Callback;Z)V
    .locals 5

    .line 109
    move-object v3, p0

    monitor-enter v3

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/Call$AsyncCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/squareup/okhttp/Call$AsyncCall;-><init>(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;ZLcom/squareup/okhttp/Call$1;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Dispatcher;->enqueue(Lcom/squareup/okhttp/Call$AsyncCall;)V

    .line 114
    return-void
.end method

.method public execute()Lcom/squareup/okhttp/Response;
    .locals 5

    .line 73
    move-object v2, p0

    monitor-enter v2

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 78
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/Dispatcher;->executed(Lcom/squareup/okhttp/Call;)V

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/squareup/okhttp/Response;

    move-result-object v2

    .line 80
    if-nez v2, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    :cond_1
    move-object v3, v2

    .line 83
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/Dispatcher;->finished(Lcom/squareup/okhttp/Call;)V

    return-object v3

    :catchall_1
    move-exception v4

    iget-object v0, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/Dispatcher;->finished(Lcom/squareup/okhttp/Call;)V

    throw v4
.end method

.method getResponse(Lcom/squareup/okhttp/Request;Z)Lcom/squareup/okhttp/Response;
    .locals 15

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v10

    .line 240
    if-eqz v10, :cond_2

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v11

    .line 243
    invoke-virtual {v10}, Lcom/squareup/okhttp/RequestBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v12

    .line 244
    if-eqz v12, :cond_0

    .line 245
    const-string v0, "Content-Type"

    invoke-virtual {v12}, Lcom/squareup/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 248
    :cond_0
    invoke-virtual {v10}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide v13

    .line 249
    const-wide/16 v0, -0x1

    cmp-long v0, v13, v0

    if-eqz v0, :cond_1

    .line 250
    const-string v0, "Content-Length"

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 251
    const-string v0, "Transfer-Encoding"

    invoke-virtual {v11, v0}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_0

    .line 253
    :cond_1
    const-string v0, "Transfer-Encoding"

    const-string v1, "chunked"

    invoke-virtual {v11, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 254
    const-string v0, "Content-Length"

    invoke-virtual {v11, v0}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 257
    :goto_0
    invoke-virtual {v11}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p1

    .line 261
    :cond_2
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v1, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/squareup/okhttp/internal/http/HttpEngine;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;ZZZLcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RouteSelector;Lcom/squareup/okhttp/internal/http/RetryableSink;Lcom/squareup/okhttp/Response;)V

    iput-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 263
    const/4 v11, 0x0

    .line 265
    :goto_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->canceled:Z

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 271
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 272
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_2

    .line 273
    :catch_0
    move-exception v12

    .line 274
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lo/uz;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v13

    .line 275
    if-eqz v13, :cond_4

    .line 276
    iput-object v13, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 277
    goto :goto_1

    .line 281
    :cond_4
    throw v12

    .line 284
    :goto_2
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v12

    .line 285
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/squareup/okhttp/Request;

    move-result-object v13

    .line 287
    if-nez v13, :cond_6

    .line 288
    if-nez p2, :cond_5

    .line 289
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 291
    :cond_5
    return-object v12

    .line 294
    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/16 v0, 0x14

    if-le v11, v0, :cond_7

    .line 295
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_7
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v13}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sameConnection(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 299
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 302
    :cond_8
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->close()Lcom/squareup/okhttp/Connection;

    move-result-object v14

    .line 303
    move-object/from16 p1, v13

    .line 304
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v1, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p2

    move-object v6, v14

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/squareup/okhttp/internal/http/HttpEngine;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;ZZZLcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RouteSelector;Lcom/squareup/okhttp/internal/http/RetryableSink;Lcom/squareup/okhttp/Response;)V

    iput-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 306
    goto/16 :goto_1
.end method

.method public isCanceled()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->canceled:Z

    return v0
.end method

.method tag()Ljava/lang/Object;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
