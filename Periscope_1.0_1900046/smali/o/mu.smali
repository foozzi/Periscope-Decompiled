.class public Lo/mu;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Lo/mv$if;


# instance fields
.field QB:Lo/mv;

.field private QC:Landroid/widget/ProgressBar;

.field private QD:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 68
    iget-object v0, p0, Lo/mu;->QB:Lo/mv;

    new-instance v1, Lo/ml;

    const-string v2, "Authorization failed, request was canceled."

    invoke-direct {v1, v2}, Lo/ml;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lo/mv;->ˊ(ILo/ml;)V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lo/me$ˏ;->tw__activity_oauth:I

    invoke-virtual {p0, v0}, Lo/mu;->setContentView(I)V

    .line 40
    sget v0, Lo/me$ˎ;->tw__spinner:I

    invoke-virtual {p0, v0}, Lo/mu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lo/mu;->QC:Landroid/widget/ProgressBar;

    .line 41
    sget v0, Lo/me$ˎ;->tw__web_view:I

    invoke-virtual {p0, v0}, Lo/mu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lo/mu;->QD:Landroid/webkit/WebView;

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const-string v0, "progress"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_0

    .line 47
    :cond_0
    const/4 v7, 0x1

    .line 49
    :goto_0
    iget-object v0, p0, Lo/mu;->QC:Landroid/widget/ProgressBar;

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    invoke-static {}, Lo/mn;->bd()Lo/mn;

    move-result-object v8

    .line 52
    new-instance v0, Lo/mv;

    iget-object v1, p0, Lo/mu;->QC:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lo/mu;->QD:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lo/mu;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "auth_config"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    new-instance v4, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    invoke-virtual {v8}, Lo/mn;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    new-instance v6, Lo/nl;

    invoke-direct {v6}, Lo/nl;-><init>()V

    invoke-direct {v4, v8, v5, v6}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;-><init>(Lo/mn;Ljavax/net/ssl/SSLSocketFactory;Lo/nl;)V

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lo/mv;-><init>(Landroid/widget/ProgressBar;Landroid/webkit/WebView;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lo/mv$if;)V

    iput-object v0, p0, Lo/mu;->QB:Lo/mv;

    .line 55
    iget-object v0, p0, Lo/mu;->QB:Lo/mv;

    invoke-virtual {v0}, Lo/mv;->bp()V

    .line 56
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lo/mu;->QC:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const-string v0, "progress"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public ˊ(ILandroid/content/Intent;)V
    .locals 0

    .line 74
    invoke-virtual {p0, p1, p2}, Lo/mu;->setResult(ILandroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lo/mu;->finish()V

    .line 76
    return-void
.end method
