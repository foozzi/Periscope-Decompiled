.class Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;
.super Lcom/squareup/okhttp/internal/Platform;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JdkWithJettyBootPlatform"
.end annotation


# instance fields
.field private final clientProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<*>;"
        }
    .end annotation
.end field

.field private final getMethod:Ljava/lang/reflect/Method;

.field private final putMethod:Ljava/lang/reflect/Method;

.field private final removeMethod:Ljava/lang/reflect/Method;

.field private final serverProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)V"
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/Platform;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    .line 268
    iput-object p2, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    .line 269
    iput-object p3, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    .line 270
    iput-object p4, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    .line 271
    iput-object p5, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    .line 272
    return-void
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .locals 4

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    goto :goto_0

    .line 294
    :catch_0
    move-exception v3

    .line 295
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 297
    :goto_0
    return-void
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;)V"
        }
    .end annotation

    .line 276
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    const/4 v5, 0x0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_1

    .line 278
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Protocol;

    move-object v7, v0

    .line 279
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-ne v7, v0, :cond_0

    goto :goto_1

    .line 280
    :cond_0
    invoke-virtual {v7}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 283
    :cond_1
    :try_start_0
    const-class v0, Lcom/squareup/okhttp/internal/Platform;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;

    invoke-direct {v2, v4}, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v5

    .line 285
    iget-object v0, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v5, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_2

    .line 286
    :catch_0
    move-exception v5

    .line 287
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 289
    :goto_2
    return-void
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 4

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 302
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;

    move-object v3, v0

    .line 303
    # getter for: Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->unsupported:Z
    invoke-static {v3}, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->access$000(Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->selected:Ljava/lang/String;
    invoke-static {v3}, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->access$100(Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 304
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    const/4 v0, 0x0

    return-object v0

    .line 308
    :cond_0
    :try_start_1
    # getter for: Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->unsupported:Z
    invoke-static {v3}, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->access$000(Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    # getter for: Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->selected:Ljava/lang/String;
    invoke-static {v3}, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->access$100(Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    .line 309
    :catch_0
    move-exception v3

    .line 310
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
