.class final Lcom/squareup/okhttp/RequestBody$2;
.super Lcom/squareup/okhttp/RequestBody;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Lcom/squareup/okhttp/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/squareup/okhttp/RequestBody$2;->val$contentType:Lcom/squareup/okhttp/MediaType;

    iput-object p2, p0, Lcom/squareup/okhttp/RequestBody$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$2;->val$contentType:Lcom/squareup/okhttp/MediaType;

    return-object v0
.end method

.method public writeTo(Lo/uh;)V
    .locals 4

    .line 97
    const/4 v2, 0x0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$2;->val$file:Ljava/io/File;

    invoke-static {v0}, Lo/up;->source(Ljava/io/File;)Lo/va;

    move-result-object v0

    move-object v2, v0

    .line 100
    invoke-interface {p1, v2}, Lo/uh;->ˊ(Lo/va;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 103
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 104
    :goto_0
    return-void
.end method
