.class final Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receive(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 26
    return-void
.end method
