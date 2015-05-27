.class public final Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/Authenticator;


# static fields
.field public static final INSTANCE:Lcom/squareup/okhttp/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;->INSTANCE:Lcom/squareup/okhttp/Authenticator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;
    .locals 2

    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public authenticate(Ljava/net/Proxy;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Request;
    .locals 16

    .line 38
    invoke-virtual/range {p2 .. p2}, Lcom/squareup/okhttp/Response;->challenges()Ljava/util/List;

    move-result-object v8

    .line 39
    invoke-virtual/range {p2 .. p2}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v9

    .line 40
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v10

    .line 41
    const/4 v11, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    :goto_0
    if-ge v11, v12, :cond_2

    .line 42
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Challenge;

    move-object v13, v0

    .line 43
    const-string v0, "Basic"

    invoke-virtual {v13}, Lcom/squareup/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 45
    .line 46
    :cond_0
    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v10}, Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;->getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {v13}, Lcom/squareup/okhttp/Challenge;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/squareup/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v5

    move-object v6, v10

    sget-object v7, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 45
    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v14

    .line 48
    if-nez v14, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v14}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, v1}, Lcom/squareup/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 51
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    const-string v1, "Authorization"

    .line 52
    invoke-virtual {v0, v1, v15}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0

    .line 41
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 55
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public authenticateProxy(Ljava/net/Proxy;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Request;
    .locals 17

    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/squareup/okhttp/Response;->challenges()Ljava/util/List;

    move-result-object v8

    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v9

    .line 62
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v10

    .line 63
    const/4 v11, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    :goto_0
    if-ge v11, v12, :cond_2

    .line 64
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Challenge;

    move-object v13, v0

    .line 65
    const-string v0, "Basic"

    invoke-virtual {v13}, Lcom/squareup/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v14, v0

    .line 68
    .line 69
    invoke-virtual {v14}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v10}, Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;->getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v14}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 70
    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/squareup/okhttp/Challenge;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/squareup/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v5

    move-object v6, v10

    sget-object v7, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 68
    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v15

    .line 72
    if-nez v15, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v15}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, v1}, Lcom/squareup/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 75
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    const-string v1, "Proxy-Authorization"

    .line 76
    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0

    .line 63
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 79
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
