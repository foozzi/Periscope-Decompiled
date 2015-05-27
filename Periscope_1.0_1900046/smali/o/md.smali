.class public Lo/md;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/mh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Lo/mg;>Ljava/lang/Object;Lo/mh<TT;>;"
    }
.end annotation


# instance fields
.field private final PX:Lo/ta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ta<TT;>;"
        }
    .end annotation
.end field

.field private final PY:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;TT;>;"
        }
    .end annotation
.end field

.field private final PZ:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lo/sz<TT;>;>;"
        }
    .end annotation
.end field

.field private final Qa:Lo/sz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/sz<TT;>;"
        }
    .end annotation
.end field

.field private final Qb:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
        }
    .end annotation
.end field

.field private final Qc:Ljava/lang/String;

.field private final Qd:Ljava/lang/String;

.field private volatile Qe:Z

.field private final pr:Lo/sx;


# direct methods
.method public constructor <init>(Lo/sx;Lo/ta;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/sx;Lo/ta<TT;>;Ljava/lang/String;Ljava/lang/String;)V"
        }
    .end annotation

    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    new-instance v5, Lo/sz;

    invoke-direct {v5, p1, p2, p3}, Lo/sz;-><init>(Lo/sx;Lo/ta;Ljava/lang/String;)V

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lo/md;-><init>(Lo/sx;Lo/ta;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lo/sz;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method constructor <init>(Lo/sx;Lo/ta;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lo/sz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/sx;Lo/ta<TT;>;Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;TT;>;Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lo/sz<TT;>;>;Lo/sz<TT;>;Ljava/lang/String;Ljava/lang/String;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/md;->Qe:Z

    .line 43
    iput-object p1, p0, Lo/md;->pr:Lo/sx;

    .line 44
    iput-object p2, p0, Lo/md;->PX:Lo/ta;

    .line 45
    iput-object p3, p0, Lo/md;->PY:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    iput-object p4, p0, Lo/md;->PZ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    iput-object p5, p0, Lo/md;->Qa:Lo/sz;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo/md;->Qb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
    iput-object p6, p0, Lo/md;->Qc:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lo/md;->Qd:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private declared-synchronized aR()V
    .locals 2

    monitor-enter p0

    .line 61
    :try_start_0
    iget-boolean v0, p0, Lo/md;->Qe:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lo/md;->aT()V

    .line 63
    invoke-direct {p0}, Lo/md;->aS()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/md;->Qe:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private aS()V
    .locals 7

    .line 71
    iget-object v0, p0, Lo/md;->pr:Lo/sx;

    invoke-interface {v0}, Lo/sx;->dG()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 72
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v6, v0

    .line 73
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lo/md;->ᕑ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lo/md;->PX:Lo/ta;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/ta;->ᕁ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/mg;

    move-object v3, v0

    .line 75
    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {v3}, Lo/mg;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lo/md;->ˊ(JLo/mg;Z)V

    .line 79
    :cond_0
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method private aT()V
    .locals 4

    .line 84
    iget-object v0, p0, Lo/md;->Qa:Lo/sz;

    invoke-virtual {v0}, Lo/sz;->dH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/mg;

    move-object v3, v0

    .line 85
    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {v3}, Lo/mg;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lo/md;->ˊ(JLo/mg;Z)V

    .line 88
    :cond_0
    return-void
.end method

.method private ˊ(JLo/mg;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;Z)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lo/md;->PY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lo/md;->PZ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sz;

    move-object v3, v0

    .line 157
    if-nez v3, :cond_0

    .line 158
    new-instance v3, Lo/sz;

    iget-object v0, p0, Lo/md;->pr:Lo/sx;

    iget-object v1, p0, Lo/md;->PX:Lo/ta;

    invoke-virtual {p0, p1, p2}, Lo/md;->ᕀ(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v1, v2}, Lo/sz;-><init>(Lo/sx;Lo/ta;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lo/md;->PZ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    invoke-virtual {v3, p3}, Lo/sz;->ᵓ(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lo/md;->Qb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/mg;

    move-object v4, v0

    .line 164
    if-eqz v4, :cond_1

    if-eqz p4, :cond_2

    .line 165
    :cond_1
    move-object v5, p0

    monitor-enter v5

    .line 166
    :try_start_0
    iget-object v0, p0, Lo/md;->Qb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v4, p3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lo/md;->Qa:Lo/sz;

    invoke-virtual {v0, p3}, Lo/sz;->ᵓ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    .line 170
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method aQ()V
    .locals 1

    .line 55
    iget-boolean v0, p0, Lo/md;->Qe:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lo/md;->aR()V

    .line 58
    :cond_0
    return-void
.end method

.method public aU()Lo/mg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lo/md;->aQ()V

    .line 100
    iget-object v0, p0, Lo/md;->Qb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/mg;

    return-object v0
.end method

.method public aV()V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lo/md;->aQ()V

    .line 121
    iget-object v0, p0, Lo/md;->Qb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lo/md;->Qb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/mg;

    invoke-virtual {v0}, Lo/mg;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/md;->ᵕ(J)V

    .line 124
    :cond_0
    return-void
.end method

.method public aW()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Ljava/lang/Long;TT;>;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lo/md;->aQ()V

    .line 151
    iget-object v0, p0, Lo/md;->PY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/mg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lo/md;->aQ()V

    .line 112
    invoke-virtual {p1}, Lo/mg;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lo/md;->ˊ(JLo/mg;Z)V

    .line 113
    return-void
.end method

.method public ᑊ(J)Lo/mg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lo/md;->aQ()V

    .line 132
    iget-object v0, p0, Lo/md;->PY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/mg;

    return-object v0
.end method

.method ᕀ(J)Ljava/lang/String;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/md;->Qd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ᕑ(Ljava/lang/String;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lo/md;->Qd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ᵕ(J)V
    .locals 4

    .line 181
    invoke-virtual {p0}, Lo/md;->aQ()V

    .line 182
    iget-object v0, p0, Lo/md;->Qb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/md;->Qb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/mg;

    invoke-virtual {v0}, Lo/mg;->getId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 183
    move-object v2, p0

    monitor-enter v2

    .line 184
    :try_start_0
    iget-object v0, p0, Lo/md;->Qb:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lo/md;->Qa:Lo/sz;

    invoke-virtual {v0}, Lo/sz;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 189
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/md;->PY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lo/md;->PZ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sz;

    move-object v2, v0

    .line 191
    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {v2}, Lo/sz;->clear()V

    .line 194
    :cond_1
    return-void
.end method
