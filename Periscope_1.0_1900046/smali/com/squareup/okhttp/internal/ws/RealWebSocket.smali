.class public abstract Lcom/squareup/okhttp/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/ws/WebSocket;


# static fields
.field private static final CLOSE_PROTOCOL_EXCEPTION:I = 0x3ea


# instance fields
.field private final closeLock:Ljava/lang/Object;

.field private final listener:Lcom/squareup/okhttp/ws/WebSocketListener;

.field private final reader:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

.field private volatile readerSentClose:Z

.field private final writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

.field private volatile writerSentClose:Z


# direct methods
.method public constructor <init>(ZLo/ui;Lo/uh;Ljava/util/Random;Ljava/util/concurrent/Executor;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/lang/String;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    .line 48
    iput-object p6, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    .line 50
    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-direct {v0, p1, p3, p4}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;-><init>(ZLo/uh;Ljava/util/Random;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    .line 51
    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    new-instance v1, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;

    invoke-direct {v1, p0, p6, p5, p7}, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;-><init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;-><init>(ZLo/ui;Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->reader:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/ws/RealWebSocket;)Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/ws/RealWebSocket;ILjava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->peerClose(ILjava/lang/String;)V

    return-void
.end method

.method private peerClose(ILjava/lang/String;)V
    .locals 4

    .line 137
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 138
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z

    .line 141
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 142
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 144
    :goto_1
    if-eqz v1, :cond_1

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    goto :goto_2

    .line 147
    :catch_0
    move-exception v2

    .line 152
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeConnection()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 154
    goto :goto_3

    .line 153
    :catch_1
    move-exception v2

    .line 156
    :goto_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/ws/WebSocketListener;->onClose(ILjava/lang/String;)V

    .line 157
    return-void
.end method

.method private readerErrorClose(Ljava/io/IOException;)V
    .locals 6

    .line 162
    iget-object v4, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 163
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z

    .line 166
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 167
    :goto_0
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 169
    :goto_1
    if-eqz v3, :cond_1

    .line 170
    instance-of v0, p1, Ljava/net/ProtocolException;

    if-eqz v0, :cond_1

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    goto :goto_2

    .line 174
    :catch_0
    move-exception v4

    .line 180
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeConnection()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 182
    goto :goto_3

    .line 181
    :catch_1
    move-exception v4

    .line 184
    :goto_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/ws/WebSocketListener;->onFailure(Ljava/io/IOException;)V

    .line 185
    return-void
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .locals 5

    .line 117
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 121
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    .line 124
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V

    .line 129
    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeConnection()V

    .line 132
    :cond_1
    return-void
.end method

.method public abstract closeConnection()V
.end method

.method public newMessageSink(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)Lo/uh;
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->newMessageSink(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)Lo/uh;

    move-result-object v0

    return-object v0
.end method

.method public readMessage()Z
    .locals 2

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->reader:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->processNextFrame()V

    .line 88
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerErrorClose(Ljava/io/IOException;)V

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lo/ue;)V
    .locals 2

    .line 101
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sendMessage(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lo/ue;)V

    .line 103
    return-void
.end method

.method public sendPing(Lo/ue;)V
    .locals 2

    .line 106
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writePing(Lo/ue;)V

    .line 108
    return-void
.end method

.method public sendPong(Lo/ue;)V
    .locals 2

    .line 112
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writePong(Lo/ue;)V

    .line 114
    return-void
.end method
