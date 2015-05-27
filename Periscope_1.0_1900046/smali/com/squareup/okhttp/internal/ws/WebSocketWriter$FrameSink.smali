.class final Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/uz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FrameSink"
.end annotation


# instance fields
.field private isFirstFrame:Z

.field private payloadType:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Lcom/squareup/okhttp/internal/ws/WebSocketWriter$1;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;-><init>(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)V

    return-void
.end method

.method static synthetic access$102(Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)Lcom/squareup/okhttp/ws/WebSocket$PayloadType;
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->payloadType:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    return-object p1
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;Z)Z
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    return p1
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 274
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->closed:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$400(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lo/uh;

    move-result-object v3

    monitor-enter v3

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lo/uh;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lo/uh;->ɟ(I)Lo/uh;

    .line 281
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$600(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lo/uh;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lo/uh;->ɟ(I)Lo/uh;

    .line 283
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$800(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Ljava/util/Random;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B
    invoke-static {v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$700(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 284
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lo/uh;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B
    invoke-static {v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$700(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lo/uh;->ᐧ([B)Lo/uh;

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lo/uh;

    move-result-object v0

    invoke-interface {v0, v2}, Lo/uh;->ɟ(I)Lo/uh;

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lo/uh;

    move-result-object v0

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 291
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    const/4 v1, 0x0

    # setter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$902(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Z)Z

    .line 292
    return-void
.end method

.method public flush()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->closed:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$400(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lo/uh;

    move-result-object v2

    monitor-enter v2

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lo/uh;

    move-result-object v0

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 266
    :goto_0
    return-void
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lo/uh;

    move-result-object v0

    invoke-interface {v0}, Lo/uh;->timeout()Lo/vb;

    move-result-object v0

    return-object v0
.end method

.method public write(Lo/ue;J)V
    .locals 7

    .line 256
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->payloadType:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    move-object v2, p1

    move-wide v3, p2

    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v6, 0x0

    # invokes: Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeFrame(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lo/ue;JZZ)V
    invoke-static/range {v0 .. v6}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$300(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lo/ue;JZZ)V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 258
    return-void
.end method
