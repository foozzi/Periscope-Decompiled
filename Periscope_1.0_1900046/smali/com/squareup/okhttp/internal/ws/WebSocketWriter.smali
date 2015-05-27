.class public final Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# instance fields
.field private activeWriter:Z

.field private closed:Z

.field private final frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

.field private final isClient:Z

.field private final maskBuffer:[B

.field private final maskKey:[B

.field private final random:Ljava/util/Random;

.field private final sink:Lo/uh;


# direct methods
.method public constructor <init>(ZLo/uh;Ljava/util/Random;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;-><init>(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Lcom/squareup/okhttp/internal/ws/WebSocketWriter$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    .line 65
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "random == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    .line 68
    iput-object p2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    .line 69
    iput-object p3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    .line 72
    if-eqz p1, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [B

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    .line 73
    if-eqz p1, :cond_3

    const/16 v0, 0x800

    new-array v0, v0, [B

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    .line 74
    return-void
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lo/ue;JZZ)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p6}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeFrame(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lo/ue;JZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->closed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lo/uh;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    return-object v0
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    return v0
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)[B
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    return-object v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Ljava/util/Random;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$902(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z

    return p1
.end method

.method private writeAllMasked(Lo/ui;J)V
    .locals 10

    .line 240
    const-wide/16 v6, 0x0

    .line 241
    :goto_0
    cmp-long v0, v6, p2

    if-gez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v8, v0

    .line 243
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v8}, Lo/ui;->read([BII)I

    move-result v9

    .line 244
    const/4 v0, -0x1

    if-ne v9, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    int-to-long v1, v9

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    move-wide v4, v6

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 246
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v9}, Lo/uh;->ˌ([BII)Lo/uh;

    .line 247
    int-to-long v0, v9

    add-long/2addr v6, v0

    .line 248
    goto :goto_0

    .line 249
    :cond_1
    return-void
.end method

.method private writeControlFrame(ILo/ue;)V
    .locals 5

    .line 120
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const/4 v2, 0x0

    .line 123
    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {p2}, Lo/ue;->size()J

    move-result-wide v0

    long-to-int v2, v0

    .line 125
    const/16 v0, 0x7d

    if-le v2, v0, :cond_1

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Payload size must be less than or equal to 125"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    or-int/lit16 v3, p1, 0x80

    .line 132
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    invoke-interface {v0, v3}, Lo/uh;->ɟ(I)Lo/uh;

    .line 134
    move v4, v2

    .line 135
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_2

    .line 136
    or-int/lit16 v4, v4, 0x80

    .line 137
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    invoke-interface {v0, v4}, Lo/uh;->ɟ(I)Lo/uh;

    .line 139
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 140
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v0, v1}, Lo/uh;->ᐧ([B)Lo/uh;

    .line 142
    if-eqz p2, :cond_3

    .line 143
    int-to-long v0, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeAllMasked(Lo/ui;J)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    invoke-interface {v0, v4}, Lo/uh;->ɟ(I)Lo/uh;

    .line 148
    if-eqz p2, :cond_3

    .line 149
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    invoke-interface {v0, p2}, Lo/uh;->ˊ(Lo/va;)J

    .line 153
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V

    .line 154
    return-void
.end method

.method private writeFrame(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lo/ue;JZZ)V
    .locals 8

    .line 187
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    const/4 v3, 0x0

    .line 190
    if-eqz p5, :cond_1

    .line 191
    sget-object v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$1;->$SwitchMap$com$squareup$okhttp$ws$WebSocket$PayloadType:[I

    invoke-virtual {p1}, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 193
    :sswitch_0
    const/4 v3, 0x1

    .line 194
    goto :goto_1

    .line 196
    :sswitch_1
    const/4 v3, 0x2

    .line 197
    goto :goto_1

    .line 199
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown payload type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    monitor-enter v4

    .line 204
    move v5, v3

    .line 205
    if-eqz p6, :cond_2

    .line 206
    or-int/lit16 v5, v5, 0x80

    .line 208
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    invoke-interface {v0, v5}, Lo/uh;->ɟ(I)Lo/uh;

    .line 210
    const/4 v6, 0x0

    .line 211
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_3

    .line 212
    const/16 v6, 0x80

    .line 213
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 215
    :cond_3
    const-wide/16 v0, 0x7d

    cmp-long v0, p3, v0

    if-gtz v0, :cond_4

    .line 216
    long-to-int v0, p3

    or-int/2addr v6, v0

    .line 217
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    invoke-interface {v0, v6}, Lo/uh;->ɟ(I)Lo/uh;

    goto :goto_2

    .line 218
    :cond_4
    const-wide/32 v0, 0xffff

    cmp-long v0, p3, v0

    if-gtz v0, :cond_5

    .line 219
    or-int/lit8 v6, v6, 0x7e

    .line 220
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    invoke-interface {v0, v6}, Lo/uh;->ɟ(I)Lo/uh;

    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    long-to-int v1, p3

    invoke-interface {v0, v1}, Lo/uh;->ɔ(I)Lo/uh;

    goto :goto_2

    .line 223
    :cond_5
    or-int/lit8 v6, v6, 0x7f

    .line 224
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    invoke-interface {v0, v6}, Lo/uh;->ɟ(I)Lo/uh;

    .line 225
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    invoke-interface {v0, p3, p4}, Lo/uh;->ː(J)Lo/uh;

    .line 228
    :goto_2
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_6

    .line 229
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v0, v1}, Lo/uh;->ᐧ([B)Lo/uh;

    .line 230
    invoke-direct {p0, p2, p3, p4}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeAllMasked(Lo/ui;J)V

    goto :goto_3

    .line 232
    :cond_6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    invoke-interface {v0, p2, p3, p4}, Lo/uh;->write(Lo/ue;J)V

    .line 235
    :goto_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit v4

    goto :goto_4

    :catchall_0
    move-exception v7

    monitor-exit v4

    throw v7

    .line 237
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public newMessageSink(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)Lo/uh;
    .locals 2

    .line 161
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another message writer is active. Did you call close()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 167
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    # setter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->payloadType:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;
    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->access$102(Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    .line 168
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    const/4 v1, 0x1

    # setter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->access$202(Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;Z)Z

    .line 169
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    invoke-static {v0}, Lo/up;->ˊ(Lo/uz;)Lo/uh;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lo/ue;)V
    .locals 7

    .line 177
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "payload == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z

    if-eqz v0, :cond_2

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A message writer is active. Did you call close()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual {p2}, Lo/ue;->size()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeFrame(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lo/ue;JZZ)V

    .line 183
    return-void
.end method

.method public writeClose(ILjava/lang/String;)V
    .locals 5

    .line 99
    const/4 v2, 0x0

    .line 100
    if-eqz p1, :cond_2

    .line 101
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1388

    if-lt p1, v0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Code must be in range [1000,5000)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    new-instance v2, Lo/ue;

    invoke-direct {v2}, Lo/ue;-><init>()V

    .line 105
    invoke-virtual {v2, p1}, Lo/ue;->ﻟ(I)Lo/ue;

    .line 106
    if-eqz p2, :cond_3

    .line 107
    invoke-virtual {v2, p2}, Lo/ue;->ﯾ(Ljava/lang/String;)Lo/ue;

    goto :goto_0

    .line 109
    :cond_2
    if-eqz p2, :cond_3

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Code required to include reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    monitor-enter v3

    .line 114
    const/16 v0, 0x8

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeControlFrame(ILo/ue;)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 117
    :goto_1
    return-void
.end method

.method public writePing(Lo/ue;)V
    .locals 3

    .line 78
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    monitor-enter v1

    .line 79
    const/16 v0, 0x9

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeControlFrame(ILo/ue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 81
    :goto_0
    return-void
.end method

.method public writePong(Lo/ue;)V
    .locals 3

    .line 85
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lo/uh;

    monitor-enter v1

    .line 86
    const/16 v0, 0xa

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeControlFrame(ILo/ue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 88
    :goto_0
    return-void
.end method
