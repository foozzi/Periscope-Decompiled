.class public final Lcom/squareup/okhttp/Route;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final address:Lcom/squareup/okhttp/Address;

.field final connectionSpec:Lcom/squareup/okhttp/ConnectionSpec;

.field final inetSocketAddress:Ljava/net/InetSocketAddress;

.field final proxy:Ljava/net/Proxy;

.field final shouldSendTlsFallbackIndicator:Z


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Lcom/squareup/okhttp/ConnectionSpec;)V
    .locals 6

    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/Route;-><init>(Lcom/squareup/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Lcom/squareup/okhttp/ConnectionSpec;Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Lcom/squareup/okhttp/ConnectionSpec;Z)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-nez p2, :cond_1

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    if-nez p3, :cond_2

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    if-nez p4, :cond_3

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionConfiguration == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3
    iput-object p1, p0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    .line 64
    iput-object p2, p0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    .line 65
    iput-object p3, p0, Lcom/squareup/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 66
    iput-object p4, p0, Lcom/squareup/okhttp/Route;->connectionSpec:Lcom/squareup/okhttp/ConnectionSpec;

    .line 67
    iput-boolean p5, p0, Lcom/squareup/okhttp/Route;->shouldSendTlsFallbackIndicator:Z

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 106
    instance-of v0, p1, Lcom/squareup/okhttp/Route;

    if-eqz v0, :cond_1

    .line 107
    move-object v0, p1

    check-cast v0, Lcom/squareup/okhttp/Route;

    move-object v2, v0

    .line 108
    iget-object v0, p0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v1, v2, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    iget-object v1, v2, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    .line 109
    invoke-virtual {v0, v1}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v1, v2, Lcom/squareup/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 110
    invoke-virtual {v0, v1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Route;->connectionSpec:Lcom/squareup/okhttp/ConnectionSpec;

    iget-object v1, v2, Lcom/squareup/okhttp/Route;->connectionSpec:Lcom/squareup/okhttp/ConnectionSpec;

    .line 111
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/squareup/okhttp/Route;->shouldSendTlsFallbackIndicator:Z

    iget-boolean v1, v2, Lcom/squareup/okhttp/Route;->shouldSendTlsFallbackIndicator:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 114
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Lcom/squareup/okhttp/Address;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    return-object v0
.end method

.method public getConnectionSpec()Lcom/squareup/okhttp/ConnectionSpec;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/squareup/okhttp/Route;->connectionSpec:Lcom/squareup/okhttp/ConnectionSpec;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getShouldSendTlsFallbackIndicator()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/squareup/okhttp/Route;->shouldSendTlsFallbackIndicator:Z

    return v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/squareup/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 118
    const/16 v2, 0x11

    .line 119
    iget-object v0, p0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->hashCode()I

    move-result v0

    add-int/lit16 v2, v0, 0x20f

    .line 120
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 121
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 122
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/Route;->connectionSpec:Lcom/squareup/okhttp/ConnectionSpec;

    invoke-virtual {v1}, Lcom/squareup/okhttp/ConnectionSpec;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 123
    mul-int/lit8 v0, v2, 0x1f

    iget-boolean v1, p0, Lcom/squareup/okhttp/Route;->shouldSendTlsFallbackIndicator:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int v2, v0, v1

    .line 124
    return v2
.end method

.method public requiresTunnel()Z
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v0, v0, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
