.class public final Lcom/squareup/okhttp/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;,
        Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field private closed:Z

.field private frameBytesRead:J

.field private final frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

.field private frameLength:J

.field private final framedMessageSource:Lo/va;

.field private final isClient:Z

.field private isControlFrame:Z

.field private isFinalFrame:Z

.field private isMasked:Z

.field private final maskBuffer:[B

.field private final maskKey:[B

.field private messageClosed:Z

.field private opcode:I

.field private final source:Lo/ui;


# direct methods
.method public constructor <init>(ZLo/ui;Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;-><init>(Lcom/squareup/okhttp/internal/ws/WebSocketReader;Lcom/squareup/okhttp/internal/ws/WebSocketReader$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->framedMessageSource:Lo/va;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    .line 77
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    .line 80
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "frameCallback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isClient:Z

    .line 83
    iput-object p2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lo/ui;

    .line 84
    iput-object p3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Lo/ui;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lo/ui;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/ws/WebSocketReader;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/squareup/okhttp/internal/ws/WebSocketReader;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z

    return v0
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    return-void
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)I
    .locals 1

    .line 51
    iget v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    return v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    return v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    return-object v0
.end method

.method private readControlFrame()V
    .locals 9

    .line 159
    const/4 v6, 0x0

    .line 160
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 161
    new-instance v6, Lo/ue;

    invoke-direct {v6}, Lo/ue;-><init>()V

    .line 163
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lo/ui;

    iget-wide v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v0, v6, v1, v2}, Lo/ui;->ˊ(Lo/ue;J)V

    goto :goto_1

    .line 166
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 167
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 168
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lo/ui;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v7}, Lo/ui;->read([BII)I

    move-result v8

    .line 169
    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    int-to-long v1, v8

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 171
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1, v8}, Lo/ue;->ˉ([BII)Lo/ue;

    .line 172
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    int-to-long v2, v8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 173
    goto :goto_0

    .line 177
    :cond_2
    :goto_1
    iget v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 179
    :pswitch_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v0, v6}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onPing(Lo/ue;)V

    .line 180
    goto :goto_3

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v0, v6}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onPong(Lo/ue;)V

    .line 183
    goto :goto_3

    .line 185
    :pswitch_2
    const/4 v7, 0x0

    .line 186
    const-string v8, ""

    .line 187
    if-eqz v6, :cond_3

    .line 188
    invoke-virtual {v6}, Lo/ue;->readShort()S

    move-result v7

    .line 189
    invoke-virtual {v6}, Lo/ue;->ed()Ljava/lang/String;

    move-result-object v8

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v0, v7, v8}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onClose(ILjava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    .line 193
    goto :goto_3

    .line 195
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readHeader()V
    .locals 9

    .line 106
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readByte()B

    move-result v0

    and-int/lit16 v4, v0, 0xff

    .line 110
    and-int/lit8 v0, v4, 0xf

    iput v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    .line 111
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z

    .line 112
    and-int/lit8 v0, v4, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 115
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-nez v0, :cond_3

    .line 116
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frames must be final."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_3
    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 120
    :goto_2
    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    .line 121
    :goto_3
    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    .line 122
    :goto_4
    if-nez v5, :cond_7

    if-nez v6, :cond_7

    if-eqz v7, :cond_8

    .line 124
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Reserved flags are unsupported."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readByte()B

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 129
    and-int/lit16 v0, v8, 0x80

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    .line 130
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isClient:Z

    if-ne v0, v1, :cond_a

    .line 132
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Client-sent frames must be masked. Server sent must not."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_a
    and-int/lit8 v0, v8, 0x7f

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    .line 137
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 138
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readShort()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    goto :goto_6

    .line 139
    :cond_b
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x7f

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 140
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    .line 141
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    .line 142
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame length 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    .line 143
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_c
    :goto_6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 148
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_d

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x7d

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 149
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frame must be less than 125B."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_d
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    if-eqz v0, :cond_e

    .line 154
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lo/ui;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    invoke-interface {v0, v1}, Lo/ui;->readFully([B)V

    .line 156
    :cond_e
    return-void
.end method

.method private readMessageFrame()V
    .locals 4

    .line 201
    iget v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 203
    :sswitch_0
    sget-object v3, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;->TEXT:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    .line 204
    goto :goto_1

    .line 206
    :sswitch_1
    sget-object v3, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;->BINARY:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    .line 207
    goto :goto_1

    .line 209
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    .line 213
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->framedMessageSource:Lo/va;

    invoke-static {v1}, Lo/up;->ˋ(Lo/va;)Lo/ui;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onMessage(Lo/ui;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)V

    .line 214
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Listener failed to call close on message payload."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method private readUntilNonControlFrame()V
    .locals 1

    .line 221
    :goto_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readHeader()V

    .line 223
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v0, :cond_0

    .line 224
    goto :goto_1

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0

    .line 228
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public processNextFrame()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readHeader()V

    .line 98
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readMessageFrame()V

    .line 103
    :goto_0
    return-void
.end method
