.class public final Lcom/squareup/okhttp/Connection;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private connected:Z

.field private handshake:Lcom/squareup/okhttp/Handshake;

.field private httpConnection:Lcom/squareup/okhttp/internal/http/HttpConnection;

.field private idleStartTimeNs:J

.field private owner:Ljava/lang/Object;

.field private final pool:Lcom/squareup/okhttp/ConnectionPool;

.field private protocol:Lcom/squareup/okhttp/Protocol;

.field private recycleCount:I

.field private final route:Lcom/squareup/okhttp/Route;

.field private socket:Ljava/net/Socket;

.field private spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Route;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/okhttp/Connection;->connected:Z

    .line 78
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcom/squareup/okhttp/Connection;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 91
    iput-object p1, p0, Lcom/squareup/okhttp/Connection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    .line 92
    iput-object p2, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    .line 93
    return-void
.end method

.method private makeTunnel(Lcom/squareup/okhttp/Request;II)V
    .locals 11

    .line 393
    new-instance v4, Lcom/squareup/okhttp/internal/http/HttpConnection;

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-direct {v4, v0, p0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection;-><init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;Ljava/net/Socket;)V

    .line 394
    invoke-virtual {v4, p2, p3}, Lcom/squareup/okhttp/internal/http/HttpConnection;->setTimeouts(II)V

    .line 395
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v5

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 398
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v4, v0, v6}, Lcom/squareup/okhttp/internal/http/HttpConnection;->writeRequest(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpConnection;->flush()V

    .line 400
    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpConnection;->readResponse()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v7

    .line 403
    invoke-static {v7}, Lcom/squareup/okhttp/internal/http/OkHeaders;->contentLength(Lcom/squareup/okhttp/Response;)J

    move-result-wide v8

    .line 404
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    .line 405
    const-wide/16 v8, 0x0

    .line 407
    :cond_0
    invoke-virtual {v4, v8, v9}, Lcom/squareup/okhttp/internal/http/HttpConnection;->newFixedLengthSource(J)Lo/va;

    move-result-object v10

    .line 408
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const v1, 0x7fffffff

    invoke-static {v10, v1, v0}, Lcom/squareup/okhttp/internal/Util;->skipAll(Lo/va;ILjava/util/concurrent/TimeUnit;)Z

    .line 409
    invoke-interface {v10}, Lo/va;->close()V

    .line 411
    invoke-virtual {v7}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 417
    :sswitch_0
    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpConnection;->bufferSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 418
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_1
    return-void

    .line 423
    :sswitch_1
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v0, v0, Lcom/squareup/okhttp/Address;->authenticator:Lcom/squareup/okhttp/Authenticator;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-static {v0, v7, v1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/squareup/okhttp/Authenticator;Lcom/squareup/okhttp/Response;Ljava/net/Proxy;)Lcom/squareup/okhttp/Request;

    move-result-object p1

    .line 425
    if-eqz p1, :cond_2

    goto/16 :goto_0

    .line 426
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :goto_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response code for CONNECT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 430
    invoke-virtual {v7}, Lcom/squareup/okhttp/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private tunnelRequest(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Request;
    .locals 10

    .line 194
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Route;->requiresTunnel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v5

    .line 198
    const-string v0, "https"

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_1

    move-object v6, v4

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    :goto_0
    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    new-instance v1, Ljava/net/URL;

    const-string v2, "https"

    const-string v3, "/"

    invoke-direct {v1, v2, v4, v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    const-string v1, "Host"

    .line 201
    invoke-virtual {v0, v1, v6}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v7

    .line 205
    const-string v0, "User-Agent"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 206
    if-eqz v8, :cond_2

    .line 207
    const-string v0, "User-Agent"

    invoke-virtual {v7, v0, v8}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 211
    :cond_2
    const-string v0, "Proxy-Authorization"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 212
    if-eqz v9, :cond_3

    .line 213
    const-string v0, "Proxy-Authorization"

    invoke-virtual {v7, v0, v9}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 216
    :cond_3
    invoke-virtual {v7}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0
.end method

.method private upgradeToTls(Lcom/squareup/okhttp/Request;II)V
    .locals 9

    .line 225
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v5

    .line 228
    if-eqz p1, :cond_0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/Connection;->makeTunnel(Lcom/squareup/okhttp/Request;II)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v0, v0, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v2, v2, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v2, v2, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    iget-object v3, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v3, v3, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget v3, v3, Lcom/squareup/okhttp/Address;->uriPort:I

    .line 234
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    .line 235
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v6, v0

    .line 238
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->connectionSpec:Lcom/squareup/okhttp/ConnectionSpec;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    invoke-virtual {v0, v6, v1}, Lcom/squareup/okhttp/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Lcom/squareup/okhttp/Route;)V

    .line 242
    :try_start_0
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 245
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->connectionSpec:Lcom/squareup/okhttp/ConnectionSpec;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 247
    invoke-static {v7}, Lcom/squareup/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Connection;->protocol:Lcom/squareup/okhttp/Protocol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_1
    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 251
    goto :goto_0

    .line 250
    :catchall_0
    move-exception v8

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    throw v8

    .line 253
    :goto_0
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/squareup/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Connection;->handshake:Lcom/squareup/okhttp/Handshake;

    .line 256
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v0, v0, Lcom/squareup/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v1, v1, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v7, v0

    .line 258
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v2, v2, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v2, v2, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not verified:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 259
    invoke-static {v7}, Lcom/squareup/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    subjectAltNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    invoke-static {v7}, Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v0, v0, Lcom/squareup/okhttp/Address;->certificatePinner:Lcom/squareup/okhttp/CertificatePinner;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v1, v1, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->handshake:Lcom/squareup/okhttp/Handshake;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 267
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_4

    .line 268
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 269
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/net/Socket;)V

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 270
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->build()Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .line 271
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->sendConnectionPreface()V

    goto :goto_1

    .line 273
    :cond_4
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-direct {v0, v1, p0, v2}, Lcom/squareup/okhttp/internal/http/HttpConnection;-><init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;Ljava/net/Socket;)V

    iput-object v0, p0, Lcom/squareup/okhttp/Connection;->httpConnection:Lcom/squareup/okhttp/internal/http/HttpConnection;

    .line 275
    :goto_1
    return-void
.end method


# virtual methods
.method clearOwner()Z
    .locals 3

    .line 116
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 119
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/squareup/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 124
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method closeIfOwnedBy(Ljava/lang/Object;)V
    .locals 3

    .line 132
    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->isSpdy()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_1

    .line 135
    monitor-exit v1

    return-void

    .line 138
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/squareup/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 143
    return-void
.end method

.method connect(IIILcom/squareup/okhttp/Request;)V
    .locals 3

    .line 147
    iget-boolean v0, p0, Lcom/squareup/okhttp/Connection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_2

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v0, v0, Lcom/squareup/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 152
    :cond_2
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 156
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v2, v2, Lcom/squareup/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1, v2, p1}, Lcom/squareup/okhttp/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    .line 158
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v0, v0, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_3

    .line 159
    invoke-direct {p0, p4, p2, p3}, Lcom/squareup/okhttp/Connection;->upgradeToTls(Lcom/squareup/okhttp/Request;II)V

    goto :goto_1

    .line 161
    :cond_3
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-direct {v0, v1, p0, v2}, Lcom/squareup/okhttp/internal/http/HttpConnection;-><init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;Ljava/net/Socket;)V

    iput-object v0, p0, Lcom/squareup/okhttp/Connection;->httpConnection:Lcom/squareup/okhttp/internal/http/HttpConnection;

    .line 163
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/Connection;->connected:Z

    .line 164
    return-void
.end method

.method connectAndSetOwner(Lcom/squareup/okhttp/OkHttpClient;Ljava/lang/Object;Lcom/squareup/okhttp/Request;)V
    .locals 4

    .line 171
    invoke-virtual {p0, p2}, Lcom/squareup/okhttp/Connection;->setOwner(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    invoke-direct {p0, p3}, Lcom/squareup/okhttp/Connection;->tunnelRequest(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Request;

    move-result-object v3

    .line 175
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v1

    .line 176
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v2

    .line 175
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/squareup/okhttp/Connection;->connect(IIILcom/squareup/okhttp/Request;)V

    .line 177
    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->isSpdy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getConnectionPool()Lcom/squareup/okhttp/ConnectionPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/ConnectionPool;->share(Lcom/squareup/okhttp/Connection;)V

    .line 180
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->routeDatabase()Lcom/squareup/okhttp/internal/RouteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/RouteDatabase;->connected(Lcom/squareup/okhttp/Route;)V

    .line 183
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/Connection;->setTimeouts(II)V

    .line 184
    return-void
.end method

.method public getHandshake()Lcom/squareup/okhttp/Handshake;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->handshake:Lcom/squareup/okhttp/Handshake;

    return-object v0
.end method

.method getIdleStartTimeNs()J
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/squareup/okhttp/Connection;->idleStartTimeNs:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getIdleStartTimeNs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method getOwner()Ljava/lang/Object;
    .locals 3

    .line 96
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public getProtocol()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->protocol:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public getRoute()Lcom/squareup/okhttp/Route;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method incrementRecycleCount()V
    .locals 2

    .line 375
    iget v0, p0, Lcom/squareup/okhttp/Connection;->recycleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Connection;->recycleCount:I

    .line 376
    return-void
.end method

.method isAlive()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isConnected()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/squareup/okhttp/Connection;->connected:Z

    return v0
.end method

.method isIdle()Z
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isReadable()Z
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->httpConnection:Lcom/squareup/okhttp/internal/http/HttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->httpConnection:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->isReadable()Z

    move-result v0

    return v0

    .line 307
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method isSpdy()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method newTransport(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lcom/squareup/okhttp/internal/http/Transport;
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/squareup/okhttp/internal/http/SpdyTransport;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-direct {v0, p1, v1}, Lcom/squareup/okhttp/internal/http/SpdyTransport;-><init>(Lcom/squareup/okhttp/internal/http/HttpEngine;Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpTransport;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->httpConnection:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-direct {v0, p1, v1}, Lcom/squareup/okhttp/internal/http/HttpTransport;-><init>(Lcom/squareup/okhttp/internal/http/HttpEngine;Lcom/squareup/okhttp/internal/http/HttpConnection;)V

    :goto_0
    return-object v0
.end method

.method recycleCount()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/squareup/okhttp/Connection;->recycleCount:I

    return v0
.end method

.method resetIdleStartTime()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "spdyConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/Connection;->idleStartTimeNs:J

    .line 313
    return-void
.end method

.method setOwner(Ljava/lang/Object;)V
    .locals 4

    .line 102
    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->isSpdy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->owner:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection already has an owner!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    iput-object p1, p0, Lcom/squareup/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 107
    :goto_0
    return-void
.end method

.method setProtocol(Lcom/squareup/okhttp/Protocol;)V
    .locals 2

    .line 360
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/Connection;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 362
    return-void
.end method

.method setTimeouts(II)V
    .locals 2

    .line 365
    iget-boolean v0, p0, Lcom/squareup/okhttp/Connection;->connected:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTimeouts - not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->httpConnection:Lcom/squareup/okhttp/internal/http/HttpConnection;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 370
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->httpConnection:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpConnection;->setTimeouts(II)V

    .line 372
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v1, v1, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget v1, v1, Lcom/squareup/okhttp/Address;->uriPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 441
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->handshake:Lcom/squareup/okhttp/Handshake;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->handshake:Lcom/squareup/okhttp/Handshake;

    .line 443
    invoke-virtual {v1}, Lcom/squareup/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
