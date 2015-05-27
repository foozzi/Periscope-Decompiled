.class public Lo/mi;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final Qg:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Class;Ljava/lang/Object;>;"
        }
    .end annotation
.end field

.field final Qh:Lretrofit/RestAdapter;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/mg;Lo/nl;Ljavax/net/ssl/SSLSocketFactory;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p2, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/mi;->Qg:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    new-instance v0, Lo/fr;

    invoke-direct {v0}, Lo/fr;-><init>()V

    new-instance v1, Lo/oi;

    invoke-direct {v1}, Lo/oi;-><init>()V

    invoke-virtual {v0, v1}, Lo/fr;->ˊ(Lo/gl;)Lo/fr;

    move-result-object v0

    new-instance v1, Lo/ok;

    invoke-direct {v1}, Lo/ok;-><init>()V

    invoke-virtual {v0, v1}, Lo/fr;->ˊ(Lo/gl;)Lo/fr;

    move-result-object v0

    invoke-virtual {v0}, Lo/fr;->f()Lo/fl;

    move-result-object v2

    .line 49
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    new-instance v1, Lo/ly;

    invoke-direct {v1, p1, p2, p4}, Lo/ly;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/mg;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {p3}, Lo/nl;->bE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lretrofit/converter/GsonConverter;

    invoke-direct {v1, v2}, Lretrofit/converter/GsonConverter;-><init>(Lo/fl;)V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setConverter(Lretrofit/converter/Converter;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lretrofit/android/MainThreadExecutor;

    invoke-direct {v1}, Lretrofit/android/MainThreadExecutor;-><init>()V

    invoke-virtual {v0, p5, v1}, Lretrofit/RestAdapter$Builder;->setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/mi;->Qh:Lretrofit/RestAdapter;

    .line 55
    return-void
.end method

.method public constructor <init>(Lo/mg;)V
    .locals 6

    .line 66
    move-object v0, p0

    invoke-static {}, Lo/mn;->bd()Lo/mn;

    move-result-object v1

    invoke-virtual {v1}, Lo/mn;->be()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v1

    move-object v2, p1

    new-instance v3, Lo/nl;

    invoke-direct {v3}, Lo/nl;-><init>()V

    invoke-static {}, Lo/mn;->bd()Lo/mn;

    move-result-object v4

    invoke-virtual {v4}, Lo/mn;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-static {}, Lo/mn;->bd()Lo/mn;

    move-result-object v5

    invoke-virtual {v5}, Lo/mn;->ch()Lo/pj;

    move-result-object v5

    invoke-virtual {v5}, Lo/pj;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lo/mi;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/mg;Lo/nl;Ljavax/net/ssl/SSLSocketFactory;Ljava/util/concurrent/ExecutorService;)V

    .line 69
    return-void
.end method


# virtual methods
.method public aY()Lcom/twitter/sdk/android/core/services/AccountService;
    .locals 1

    .line 75
    const-class v0, Lcom/twitter/sdk/android/core/services/AccountService;

    invoke-virtual {p0, v0}, Lo/mi;->ˌ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/AccountService;

    return-object v0
.end method

.method public aZ()Lcom/twitter/sdk/android/core/services/StatusesService;
    .locals 1

    .line 89
    const-class v0, Lcom/twitter/sdk/android/core/services/StatusesService;

    invoke-virtual {p0, v0}, Lo/mi;->ˌ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/StatusesService;

    return-object v0
.end method

.method public ˌ(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lo/mi;->Qg:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lo/mi;->Qg:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lo/mi;->Qh:Lretrofit/RestAdapter;

    invoke-virtual {v1, p1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    iget-object v0, p0, Lo/mi;->Qg:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
