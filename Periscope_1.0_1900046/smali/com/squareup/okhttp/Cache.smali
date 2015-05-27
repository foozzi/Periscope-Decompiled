.class public final Lcom/squareup/okhttp/Cache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Cache$CacheResponseBody;,
        Lcom/squareup/okhttp/Cache$Entry;,
        Lcom/squareup/okhttp/Cache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Lcom/squareup/okhttp/internal/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lcom/squareup/okhttp/internal/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 6

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/squareup/okhttp/Cache$1;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/Cache$1;-><init>(Lcom/squareup/okhttp/Cache;)V

    iput-object v0, p0, Lcom/squareup/okhttp/Cache;->internalCache:Lcom/squareup/okhttp/internal/InternalCache;

    .line 168
    sget-object v0, Lcom/squareup/okhttp/internal/io/FileSystem;->SYSTEM:Lcom/squareup/okhttp/internal/io/FileSystem;

    move-object v1, p1

    move-wide v4, p2

    const v2, 0x31191

    const/4 v3, 0x2

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/DiskLruCache;->create(Lcom/squareup/okhttp/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/squareup/okhttp/internal/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    .line 169
    return-void
.end method

.method private abortQuietly(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .locals 1

    .line 265
    if-eqz p1, :cond_0

    .line 266
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 270
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;
    .locals 1

    .line 131
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Cache;->put(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Request;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Cache;->remove(Lcom/squareup/okhttp/Request;)V

    return-void
.end method

.method static synthetic access$1000(Lo/ui;)I
    .locals 1

    .line 131
    invoke-static {p0}, Lcom/squareup/okhttp/Cache;->readInt(Lo/ui;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/Cache;->update(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V

    return-void
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/Cache;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/squareup/okhttp/Cache;->trackConditionalCacheHit()V

    return-void
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/http/CacheStrategy;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Cache;->trackResponse(Lcom/squareup/okhttp/internal/http/CacheStrategy;)V

    return-void
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/Cache;)Lcom/squareup/okhttp/internal/DiskLruCache;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    return-object v0
.end method

.method static synthetic access$808(Lcom/squareup/okhttp/Cache;)I
    .locals 2

    .line 131
    iget v0, p0, Lcom/squareup/okhttp/Cache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/okhttp/Cache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$908(Lcom/squareup/okhttp/Cache;)I
    .locals 2

    .line 131
    iget v0, p0, Lcom/squareup/okhttp/Cache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/okhttp/Cache;->writeAbortCount:I

    return v0
.end method

.method private put(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;
    .locals 6

    .line 207
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/Cache;->remove(Lcom/squareup/okhttp/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    goto :goto_0

    .line 212
    :catch_0
    move-exception v3

    .line 215
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 217
    :cond_0
    const-string v0, "GET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_1
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/squareup/okhttp/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_2
    new-instance v3, Lcom/squareup/okhttp/Cache$Entry;

    invoke-direct {v3, p1}, Lcom/squareup/okhttp/Cache$Entry;-><init>(Lcom/squareup/okhttp/Response;)V

    .line 229
    const/4 v4, 0x0

    .line 231
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/Cache;->urlToKey(Lcom/squareup/okhttp/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v4, v0

    .line 232
    if-nez v4, :cond_3

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_3
    :try_start_2
    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Cache$Entry;->writeTo(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    .line 236
    new-instance v0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    invoke-direct {v0, p0, v4}, Lcom/squareup/okhttp/Cache$CacheRequestImpl;-><init>(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 237
    :catch_1
    move-exception v5

    .line 238
    invoke-direct {p0, v4}, Lcom/squareup/okhttp/Cache;->abortQuietly(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method private static readInt(Lo/ui;)I
    .locals 6

    .line 660
    :try_start_0
    invoke-interface {p0}, Lo/ui;->eb()J

    move-result-wide v3

    .line 661
    invoke-interface {p0}, Lo/ui;->ee()Ljava/lang/String;

    move-result-object v5

    .line 662
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v3, v0

    if-gtz v0, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected an int but was \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :cond_1
    long-to-int v0, v3

    return v0

    .line 666
    :catch_0
    move-exception v3

    .line 667
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private remove(Lcom/squareup/okhttp/Request;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-static {p1}, Lcom/squareup/okhttp/Cache;->urlToKey(Lcom/squareup/okhttp/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 245
    return-void
.end method

.method private declared-synchronized trackConditionalCacheHit()V
    .locals 3

    monitor-enter p0

    .line 387
    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized trackResponse(Lcom/squareup/okhttp/internal/http/CacheStrategy;)V
    .locals 2

    monitor-enter p0

    .line 374
    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Cache;->requestCount:I

    .line 376
    iget-object v0, p1, Lcom/squareup/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/squareup/okhttp/Request;

    if-eqz v0, :cond_0

    .line 378
    iget v0, p0, Lcom/squareup/okhttp/Cache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Cache;->networkCount:I

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p1, Lcom/squareup/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/squareup/okhttp/Response;

    if-eqz v0, :cond_1

    .line 382
    iget v0, p0, Lcom/squareup/okhttp/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private update(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V
    .locals 5

    .line 248
    new-instance v1, Lcom/squareup/okhttp/Cache$Entry;

    invoke-direct {v1, p2}, Lcom/squareup/okhttp/Cache$Entry;-><init>(Lcom/squareup/okhttp/Response;)V

    .line 249
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Cache$CacheResponseBody;

    # getter for: Lcom/squareup/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    invoke-static {v0}, Lcom/squareup/okhttp/Cache$CacheResponseBody;->access$500(Lcom/squareup/okhttp/Cache$CacheResponseBody;)Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v2

    .line 250
    const/4 v3, 0x0

    .line 252
    :try_start_0
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->edit()Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    move-object v3, v0

    .line 253
    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/Cache$Entry;->writeTo(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    .line 255
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    goto :goto_0

    .line 257
    :catch_0
    move-exception v4

    .line 258
    invoke-direct {p0, v3}, Lcom/squareup/okhttp/Cache;->abortQuietly(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    .line 260
    :goto_0
    return-void
.end method

.method private static urlToKey(Lcom/squareup/okhttp/Request;)Ljava/lang/String;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->close()V

    .line 363
    return-void
.end method

.method public delete()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->delete()V

    .line 279
    return-void
.end method

.method public evictAll()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->evictAll()V

    .line 287
    return-void
.end method

.method public flush()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->flush()V

    .line 359
    return-void
.end method

.method get(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .locals 5

    .line 176
    invoke-static {p1}, Lcom/squareup/okhttp/Cache;->urlToKey(Lcom/squareup/okhttp/Request;)Ljava/lang/String;

    move-result-object v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->get(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 181
    if-nez v2, :cond_0

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_0
    goto :goto_0

    .line 184
    :catch_0
    move-exception v4

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 190
    :goto_0
    :try_start_1
    new-instance v3, Lcom/squareup/okhttp/Cache$Entry;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lo/va;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/squareup/okhttp/Cache$Entry;-><init>(Lo/va;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    goto :goto_1

    .line 191
    :catch_1
    move-exception v4

    .line 192
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 193
    const/4 v0, 0x0

    return-object v0

    .line 196
    :goto_1
    invoke-virtual {v3, p1, v2}, Lcom/squareup/okhttp/Cache$Entry;->response(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Lcom/squareup/okhttp/Response;

    move-result-object v4

    .line 198
    invoke-virtual {v3, p1, v4}, Lcom/squareup/okhttp/Cache$Entry;->matches(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    invoke-virtual {v4}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 200
    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_1
    return-object v4
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getHitCount()I
    .locals 2

    monitor-enter p0

    .line 395
    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMaxSize()J
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getNetworkCount()I
    .locals 2

    monitor-enter p0

    .line 391
    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getRequestCount()I
    .locals 2

    monitor-enter p0

    .line 399
    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSize()J
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getWriteAbortCount()I
    .locals 2

    monitor-enter p0

    .line 342
    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getWriteSuccessCount()I
    .locals 2

    monitor-enter p0

    .line 346
    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isClosed()Z
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public urls()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Iterator<Ljava/lang/String;>;"
        }
    .end annotation

    .line 299
    new-instance v0, Lcom/squareup/okhttp/Cache$2;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/Cache$2;-><init>(Lcom/squareup/okhttp/Cache;)V

    return-object v0
.end method
