.class public Lo/pj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/pj$if;
    }
.end annotation


# static fields
.field static volatile UL:Lo/pj;

.field static final UM:Lo/ps;


# instance fields
.field private final UN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Class<+Lo/pq;>;Lo/pq;>;"
        }
    .end annotation
.end field

.field private final UO:Lo/pn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/pn<Lo/pj;>;"
        }
    .end annotation
.end field

.field private final UP:Lo/pn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/pn<*>;"
        }
    .end annotation
.end field

.field private UQ:Lo/pg;

.field private UR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
        }
    .end annotation
.end field

.field private US:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final UT:Lo/ps;

.field final UU:Z

.field private final dV:Landroid/content/Context;

.field private final eN:Landroid/os/Handler;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final ok:Lo/qr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lo/pi;

    invoke-direct {v0}, Lo/pi;-><init>()V

    sput-object v0, Lo/pj;->UM:Lo/ps;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lo/ro;Landroid/os/Handler;Lo/ps;ZLo/pn;Lo/qr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Ljava/util/Map<Ljava/lang/Class<+Lo/pq;>;Lo/pq;>;Lo/ro;Landroid/os/Handler;Lo/ps;ZLo/pn;Lo/qr;)V"
        }
    .end annotation

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lo/pj;->dV:Landroid/content/Context;

    .line 265
    iput-object p2, p0, Lo/pj;->UN:Ljava/util/Map;

    .line 266
    iput-object p3, p0, Lo/pj;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 267
    iput-object p4, p0, Lo/pj;->eN:Landroid/os/Handler;

    .line 268
    iput-object p5, p0, Lo/pj;->UT:Lo/ps;

    .line 269
    iput-boolean p6, p0, Lo/pj;->UU:Z

    .line 270
    iput-object p7, p0, Lo/pj;->UO:Lo/pn;

    .line 271
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/pj;->US:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 272
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/pj;->‿(I)Lo/pn;

    move-result-object v0

    iput-object v0, p0, Lo/pj;->UP:Lo/pn;

    .line 273
    iput-object p8, p0, Lo/pj;->ok:Lo/qr;

    .line 274
    return-void
.end method

.method static cb()Lo/pj;
    .locals 2

    .line 252
    sget-object v0, Lo/pj;->UL:Lo/pj;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    sget-object v0, Lo/pj;->UL:Lo/pj;

    return-object v0
.end method

.method public static cd()Lo/ps;
    .locals 1

    .line 508
    sget-object v0, Lo/pj;->UL:Lo/pj;

    if-nez v0, :cond_0

    .line 509
    sget-object v0, Lo/pj;->UM:Lo/ps;

    return-object v0

    .line 511
    :cond_0
    sget-object v0, Lo/pj;->UL:Lo/pj;

    iget-object v0, v0, Lo/pj;->UT:Lo/ps;

    return-object v0
.end method

.method public static ce()Z
    .locals 1

    .line 518
    sget-object v0, Lo/pj;->UL:Lo/pj;

    if-nez v0, :cond_0

    .line 519
    const/4 v0, 0x0

    return v0

    .line 521
    :cond_0
    sget-object v0, Lo/pj;->UL:Lo/pj;

    iget-boolean v0, v0, Lo/pj;->UU:Z

    return v0
.end method

.method private init()V
    .locals 2

    .line 343
    iget-object v0, p0, Lo/pj;->dV:Landroid/content/Context;

    invoke-direct {p0, v0}, Lo/pj;->ˡ(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/pj;->ᐧ(Landroid/app/Activity;)Lo/pj;

    .line 344
    new-instance v0, Lo/pg;

    iget-object v1, p0, Lo/pj;->dV:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/pg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/pj;->UQ:Lo/pg;

    .line 345
    iget-object v0, p0, Lo/pj;->UQ:Lo/pg;

    new-instance v1, Lo/pk;

    invoke-direct {v1, p0}, Lo/pk;-><init>(Lo/pj;)V

    invoke-virtual {v0, v1}, Lo/pg;->ˊ(Lo/pg$ˊ;)Z

    .line 363
    iget-object v0, p0, Lo/pj;->dV:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lo/pj;->ˇ(Landroid/content/Context;)V

    .line 364
    return-void
.end method

.method public static varargs ˊ(Landroid/content/Context;[Lo/pq;)Lo/pj;
    .locals 3

    .line 288
    sget-object v0, Lo/pj;->UL:Lo/pj;

    if-nez v0, :cond_1

    .line 289
    const-class v1, Lo/pj;

    monitor-enter v1

    .line 290
    :try_start_0
    sget-object v0, Lo/pj;->UL:Lo/pj;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lo/pj$if;

    invoke-direct {v0, p0}, Lo/pj$if;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lo/pj$if;->ˊ([Lo/pq;)Lo/pj$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/pj$if;->cf()Lo/pj;

    move-result-object v0

    invoke-static {v0}, Lo/pj;->ˊ(Lo/pj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 295
    :cond_1
    :goto_0
    sget-object v0, Lo/pj;->UL:Lo/pj;

    return-object v0
.end method

.method private static ˊ(Lo/pj;)V
    .locals 0

    .line 319
    sput-object p0, Lo/pj;->UL:Lo/pj;

    .line 320
    invoke-direct {p0}, Lo/pj;->init()V

    .line 321
    return-void
.end method

.method private static ˋ(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Collection<+Lo/pq;>;)Ljava/util/Map<Ljava/lang/Class<+Lo/pq;>;Lo/pq;>;"
        }
    .end annotation

    .line 546
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 549
    invoke-static {v1, p0}, Lo/pj;->ˏ(Ljava/util/Map;Ljava/util/Collection;)V

    .line 551
    return-object v1
.end method

.method static synthetic ˋ(Lo/pj;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/pj;->US:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic ˎ(Ljava/util/Collection;)Ljava/util/Map;
    .locals 1

    .line 30
    invoke-static {p0}, Lo/pj;->ˋ(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˎ(Lo/pj;)Lo/pn;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/pj;->UO:Lo/pn;

    return-object v0
.end method

.method private static ˏ(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/Class<+Lo/pq;>;Lo/pq;>;Ljava/util/Collection<+Lo/pq;>;)V"
        }
    .end annotation

    .line 557
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pq;

    move-object v2, v0

    .line 558
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    instance-of v0, v2, Lo/pr;

    if-eqz v0, :cond_0

    .line 561
    move-object v0, v2

    check-cast v0, Lo/pr;

    invoke-interface {v0}, Lo/pr;->ｼ()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lo/pj;->ˏ(Ljava/util/Map;Ljava/util/Collection;)V

    .line 563
    :cond_0
    goto :goto_0

    .line 564
    :cond_1
    return-void
.end method

.method private ˡ(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 465
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 466
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 468
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ـ(Ljava/lang/Class;)Lo/pq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Lo/pq;>(Ljava/lang/Class<TT;>;)TT;"
        }
    .end annotation

    .line 501
    invoke-static {}, Lo/pj;->cb()Lo/pj;

    move-result-object v0

    iget-object v0, v0, Lo/pj;->UN:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pq;

    return-object v0
.end method


# virtual methods
.method public cc()Lo/pg;
    .locals 1

    .line 473
    iget-object v0, p0, Lo/pj;->UQ:Lo/pg;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 336
    iget-object v0, p0, Lo/pj;->UR:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lo/pj;->UR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 339
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 477
    iget-object v0, p0, Lo/pj;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 370
    const-string v0, "1.3.0.41"

    return-object v0
.end method

.method ˇ(Landroid/content/Context;)V
    .locals 9

    .line 383
    invoke-virtual {p0}, Lo/pj;->ｼ()Ljava/util/Collection;

    move-result-object v3

    .line 384
    new-instance v4, Lo/pt;

    invoke-direct {v4, v3}, Lo/pt;-><init>(Ljava/util/Collection;)V

    .line 385
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 386
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 390
    sget-object v0, Lo/pn;->Ve:Lo/pn;

    iget-object v1, p0, Lo/pj;->ok:Lo/qr;

    invoke-virtual {v4, p1, p0, v0, v1}, Lo/pt;->ˊ(Landroid/content/Context;Lo/pj;Lo/pn;Lo/qr;)V

    .line 391
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pq;

    move-object v7, v0

    .line 392
    iget-object v0, p0, Lo/pj;->UP:Lo/pn;

    iget-object v1, p0, Lo/pj;->ok:Lo/qr;

    invoke-virtual {v7, p1, p0, v0, v1}, Lo/pq;->ˊ(Landroid/content/Context;Lo/pj;Lo/pn;Lo/qr;)V

    .line 393
    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {v4}, Lo/pt;->initialize()V

    .line 401
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lo/ps;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/pj;->ｯ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/pj;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], with the following kits:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    .line 408
    :cond_1
    const/4 v6, 0x0

    .line 411
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pq;

    move-object v8, v0

    .line 412
    iget-object v0, v8, Lo/pq;->Vg:Lo/pp;

    iget-object v1, v4, Lo/pt;->Vg:Lo/pp;

    invoke-virtual {v0, v1}, Lo/pp;->ˊ(Lo/rp;)V

    .line 414
    iget-object v0, p0, Lo/pj;->UN:Ljava/util/Map;

    invoke-virtual {p0, v0, v8}, Lo/pj;->ˊ(Ljava/util/Map;Lo/pq;)V

    .line 416
    invoke-virtual {v8}, Lo/pq;->initialize()V

    .line 418
    if-eqz v6, :cond_2

    .line 419
    invoke-virtual {v8}, Lo/pq;->ｯ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lo/pq;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_2
    goto :goto_2

    .line 426
    :cond_3
    if-eqz v6, :cond_4

    .line 427
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_4
    return-void
.end method

.method ˊ(Ljava/util/Map;Lo/pq;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/Class<+Lo/pq;>;Lo/pq;>;Lo/pq;)V"
        }
    .end annotation

    .line 437
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lo/rg;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lo/rg;

    move-object v2, v0

    .line 438
    if-eqz v2, :cond_4

    .line 439
    invoke-interface {v2}, Lo/rg;->cV()[Ljava/lang/Class;

    move-result-object v3

    .line 440
    move-object v4, v3

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 441
    invoke-virtual {v7}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pq;

    move-object v9, v0

    .line 444
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p2, Lo/pq;->Vg:Lo/pp;

    iget-object v1, v9, Lo/pq;->Vg:Lo/pp;

    invoke-virtual {v0, v1}, Lo/pp;->ˊ(Lo/rp;)V

    .line 448
    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_2

    .line 451
    :cond_2
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pq;

    move-object v8, v0

    .line 452
    if-nez v8, :cond_3

    .line 453
    new-instance v0, Lo/rq;

    const-string v1, "Referenced Kit was null, does the kit exist?"

    invoke-direct {v0, v1}, Lo/rq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_3
    iget-object v0, p2, Lo/pq;->Vg:Lo/pp;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/pq;

    iget-object v1, v1, Lo/pq;->Vg:Lo/pp;

    invoke-virtual {v0, v1}, Lo/pp;->ˊ(Lo/rp;)V

    .line 440
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 462
    :cond_4
    return-void
.end method

.method public ᐧ(Landroid/app/Activity;)Lo/pj;
    .locals 1

    .line 327
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/pj;->UR:Ljava/lang/ref/WeakReference;

    .line 328
    return-object p0
.end method

.method ‿(I)Lo/pn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Lo/pn<*>;"
        }
    .end annotation

    .line 567
    new-instance v0, Lo/pl;

    invoke-direct {v0, p0, p1}, Lo/pl;-><init>(Lo/pj;I)V

    return-object v0
.end method

.method public ｯ()Ljava/lang/String;
    .locals 1

    .line 378
    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public ｼ()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Collection<Lo/pq;>;"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lo/pj;->UN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
