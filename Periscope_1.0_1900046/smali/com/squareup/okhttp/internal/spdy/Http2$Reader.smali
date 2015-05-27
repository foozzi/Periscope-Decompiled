.class final Lcom/squareup/okhttp/internal/spdy/Http2$Reader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

.field final hpackReader:Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;

.field private final source:Lo/ui;


# direct methods
.method constructor <init>(Lo/ui;IZ)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    .line 97
    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->client:Z

    .line 98
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;-><init>(Lo/ui;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    .line 99
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    invoke-direct {v0, p2, v1}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;-><init>(ILo/va;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;

    .line 100
    return-void
.end method

.method private readData(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 6

    .line 219
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 220
    :goto_0
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 221
    :goto_1
    if-eqz v4, :cond_2

    .line 222
    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 225
    :cond_2
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v5, v0

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 226
    :goto_2
    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->lengthWithoutPadding(IBS)I
    invoke-static {p2, p3, v5}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$400(IBS)I

    move-result p2

    .line 228
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {p1, v3, p4, v0, p2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->data(ZILo/ui;I)V

    .line 229
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    int-to-long v1, v5

    invoke-interface {v0, v1, v2}, Lo/ui;->ᵋ(J)V

    .line 230
    return-void
.end method

.method private readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 9

    .line 334
    const/16 v0, 0x8

    if-ge p2, v0, :cond_0

    const-string v0, "TYPE_GOAWAY length < 8: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 335
    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "TYPE_GOAWAY streamId != 0"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v4

    .line 337
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v5

    .line 338
    add-int/lit8 v6, p2, -0x8

    .line 339
    invoke-static {v5}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v7

    .line 340
    if-nez v7, :cond_2

    .line 341
    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 343
    :cond_2
    sget-object v8, Lo/uj;->ZJ:Lo/uj;

    .line 344
    if-lez v6, :cond_3

    .line 345
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    int-to-long v1, v6

    invoke-interface {v0, v1, v2}, Lo/ui;->ᗮ(J)Lo/uj;

    move-result-object v8

    .line 347
    :cond_3
    invoke-interface {p1, v4, v7, v8}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;Lo/uj;)V

    .line 348
    return-void
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    iput p1, v1, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    iput p1, v0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->length:I

    .line 206
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    iput-short p2, v0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->padding:S

    .line 207
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    iput-byte p3, v0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->flags:B

    .line 208
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    iput p4, v0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    .line 212
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readHeaders()V

    .line 213
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 10

    .line 185
    if-nez p4, :cond_0

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 187
    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 189
    :goto_0
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v8, v0

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 191
    :goto_1
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_3

    .line 192
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V

    .line 193
    add-int/lit8 p2, p2, -0x5

    .line 196
    :cond_3
    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->lengthWithoutPadding(IBS)I
    invoke-static {p2, p3, v8}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$400(IBS)I

    move-result p2

    .line 198
    invoke-direct {p0, p2, v8, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v9

    .line 200
    move-object v0, p1

    move v2, v7

    move v3, p4

    move-object v5, v9

    sget-object v6, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    .line 201
    return-void
.end method

.method private readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 7

    .line 324
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const-string v0, "TYPE_PING length != 8: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 325
    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "TYPE_PING streamId != 0"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v4

    .line 327
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v5

    .line 328
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 329
    :goto_0
    invoke-interface {p1, v6, v4, v5}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ping(ZII)V

    .line 330
    return-void
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V
    .locals 6

    .line 240
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v2

    .line 241
    const/high16 v0, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 242
    :goto_0
    const v0, 0x7fffffff

    and-int v4, v2, v0

    .line 243
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v5, v0, 0x1

    .line 244
    invoke-interface {p1, p2, v4, v5, v3}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->priority(IIIZ)V

    .line 245
    return-void
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 4

    .line 234
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 235
    :cond_0
    if-nez p4, :cond_1

    const-string v0, "TYPE_PRIORITY streamId == 0"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 236
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V

    .line 237
    return-void
.end method

.method private readPushPromise(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 5

    .line 311
    if-nez p4, :cond_0

    .line 312
    const-string v0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 314
    :cond_0
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 315
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v3, v0, v1

    .line 316
    add-int/lit8 p2, p2, -0x4

    .line 317
    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->lengthWithoutPadding(IBS)I
    invoke-static {p2, p3, v2}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$400(IBS)I

    move-result p2

    .line 318
    invoke-direct {p0, p2, v2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v4

    .line 319
    invoke-interface {p1, p4, v3, v4}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    .line 320
    return-void
.end method

.method private readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 6

    .line 249
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 250
    :cond_0
    if-nez p4, :cond_1

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v4

    .line 252
    invoke-static {v4}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v5

    .line 253
    if-nez v5, :cond_2

    .line 254
    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 256
    :cond_2
    invoke-interface {p1, p4, v5}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 257
    return-void
.end method

.method private readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 8

    .line 261
    if-eqz p4, :cond_0

    const-string v0, "TYPE_SETTINGS streamId != 0"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 262
    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    .line 263
    if-eqz p2, :cond_1

    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 264
    :cond_1
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ackSettings()V

    .line 265
    return-void

    .line 268
    :cond_2
    rem-int/lit8 v0, p2, 0x6

    if-eqz v0, :cond_3

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 269
    :cond_3
    new-instance v4, Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {v4}, Lcom/squareup/okhttp/internal/spdy/Settings;-><init>()V

    .line 270
    const/4 v5, 0x0

    :goto_0
    if-ge v5, p2, :cond_6

    .line 271
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readShort()S

    move-result v6

    .line 272
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v7

    .line 274
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 276
    :pswitch_0
    goto :goto_2

    .line 278
    :pswitch_1
    if-eqz v7, :cond_5

    const/4 v0, 0x1

    if-eq v7, v0, :cond_5

    .line 279
    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 283
    :pswitch_2
    const/4 v6, 0x4

    .line 284
    goto :goto_2

    .line 286
    :pswitch_3
    const/4 v6, 0x7

    .line 287
    if-gez v7, :cond_5

    .line 288
    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 292
    :pswitch_4
    const/16 v0, 0x4000

    if-lt v7, v0, :cond_4

    const v0, 0xffffff

    if-le v7, v0, :cond_5

    .line 293
    :cond_4
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 297
    :pswitch_5
    goto :goto_2

    .line 299
    :goto_1
    const-string v0, "PROTOCOL_ERROR invalid settings id: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 301
    :cond_5
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v4, v6, v0, v7}, Lcom/squareup/okhttp/internal/spdy/Settings;->set(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 270
    add-int/lit8 v5, v5, 0x6

    goto/16 :goto_0

    .line 303
    :cond_6
    const/4 v0, 0x0

    invoke-interface {p1, v0, v4}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 304
    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    move-result v0

    if-ltz v0, :cond_7

    .line 305
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerTableSizeSetting(I)V

    .line 307
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 6

    .line 352
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long v4, v0, v2

    .line 354
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    const-string v0, "windowSizeIncrement was 0"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 355
    :cond_1
    invoke-interface {p1, p4, v4, v5}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    .line 356
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->close()V

    .line 360
    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;)Z
    .locals 8

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    const-wide/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lo/ui;->ᔇ(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v4

    .line 115
    const/4 v0, 0x0

    return v0

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->readMedium(Lo/ui;)I
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$300(Lo/ui;)I

    move-result v4

    .line 131
    if-ltz v4, :cond_0

    const/16 v0, 0x4000

    if-le v4, v0, :cond_1

    .line 132
    :cond_0
    const-string v0, "FRAME_SIZE_ERROR: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v5, v0

    .line 135
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v6, v0

    .line 136
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v7, v0, v1

    .line 137
    # getter for: Lcom/squareup/okhttp/internal/spdy/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Lcom/squareup/okhttp/internal/spdy/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v7, v4, v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 139
    :cond_2
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 141
    :pswitch_0
    invoke-direct {p0, p1, v4, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readData(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    .line 142
    goto :goto_2

    .line 145
    :pswitch_1
    invoke-direct {p0, p1, v4, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    .line 146
    goto :goto_2

    .line 149
    :pswitch_2
    invoke-direct {p0, p1, v4, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    .line 150
    goto :goto_2

    .line 153
    :pswitch_3
    invoke-direct {p0, p1, v4, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    .line 154
    goto :goto_2

    .line 157
    :pswitch_4
    invoke-direct {p0, p1, v4, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    .line 158
    goto :goto_2

    .line 161
    :pswitch_5
    invoke-direct {p0, p1, v4, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readPushPromise(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    .line 162
    goto :goto_2

    .line 165
    :pswitch_6
    invoke-direct {p0, p1, v4, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    .line 166
    goto :goto_2

    .line 169
    :pswitch_7
    invoke-direct {p0, p1, v4, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    .line 170
    goto :goto_2

    .line 173
    :pswitch_8
    invoke-direct {p0, p1, v4, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    .line 174
    goto :goto_2

    .line 178
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    int-to-long v1, v4

    invoke-interface {v0, v1, v2}, Lo/ui;->ᵋ(J)V

    .line 180
    :goto_2
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 6

    .line 103
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->client:Z

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lo/ui;

    # getter for: Lcom/squareup/okhttp/internal/spdy/Http2;->CONNECTION_PREFACE:Lo/uj;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$000()Lo/uj;

    move-result-object v1

    invoke-virtual {v1}, Lo/uj;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lo/ui;->ᗮ(J)Lo/uj;

    move-result-object v5

    .line 105
    # getter for: Lcom/squareup/okhttp/internal/spdy/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/squareup/okhttp/internal/spdy/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "<< CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5}, Lo/uj;->el()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    :cond_1
    # getter for: Lcom/squareup/okhttp/internal/spdy/Http2;->CONNECTION_PREFACE:Lo/uj;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$000()Lo/uj;

    move-result-object v0

    invoke-virtual {v0, v5}, Lo/uj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    const-string v0, "Expected a connection header but was %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Lo/uj;->ei()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 109
    :cond_2
    return-void
.end method
