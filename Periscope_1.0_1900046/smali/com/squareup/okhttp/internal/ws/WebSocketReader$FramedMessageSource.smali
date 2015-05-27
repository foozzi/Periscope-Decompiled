.class final Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/va;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/ws/WebSocketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FramedMessageSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/ws/WebSocketReader;Lcom/squareup/okhttp/internal/ws/WebSocketReader$1;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;-><init>(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 275
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$200(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    const/4 v1, 0x1

    # setter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$202(Lcom/squareup/okhttp/internal/ws/WebSocketReader;Z)Z

    .line 277
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$100(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lo/ui;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$1000(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Lo/ui;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J
    invoke-static {v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$400(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J
    invoke-static {v3}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$300(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lo/ui;->ᵋ(J)V

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # invokes: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readUntilNonControlFrame()V
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$600(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)V

    .line 283
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lo/ui;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$1000(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Lo/ui;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J
    invoke-static {v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$400(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lo/ui;->ᵋ(J)V

    goto :goto_0

    .line 285
    :cond_2
    return-void
.end method

.method public read(Lo/ue;J)J
    .locals 10

    .line 237
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$100(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$200(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$300(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J
    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$400(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    return-wide v0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # invokes: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readUntilNonControlFrame()V
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$600(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)V

    .line 244
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$700(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected continuation opcode. Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I
    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$700(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$400(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 248
    const-wide/16 v0, -0x1

    return-wide v0

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$400(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J
    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$300(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 255
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$800(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 256
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$900(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 257
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lo/ui;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$1000(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Lo/ui;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B
    invoke-static {v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$900(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B

    move-result-object v1

    long-to-int v2, v6

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lo/ui;->read([BII)I

    move-result v0

    int-to-long v8, v0

    .line 258
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 259
    :cond_5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$900(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B

    move-result-object v0

    move-wide v1, v8

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B
    invoke-static {v3}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$1100(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J
    invoke-static {v4}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$300(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 260
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$900(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B

    move-result-object v0

    long-to-int v1, v8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lo/ue;->ˉ([BII)Lo/ue;

    goto :goto_0

    .line 262
    :cond_6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lo/ui;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$1000(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Lo/ui;

    move-result-object v0

    invoke-interface {v0, p1, v6, v7}, Lo/ui;->read(Lo/ue;J)J

    move-result-wide v8

    .line 263
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 266
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J
    invoke-static {v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$300(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J

    move-result-wide v1

    add-long/2addr v1, v8

    # setter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J
    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$302(Lcom/squareup/okhttp/internal/ws/WebSocketReader;J)J

    .line 267
    return-wide v8
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    # getter for: Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lo/ui;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->access$1000(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Lo/ui;

    move-result-object v0

    invoke-interface {v0}, Lo/ui;->timeout()Lo/vb;

    move-result-object v0

    return-object v0
.end method
