.class final Lcom/squareup/okhttp/Cache$CacheRequestImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/http/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Lo/uz;

.field private cacheOut:Lo/uz;

.field private done:Z

.field private final editor:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

.field final synthetic this$0:Lcom/squareup/okhttp/Cache;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .locals 2

    .line 408
    iput-object p1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/squareup/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p2, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->editor:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    .line 410
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lo/uz;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->cacheOut:Lo/uz;

    .line 411
    new-instance v0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;

    iget-object v1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->cacheOut:Lo/uz;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;-><init>(Lcom/squareup/okhttp/Cache$CacheRequestImpl;Lo/uz;Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->body:Lo/uz;

    .line 424
    return-void
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/Cache$CacheRequestImpl;)Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->done:Z

    return v0
.end method

.method static synthetic access$702(Lcom/squareup/okhttp/Cache$CacheRequestImpl;Z)Z
    .locals 0

    .line 402
    iput-boolean p1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->done:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 3

    .line 427
    iget-object v1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/squareup/okhttp/Cache;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 429
    monitor-exit v1

    return-void

    .line 431
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->done:Z

    .line 432
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/squareup/okhttp/Cache;

    # operator++ for: Lcom/squareup/okhttp/Cache;->writeAbortCount:I
    invoke-static {v0}, Lcom/squareup/okhttp/Cache;->access$908(Lcom/squareup/okhttp/Cache;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 434
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->cacheOut:Lo/uz;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 436
    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->editor:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 438
    goto :goto_1

    .line 437
    :catch_0
    move-exception v1

    .line 439
    :goto_1
    return-void
.end method

.method public body()Lo/uz;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->body:Lo/uz;

    return-object v0
.end method
