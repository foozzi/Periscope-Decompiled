.class public abstract Lo/ns;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final As:Ljava/lang/String;

.field private final Rr:Lo/mn;

.field private final Rs:Lo/nl;

.field private final Rt:Lretrofit/RestAdapter;

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lo/mn;Ljavax/net/ssl/SSLSocketFactory;Lo/nl;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lo/ns;->Rr:Lo/mn;

    .line 29
    iput-object p2, p0, Lo/ns;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 30
    iput-object p3, p0, Lo/ns;->Rs:Lo/nl;

    .line 31
    const-string v0, "TwitterAndroidSDK"

    invoke-virtual {p1}, Lo/mn;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/nl;->ˉ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ns;->As:Ljava/lang/String;

    .line 34
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    invoke-virtual {p0}, Lo/ns;->bQ()Lo/nl;

    move-result-object v1

    invoke-virtual {v1}, Lo/nl;->bE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lo/ma;

    iget-object v2, p0, Lo/ns;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v1, v2}, Lo/ma;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lo/nt;

    invoke-direct {v1, p0}, Lo/nt;-><init>(Lo/ns;)V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/ns;->Rt:Lretrofit/RestAdapter;

    .line 44
    return-void
.end method


# virtual methods
.method protected as()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/ns;->As:Ljava/lang/String;

    return-object v0
.end method

.method public bP()Lo/mn;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/ns;->Rr:Lo/mn;

    return-object v0
.end method

.method public bQ()Lo/nl;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/ns;->Rs:Lo/nl;

    return-object v0
.end method

.method public bR()Lretrofit/RestAdapter;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/ns;->Rt:Lretrofit/RestAdapter;

    return-object v0
.end method
