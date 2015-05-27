.class public Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lcom/squareup/okhttp/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lcom/squareup/okhttp/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V
    .locals 7

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    .line 127
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    .line 128
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    .line 129
    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    .line 131
    if-eqz p4, :cond_7

    .line 132
    invoke-virtual {p4}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    .line 133
    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_7

    .line 134
    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    .line 136
    const-string v0, "Date"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 138
    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    goto/16 :goto_1

    .line 139
    :cond_0
    const-string v0, "Expires"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    .line 141
    :cond_1
    const-string v0, "Last-Modified"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 143
    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 144
    :cond_2
    const-string v0, "ETag"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    .line 146
    :cond_3
    const-string v0, "Age"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    const/4 v0, -0x1

    invoke-static {v6, v0}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_1

    .line 148
    :cond_4
    sget-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_1

    .line 150
    :cond_5
    sget-object v0, Lcom/squareup/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 151
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 133
    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 155
    :cond_7
    return-void
.end method

.method private cacheResponseAge()J
    .locals 12

    .line 276
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 277
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    .line 279
    :goto_0
    iget v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v1, v1

    .line 280
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_1

    :cond_1
    move-wide v6, v4

    .line 282
    :goto_1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v8, v0, v2

    .line 283
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long v10, v0, v2

    .line 284
    add-long v0, v6, v8

    add-long/2addr v0, v10

    return-wide v0
.end method

.method private computeFreshnessLifetime()J
    .locals 8

    .line 247
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v3

    .line 248
    invoke-virtual {v3}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 249
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 252
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v6, v0, v4

    .line 255
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_2

    move-wide v0, v6

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    .line 257
    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 262
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 263
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_2

    :cond_4
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    .line 265
    :goto_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v6, v4, v0

    .line 266
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_5

    const-wide/16 v0, 0xa

    div-long v0, v6, v0

    goto :goto_3

    :cond_5
    const-wide/16 v0, 0x0

    :goto_3
    return-wide v0

    .line 268
    :cond_6
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getCandidate()Lcom/squareup/okhttp/internal/http/CacheStrategy;
    .locals 17

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    return-object v0

    .line 180
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->handshake()Lcom/squareup/okhttp/Handshake;

    move-result-object v0

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    return-object v0

    .line 187
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Request;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    new-instance v0, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    return-object v0

    .line 191
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v4

    .line 192
    invoke-virtual {v4}, Lcom/squareup/okhttp/CacheControl;->noCache()Z

    move-result v0

    if-nez v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/squareup/okhttp/Request;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    :cond_3
    new-instance v0, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    return-object v0

    .line 196
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v5

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v7

    .line 199
    invoke-virtual {v4}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 200
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 203
    :cond_5
    const-wide/16 v9, 0x0

    .line 204
    invoke-virtual {v4}, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 205
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 208
    :cond_6
    const-wide/16 v11, 0x0

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v13

    .line 210
    invoke-virtual {v13}, Lcom/squareup/okhttp/CacheControl;->mustRevalidate()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v4}, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 211
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    .line 214
    :cond_7
    invoke-virtual {v13}, Lcom/squareup/okhttp/CacheControl;->noCache()Z

    move-result v0

    if-nez v0, :cond_a

    add-long v0, v5, v9

    add-long v2, v7, v11

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v14

    .line 216
    add-long v0, v5, v9

    cmp-long v0, v0, v7

    if-ltz v0, :cond_8

    .line 217
    const-string v0, "Warning"

    const-string v1, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v14, v0, v1}, Lcom/squareup/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    .line 219
    :cond_8
    const-wide/32 v15, 0x5265c00

    .line 220
    cmp-long v0, v5, v15

    if-lez v0, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 221
    const-string v0, "Warning"

    const-string v1, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v14, v0, v1}, Lcom/squareup/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    .line 223
    :cond_9
    new-instance v0, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    invoke-virtual {v14}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    return-object v0

    .line 226
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v14

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 229
    const-string v0, "If-None-Match"

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    invoke-virtual {v14, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_0

    .line 230
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_c

    .line 231
    const-string v0, "If-Modified-Since"

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    invoke-virtual {v14, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_0

    .line 232
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 233
    const-string v0, "If-Modified-Since"

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    invoke-virtual {v14, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 236
    :cond_d
    :goto_0
    invoke-virtual {v14}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v15

    .line 237
    invoke-static {v15}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/squareup/okhttp/Request;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    const/4 v2, 0x0

    invoke-direct {v0, v15, v1, v2}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    goto :goto_1

    :cond_e
    new-instance v0, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v15, v1, v2}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    :goto_1
    return-object v0
.end method

.method private static hasConditions(Lcom/squareup/okhttp/Request;)Z
    .locals 1

    .line 302
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public get()Lcom/squareup/okhttp/internal/http/CacheStrategy;
    .locals 5

    .line 162
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->getCandidate()Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-result-object v4

    .line 164
    iget-object v0, v4, Lcom/squareup/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/squareup/okhttp/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->onlyIfCached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    return-object v0

    .line 169
    :cond_0
    return-object v4
.end method
