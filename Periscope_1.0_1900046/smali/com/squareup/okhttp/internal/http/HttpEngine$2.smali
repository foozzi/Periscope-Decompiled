.class Lcom/squareup/okhttp/internal/http/HttpEngine$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/va;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

.field final synthetic val$cacheBody:Lo/uh;

.field final synthetic val$cacheRequest:Lcom/squareup/okhttp/internal/http/CacheRequest;

.field final synthetic val$source:Lo/ui;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/HttpEngine;Lo/ui;Lcom/squareup/okhttp/internal/http/CacheRequest;Lo/uh;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->val$source:Lo/ui;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/squareup/okhttp/internal/http/CacheRequest;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lo/uh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 895
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 896
    const/16 v1, 0x64

    invoke-static {p0, v1, v0}, Lcom/squareup/okhttp/internal/Util;->discard(Lo/va;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 898
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/squareup/okhttp/internal/http/CacheRequest;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/CacheRequest;->abort()V

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->val$source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->close()V

    .line 901
    return-void
.end method

.method public read(Lo/ue;J)J
    .locals 9

    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->val$source:Lo/ui;

    invoke-interface {v0, p1, p2, p3}, Lo/ui;->read(Lo/ue;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 875
    goto :goto_0

    .line 869
    :catch_0
    move-exception v8

    .line 870
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 872
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/squareup/okhttp/internal/http/CacheRequest;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/CacheRequest;->abort()V

    .line 874
    :cond_0
    throw v8

    .line 877
    :goto_0
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    .line 878
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v0, :cond_1

    .line 879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 880
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lo/uh;

    invoke-interface {v0}, Lo/uh;->close()V

    .line 882
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    .line 885
    :cond_2
    move-object v0, p1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lo/uh;

    invoke-interface {v1}, Lo/uh;->dS()Lo/ue;

    move-result-object v1

    invoke-virtual {p1}, Lo/ue;->size()J

    move-result-wide v2

    sub-long/2addr v2, v6

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Lo/ue;->ˊ(Lo/ue;JJ)Lo/ue;

    .line 886
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lo/uh;

    invoke-interface {v0}, Lo/uh;->eh()Lo/uh;

    .line 887
    return-wide v6
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$2;->val$source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->timeout()Lo/vb;

    move-result-object v0

    return-object v0
.end method
