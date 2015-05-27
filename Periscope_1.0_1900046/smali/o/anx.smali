.class public Lo/anx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/net/CookiePolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ˊ(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 3

    .line 17
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 18
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    return-object v2

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public shouldAccept(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 2

    .line 13
    invoke-static {p2}, Lo/anx;->ˊ(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/HttpCookie;->domainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
