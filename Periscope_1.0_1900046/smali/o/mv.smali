.class Lo/mv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/na$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/mv$if;
    }
.end annotation


# instance fields
.field private final PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final QC:Landroid/widget/ProgressBar;

.field private final QD:Landroid/webkit/WebView;

.field final QE:Lo/mv$if;

.field QF:Lcom/twitter/sdk/android/core/TwitterAuthToken;

.field private final QG:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;


# direct methods
.method constructor <init>(Landroid/widget/ProgressBar;Landroid/webkit/WebView;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lo/mv$if;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lo/mv;->QC:Landroid/widget/ProgressBar;

    .line 43
    iput-object p2, p0, Lo/mv;->QD:Landroid/webkit/WebView;

    .line 44
    iput-object p3, p0, Lo/mv;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 45
    iput-object p4, p0, Lo/mv;->QG:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    .line 46
    iput-object p5, p0, Lo/mv;->QE:Lo/mv$if;

    .line 47
    return-void
.end method

.method private bs()V
    .locals 1

    .line 162
    iget-object v0, p0, Lo/mv;->QD:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 163
    invoke-direct {p0}, Lo/mv;->bt()V

    .line 164
    return-void
.end method

.method private bt()V
    .locals 2

    .line 167
    iget-object v0, p0, Lo/mv;->QC:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 168
    return-void
.end method

.method static synthetic ˊ(Lo/mv;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/mv;->QG:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    return-object v0
.end method

.method private ˊ(Lo/nh;)V
    .locals 3

    .line 156
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "OAuth web view completed with an error"

    invoke-interface {v0, v1, v2, p1}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    new-instance v0, Lo/ml;

    const-string v1, "OAuth web view completed with an error"

    invoke-direct {v0, v1}, Lo/ml;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lo/mv;->ˊ(ILo/ml;)V

    .line 159
    return-void
.end method

.method static synthetic ˋ(Lo/mv;)Landroid/webkit/WebView;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/mv;->QD:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic ˎ(Lo/mv;)Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/mv;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object v0
.end method

.method private ˏ(Landroid/os/Bundle;)V
    .locals 5

    .line 107
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "OAuth web view completed successfully"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-eqz p1, :cond_0

    .line 109
    const-string v0, "oauth_verifier"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    if-eqz v4, :cond_0

    .line 112
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Converting the request token to an access token."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lo/mv;->QG:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    invoke-virtual {p0}, Lo/mv;->br()Lo/lz;

    move-result-object v1

    iget-object v2, p0, Lo/mv;->QF:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {v0, v1, v2, v4}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->ˊ(Lo/lz;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;)V

    .line 116
    return-void

    .line 121
    :cond_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get authorization, bundle incomplete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    new-instance v0, Lo/ml;

    const-string v1, "Failed to get authorization, bundle incomplete"

    invoke-direct {v0, v1}, Lo/ml;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lo/mv;->ˊ(ILo/ml;)V

    .line 125
    return-void
.end method


# virtual methods
.method bp()V
    .locals 3

    .line 51
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Obtaining request token to start the sign in flow"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lo/mv;->QG:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    invoke-virtual {p0}, Lo/mv;->bq()Lo/lz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->ˎ(Lo/lz;)V

    .line 53
    return-void
.end method

.method bq()Lo/lz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/lz<Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lo/mw;

    invoke-direct {v0, p0}, Lo/mw;-><init>(Lo/mv;)V

    return-object v0
.end method

.method br()Lo/lz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/lz<Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;>;"
        }
    .end annotation

    .line 131
    new-instance v0, Lo/mx;

    invoke-direct {v0, p0}, Lo/mx;-><init>(Lo/mv;)V

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 172
    invoke-direct {p0}, Lo/mv;->bt()V

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 174
    return-void
.end method

.method protected ˊ(ILo/ml;)V
    .locals 2

    .line 85
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 86
    const-string v0, "auth_error"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lo/mv;->QE:Lo/mv$if;

    invoke-interface {v0, p1, v1}, Lo/mv$if;->ˊ(ILandroid/content/Intent;)V

    .line 88
    return-void
.end method

.method ˊ(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;Landroid/webkit/WebChromeClient;)V
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 96
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 100
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 101
    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 103
    invoke-virtual {p1, p4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 104
    return-void
.end method

.method public ˋ(Lo/nh;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Lo/mv;->ˊ(Lo/nh;)V

    .line 185
    invoke-direct {p0}, Lo/mv;->bs()V

    .line 186
    return-void
.end method

.method public ᐝ(Landroid/os/Bundle;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lo/mv;->ˏ(Landroid/os/Bundle;)V

    .line 179
    invoke-direct {p0}, Lo/mv;->bs()V

    .line 180
    return-void
.end method
