.class public final Lcom/squareup/okhttp/internal/http/HttpConnection;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final ON_IDLE_CLOSE:I = 0x2

.field private static final ON_IDLE_HOLD:I = 0x0

.field private static final ON_IDLE_POOL:I = 0x1

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private final connection:Lcom/squareup/okhttp/Connection;

.field private onIdle:I

.field private final pool:Lcom/squareup/okhttp/ConnectionPool;

.field private final sink:Lo/uh;

.field private final socket:Ljava/net/Socket;

.field private final source:Lo/ui;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;Ljava/net/Socket;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 86
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    .line 87
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    .line 88
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 89
    invoke-static {p3}, Lo/up;->ˋ(Ljava/net/Socket;)Lo/va;

    move-result-object v0

    invoke-static {v0}, Lo/up;->ˋ(Lo/va;)Lo/ui;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lo/ui;

    .line 90
    invoke-static {p3}, Lo/up;->ˊ(Ljava/net/Socket;)Lo/uz;

    move-result-object v0

    invoke-static {v0}, Lo/up;->ˊ(Lo/uz;)Lo/uh;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lo/uh;

    .line 91
    return-void
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lo/uh;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lo/uh;

    return-object v0
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/http/HttpConnection;)I
    .locals 1

    .line 62
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    return v0
.end method

.method static synthetic access$402(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    return p1
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lo/ui;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lo/ui;

    return-object v0
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/http/HttpConnection;)I
    .locals 1

    .line 62
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    return v0
.end method

.method static synthetic access$602(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    return p1
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/ConnectionPool;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    return-object v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/Connection;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    return-object v0
.end method


# virtual methods
.method public bufferSize()J
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->dS()Lo/ue;

    move-result-object v0

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public closeIfOwnedBy(Ljava/lang/Object;)V
    .locals 2

    .line 136
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/Internal;->closeIfOwnedBy(Lcom/squareup/okhttp/Connection;Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public closeOnIdle()V
    .locals 1

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 124
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x6

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 126
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 128
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V

    .line 141
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .line 132
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadable()Z
    .locals 5

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 153
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 154
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->dW()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v3, 0x0

    .line 159
    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v3

    .line 157
    :cond_0
    const/4 v3, 0x1

    .line 159
    :try_start_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return v3

    :catchall_0
    move-exception v4

    :try_start_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v4
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 161
    :catch_0
    move-exception v2

    .line 162
    const/4 v0, 0x1

    return v0

    .line 163
    :catch_1
    move-exception v2

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public newChunkedSink()Lo/uz;
    .locals 3

    .line 225
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 227
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpConnection$1;)V

    return-object v0
.end method

.method public newChunkedSource(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lo/va;
    .locals 3

    .line 249
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 251
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpEngine;)V

    return-object v0
.end method

.method public newFixedLengthSink(J)Lo/uz;
    .locals 3

    .line 231
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 233
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSink;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;JLcom/squareup/okhttp/internal/http/HttpConnection$1;)V

    return-object v0
.end method

.method public newFixedLengthSource(J)Lo/va;
    .locals 3

    .line 243
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 245
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;J)V

    return-object v0
.end method

.method public newUnknownLengthSource()Lo/va;
    .locals 3

    .line 255
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 257
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpConnection$1;)V

    return-object v0
.end method

.method public poolOnIdle()V
    .locals 3

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 110
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 112
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/Internal;->recycle(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;)V

    .line 114
    :cond_0
    return-void
.end method

.method public readHeaders(Lcom/squareup/okhttp/Headers$Builder;)V
    .locals 2

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->ee()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/okhttp/internal/Internal;->addLenient(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_0
    return-void
.end method

.method public readResponse()Lcom/squareup/okhttp/Response$Builder;
    .locals 6

    .line 184
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->ee()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v3

    .line 192
    new-instance v0, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    iget-object v1, v3, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 193
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget v1, v3, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    .line 194
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, v3, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 195
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v4

    .line 197
    new-instance v5, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v5}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 198
    invoke-virtual {p0, v5}, Lcom/squareup/okhttp/internal/http/HttpConnection;->readHeaders(Lcom/squareup/okhttp/Headers$Builder;)V

    .line 199
    sget-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    iget-object v1, v3, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 200
    invoke-virtual {v5}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    .line 202
    iget v0, v3, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    .line 203
    const/4 v0, 0x4

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-object v4

    .line 206
    :cond_1
    goto :goto_0

    .line 207
    :catch_0
    move-exception v3

    .line 209
    new-instance v4, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected end of stream on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (recycle count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    .line 210
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/Internal;->recycleCount(Lcom/squareup/okhttp/Connection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v4, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 212
    throw v4
.end method

.method public setTimeouts(II)V
    .locals 4

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->timeout()Lo/vb;

    move-result-object v0

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lo/vb;->timeout(JLjava/util/concurrent/TimeUnit;)Lo/vb;

    .line 97
    :cond_0
    if-eqz p2, :cond_1

    .line 98
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->timeout()Lo/vb;

    move-result-object v0

    int-to-long v1, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lo/vb;->timeout(JLjava/util/concurrent/TimeUnit;)Lo/vb;

    .line 100
    :cond_1
    return-void
.end method

.method public writeRequest(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)V
    .locals 5

    .line 170
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lo/uh;

    invoke-interface {v0, p2}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    .line 172
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_1

    .line 173
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lo/uh;

    invoke-virtual {p1, v3}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    move-result-object v0

    const-string v1, ": "

    .line 174
    invoke-interface {v0, v1}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    move-result-object v0

    .line 175
    invoke-virtual {p1, v3}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    move-result-object v0

    const-string v1, "\r\n"

    .line 176
    invoke-interface {v0, v1}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lo/uh;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    .line 179
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 180
    return-void
.end method

.method public writeRequestBody(Lcom/squareup/okhttp/internal/http/RetryableSink;)V
    .locals 3

    .line 237
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 239
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lo/uh;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/RetryableSink;->writeToSocket(Lo/uz;)V

    .line 240
    return-void
.end method
