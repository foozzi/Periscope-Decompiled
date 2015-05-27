.class public Lo/mn;
.super Lo/pq;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/pq<Ljava/lang/Boolean;>;"
    }
.end annotation


# instance fields
.field private final PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field Qp:Lo/mh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/mh<Lo/mr;>;"
        }
    .end annotation
.end field

.field Qq:Lo/mh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/mh<Lo/lv;>;"
        }
    .end annotation
.end field

.field Qr:Lo/ni;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ni<Lo/mr;>;"
        }
    .end annotation
.end field

.field private final Qs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<Lo/mg;Lo/mi;>;"
        }
    .end annotation
.end field

.field private volatile sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lo/pq;-><init>()V

    .line 42
    iput-object p1, p0, Lo/mn;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/mn;->Qs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    return-void
.end method

.method public static bd()Lo/mn;
    .locals 1

    .line 53
    invoke-static {}, Lo/mn;->bg()V

    .line 54
    const-class v0, Lo/mn;

    invoke-static {v0}, Lo/pj;->ـ(Ljava/lang/Class;)Lo/pq;

    move-result-object v0

    check-cast v0, Lo/mn;

    return-object v0
.end method

.method private declared-synchronized bf()V
    .locals 4

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lo/mn;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 85
    :try_start_1
    new-instance v0, Lo/mp;

    invoke-virtual {p0}, Lo/mn;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/mp;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lo/sr;->ˋ(Lo/ss;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lo/mn;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 87
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Custom SSL pinning enabled"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v3

    .line 89
    :try_start_2
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Exception setting up custom SSL pinning"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private static bg()V
    .locals 2

    .line 129
    const-class v0, Lo/mn;

    invoke-static {v0}, Lo/pj;->ـ(Ljava/lang/Class;)Lo/pq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must start Twitter Kit with Fabric.with() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    return-void
.end method

.method private bh()V
    .locals 2

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget-object v0, p0, Lo/mn;->Qp:Lo/mh;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lo/mn;->Qq:Lo/mh;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0}, Lo/mn;->cg()Lo/qr;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lo/oe;->ˊ(Lo/mn;Ljava/util/List;Lo/qr;)V

    .line 139
    return-void
.end method


# virtual methods
.method public be()Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/mn;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object v0
.end method

.method public bi()V
    .locals 1

    .line 181
    invoke-static {}, Lo/mn;->bg()V

    .line 182
    invoke-virtual {p0}, Lo/mn;->bj()Lo/mh;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Lo/mh;->aV()V

    .line 186
    :cond_0
    return-void
.end method

.method public bj()Lo/mh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/mh<Lo/mr;>;"
        }
    .end annotation

    .line 195
    invoke-static {}, Lo/mn;->bg()V

    .line 196
    iget-object v0, p0, Lo/mn;->Qp:Lo/mh;

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 74
    invoke-static {}, Lo/mn;->bg()V

    .line 76
    iget-object v0, p0, Lo/mn;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lo/mn;->bf()V

    .line 79
    :cond_0
    iget-object v0, p0, Lo/mn;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "1.3.2-SNAPSHOT.dev"

    return-object v0
.end method

.method public ˋ(Lo/mg;)Lo/mi;
    .locals 2

    .line 250
    invoke-static {}, Lo/mn;->bg()V

    .line 251
    iget-object v0, p0, Lo/mn;->Qs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lo/mn;->Qs:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lo/mi;

    invoke-direct {v1, p1}, Lo/mi;-><init>(Lo/mg;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_0
    iget-object v0, p0, Lo/mn;->Qs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/mi;

    return-object v0
.end method

.method protected synthetic э()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/mn;->ᴣ()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected ᴣ()Ljava/lang/Boolean;
    .locals 2

    .line 112
    iget-object v0, p0, Lo/mn;->Qp:Lo/mh;

    invoke-interface {v0}, Lo/mh;->aU()Lo/mg;

    .line 113
    iget-object v0, p0, Lo/mn;->Qq:Lo/mh;

    invoke-interface {v0}, Lo/mh;->aU()Lo/mg;

    .line 114
    invoke-virtual {p0}, Lo/mn;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 115
    invoke-direct {p0}, Lo/mn;->bh()V

    .line 116
    iget-object v0, p0, Lo/mn;->Qr:Lo/ni;

    invoke-virtual {v0}, Lo/ni;->bC()V

    .line 119
    iget-object v0, p0, Lo/mn;->Qr:Lo/ni;

    invoke-virtual {p0}, Lo/mn;->ch()Lo/pj;

    move-result-object v1

    invoke-virtual {v1}, Lo/pj;->cc()Lo/pg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ni;->ˊ(Lo/pg;)V

    .line 120
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected ﺰ()Z
    .locals 5

    .line 96
    new-instance v0, Lo/md;

    new-instance v1, Lo/sy;

    invoke-direct {v1, p0}, Lo/sy;-><init>(Lo/pq;)V

    new-instance v2, Lo/mr$if;

    invoke-direct {v2}, Lo/mr$if;-><init>()V

    const-string v3, "active_twittersession"

    const-string v4, "twittersession"

    invoke-direct {v0, v1, v2, v3, v4}, Lo/md;-><init>(Lo/sx;Lo/ta;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo/mn;->Qp:Lo/mh;

    .line 100
    new-instance v0, Lo/ni;

    iget-object v1, p0, Lo/mn;->Qp:Lo/mh;

    invoke-virtual {p0}, Lo/mn;->ch()Lo/pj;

    move-result-object v2

    invoke-virtual {v2}, Lo/pj;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ni;-><init>(Lo/mh;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lo/mn;->Qr:Lo/ni;

    .line 103
    new-instance v0, Lo/md;

    new-instance v1, Lo/sy;

    invoke-direct {v1, p0}, Lo/sy;-><init>(Lo/pq;)V

    new-instance v2, Lo/lv$if;

    invoke-direct {v2}, Lo/lv$if;-><init>()V

    const-string v3, "active_appsession"

    const-string v4, "appsession"

    invoke-direct {v0, v1, v2, v3, v4}, Lo/md;-><init>(Lo/sx;Lo/ta;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo/mn;->Qq:Lo/mh;

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public ｯ()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, "com.twitter.sdk.android:twitter-core"

    return-object v0
.end method
