.class Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;
.super Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field private inputExhausted:Z

.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/HttpConnection;)V
    .locals 1

    .line 479
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpConnection$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpConnection$1;)V
    .locals 0

    .line 479
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 498
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 499
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;->inputExhausted:Z

    if-nez v0, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;->unexpectedEndOfInput()V

    .line 502
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;->closed:Z

    .line 503
    return-void
.end method

.method public read(Lo/ue;J)J
    .locals 5

    .line 484
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

    .line 485
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;->inputExhausted:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    return-wide v0

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lo/ui;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$500(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lo/ui;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lo/ui;->read(Lo/ue;J)J

    move-result-wide v3

    .line 489
    const-wide/16 v0, -0x1

    cmp-long v0, v3, v0

    if-nez v0, :cond_3

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;->inputExhausted:Z

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;->endOfInput(Z)V

    .line 492
    const-wide/16 v0, -0x1

    return-wide v0

    .line 494
    :cond_3
    return-wide v3
.end method
