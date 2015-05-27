.class Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;
.super Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/HttpConnection;J)V
    .locals 4

    .line 378
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpConnection$1;)V

    .line 379
    iput-wide p2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    .line 380
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->endOfInput(Z)V

    .line 383
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 404
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 406
    :cond_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 407
    const/16 v1, 0x64

    invoke-static {p0, v1, v0}, Lcom/squareup/okhttp/internal/Util;->discard(Lo/va;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->unexpectedEndOfInput()V

    .line 411
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    .line 412
    return-void
.end method

.method public read(Lo/ue;J)J
    .locals 6

    .line 386
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    return-wide v0

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lo/ui;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$500(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lo/ui;

    move-result-object v0

    iget-wide v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lo/ui;->read(Lo/ue;J)J

    move-result-wide v4

    .line 391
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    .line 392
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->unexpectedEndOfInput()V

    .line 393
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_3
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    .line 397
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->endOfInput(Z)V

    .line 400
    :cond_4
    return-wide v4
.end method
