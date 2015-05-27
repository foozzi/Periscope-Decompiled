.class public final Lo/sr;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final ˋ(Lo/ss;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    .line 20
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 21
    new-instance v4, Lo/su;

    invoke-interface {p0}, Lo/ss;->օ()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p0}, Lo/ss;->א()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lo/su;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 23
    new-instance v5, Lo/st;

    invoke-direct {v5, v4, p0}, Lo/st;-><init>(Lo/su;Lo/ss;)V

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 25
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
