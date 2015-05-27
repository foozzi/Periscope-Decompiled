.class public Lcom/squareup/okhttp/internal/Platform;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;,
        Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;,
        Lcom/squareup/okhttp/internal/Platform$Android;
    }
.end annotation


# static fields
.field private static final PLATFORM:Lcom/squareup/okhttp/internal/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->findPlatform()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/Platform;->PLATFORM:Lcom/squareup/okhttp/internal/Platform;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    return-void
.end method

.method static concatLengthPrefixed(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;)[B"
        }
    .end annotation

    .line 369
    new-instance v1, Lo/ue;

    invoke-direct {v1}, Lo/ue;-><init>()V

    .line 370
    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 371
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Protocol;

    move-object v4, v0

    .line 372
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-ne v4, v0, :cond_0

    goto :goto_1

    .line 373
    :cond_0
    invoke-virtual {v4}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 374
    invoke-virtual {v4}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/ue;->ﯾ(Ljava/lang/String;)Lo/ue;

    .line 370
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {v1}, Lo/ue;->ef()[B

    move-result-object v0

    return-object v0
.end method

.method private static findPlatform()Lcom/squareup/okhttp/internal/Platform;
    .locals 15

    .line 115
    const-string v0, "com.android.org.conscrypt.OpenSSLSocketImpl"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 119
    goto :goto_0

    .line 116
    :catch_0
    move-exception v7

    .line 118
    const-string v0, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 121
    :goto_0
    new-instance v7, Lcom/squareup/okhttp/internal/OptionalMethod;

    const-string v0, "setUseSessionTickets"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-direct {v7, v2, v0, v1}, Lcom/squareup/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 123
    new-instance v8, Lcom/squareup/okhttp/internal/OptionalMethod;

    const-string v0, "setHostname"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-direct {v8, v2, v0, v1}, Lcom/squareup/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 125
    const/4 v9, 0x0

    .line 126
    const/4 v10, 0x0

    .line 127
    const/4 v11, 0x0

    .line 128
    const/4 v12, 0x0

    .line 132
    const-string v0, "android.net.TrafficStats"

    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 133
    const-string v0, "tagSocket"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/net/Socket;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v13, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v9, v0

    .line 134
    const-string v0, "untagSocket"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/net/Socket;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v13, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    move-object v10, v0

    .line 138
    const-string v0, "android.net.Network"

    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 139
    new-instance v0, Lcom/squareup/okhttp/internal/OptionalMethod;

    const-class v1, [B

    const-string v2, "getAlpnSelectedProtocol"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    move-object v11, v0

    .line 140
    new-instance v0, Lcom/squareup/okhttp/internal/OptionalMethod;

    const-string v1, "setAlpnProtocols"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, [B

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/squareup/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v12, v0

    .line 142
    goto :goto_1

    .line 141
    :catch_1
    move-exception v14

    .line 144
    :goto_1
    goto :goto_2

    .line 143
    :catch_2
    move-exception v13

    .line 146
    :goto_2
    :try_start_4
    new-instance v0, Lcom/squareup/okhttp/internal/Platform$Android;

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/Platform$Android;-><init>(Lcom/squareup/okhttp/internal/OptionalMethod;Lcom/squareup/okhttp/internal/OptionalMethod;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/OptionalMethod;Lcom/squareup/okhttp/internal/OptionalMethod;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v0

    .line 148
    :catch_3
    move-exception v7

    .line 154
    const-string v7, "org.eclipse.jetty.alpn.ALPN"

    .line 155
    :try_start_5
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$ClientProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$ServerProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 159
    const-string v0, "put"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljavax/net/ssl/SSLSocket;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v9, v1, v2

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 160
    const-string v0, "get"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljavax/net/ssl/SSLSocket;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 161
    const-string v0, "remove"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljavax/net/ssl/SSLSocket;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 162
    new-instance v0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4

    return-object v0

    .line 164
    :catch_4
    move-exception v7

    .line 167
    new-instance v0, Lcom/squareup/okhttp/internal/Platform;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/Platform;-><init>()V

    return-object v0
.end method

.method public static get()Lcom/squareup/okhttp/internal/Platform;
    .locals 1

    .line 61
    sget-object v0, Lcom/squareup/okhttp/internal/Platform;->PLATFORM:Lcom/squareup/okhttp/internal/Platform;

    return-object v0
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .line 98
    return-void
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;)V"
        }
    .end annotation

    .line 91
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0

    .line 107
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 108
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "OkHttp"

    return-object v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public logW(Ljava/lang/String;)V
    .locals 1

    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .locals 0

    .line 74
    return-void
.end method

.method public toUriLenient(Ljava/net/URL;)Ljava/net/URI;
    .locals 1

    .line 80
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .locals 0

    .line 77
    return-void
.end method
