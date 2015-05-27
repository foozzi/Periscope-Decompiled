.class public Lo/ot;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ot$1;,
        Lo/ot$if;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;

.field private static final TK:Lo/ov;

.field private static final TL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Class<*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final TM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/concurrent/CopyOnWriteArrayList<Lo/pe;>;>;"
        }
    .end annotation
.end field

.field private final TN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Object;Ljava/util/List<Ljava/lang/Class<*>;>;>;"
        }
    .end annotation
.end field

.field private final TO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
        }
    .end annotation
.end field

.field private final TP:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<Lo/ot$if;>;"
        }
    .end annotation
.end field

.field private final TQ:Lo/ox;

.field private final TR:Lo/os;

.field private final TS:Lo/or;

.field private final TT:Lo/pd;

.field private final TU:Z

.field private final TV:Z

.field private final TW:Z

.field private final TX:Z

.field private final TY:Z

.field private final TZ:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "Event"

    sput-object v0, Lo/ot;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Lo/ov;

    invoke-direct {v0}, Lo/ov;-><init>()V

    sput-object v0, Lo/ot;->TK:Lo/ov;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/ot;->TL:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 101
    sget-object v0, Lo/ot;->TK:Lo/ov;

    invoke-direct {p0, v0}, Lo/ot;-><init>(Lo/ov;)V

    .line 102
    return-void
.end method

.method constructor <init>(Lo/ov;)V
    .locals 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lo/ou;

    invoke-direct {v0, p0}, Lo/ou;-><init>(Lo/ot;)V

    iput-object v0, p0, Lo/ot;->TP:Ljava/lang/ThreadLocal;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ot;->TM:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ot;->TN:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/ot;->TO:Ljava/util/Map;

    .line 108
    new-instance v0, Lo/ox;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Lo/ox;-><init>(Lo/ot;Landroid/os/Looper;I)V

    iput-object v0, p0, Lo/ot;->TQ:Lo/ox;

    .line 109
    new-instance v0, Lo/os;

    invoke-direct {v0, p0}, Lo/os;-><init>(Lo/ot;)V

    iput-object v0, p0, Lo/ot;->TR:Lo/os;

    .line 110
    new-instance v0, Lo/or;

    invoke-direct {v0, p0}, Lo/or;-><init>(Lo/ot;)V

    iput-object v0, p0, Lo/ot;->TS:Lo/or;

    .line 111
    new-instance v0, Lo/pd;

    iget-object v1, p1, Lo/ov;->Ui:Ljava/util/List;

    invoke-direct {v0, v1}, Lo/pd;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lo/ot;->TT:Lo/pd;

    .line 112
    iget-boolean v0, p1, Lo/ov;->TV:Z

    iput-boolean v0, p0, Lo/ot;->TV:Z

    .line 113
    iget-boolean v0, p1, Lo/ov;->TW:Z

    iput-boolean v0, p0, Lo/ot;->TW:Z

    .line 114
    iget-boolean v0, p1, Lo/ov;->TX:Z

    iput-boolean v0, p0, Lo/ot;->TX:Z

    .line 115
    iget-boolean v0, p1, Lo/ov;->TY:Z

    iput-boolean v0, p0, Lo/ot;->TY:Z

    .line 116
    iget-boolean v0, p1, Lo/ov;->TU:Z

    iput-boolean v0, p0, Lo/ot;->TU:Z

    .line 117
    iget-boolean v0, p1, Lo/ov;->TZ:Z

    iput-boolean v0, p0, Lo/ot;->TZ:Z

    .line 118
    iget-object v0, p1, Lo/ov;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lo/ot;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 119
    return-void
.end method

.method public static bW()Lo/ov;
    .locals 1

    .line 87
    new-instance v0, Lo/ov;

    invoke-direct {v0}, Lo/ov;-><init>()V

    return-object v0
.end method

.method private ˊ(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Object;Ljava/lang/Class<*>;)V"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lo/ot;->TM:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 222
    if-eqz v1, :cond_1

    .line 223
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 224
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 225
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pe;

    move-object v4, v0

    .line 226
    iget-object v0, v4, Lo/pe;->Uy:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, v4, Lo/pe;->UA:Z

    .line 228
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 229
    add-int/lit8 v3, v3, -0x1

    .line 230
    add-int/lit8 v2, v2, -0x1

    .line 224
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :cond_1
    return-void
.end method

.method private ˊ(Ljava/lang/Object;Lo/ot$if;)V
    .locals 9

    .line 376
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 377
    const/4 v4, 0x0

    .line 378
    iget-boolean v0, p0, Lo/ot;->TZ:Z

    if-eqz v0, :cond_1

    .line 379
    invoke-direct {p0, v3}, Lo/ot;->ˍ(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 380
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 381
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    .line 382
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v8, v0

    .line 383
    invoke-direct {p0, p1, p2, v8}, Lo/ot;->ˊ(Ljava/lang/Object;Lo/ot$if;Ljava/lang/Class;)Z

    move-result v0

    or-int/2addr v4, v0

    .line 381
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 385
    :cond_0
    goto :goto_1

    .line 386
    :cond_1
    invoke-direct {p0, p1, p2, v3}, Lo/ot;->ˊ(Ljava/lang/Object;Lo/ot$if;Ljava/lang/Class;)Z

    move-result v4

    .line 388
    :goto_1
    if-nez v4, :cond_3

    .line 389
    iget-boolean v0, p0, Lo/ot;->TW:Z

    if-eqz v0, :cond_2

    .line 390
    sget-object v0, Lo/ot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No subscribers registered for event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_2
    iget-boolean v0, p0, Lo/ot;->TY:Z

    if-eqz v0, :cond_3

    const-class v0, Lo/oy;

    if-eq v3, v0, :cond_3

    const-class v0, Lo/pb;

    if-eq v3, v0, :cond_3

    .line 394
    new-instance v0, Lo/oy;

    invoke-direct {v0, p0, p1}, Lo/oy;-><init>(Lo/ot;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 397
    :cond_3
    return-void
.end method

.method private ˊ(Ljava/lang/Object;Lo/pc;ZI)V
    .locals 11

    .line 171
    iget-object v3, p2, Lo/pc;->Uu:Ljava/lang/Class;

    .line 172
    iget-object v0, p0, Lo/ot;->TM:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v4, v0

    .line 173
    new-instance v5, Lo/pe;

    invoke-direct {v5, p1, p2, p4}, Lo/pe;-><init>(Ljava/lang/Object;Lo/pc;I)V

    .line 174
    if-nez v4, :cond_0

    .line 175
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 176
    iget-object v0, p0, Lo/ot;->TM:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    new-instance v0, Lo/ow;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already registered to event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ow;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    .line 188
    const/4 v7, 0x0

    :goto_1
    if-gt v7, v6, :cond_4

    .line 189
    if-eq v7, v6, :cond_2

    iget v0, v5, Lo/pe;->priority:I

    invoke-virtual {v4, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/pe;

    iget v1, v1, Lo/pe;->priority:I

    if-le v0, v1, :cond_3

    .line 190
    :cond_2
    invoke-virtual {v4, v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 191
    goto :goto_2

    .line 188
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 195
    :cond_4
    :goto_2
    iget-object v0, p0, Lo/ot;->TN:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v7, v0

    .line 196
    if-nez v7, :cond_5

    .line 197
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 198
    iget-object v0, p0, Lo/ot;->TN:Ljava/util/Map;

    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_5
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    if-eqz p3, :cond_7

    .line 204
    iget-object v9, p0, Lo/ot;->TO:Ljava/util/Map;

    monitor-enter v9

    .line 205
    :try_start_0
    iget-object v0, p0, Lo/ot;->TO:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 206
    monitor-exit v9

    goto :goto_3

    :catchall_0
    move-exception v10

    monitor-exit v9

    throw v10

    .line 207
    :goto_3
    if-eqz v8, :cond_7

    .line 210
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    invoke-direct {p0, v5, v8, v0}, Lo/ot;->ˊ(Lo/pe;Ljava/lang/Object;Z)V

    .line 213
    :cond_7
    return-void
.end method

.method private declared-synchronized ˊ(Ljava/lang/Object;ZI)V
    .locals 5

    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lo/ot;->TT:Lo/pd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/pd;->ˑ(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 164
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pc;

    move-object v4, v0

    .line 165
    invoke-direct {p0, p1, v4, p2, p3}, Lo/ot;->ˊ(Ljava/lang/Object;Lo/pc;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    goto :goto_0

    .line 167
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static ˊ(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/Class<*>;>;[Ljava/lang/Class<*>;)V"
        }
    .end annotation

    .line 473
    move-object v1, p1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 474
    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lo/ot;->ˊ(Ljava/util/List;[Ljava/lang/Class;)V

    .line 473
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 479
    :cond_1
    return-void
.end method

.method private ˊ(Lo/pe;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    .line 507
    instance-of v0, p2, Lo/pb;

    if-eqz v0, :cond_0

    .line 508
    iget-boolean v0, p0, Lo/ot;->TV:Z

    if-eqz v0, :cond_3

    .line 510
    sget-object v0, Lo/ot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubscriberExceptionEvent subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lo/pe;->Uy:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " threw an exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    move-object v0, p2

    check-cast v0, Lo/pb;

    move-object v3, v0

    .line 513
    sget-object v0, Lo/ot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lo/pb;->Ur:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caused exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lo/pb;->Us:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lo/pb;->Uq:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    goto :goto_0

    .line 517
    :cond_0
    iget-boolean v0, p0, Lo/ot;->TU:Z

    if-eqz v0, :cond_1

    .line 518
    new-instance v0, Lo/ow;

    const-string v1, "Invoking subscriber failed"

    invoke-direct {v0, v1, p3}, Lo/ow;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 520
    :cond_1
    iget-boolean v0, p0, Lo/ot;->TV:Z

    if-eqz v0, :cond_2

    .line 521
    sget-object v0, Lo/ot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not dispatch event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to subscribing class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lo/pe;->Uy:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    :cond_2
    iget-boolean v0, p0, Lo/ot;->TX:Z

    if-eqz v0, :cond_3

    .line 525
    new-instance v3, Lo/pb;

    iget-object v0, p1, Lo/pe;->Uy:Ljava/lang/Object;

    invoke-direct {v3, p0, p3, p2, v0}, Lo/pb;-><init>(Lo/ot;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 527
    invoke-virtual {p0, v3}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 530
    :cond_3
    :goto_0
    return-void
.end method

.method private ˊ(Lo/pe;Ljava/lang/Object;Z)V
    .locals 3

    .line 427
    sget-object v0, Lo/ot$1;->Ub:[I

    iget-object v1, p1, Lo/pe;->Uz:Lo/pc;

    iget-object v1, v1, Lo/pc;->Ut:Lo/pf;

    invoke-virtual {v1}, Lo/pf;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 429
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lo/ot;->ˋ(Lo/pe;Ljava/lang/Object;)V

    .line 430
    goto :goto_1

    .line 432
    :pswitch_1
    if-eqz p3, :cond_0

    .line 433
    invoke-virtual {p0, p1, p2}, Lo/ot;->ˋ(Lo/pe;Ljava/lang/Object;)V

    goto :goto_1

    .line 435
    :cond_0
    iget-object v0, p0, Lo/ot;->TQ:Lo/ox;

    invoke-virtual {v0, p1, p2}, Lo/ox;->ˊ(Lo/pe;Ljava/lang/Object;)V

    .line 437
    goto :goto_1

    .line 439
    :pswitch_2
    if-eqz p3, :cond_1

    .line 440
    iget-object v0, p0, Lo/ot;->TR:Lo/os;

    invoke-virtual {v0, p1, p2}, Lo/os;->ˊ(Lo/pe;Ljava/lang/Object;)V

    goto :goto_1

    .line 442
    :cond_1
    invoke-virtual {p0, p1, p2}, Lo/ot;->ˋ(Lo/pe;Ljava/lang/Object;)V

    .line 444
    goto :goto_1

    .line 446
    :pswitch_3
    iget-object v0, p0, Lo/ot;->TS:Lo/or;

    invoke-virtual {v0, p1, p2}, Lo/or;->ˊ(Lo/pe;Ljava/lang/Object;)V

    .line 447
    goto :goto_1

    .line 449
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown thread mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lo/pe;->Uz:Lo/pc;

    iget-object v2, v2, Lo/pc;->Ut:Lo/pf;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private ˊ(Ljava/lang/Object;Lo/ot$if;Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Object;Lo/ot$if;Ljava/lang/Class<*>;)Z"
        }
    .end annotation

    .line 401
    move-object v2, p0

    monitor-enter v2

    .line 402
    :try_start_0
    iget-object v0, p0, Lo/ot;->TM:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 403
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 404
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 405
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pe;

    move-object v3, v0

    .line 406
    iput-object p1, p2, Lo/ot$if;->Ug:Ljava/lang/Object;

    .line 407
    iput-object v3, p2, Lo/ot$if;->Uf:Lo/pe;

    .line 408
    const/4 v4, 0x0

    .line 410
    :try_start_1
    iget-boolean v0, p2, Lo/ot$if;->Ue:Z

    invoke-direct {p0, v3, p1, v0}, Lo/ot;->ˊ(Lo/pe;Ljava/lang/Object;Z)V

    .line 411
    iget-boolean v4, p2, Lo/ot$if;->canceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 413
    const/4 v0, 0x0

    iput-object v0, p2, Lo/ot$if;->Ug:Ljava/lang/Object;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p2, Lo/ot$if;->Uf:Lo/pe;

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p2, Lo/ot$if;->canceled:Z

    .line 416
    goto :goto_2

    .line 413
    :catchall_1
    move-exception v5

    const/4 v0, 0x0

    iput-object v0, p2, Lo/ot$if;->Ug:Ljava/lang/Object;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p2, Lo/ot$if;->Uf:Lo/pe;

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p2, Lo/ot$if;->canceled:Z

    throw v5

    .line 417
    :goto_2
    if-eqz v4, :cond_0

    .line 418
    goto :goto_3

    .line 420
    :cond_0
    goto :goto_1

    .line 421
    :cond_1
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 423
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private ˍ(Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Class<*>;)Ljava/util/List<Ljava/lang/Class<*>;>;"
        }
    .end annotation

    .line 455
    sget-object v1, Lo/ot;->TL:Ljava/util/Map;

    monitor-enter v1

    .line 456
    :try_start_0
    sget-object v0, Lo/ot;->TL:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 457
    if-nez v2, :cond_1

    .line 458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 459
    move-object v3, p1

    .line 460
    :goto_0
    if-eqz v3, :cond_0

    .line 461
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v2, v0}, Lo/ot;->ˊ(Ljava/util/List;[Ljava/lang/Class;)V

    .line 463
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 465
    :cond_0
    sget-object v0, Lo/ot;->TL:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :cond_1
    monitor-exit v1

    return-object v2

    .line 468
    :catchall_0
    move-exception v4

    monitor-exit v1

    throw v4
.end method


# virtual methods
.method getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 543
    iget-object v0, p0, Lo/ot;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public ʲ(Ljava/lang/Object;)V
    .locals 2

    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/ot;->ˊ(Ljava/lang/Object;ZI)V

    .line 134
    return-void
.end method

.method ˊ(Lo/oz;)V
    .locals 3

    .line 488
    iget-object v1, p1, Lo/oz;->Ug:Ljava/lang/Object;

    .line 489
    iget-object v2, p1, Lo/oz;->Uf:Lo/pe;

    .line 490
    invoke-static {p1}, Lo/oz;->ˋ(Lo/oz;)V

    .line 491
    iget-boolean v0, v2, Lo/pe;->UA:Z

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0, v2, v1}, Lo/ot;->ˋ(Lo/pe;Ljava/lang/Object;)V

    .line 494
    :cond_0
    return-void
.end method

.method ˋ(Lo/pe;Ljava/lang/Object;)V
    .locals 5

    .line 498
    :try_start_0
    iget-object v0, p1, Lo/pe;->Uz:Lo/pc;

    iget-object v0, v0, Lo/pc;->method:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lo/pe;->Uy:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 503
    goto :goto_0

    .line 499
    :catch_0
    move-exception v4

    .line 500
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo/ot;->ˊ(Lo/pe;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 503
    goto :goto_0

    .line 501
    :catch_1
    move-exception v4

    .line 502
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected exception"

    invoke-direct {v0, v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 504
    :goto_0
    return-void
.end method

.method public declared-synchronized ː(Ljava/lang/Object;)V
    .locals 6

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lo/ot;->TN:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 239
    if-eqz v3, :cond_1

    .line 240
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v5, v0

    .line 241
    invoke-direct {p0, p1, v5}, Lo/ot;->ˊ(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 242
    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lo/ot;->TN:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 245
    :cond_1
    sget-object v0, Lo/ot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber to unregister was not registered before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ˣ(Ljava/lang/Object;)V
    .locals 5

    .line 251
    iget-object v0, p0, Lo/ot;->TP:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ot$if;

    move-object v2, v0

    .line 252
    iget-object v3, v2, Lo/ot$if;->Uc:Ljava/util/List;

    .line 253
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-boolean v0, v2, Lo/ot$if;->Ud:Z

    if-nez v0, :cond_3

    .line 256
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v2, Lo/ot$if;->Ue:Z

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, v2, Lo/ot$if;->Ud:Z

    .line 258
    iget-boolean v0, v2, Lo/ot$if;->canceled:Z

    if-eqz v0, :cond_1

    .line 259
    new-instance v0, Lo/ow;

    const-string v1, "Internal error. Abort state was not reset"

    invoke-direct {v0, v1}, Lo/ow;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 263
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lo/ot;->ˊ(Ljava/lang/Object;Lo/ot$if;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 266
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, v2, Lo/ot$if;->Ud:Z

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, v2, Lo/ot$if;->Ue:Z

    .line 268
    goto :goto_2

    .line 266
    :catchall_0
    move-exception v4

    const/4 v0, 0x0

    iput-boolean v0, v2, Lo/ot$if;->Ud:Z

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, v2, Lo/ot$if;->Ue:Z

    throw v4

    .line 270
    :cond_3
    :goto_2
    return-void
.end method
