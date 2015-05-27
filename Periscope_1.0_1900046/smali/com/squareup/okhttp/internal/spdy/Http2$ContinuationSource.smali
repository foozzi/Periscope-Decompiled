.class final Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/va;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:I

.field length:I

.field padding:S

.field private final source:Lo/ui;

.field streamId:I


# direct methods
.method public constructor <init>(Lo/ui;)V
    .locals 0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lo/ui;

    .line 606
    return-void
.end method

.method private readContinuationHeader()V
    .locals 7

    .line 631
    iget v5, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    .line 633
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lo/ui;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->readMedium(Lo/ui;)I
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$300(Lo/ui;)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->length:I

    .line 634
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v6, v0

    .line 635
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->flags:B

    .line 636
    # getter for: Lcom/squareup/okhttp/internal/spdy/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/squareup/okhttp/internal/spdy/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->length:I

    iget-byte v3, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->flags:B

    const/4 v4, 0x1

    invoke-static {v4, v1, v2, v6, v3}, Lcom/squareup/okhttp/internal/spdy/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    .line 638
    const/16 v0, 0x9

    if-eq v6, v0, :cond_1

    const-string v0, "%s != TYPE_CONTINUATION"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 639
    :cond_1
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    if-eq v0, v5, :cond_2

    const-string v0, "TYPE_CONTINUATION streamId changed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 640
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 628
    return-void
.end method

.method public read(Lo/ue;J)J
    .locals 5

    .line 609
    :goto_0
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    if-nez v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lo/ui;

    iget-short v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->padding:S

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lo/ui;->ᵋ(J)V

    .line 611
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->padding:S

    .line 612
    iget-byte v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->flags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 613
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->readContinuationHeader()V

    goto :goto_0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lo/ui;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lo/ui;->read(Lo/ue;J)J

    move-result-wide v3

    .line 618
    const-wide/16 v0, -0x1

    cmp-long v0, v3, v0

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    return-wide v0

    .line 619
    :cond_2
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    int-to-long v0, v0

    sub-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    .line 620
    return-wide v3
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->timeout()Lo/vb;

    move-result-object v0

    return-object v0
.end method
