.class Lo/mw;
.super Lo/lz;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/lz<Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;>;"
    }
.end annotation


# instance fields
.field final synthetic QH:Lo/mv;


# direct methods
.method constructor <init>(Lo/mv;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lo/mw;->QH:Lo/mv;

    invoke-direct {p0}, Lo/lz;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/mf;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/mf<Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;>;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lo/mw;->QH:Lo/mv;

    iget-object v1, p1, Lo/mf;->data:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iput-object v1, v0, Lo/mv;->QF:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 63
    iget-object v0, p0, Lo/mw;->QH:Lo/mv;

    invoke-static {v0}, Lo/mv;->ˊ(Lo/mv;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    move-result-object v0

    iget-object v1, p0, Lo/mw;->QH:Lo/mv;

    iget-object v1, v1, Lo/mv;->QF:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->ˊ(Lcom/twitter/sdk/android/core/TwitterAuthToken;)Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Redirecting user to web view to complete authorization flow"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lo/mw;->QH:Lo/mv;

    iget-object v1, p0, Lo/mw;->QH:Lo/mv;

    invoke-static {v1}, Lo/mv;->ˋ(Lo/mv;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lo/na;

    iget-object v3, p0, Lo/mw;->QH:Lo/mv;

    invoke-static {v3}, Lo/mv;->ˊ(Lo/mv;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    move-result-object v3

    iget-object v4, p0, Lo/mw;->QH:Lo/mv;

    invoke-static {v4}, Lo/mv;->ˎ(Lo/mv;)Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->ˊ(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/mw;->QH:Lo/mv;

    invoke-direct {v2, v3, v4}, Lo/na;-><init>(Ljava/lang/String;Lo/na$if;)V

    new-instance v3, Lo/mz;

    invoke-direct {v3}, Lo/mz;-><init>()V

    invoke-virtual {v0, v1, v2, v5, v3}, Lo/mv;->ˊ(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;Landroid/webkit/WebChromeClient;)V

    .line 70
    return-void
.end method

.method public ˊ(Lo/mo;)V
    .locals 3

    .line 74
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to get request token"

    invoke-interface {v0, v1, v2, p1}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    iget-object v0, p0, Lo/mw;->QH:Lo/mv;

    new-instance v1, Lo/ml;

    const-string v2, "Failed to get request token"

    invoke-direct {v1, v2}, Lo/ml;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lo/mv;->ˊ(ILo/ml;)V

    .line 80
    return-void
.end method
