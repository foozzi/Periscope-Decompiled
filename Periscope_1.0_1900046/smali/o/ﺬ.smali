.class public Lo/ﺬ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final jv:Lo/ɽ;


# instance fields
.field private final dV:Landroid/content/Context;

.field private final jt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Class;Ljava/util/Map<Ljava/lang/Class;Lo/\u0283;>;>;"
        }
    .end annotation
.end field

.field private final ju:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Class;Ljava/util/Map<Ljava/lang/Class;Lo/\u027d;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lo/ﺯ;

    invoke-direct {v0}, Lo/ﺯ;-><init>()V

    sput-object v0, Lo/ﺬ;->jv:Lo/ɽ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ﺬ;->jt:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ﺬ;->ju:Ljava/util/Map;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/ﺬ;->dV:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private ʻ(Ljava/lang/Class;Ljava/lang/Class;)Lo/ʃ;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;)Lo/\u0283<TT;TY;>;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lo/ﺬ;->jt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 174
    const/4 v2, 0x0

    .line 175
    if-eqz v1, :cond_0

    .line 176
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ʃ;

    move-object v2, v0

    .line 179
    :cond_0
    if-nez v2, :cond_2

    .line 180
    iget-object v0, p0, Lo/ﺬ;->jt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v4, v0

    .line 186
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lo/ﺬ;->jt:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v5, v0

    .line 189
    if-eqz v5, :cond_1

    .line 190
    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ʃ;

    move-object v2, v0

    .line 191
    if-eqz v2, :cond_1

    .line 192
    goto :goto_1

    .line 195
    :cond_1
    goto :goto_0

    .line 199
    :cond_2
    :goto_1
    return-object v2
.end method

.method private ˊ(Ljava/lang/Class;Ljava/lang/Class;Lo/ɽ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;Lo/\u027d<TT;TY;>;)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lo/ﺬ;->ju:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 155
    if-nez v1, :cond_0

    .line 156
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 157
    iget-object v0, p0, Lo/ﺬ;->ju:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method private ˏ(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;)V"
        }
    .end annotation

    .line 150
    sget-object v0, Lo/ﺬ;->jv:Lo/ɽ;

    invoke-direct {p0, p1, p2, v0}, Lo/ﺬ;->ˊ(Ljava/lang/Class;Ljava/lang/Class;Lo/ɽ;)V

    .line 151
    return-void
.end method

.method private ᐝ(Ljava/lang/Class;Ljava/lang/Class;)Lo/ɽ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;)Lo/\u027d<TT;TY;>;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lo/ﺬ;->ju:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 164
    const/4 v2, 0x0

    .line 165
    if-eqz v1, :cond_0

    .line 166
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ɽ;

    move-object v2, v0

    .line 169
    :cond_0
    return-object v2
.end method


# virtual methods
.method public declared-synchronized ˋ(Ljava/lang/Class;Ljava/lang/Class;Lo/ʃ;)Lo/ʃ;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;Lo/\u0283<TT;TY;>;)Lo/\u0283<TT;TY;>;"
        }
    .end annotation

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lo/ﺬ;->ju:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    iget-object v0, p0, Lo/ﺬ;->jt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 76
    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 78
    iget-object v0, p0, Lo/ﺬ;->jt:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ʃ;

    move-object v2, v0

    .line 83
    if-eqz v2, :cond_2

    .line 86
    iget-object v0, p0, Lo/ﺬ;->jt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 87
    invoke-interface {v4, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const/4 v2, 0x0

    .line 89
    goto :goto_1

    :cond_1
    goto :goto_0

    .line 94
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ˎ(Ljava/lang/Class;Ljava/lang/Class;)Lo/ɽ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;)Lo/\u027d<TT;TY;>;"
        }
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-direct {p0, p1, p2}, Lo/ﺬ;->ᐝ(Ljava/lang/Class;Ljava/lang/Class;)Lo/ɽ;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_1

    .line 131
    sget-object v0, Lo/ﺬ;->jv:Lo/ɽ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    monitor-exit p0

    return-object v1

    .line 138
    :cond_1
    invoke-direct {p0, p1, p2}, Lo/ﺬ;->ʻ(Ljava/lang/Class;Ljava/lang/Class;)Lo/ʃ;

    move-result-object v2

    .line 139
    if-eqz v2, :cond_2

    .line 140
    iget-object v0, p0, Lo/ﺬ;->dV:Landroid/content/Context;

    invoke-interface {v2, v0, p0}, Lo/ʃ;->ˊ(Landroid/content/Context;Lo/ﺬ;)Lo/ɽ;

    move-result-object v1

    .line 141
    invoke-direct {p0, p1, p2, v1}, Lo/ﺬ;->ˊ(Ljava/lang/Class;Ljava/lang/Class;Lo/ɽ;)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-direct {p0, p1, p2}, Lo/ﺬ;->ˏ(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
