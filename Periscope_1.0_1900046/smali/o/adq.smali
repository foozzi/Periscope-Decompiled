.class public Lo/adq;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 60
    const v0, 0x7f04000a

    const v1, 0x7f04000f

    invoke-virtual {p0, v0, v1}, Lo/adq;->overridePendingTransition(II)V

    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 51
    :sswitch_0
    invoke-virtual {p0}, Lo/adq;->onBackPressed()V

    .line 55
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b00bc -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f03005b

    invoke-virtual {p0, v0}, Lo/adq;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lo/adq;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 28
    const-string v0, "e_title"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    const-string v0, "e_url"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lo/adq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amt;

    move-object v5, v0

    .line 32
    invoke-virtual {v5, v3}, Lo/amt;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lo/adq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v0, 0x7f0b011c

    invoke-virtual {p0, v0}, Lo/adq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    move-object v6, v0

    .line 38
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 39
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 41
    new-instance v0, Lo/adr;

    invoke-direct {v0, p0}, Lo/adr;-><init>(Lo/adq;)V

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 43
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 44
    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 45
    return-void
.end method
