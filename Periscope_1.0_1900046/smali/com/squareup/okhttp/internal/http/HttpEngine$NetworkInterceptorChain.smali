.class Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkInterceptorChain"
.end annotation


# instance fields
.field private calls:I

.field private final index:I

.field private final request:Lcom/squareup/okhttp/Request;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/HttpEngine;ILcom/squareup/okhttp/Request;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput p2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    .line 767
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/squareup/okhttp/Request;

    .line 768
    return-void
.end method


# virtual methods
.method public connection()Lcom/squareup/okhttp/Connection;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->access$000(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lcom/squareup/okhttp/Connection;

    move-result-object v0

    return-object v0
.end method

.method public proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .locals 6

    .line 779
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    .line 781
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    if-lez v0, :cond_2

    .line 782
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Interceptor;

    move-object v3, v0

    .line 783
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->connection()Lcom/squareup/okhttp/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v4

    .line 786
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v0

    invoke-virtual {v4}, Lcom/squareup/okhttp/Address;->getUriPort()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 788
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must retain the same host and port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_1
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 794
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_2
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 801
    new-instance v3, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v0, v1, p1}, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lcom/squareup/okhttp/internal/http/HttpEngine;ILcom/squareup/okhttp/Request;)V

    .line 802
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Interceptor;

    move-object v4, v0

    .line 803
    invoke-interface {v4, v3}, Lcom/squareup/okhttp/Interceptor;->intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lcom/squareup/okhttp/Response;

    move-result-object v5

    .line 806
    iget v0, v3, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 807
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_3
    return-object v5

    .line 814
    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->access$100(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lcom/squareup/okhttp/internal/http/Transport;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/internal/http/Transport;->writeRequestHeaders(Lcom/squareup/okhttp/Request;)V

    .line 816
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->permitsRequestBody()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 817
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->access$100(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lcom/squareup/okhttp/internal/http/Transport;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lcom/squareup/okhttp/internal/http/Transport;->createRequestBody(Lcom/squareup/okhttp/Request;J)Lo/uz;

    move-result-object v3

    .line 818
    invoke-static {v3}, Lo/up;->ˊ(Lo/uz;)Lo/uh;

    move-result-object v4

    .line 819
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lo/uh;)V

    .line 820
    invoke-interface {v4}, Lo/uh;->close()V

    .line 823
    :cond_5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    # invokes: Lcom/squareup/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/squareup/okhttp/Response;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->access$200(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public request()Lcom/squareup/okhttp/Request;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/squareup/okhttp/Request;

    return-object v0
.end method
