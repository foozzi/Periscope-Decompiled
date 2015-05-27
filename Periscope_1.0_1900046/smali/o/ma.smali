.class public Lo/ma;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lretrofit/client/Client;


# instance fields
.field final PV:Lretrofit/client/Client;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lo/ma;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 29
    invoke-direct {p0}, Lo/ma;->hasOkHttpOnClasspath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lo/mb;

    invoke-direct {v0, p0}, Lo/mb;-><init>(Lo/ma;)V

    iput-object v0, p0, Lo/ma;->PV:Lretrofit/client/Client;

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lo/mc;

    invoke-direct {v0, p0}, Lo/mc;-><init>(Lo/ma;)V

    iput-object v0, p0, Lo/ma;->PV:Lretrofit/client/Client;

    .line 44
    :goto_0
    return-void
.end method

.method private hasOkHttpOnClasspath()Z
    .locals 6

    .line 54
    const/4 v3, 0x0

    .line 56
    const-string v0, "com.squareup.okhttp.OkUrlFactory"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const/4 v3, 0x1

    .line 59
    goto :goto_0

    .line 58
    :catch_0
    move-exception v4

    .line 61
    :goto_0
    const/4 v4, 0x0

    .line 63
    const-string v0, "com.squareup.okhttp.OkHttpClient"

    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    const/4 v4, 0x1

    .line 66
    goto :goto_1

    .line 65
    :catch_1
    move-exception v5

    .line 68
    :goto_1
    if-eq v4, v3, :cond_0

    .line 69
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Retrofit detected an unsupported OkHttp on the classpath.\nTo use OkHttp with this version of Retrofit, you\'ll need:\n1. com.squareup.okhttp:okhttp:1.6.0 (or newer)\n2. com.squareup.okhttp:okhttp-urlconnection:1.6.0 (or newer)\nNote that OkHttp 2.0.0+ is supported!"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    return v4
.end method


# virtual methods
.method public execute(Lretrofit/client/Request;)Lretrofit/client/Response;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/ma;->PV:Lretrofit/client/Client;

    invoke-interface {v0, p1}, Lretrofit/client/Client;->execute(Lretrofit/client/Request;)Lretrofit/client/Response;

    move-result-object v0

    return-object v0
.end method

.method ˎ(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 82
    iget-object v0, p0, Lo/ma;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 83
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v1, p0, Lo/ma;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 85
    :cond_0
    return-object p1
.end method
