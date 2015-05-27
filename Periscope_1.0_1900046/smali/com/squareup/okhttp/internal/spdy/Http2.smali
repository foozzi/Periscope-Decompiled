.class public final Lcom/squareup/okhttp/internal/spdy/Http2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/Variant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/Http2$FrameLogger;,
        Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;,
        Lcom/squareup/okhttp/internal/spdy/Http2$Writer;,
        Lcom/squareup/okhttp/internal/spdy/Http2$Reader;
    }
.end annotation


# static fields
.field private static final CONNECTION_PREFACE:Lo/uj;

.field static final FLAG_ACK:B = 0x1t

.field static final FLAG_COMPRESSED:B = 0x20t

.field static final FLAG_END_HEADERS:B = 0x4t

.field static final FLAG_END_PUSH_PROMISE:B = 0x4t

.field static final FLAG_END_STREAM:B = 0x1t

.field static final FLAG_NONE:B = 0x0t

.field static final FLAG_PADDED:B = 0x8t

.field static final FLAG_PRIORITY:B = 0x20t

.field static final INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field static final TYPE_CONTINUATION:B = 0x9t

.field static final TYPE_DATA:B = 0x0t

.field static final TYPE_GOAWAY:B = 0x7t

.field static final TYPE_HEADERS:B = 0x1t

.field static final TYPE_PING:B = 0x6t

.field static final TYPE_PRIORITY:B = 0x2t

.field static final TYPE_PUSH_PROMISE:B = 0x5t

.field static final TYPE_RST_STREAM:B = 0x3t

.field static final TYPE_SETTINGS:B = 0x4t

.field static final TYPE_WINDOW_UPDATE:B = 0x8t

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/squareup/okhttp/internal/spdy/Http2$FrameLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Http2;->logger:Ljava/util/logging/Logger;

    .line 49
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 50
    invoke-static {v0}, Lo/uj;->ﺗ(Ljava/lang/String;)Lo/uj;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Http2;->CONNECTION_PREFACE:Lo/uj;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    return-void
.end method

.method static synthetic access$000()Lo/uj;
    .locals 1

    .line 42
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Http2;->CONNECTION_PREFACE:Lo/uj;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 42
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Http2;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1

    .line 42
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lo/ui;)I
    .locals 1

    .line 42
    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/Http2;->readMedium(Lo/ui;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(IBS)I
    .locals 1

    .line 42
    invoke-static {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/Http2;->lengthWithoutPadding(IBS)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1

    .line 42
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/spdy/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lo/uh;I)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/spdy/Http2;->writeMedium(Lo/uh;I)V

    return-void
.end method

.method private static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2

    .line 586
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static lengthWithoutPadding(IBS)I
    .locals 4

    .line 645
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 646
    :cond_0
    if-le p2, p0, :cond_1

    .line 647
    const-string v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 649
    :cond_1
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method private static readMedium(Lo/ui;)I
    .locals 3

    .line 763
    invoke-interface {p0}, Lo/ui;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 764
    invoke-interface {p0}, Lo/ui;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 765
    invoke-interface {p0}, Lo/ui;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static writeMedium(Lo/uh;I)V
    .locals 2

    .line 769
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lo/uh;->ɟ(I)Lo/uh;

    .line 770
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lo/uh;->ɟ(I)Lo/uh;

    .line 771
    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Lo/uh;->ɟ(I)Lo/uh;

    .line 772
    return-void
.end method


# virtual methods
.method public getProtocol()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .line 46
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public newReader(Lo/ui;Z)Lcom/squareup/okhttp/internal/spdy/FrameReader;
    .locals 2

    .line 80
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1, p2}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;-><init>(Lo/ui;IZ)V

    return-object v0
.end method

.method public newWriter(Lo/uh;Z)Lcom/squareup/okhttp/internal/spdy/FrameWriter;
    .locals 1

    .line 84
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;

    invoke-direct {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/Http2$Writer;-><init>(Lo/uh;Z)V

    return-object v0
.end method
