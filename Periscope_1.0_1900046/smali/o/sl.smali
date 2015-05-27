.class public Lo/sl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sl$1;
    }
.end annotation


# instance fields
.field private final UT:Lo/ps;

.field private XL:Lo/ss;

.field private XM:Z

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    new-instance v0, Lo/pi;

    invoke-direct {v0}, Lo/pi;-><init>()V

    invoke-direct {p0, v0}, Lo/sl;-><init>(Lo/ps;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lo/ps;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/sl;->UT:Lo/ps;

    .line 37
    return-void
.end method

.method private declared-synchronized dn()V
    .locals 2

    monitor-enter p0

    .line 53
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lo/sl;->XM:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lo/sl;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized do()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    monitor-enter p0

    .line 112
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lo/sl;->XM:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    iget-object v0, p0, Lo/sl;->XL:Lo/ss;

    invoke-static {v0}, Lo/sr;->ˋ(Lo/ss;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 117
    iget-object v0, p0, Lo/sl;->UT:Lo/ps;

    const-string v1, "Fabric"

    const-string v2, "Custom SSL pinning enabled"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit p0

    return-object v3

    .line 119
    :catch_0
    move-exception v3

    .line 120
    :try_start_2
    iget-object v0, p0, Lo/sl;->UT:Lo/ps;

    const-string v1, "Fabric"

    const-string v2, "Exception while validating pinned certs"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lo/sl;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/sl;->XM:Z

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lo/sl;->do()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lo/sl;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 108
    :cond_0
    iget-object v0, p0, Lo/sl;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private ᕝ(Ljava/lang/String;)Z
    .locals 2

    .line 101
    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public ˊ(Lo/sm;Ljava/lang/String;Ljava/util/Map;)Lo/sn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/sm;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lo/sn;"
        }
    .end annotation

    .line 66
    sget-object v0, Lo/sl$1;->XN:[I

    invoke-virtual {p1}, Lo/sm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 68
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {p2, p3, v0}, Lo/sn;->ˊ(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lo/sn;

    move-result-object v2

    .line 69
    goto :goto_1

    .line 72
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {p2, p3, v0}, Lo/sn;->ˋ(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lo/sn;

    move-result-object v2

    .line 73
    goto :goto_1

    .line 76
    :pswitch_2
    invoke-static {p2}, Lo/sn;->ˑ(Ljava/lang/CharSequence;)Lo/sn;

    move-result-object v2

    .line 77
    goto :goto_1

    .line 80
    :pswitch_3
    invoke-static {p2}, Lo/sn;->ـ(Ljava/lang/CharSequence;)Lo/sn;

    move-result-object v2

    .line 81
    goto :goto_1

    .line 84
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported HTTP method!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :goto_1
    invoke-direct {p0, p2}, Lo/sl;->ᕝ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/sl;->XL:Lo/ss;

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lo/sl;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 91
    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {v2}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 97
    :cond_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public ˊ(Lo/ss;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lo/sl;->XL:Lo/ss;

    if-eq v0, p1, :cond_0

    .line 47
    iput-object p1, p0, Lo/sl;->XL:Lo/ss;

    .line 48
    invoke-direct {p0}, Lo/sl;->dn()V

    .line 50
    :cond_0
    return-void
.end method
