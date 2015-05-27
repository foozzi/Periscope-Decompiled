.class public final Lcom/squareup/okhttp/CacheControl$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    .line 277
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public build()Lcom/squareup/okhttp/CacheControl;
    .locals 2

    .line 363
    new-instance v0, Lcom/squareup/okhttp/CacheControl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/CacheControl;-><init>(Lcom/squareup/okhttp/CacheControl$Builder;Lcom/squareup/okhttp/CacheControl$1;)V

    return-object v0
.end method

.method public maxAge(ILjava/util/concurrent/TimeUnit;)Lcom/squareup/okhttp/CacheControl$Builder;
    .locals 5

    .line 302
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxAge < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 304
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v3, v0

    if-lez v0, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v0, v3

    :goto_0
    iput v0, p0, Lcom/squareup/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    .line 307
    return-object p0
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/squareup/okhttp/CacheControl$Builder;
    .locals 5

    .line 320
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxStale < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 322
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v3, v0

    if-lez v0, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v0, v3

    :goto_0
    iput v0, p0, Lcom/squareup/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    .line 325
    return-object p0
.end method

.method public minFresh(ILjava/util/concurrent/TimeUnit;)Lcom/squareup/okhttp/CacheControl$Builder;
    .locals 5

    .line 339
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minFresh < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 341
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v3, v0

    if-lez v0, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v0, v3

    :goto_0
    iput v0, p0, Lcom/squareup/okhttp/CacheControl$Builder;->minFreshSeconds:I

    .line 344
    return-object p0
.end method

.method public noCache()Lcom/squareup/okhttp/CacheControl$Builder;
    .locals 1

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/CacheControl$Builder;->noCache:Z

    .line 284
    return-object p0
.end method

.method public noStore()Lcom/squareup/okhttp/CacheControl$Builder;
    .locals 1

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/CacheControl$Builder;->noStore:Z

    .line 290
    return-object p0
.end method

.method public noTransform()Lcom/squareup/okhttp/CacheControl$Builder;
    .locals 1

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/CacheControl$Builder;->noTransform:Z

    .line 359
    return-object p0
.end method

.method public onlyIfCached()Lcom/squareup/okhttp/CacheControl$Builder;
    .locals 1

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/CacheControl$Builder;->onlyIfCached:Z

    .line 353
    return-object p0
.end method