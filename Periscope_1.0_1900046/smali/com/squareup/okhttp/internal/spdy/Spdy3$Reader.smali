.class final Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final headerBlockReader:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;

.field private final source:Lo/ui;


# direct methods
.method constructor <init>(Lo/ui;Z)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    .line 114
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;-><init>(Lo/ui;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;

    .line 115
    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->client:Z

    .line 116
    return-void
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2

    .line 278
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 7

    .line 250
    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    const-string v0, "TYPE_GOAWAY length: %d != 8"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v4, v0, v1

    .line 252
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v5

    .line 253
    invoke-static {v5}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromSpdyGoAway(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v6

    .line 254
    if-nez v6, :cond_1

    .line 255
    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 257
    :cond_1
    sget-object v0, Lo/uj;->ZJ:Lo/uj;

    invoke-interface {p1, v4, v6, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;Lo/uj;)V

    .line 258
    return-void
.end method

.method private readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 10

    .line 226
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v7

    .line 227
    const v0, 0x7fffffff

    and-int v8, v7, v0

    .line 228
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;

    add-int/lit8 v1, p3, -0x4

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v9

    .line 229
    move-object v0, p1

    move v3, v8

    move-object v5, v9

    sget-object v6, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    .line 230
    return-void
.end method

.method private readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 6

    .line 243
    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const-string v0, "TYPE_PING length: %d != 4"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v4

    .line 245
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->client:Z

    and-int/lit8 v1, v4, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ne v0, v1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 246
    :goto_1
    const/4 v0, 0x0

    invoke-interface {p1, v5, v4, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ping(ZII)V

    .line 247
    return-void
.end method

.method private readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 7

    .line 215
    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    const-string v0, "TYPE_RST_STREAM length: %d != 8"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v4, v0, v1

    .line 217
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v5

    .line 218
    invoke-static {v5}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromSpdy3Rst(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v6

    .line 219
    if-nez v6, :cond_1

    .line 220
    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 222
    :cond_1
    invoke-interface {p1, v4, v6}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 223
    return-void
.end method

.method private readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 11

    .line 261
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v4

    .line 262
    mul-int/lit8 v0, v4, 0x8

    add-int/lit8 v0, v0, 0x4

    if-eq p3, v0, :cond_0

    .line 263
    const-string v0, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 265
    :cond_0
    new-instance v5, Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {v5}, Lcom/squareup/okhttp/internal/spdy/Settings;-><init>()V

    .line 266
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    .line 267
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v7

    .line 268
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v8

    .line 269
    const/high16 v0, -0x1000000

    and-int/2addr v0, v7

    ushr-int/lit8 v9, v0, 0x18

    .line 270
    const v0, 0xffffff

    and-int v10, v7, v0

    .line 271
    invoke-virtual {v5, v10, v9, v8}, Lcom/squareup/okhttp/internal/spdy/Settings;->set(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 266
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 273
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 274
    :goto_1
    invoke-interface {p1, v6, v5}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 275
    return-void
.end method

.method private readSynReply(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 11

    .line 207
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v7

    .line 208
    const v0, 0x7fffffff

    and-int v8, v7, v0

    .line 209
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;

    add-int/lit8 v1, p3, -0x4

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v9

    .line 210
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 211
    :goto_0
    move-object v0, p1

    move v2, v10

    move v3, v8

    move-object v5, v9

    sget-object v6, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    .line 212
    return-void
.end method

.method private readSynStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 14

    .line 193
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v7

    .line 194
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v8

    .line 195
    const v0, 0x7fffffff

    and-int v9, v7, v0

    .line 196
    const v0, 0x7fffffff

    and-int v10, v8, v0

    .line 197
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readShort()S

    .line 198
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;

    add-int/lit8 v1, p3, -0xa

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v11

    .line 200
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 201
    :goto_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 202
    :goto_1
    move-object v0, p1

    move v1, v13

    move v2, v12

    move v3, v9

    move v4, v10

    move-object v5, v11

    sget-object v6, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    .line 204
    return-void
.end method

.method private readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 9

    .line 233
    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    const-string v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v4

    .line 235
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v5

    .line 236
    const v0, 0x7fffffff

    and-int v6, v4, v0

    .line 237
    const v0, 0x7fffffff

    and-int/2addr v0, v5

    int-to-long v7, v0

    .line 238
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_1

    const-string v0, "windowSizeIncrement was 0"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 239
    :cond_1
    invoke-interface {p1, v6, v7, v8}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    .line 240
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->close()V

    .line 283
    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;)Z
    .locals 10

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v3

    .line 130
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v5

    .line 132
    const/4 v0, 0x0

    return v0

    .line 135
    :goto_0
    const/high16 v0, -0x80000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 136
    :goto_1
    const/high16 v0, -0x1000000

    and-int/2addr v0, v4

    ushr-int/lit8 v6, v0, 0x18

    .line 137
    const v0, 0xffffff

    and-int v7, v4, v0

    .line 139
    if-eqz v5, :cond_2

    .line 140
    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v3

    ushr-int/lit8 v8, v0, 0x10

    .line 141
    const v0, 0xffff

    and-int v9, v3, v0

    .line 143
    const/4 v0, 0x3

    if-eq v8, v0, :cond_1

    .line 144
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version != 3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_2

    .line 149
    :pswitch_0
    invoke-direct {p0, p1, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readSynStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    .line 150
    const/4 v0, 0x1

    return v0

    .line 153
    :pswitch_1
    invoke-direct {p0, p1, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readSynReply(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    .line 154
    const/4 v0, 0x1

    return v0

    .line 157
    :pswitch_2
    invoke-direct {p0, p1, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    .line 158
    const/4 v0, 0x1

    return v0

    .line 161
    :pswitch_3
    invoke-direct {p0, p1, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    .line 162
    const/4 v0, 0x1

    return v0

    .line 165
    :pswitch_4
    invoke-direct {p0, p1, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    .line 166
    const/4 v0, 0x1

    return v0

    .line 169
    :pswitch_5
    invoke-direct {p0, p1, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    .line 170
    const/4 v0, 0x1

    return v0

    .line 173
    :pswitch_6
    invoke-direct {p0, p1, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    .line 174
    const/4 v0, 0x1

    return v0

    .line 177
    :pswitch_7
    invoke-direct {p0, p1, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    .line 178
    const/4 v0, 0x1

    return v0

    .line 181
    :goto_2
    :pswitch_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    int-to-long v1, v7

    invoke-interface {v0, v1, v2}, Lo/ui;->ᵋ(J)V

    .line 182
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_2
    const v0, 0x7fffffff

    and-int v8, v3, v0

    .line 186
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    .line 187
    :goto_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->source:Lo/ui;

    invoke-interface {p1, v9, v8, v0, v7}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->data(ZILo/ui;I)V

    .line 188
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 0

    .line 119
    return-void
.end method
