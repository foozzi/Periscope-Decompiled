.class Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$1;
.super Lo/um;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;Lo/va;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;

    invoke-direct {p0, p2}, Lo/um;-><init>(Lo/va;)V

    return-void
.end method


# virtual methods
.method public read(Lo/ue;J)J
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;

    # getter for: Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->access$000(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;

    # getter for: Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->access$000(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-super {p0, p1, v0, v1}, Lo/um;->read(Lo/ue;J)J

    move-result-wide v3

    .line 58
    const-wide/16 v0, -0x1

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;

    # getter for: Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->access$000(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;)I

    move-result v1

    int-to-long v1, v1

    sub-long/2addr v1, v3

    long-to-int v1, v1

    # setter for: Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->access$002(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;I)I

    .line 60
    return-wide v3
.end method
