.class Lo/na;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/na$if;
    }
.end annotation


# instance fields
.field private final QI:Ljava/lang/String;

.field private final QJ:Lo/na$if;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/na$if;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 26
    iput-object p1, p0, Lo/na;->QI:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lo/na;->QJ:Lo/na$if;

    .line 28
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lo/na;->QJ:Lo/na$if;

    invoke-interface {v0, p1, p2}, Lo/na$if;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lo/na;->QJ:Lo/na$if;

    new-instance v1, Lo/nh;

    invoke-direct {v1, p2, p3, p4}, Lo/nh;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/na$if;->ˋ(Lo/nh;)V

    .line 56
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 61
    iget-object v0, p0, Lo/na;->QJ:Lo/na$if;

    new-instance v1, Lo/nh;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lo/nh;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/na$if;->ˋ(Lo/nh;)V

    .line 62
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .line 38
    iget-object v0, p0, Lo/na;->QI:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/sv;->ˊ(Ljava/net/URI;Z)Ljava/util/TreeMap;

    move-result-object v2

    .line 41
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 42
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v5, v0

    .line 43
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lo/na;->QJ:Lo/na$if;

    invoke-interface {v0, v3}, Lo/na$if;->ᐝ(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
