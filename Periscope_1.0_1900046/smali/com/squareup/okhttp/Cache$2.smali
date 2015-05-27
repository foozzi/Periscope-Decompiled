.class Lcom/squareup/okhttp/Cache$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Iterator<Ljava/lang/String;>;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;>;"
        }
    .end annotation
.end field

.field nextUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/squareup/okhttp/Cache;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Cache;)V
    .locals 1

    .line 299
    iput-object p1, p0, Lcom/squareup/okhttp/Cache$2;->this$0:Lcom/squareup/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$2;->this$0:Lcom/squareup/okhttp/Cache;

    # getter for: Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;
    invoke-static {v0}, Lcom/squareup/okhttp/Cache;->access$600(Lcom/squareup/okhttp/Cache;)Lcom/squareup/okhttp/internal/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->snapshots()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .line 306
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 308
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/okhttp/Cache$2;->canRemove:Z

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-object v1, v0

    .line 312
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lo/va;

    move-result-object v0

    invoke-static {v0}, Lo/up;->ˋ(Lo/va;)Lo/ui;

    move-result-object v2

    .line 313
    invoke-interface {v2}, Lo/ui;->ee()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$2;->nextUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    const/4 v3, 0x1

    .line 319
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->close()V

    return v3

    .line 315
    :catch_0
    move-exception v2

    .line 319
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->close()V

    .line 320
    goto :goto_1

    .line 319
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->close()V

    throw v4

    .line 321
    :goto_1
    goto :goto_0

    .line 323
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/squareup/okhttp/Cache$2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 327
    invoke-virtual {p0}, Lcom/squareup/okhttp/Cache$2;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/Cache$2;->canRemove:Z

    .line 331
    return-object v1
.end method

.method public remove()V
    .locals 2

    .line 335
    iget-boolean v0, p0, Lcom/squareup/okhttp/Cache$2;->canRemove:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 337
    return-void
.end method
