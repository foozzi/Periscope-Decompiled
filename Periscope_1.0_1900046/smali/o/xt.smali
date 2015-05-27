.class public Lo/xt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static bpR:Lo/xt;


# instance fields
.field private bpQ:Lretrofit/RestAdapter;


# direct methods
.method private constructor <init>(Lretrofit/RestAdapter;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/xt;->bpQ:Lretrofit/RestAdapter;

    .line 22
    return-void
.end method

.method public static un()Lretrofit/RestAdapter;
    .locals 2

    .line 47
    sget-object v0, Lo/xt;->bpR:Lo/xt;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RestClient not initialized. Call init()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    sget-object v0, Lo/xt;->bpR:Lo/xt;

    iget-object v0, v0, Lo/xt;->bpQ:Lretrofit/RestAdapter;

    return-object v0
.end method

.method public static ˊ(Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 25
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lo/ze;->brk:Lo/zg;

    invoke-interface {v1}, Lo/zg;->uL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lretrofit/android/MainThreadExecutor;

    invoke-direct {v1}, Lretrofit/android/MainThreadExecutor;-><init>()V

    invoke-virtual {v0, p0, v1}, Lretrofit/RestAdapter$Builder;->setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lretrofit/client/OkClient;

    new-instance v2, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v2}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-direct {v1, v2}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-static {}, Lo/ze;->ld()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    goto :goto_0

    :cond_0
    sget-object v1, Lretrofit/RestAdapter$LogLevel;->NONE:Lretrofit/RestAdapter$LogLevel;

    :goto_0
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lo/xv;

    invoke-direct {v1}, Lo/xv;-><init>()V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lo/xu;

    invoke-direct {v1}, Lo/xu;-><init>()V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLog(Lretrofit/RestAdapter$Log;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v4

    .line 43
    new-instance v0, Lo/xt;

    invoke-direct {v0, v4}, Lo/xt;-><init>(Lretrofit/RestAdapter;)V

    sput-object v0, Lo/xt;->bpR:Lo/xt;

    .line 44
    return-void
.end method
