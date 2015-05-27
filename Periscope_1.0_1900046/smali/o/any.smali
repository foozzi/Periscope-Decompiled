.class public final Lo/any;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/net/CookieStore;


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/any;->map:Ljava/util/Map;

    return-void
.end method

.method private ˊ(Ljava/net/URI;)Ljava/net/URI;
    .locals 6

    .line 59
    if-nez p1, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "http"

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v5

    .line 65
    return-object p1
.end method


# virtual methods
.method public declared-synchronized add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 3

    monitor-enter p0

    .line 43
    if-nez p2, :cond_0

    .line 44
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookie == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Lo/any;->ˊ(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lo/any;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 49
    if-nez v2, :cond_1

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v0, p0, Lo/any;->map:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 55
    :goto_0
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/net/URI;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/net/URI;)Ljava/util/List<Ljava/net/HttpCookie;>;"
        }
    .end annotation

    monitor-enter p0

    .line 70
    if-nez p1, :cond_0

    .line 71
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v0, p0, Lo/any;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 78
    if-eqz v3, :cond_2

    .line 79
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    move-object v5, v0

    .line 81
    invoke-virtual {v5}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 84
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_1
    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lo/any;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v5, v0

    .line 91
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    goto :goto_2

    .line 95
    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v6, v0

    .line 96
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 97
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    move-object v8, v0

    .line 98
    invoke-static {v8}, Lo/anx;->ˊ(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/HttpCookie;->domainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 99
    goto :goto_3

    .line 101
    :cond_4
    invoke-virtual {v8}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 103
    :cond_5
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 104
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_6
    :goto_4
    goto :goto_3

    .line 107
    :cond_7
    goto/16 :goto_2

    .line 109
    :cond_8
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCookies()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Ljava/net/HttpCookie;>;"
        }
    .end annotation

    monitor-enter p0

    .line 113
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v0, p0, Lo/any;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 115
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    move-object v5, v0

    .line 117
    invoke-virtual {v5}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 119
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_1
    :goto_2
    goto :goto_1

    .line 123
    :cond_2
    goto :goto_0

    .line 124
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getURIs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Ljava/net/URI;>;"
        }
    .end annotation

    monitor-enter p0

    .line 128
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lo/any;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 3

    monitor-enter p0

    .line 134
    if-nez p2, :cond_0

    .line 135
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookie == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lo/any;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Lo/any;->ˊ(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 139
    if-eqz v2, :cond_1

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAll()Z
    .locals 2

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lo/any;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 144
    :goto_0
    iget-object v0, p0, Lo/any;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
