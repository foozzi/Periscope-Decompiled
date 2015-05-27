.class public final Lcom/squareup/okhttp/Address;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final authenticator:Lcom/squareup/okhttp/Authenticator;

.field final certificatePinner:Lcom/squareup/okhttp/CertificatePinner;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
        }
    .end annotation
.end field

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final uriHost:Ljava/lang/String;

.field final uriPort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/squareup/okhttp/CertificatePinner;Lcom/squareup/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/squareup/okhttp/CertificatePinner;Lcom/squareup/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;Ljava/net/ProxySelector;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uriHost == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uriPort <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    if-nez p7, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    if-nez p9, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    if-nez p11, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_4
    iput-object p8, p0, Lcom/squareup/okhttp/Address;->proxy:Ljava/net/Proxy;

    .line 61
    iput-object p1, p0, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/squareup/okhttp/Address;->uriPort:I

    .line 63
    iput-object p3, p0, Lcom/squareup/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    .line 64
    iput-object p4, p0, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 65
    iput-object p5, p0, Lcom/squareup/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 66
    iput-object p6, p0, Lcom/squareup/okhttp/Address;->certificatePinner:Lcom/squareup/okhttp/CertificatePinner;

    .line 67
    iput-object p7, p0, Lcom/squareup/okhttp/Address;->authenticator:Lcom/squareup/okhttp/Authenticator;

    .line 68
    invoke-static {p9}, Lcom/squareup/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Address;->protocols:Ljava/util/List;

    .line 69
    invoke-static {p10}, Lcom/squareup/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Address;->connectionSpecs:Ljava/util/List;

    .line 70
    iput-object p11, p0, Lcom/squareup/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 71
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 143
    instance-of v0, p1, Lcom/squareup/okhttp/Address;

    if-eqz v0, :cond_1

    .line 144
    move-object v0, p1

    check-cast v0, Lcom/squareup/okhttp/Address;

    move-object v2, v0

    .line 145
    iget-object v0, p0, Lcom/squareup/okhttp/Address;->proxy:Ljava/net/Proxy;

    iget-object v1, v2, Lcom/squareup/okhttp/Address;->proxy:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    iget-object v1, v2, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/squareup/okhttp/Address;->uriPort:I

    iget v1, v2, Lcom/squareup/okhttp/Address;->uriPort:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, v2, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 148
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, v2, Lcom/squareup/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 149
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->certificatePinner:Lcom/squareup/okhttp/CertificatePinner;

    iget-object v1, v2, Lcom/squareup/okhttp/Address;->certificatePinner:Lcom/squareup/okhttp/CertificatePinner;

    .line 150
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->authenticator:Lcom/squareup/okhttp/Authenticator;

    iget-object v1, v2, Lcom/squareup/okhttp/Address;->authenticator:Lcom/squareup/okhttp/Authenticator;

    .line 151
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->protocols:Ljava/util/List;

    iget-object v1, v2, Lcom/squareup/okhttp/Address;->protocols:Ljava/util/List;

    .line 152
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->connectionSpecs:Ljava/util/List;

    iget-object v1, v2, Lcom/squareup/okhttp/Address;->connectionSpecs:Ljava/util/List;

    .line 153
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v1, v2, Lcom/squareup/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 154
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 156
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthenticator()Lcom/squareup/okhttp/Authenticator;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/squareup/okhttp/Address;->authenticator:Lcom/squareup/okhttp/Authenticator;

    return-object v0
.end method

.method public getConnectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/squareup/okhttp/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/squareup/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/squareup/okhttp/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/squareup/okhttp/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/squareup/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getUriHost()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    return-object v0
.end method

.method public getUriPort()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/squareup/okhttp/Address;->uriPort:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 160
    const/16 v2, 0x11

    .line 161
    iget-object v0, p0, Lcom/squareup/okhttp/Address;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v2, v0, 0x20f

    .line 162
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 163
    mul-int/lit8 v0, v2, 0x1f

    iget v1, p0, Lcom/squareup/okhttp/Address;->uriPort:I

    add-int v2, v0, v1

    .line 164
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int v2, v0, v1

    .line 165
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int v2, v0, v1

    .line 166
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/Address;->certificatePinner:Lcom/squareup/okhttp/CertificatePinner;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/squareup/okhttp/Address;->certificatePinner:Lcom/squareup/okhttp/CertificatePinner;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int v2, v0, v1

    .line 167
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/Address;->authenticator:Lcom/squareup/okhttp/Authenticator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 168
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/Address;->protocols:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 169
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 170
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 171
    return v2
.end method
