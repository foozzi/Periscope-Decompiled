.class Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;
.super Lo/ul;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

.field final synthetic val$editor:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

.field final synthetic val$this$0:Lcom/squareup/okhttp/Cache;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Cache$CacheRequestImpl;Lo/uz;Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    iput-object p3, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->val$this$0:Lcom/squareup/okhttp/Cache;

    iput-object p4, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->val$editor:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lo/ul;-><init>(Lo/uz;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    iget-object v2, v0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/squareup/okhttp/Cache;

    monitor-enter v2

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    # getter for: Lcom/squareup/okhttp/Cache$CacheRequestImpl;->done:Z
    invoke-static {v0}, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->access$700(Lcom/squareup/okhttp/Cache$CacheRequestImpl;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    monitor-exit v2

    return-void

    .line 417
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    const/4 v1, 0x1

    # setter for: Lcom/squareup/okhttp/Cache$CacheRequestImpl;->done:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->access$702(Lcom/squareup/okhttp/Cache$CacheRequestImpl;Z)Z

    .line 418
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/squareup/okhttp/Cache;

    # operator++ for: Lcom/squareup/okhttp/Cache;->writeSuccessCount:I
    invoke-static {v0}, Lcom/squareup/okhttp/Cache;->access$808(Lcom/squareup/okhttp/Cache;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 420
    :goto_0
    invoke-super {p0}, Lo/ul;->close()V

    .line 421
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->val$editor:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->commit()V

    .line 422
    return-void
.end method
