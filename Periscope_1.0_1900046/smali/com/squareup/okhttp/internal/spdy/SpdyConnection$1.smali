.class Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

.field final synthetic val$errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;->val$streamId:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;->val$errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;->val$streamId:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;->val$errorCode:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynReset(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    goto :goto_0

    .line 344
    :catch_0
    move-exception v3

    .line 346
    :goto_0
    return-void
.end method
