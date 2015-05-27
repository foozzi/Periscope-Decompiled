.class public Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;
.super Lo/ns;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;
    }
.end annotation


# instance fields
.field Rl:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;


# direct methods
.method public constructor <init>(Lo/mn;Ljavax/net/ssl/SSLSocketFactory;Lo/nl;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lo/ns;-><init>(Lo/mn;Ljavax/net/ssl/SSLSocketFactory;Lo/nl;)V

    .line 57
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->bR()Lretrofit/RestAdapter;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->Rl:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    .line 58
    return-void
.end method

.method public static ˊ(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/lang/String;"
        }
    .end annotation

    .line 151
    new-instance v0, Lo/no;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lo/no;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v7, v0

    .line 153
    invoke-virtual {v7}, Lo/no;->bJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static וּ(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;
    .locals 8

    .line 161
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lo/sv;->ᐝ(Ljava/lang/String;Z)Ljava/util/TreeMap;

    move-result-object v2

    .line 162
    const-string v0, "oauth_token"

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 163
    const-string v0, "oauth_token_secret"

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 164
    const-string v0, "screen_name"

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 166
    const-string v0, "user_id"

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "user_id"

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    .line 169
    :cond_0
    const-wide/16 v6, 0x0

    .line 171
    :goto_0
    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    .line 172
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_2
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-direct {v1, v3, v4}, Lcom/twitter/sdk/android/core/TwitterAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method bM()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->bQ()Lo/nl;

    move-result-object v1

    invoke-virtual {v1}, Lo/nl;->bE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/oauth/request_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method bN()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->bQ()Lo/nl;

    move-result-object v1

    invoke-virtual {v1}, Lo/nl;->bE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/oauth/access_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ljava/lang/String;
    .locals 3

    .line 85
    const-string v0, "twittersdk://callback"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->bP()Lo/mn;

    move-result-object v2

    invoke-virtual {v2}, Lo/mn;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->ba()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lcom/twitter/sdk/android/core/TwitterAuthToken;)Ljava/lang/String;
    .locals 4

    .line 117
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->bQ()Lo/nl;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "oauth"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "authorize"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lo/nl;->ˎ([Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "oauth_token"

    iget-object v2, p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/lz;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/lz<Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;>;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;)V"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->bN()Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->bP()Lo/mn;

    move-result-object v0

    invoke-virtual {v0}, Lo/mn;->be()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v0

    move-object v1, p2

    const-string v3, "POST"

    move-object v4, v6

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->ˊ(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 104
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->Rl:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->ˏ(Lo/lz;)Lo/lz;

    move-result-object v1

    invoke-interface {v0, v7, p3, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Lo/lz;)V

    .line 105
    return-void
.end method

.method public ˎ(Lo/lz;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/lz<Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;>;)V"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->bP()Lo/mn;

    move-result-object v0

    invoke-virtual {v0}, Lo/mn;->be()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v7

    .line 67
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->bM()Ljava/lang/String;

    move-result-object v8

    .line 69
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->Rl:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    move-object v1, v7

    invoke-virtual {p0, v7}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->ˊ(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "POST"

    move-object v5, v8

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->ˊ(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->ˏ(Lo/lz;)Lo/lz;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;->getTempToken(Ljava/lang/String;Lo/lz;)V

    .line 71
    return-void
.end method

.method ˏ(Lo/lz;)Lo/lz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/lz<Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;>;)Lo/lz<Lretrofit/client/Response;>;"
        }
    .end annotation

    .line 179
    new-instance v0, Lo/np;

    invoke-direct {v0, p0, p1}, Lo/np;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lo/lz;)V

    return-object v0
.end method
