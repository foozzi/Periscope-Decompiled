.class final Lo/ᖨ;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ᒴ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᖨ$if;,
        Lo/ᖨ$ˊ;,
        Lo/ᖨ$ˋ;,
        Lo/ᖨ$ˎ;,
        Lo/ᖨ$aux;,
        Lo/ᖨ$ᐝ;,
        Lo/ᖨ$ˏ;
    }
.end annotation


# instance fields
.field private final CB:Ljava/util/concurrent/locks/Lock;

.field private final CC:Ljava/util/concurrent/locks/Condition;

.field private final CD:Lo/乀;

.field private final CE:I

.field final CF:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<Lo/\u15a8$\u141d<*>;>;"
        }
    .end annotation
.end field

.field private CG:Lcom/google/android/gms/common/ConnectionResult;

.field private CH:I

.field private volatile CI:I

.field private volatile CJ:Z

.field private CK:I

.field private CL:Z

.field private CM:I

.field private CN:J

.field private CO:J

.field private final CP:Lo/ᖨ$ˋ;

.field CQ:Landroid/content/BroadcastReceiver;

.field private final CR:Landroid/os/Bundle;

.field private final CS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/\u14b0$\u02ce<*>;Lo/\u14b0$\u02ca;>;"
        }
    .end annotation
.end field

.field private final CT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Lo/\u14b0$\u02ce<*>;>;"
        }
    .end annotation
.end field

.field private final CU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/\u14b0$\u02ce<*>;Lcom/google/android/gms/common/ConnectionResult;>;"
        }
    .end annotation
.end field

.field private final CV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private CW:Z

.field private CX:Lo/ah;

.field private CY:I

.field private CZ:Z

.field private final Cn:Landroid/os/Looper;

.field private Da:Z

.field private Db:Lo/בֿ;

.field private Dc:Z

.field private Dd:Z

.field private final De:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Lo/\u1d09<*>;>;"
        }
    .end annotation
.end field

.field final Df:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Lo/\u15a8$\u141d<*>;>;"
        }
    .end annotation
.end field

.field private final Dg:Lo/ᖨ$ˏ;

.field private final Dh:Lo/ᒴ$ˊ;

.field private final Di:Lo/ᒴ$ˏ;

.field private final Dj:Lo/乀$if;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Lo/ᒰ$ˋ;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Landroid/os/Looper;Lo/\u3043;Lo/\u14b0$\u02cb<+Lo/ah;Lo/ai;>;Ljava/util/Map<Lo/\u14b0<*>;Lo/\u14b0$if;>;Ljava/util/Map<Lo/\u14b0<*>;Ljava/lang/Boolean;>;Ljava/util/Set<Lo/\u14b4$\u02ca;>;Ljava/util/Set<Lo/\u14b4$\u02cb;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lo/ᖨ;->CC:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/ᖨ;->CF:Ljava/util/Queue;

    const/4 v0, 0x4

    iput v0, p0, Lo/ᖨ;->CI:I

    const/4 v0, 0x0

    iput v0, p0, Lo/ᖨ;->CK:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᖨ;->CL:Z

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lo/ᖨ;->CN:J

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lo/ᖨ;->CO:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/ᖨ;->CR:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ᖨ;->CT:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ᖨ;->CU:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/ᖨ;->De:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/ᖨ;->Df:Ljava/util/Set;

    new-instance v0, Lo/ᖪ;

    invoke-direct {v0, p0}, Lo/ᖪ;-><init>(Lo/ᖨ;)V

    iput-object v0, p0, Lo/ᖨ;->Dg:Lo/ᖨ$ˏ;

    new-instance v0, Lo/ᘅ;

    invoke-direct {v0, p0}, Lo/ᘅ;-><init>(Lo/ᖨ;)V

    iput-object v0, p0, Lo/ᖨ;->Dh:Lo/ᒴ$ˊ;

    new-instance v0, Lo/ᘣ;

    invoke-direct {v0, p0}, Lo/ᘣ;-><init>(Lo/ᖨ;)V

    iput-object v0, p0, Lo/ᖨ;->Di:Lo/ᒴ$ˏ;

    new-instance v0, Lo/ᘦ;

    invoke-direct {v0, p0}, Lo/ᘦ;-><init>(Lo/ᖨ;)V

    iput-object v0, p0, Lo/ᖨ;->Dj:Lo/乀$if;

    iput-object p1, p0, Lo/ᖨ;->mContext:Landroid/content/Context;

    new-instance v0, Lo/乀;

    iget-object v1, p0, Lo/ᖨ;->Dj:Lo/乀$if;

    invoke-direct {v0, p2, v1}, Lo/乀;-><init>(Landroid/os/Looper;Lo/乀$if;)V

    iput-object v0, p0, Lo/ᖨ;->CD:Lo/乀;

    iput-object p2, p0, Lo/ᖨ;->Cn:Landroid/os/Looper;

    new-instance v0, Lo/ᖨ$ˋ;

    invoke-direct {v0, p0, p2}, Lo/ᖨ$ˋ;-><init>(Lo/ᖨ;Landroid/os/Looper;)V

    iput-object v0, p0, Lo/ᖨ;->CP:Lo/ᖨ$ˋ;

    move/from16 v0, p9

    iput v0, p0, Lo/ᖨ;->CE:I

    invoke-interface/range {p7 .. p7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒴ$ˊ;

    move-object v8, v0

    iget-object v0, p0, Lo/ᖨ;->CD:Lo/乀;

    invoke-virtual {v0, v8}, Lo/乀;->ˊ(Lo/ᒴ$ˊ;)V

    goto :goto_0

    :cond_0
    invoke-interface/range {p8 .. p8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒴ$ˋ;

    move-object v8, v0

    iget-object v0, p0, Lo/ᖨ;->CD:Lo/乀;

    invoke-virtual {v0, v8}, Lo/乀;->ˊ(Lo/ᒴ$ˋ;)V

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lo/ぃ;->ᖽ()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/ᖨ;->CV:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᖨ;->CZ:Z

    const/4 v0, 0x2

    iput v0, p0, Lo/ᖨ;->CY:I

    const/4 v7, 0x0

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒰ;

    move-object v9, v0

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v11, 0x2

    goto :goto_3

    :cond_2
    const/4 v11, 0x1

    :cond_3
    :goto_3
    invoke-virtual {v9}, Lo/ᒰ;->ڽ()Lo/ᒰ$ˋ;

    move-result-object v0

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    iget-object v5, p0, Lo/ᖨ;->Dh:Lo/ᒴ$ˊ;

    invoke-direct {p0, v9, v11}, Lo/ᖨ;->ˊ(Lo/ᒰ;I)Lo/ᒴ$ˋ;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lo/ᖨ;->ˊ(Lo/ᒰ$ˋ;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;)Lo/ᒰ$ˊ;

    move-result-object v12

    iget-object v0, p0, Lo/ᖨ;->Di:Lo/ᒴ$ˏ;

    invoke-interface {v12, v0}, Lo/ᒰ$ˊ;->ˊ(Lo/ᒴ$ˏ;)V

    iget-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    invoke-virtual {v9}, Lo/ᒰ;->ܫ()Lo/ᒰ$ˎ;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lo/ᒰ;->ڽ()Lo/ᒰ$ˋ;

    move-result-object v0

    invoke-interface {v0}, Lo/ᒰ$ˋ;->getPriority()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    or-int/2addr v7, v0

    invoke-interface {v12}, Lo/ᒰ$ˊ;->ट()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᖨ;->CZ:Z

    iget v0, p0, Lo/ᖨ;->CY:I

    if-ge v11, v0, :cond_5

    iput v11, p0, Lo/ᖨ;->CY:I

    :cond_5
    if-eqz v11, :cond_6

    iget-object v0, p0, Lo/ᖨ;->CT:Ljava/util/Set;

    invoke-virtual {v9}, Lo/ᒰ;->ܫ()Lo/ᒰ$ˎ;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    goto/16 :goto_2

    :cond_7
    if-eqz v7, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᖨ;->CZ:Z

    :cond_8
    iget-boolean v0, p0, Lo/ᖨ;->CZ:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lo/ᖨ;->getSessionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Lo/ぃ;->ˊ(Ljava/lang/Integer;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, p1, p2, v0, v1}, Lo/ᖨ;->ˊ(Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Lo/ᒰ$ˋ;)V

    :cond_9
    return-void
.end method

.method private resume()V
    .locals 2

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lo/ᖨ;->Ⴡ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/ᖨ;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :goto_0
    return-void
.end method

.method static synthetic ʻ(Lo/ᖨ;)J
    .locals 2

    iget-wide v0, p0, Lo/ᖨ;->CN:J

    return-wide v0
.end method

.method static synthetic ʼ(Lo/ᖨ;)J
    .locals 2

    iget-wide v0, p0, Lo/ᖨ;->CO:J

    return-wide v0
.end method

.method static synthetic ʽ(Lo/ᖨ;)I
    .locals 1

    iget v0, p0, Lo/ᖨ;->CK:I

    return v0
.end method

.method static synthetic ʾ(Lo/ᖨ;)V
    .locals 0

    invoke-direct {p0}, Lo/ᖨ;->resume()V

    return-void
.end method

.method static synthetic ʿ(Lo/ᖨ;)V
    .locals 0

    invoke-direct {p0}, Lo/ᖨ;->ძ()V

    return-void
.end method

.method static synthetic ˈ(Lo/ᖨ;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lo/ᖨ;->CU:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic ˉ(Lo/ᖨ;)V
    .locals 0

    invoke-direct {p0}, Lo/ᖨ;->ผ()V

    return-void
.end method

.method static synthetic ˊ(Lo/ᖨ;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Lo/ᖨ;->CG:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private static ˊ(Lo/ᒰ$ˋ;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;)Lo/ᒰ$ˊ;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::Lo/\u14b0$\u02ca;O:Ljava/lang/Object;>(Lo/\u14b0$\u02cb<TC;TO;>;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lo/\u3043;Lo/\u14b4$\u02ca;Lo/\u14b4$\u02cb;)TC;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lo/ᒰ$ˋ;->ˊ(Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Ljava/lang/Object;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;)Lo/ᒰ$ˊ;

    move-result-object v0

    return-object v0
.end method

.method private final ˊ(Lo/ᒰ;I)Lo/ᒴ$ˋ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14b0<*>;I)Lo/\u14b4$\u02cb;"
        }
    .end annotation

    new-instance v0, Lo/ᘧ;

    invoke-direct {v0, p0, p2, p1}, Lo/ᘧ;-><init>(Lo/ᖨ;ILo/ᒰ;)V

    return-object v0
.end method

.method static synthetic ˊ(Lo/ᖨ;Lo/בֿ;)Lo/בֿ;
    .locals 0

    iput-object p1, p0, Lo/ᖨ;->Db:Lo/בֿ;

    return-object p1
.end method

.method private ˊ(Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Lo/ᒰ$ˋ;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Landroid/os/Looper;Lo/\u3043;Lo/\u14b0$\u02cb<+Lo/ah;Lo/ai;>;)V"
        }
    .end annotation

    move-object v0, p4

    invoke-virtual {p3}, Lo/ぃ;->ᗁ()Lo/ai;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    new-instance v5, Lo/ᖬ;

    invoke-direct {v5, p0}, Lo/ᖬ;-><init>(Lo/ᖨ;)V

    new-instance v6, Lo/ᖽ;

    invoke-direct {v6, p0}, Lo/ᖽ;-><init>(Lo/ᖨ;)V

    invoke-static/range {v0 .. v6}, Lo/ᖨ;->ˊ(Lo/ᒰ$ˋ;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;)Lo/ᒰ$ˊ;

    move-result-object v0

    check-cast v0, Lo/ah;

    iput-object v0, p0, Lo/ᖨ;->CX:Lo/ah;

    return-void
.end method

.method private ˊ(Lcom/google/android/gms/common/internal/zzaa;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzaa;->ᒵ()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->չ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᖨ;->CP:Lo/ᖨ$ˋ;

    new-instance v1, Lo/ᖾ;

    invoke-direct {v1, p0, p1}, Lo/ᖾ;-><init>(Lo/ᖨ;Lcom/google/android/gms/common/internal/zzaa;)V

    invoke-virtual {v0, v1}, Lo/ᖨ$ˋ;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lo/ᖨ;->ˎ(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    return-void
.end method

.method private ˊ(Lo/ᖨ$ᐝ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::Lo/\u14b0$\u02ca;>(Lo/\u15a8$\u141d<TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-interface {p1}, Lo/ᖨ$ᐝ;->ܫ()Lo/ᒰ$ˎ;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lo/ﺧ;->ˏ(ZLjava/lang/Object;)V

    iget-object v0, p0, Lo/ᖨ;->Df:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/ᖨ;->Dg:Lo/ᖨ$ˏ;

    invoke-interface {p1, v0}, Lo/ᖨ$ᐝ;->ˊ(Lo/ᖨ$ˏ;)V

    invoke-virtual {p0}, Lo/ᖨ;->Ⴡ()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lo/ᖨ$ᐝ;->ˎ(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p1}, Lo/ᖨ$ᐝ;->ܫ()Lo/ᒰ$ˎ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ᖨ;->ˊ(Lo/ᒰ$ˎ;)Lo/ᒰ$ˊ;

    move-result-object v2

    invoke-interface {v2}, Lo/ᒰ$ˊ;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/ᖨ;->CU:Ljava/util/Map;

    invoke-interface {p1}, Lo/ᖨ$ᐝ;->ܫ()Lo/ᒰ$ˎ;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lo/ᖨ$ᐝ;->ˎ(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_2
    invoke-interface {p1, v2}, Lo/ᖨ$ᐝ;->ˊ(Lo/ᒰ$ˊ;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    :goto_1
    return-void
.end method

.method static synthetic ˊ(Lo/ᖨ;I)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ᖨ;->ว(I)V

    return-void
.end method

.method static synthetic ˊ(Lo/ᖨ;Lcom/google/android/gms/common/internal/zzaa;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ᖨ;->ˊ(Lcom/google/android/gms/common/internal/zzaa;)V

    return-void
.end method

.method private ˊ(IILcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/common/ConnectionResult;->Դ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lo/ᖨ;->CG:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget v0, p0, Lo/ᖨ;->CH:I

    if-ge p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic ˊ(Lo/ᖨ;IILcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lo/ᖨ;->ˊ(IILcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic ˊ(Lo/ᖨ;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo/ᖨ;->CJ:Z

    return p1
.end method

.method static synthetic ˋ(Lo/ᖨ;I)I
    .locals 0

    iput p1, p0, Lo/ᖨ;->CH:I

    return p1
.end method

.method static synthetic ˋ(Lo/ᖨ;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lo/ᖨ;->CR:Landroid/os/Bundle;

    return-object v0
.end method

.method private ˋ(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᖨ;->CL:Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->Դ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lo/ᖨ;->ᐡ(Z)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lo/ᖨ;->ว(I)V

    invoke-virtual {p0}, Lo/ᖨ;->Ⴡ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ᖨ;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-static {v0, v1}, Lo/ძ;->ʽ(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lo/ᖨ;->ძ()V

    iget-object v0, p0, Lo/ᖨ;->CD:Lo/乀;

    invoke-virtual {v0, p1}, Lo/乀;->ʽ(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᖨ;->CW:Z

    return-void
.end method

.method static synthetic ˋ(Lo/ᖨ;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ᖨ;->ˎ(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic ˋ(Lo/ᖨ;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo/ᖨ;->Da:Z

    return p1
.end method

.method static synthetic ˌ(Lo/ᖨ;)V
    .locals 0

    invoke-direct {p0}, Lo/ᖨ;->ห()V

    return-void
.end method

.method static synthetic ˍ(Lo/ᖨ;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lo/ᖨ;->CT:Ljava/util/Set;

    return-object v0
.end method

.method private ˎ(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lo/ᖨ;->CP:Lo/ᖨ$ˋ;

    new-instance v1, Lo/ᖿ;

    invoke-direct {v1, p0, p1}, Lo/ᖿ;-><init>(Lo/ᖨ;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Lo/ᖨ$ˋ;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic ˎ(Lo/ᖨ;)V
    .locals 0

    invoke-direct {p0}, Lo/ᖨ;->ป()V

    return-void
.end method

.method static synthetic ˎ(Lo/ᖨ;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ᖨ;->ᐝ(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic ˎ(Lo/ᖨ;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo/ᖨ;->Dc:Z

    return p1
.end method

.method static synthetic ˏ(Lo/ᖨ;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/ᖨ;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private ˏ(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 2

    iget v0, p0, Lo/ᖨ;->CY:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lo/ᖨ;->CY:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->Դ()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic ˏ(Lo/ᖨ;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    invoke-direct {p0, p1}, Lo/ᖨ;->ˏ(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic ˏ(Lo/ᖨ;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo/ᖨ;->Dd:Z

    return p1
.end method

.method static synthetic ˑ(Lo/ᖨ;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic ͺ(Lo/ᖨ;)I
    .locals 1

    iget v0, p0, Lo/ᖨ;->CI:I

    return v0
.end method

.method static synthetic ـ(Lo/ᖨ;)V
    .locals 0

    invoke-direct {p0}, Lo/ᖨ;->โ()V

    return-void
.end method

.method private ป()V
    .locals 4

    iget v0, p0, Lo/ᖨ;->CM:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/ᖨ;->CM:I

    iget v0, p0, Lo/ᖨ;->CM:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lo/ᖨ;->CG:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᖨ;->CG:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lo/ᖨ;->ˋ(Lcom/google/android/gms/common/ConnectionResult;)V

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lo/ᖨ;->CK:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lo/ᖨ;->CZ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lo/ᖨ;->CK:I

    invoke-direct {p0}, Lo/ᖨ;->ห()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lo/ᖨ;->โ()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lo/ᖨ;->ล()V

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lo/ᖨ;->CI:I

    invoke-direct {p0}, Lo/ᖨ;->ძ()V

    iget-object v0, p0, Lo/ᖨ;->CX:Lo/ah;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lo/ᖨ;->Dc:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ᖨ;->CX:Lo/ah;

    iget-object v1, p0, Lo/ᖨ;->Db:Lo/בֿ;

    iget-boolean v2, p0, Lo/ᖨ;->Dd:Z

    invoke-interface {v0, v1, v2}, Lo/ah;->ˊ(Lo/בֿ;Z)V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ᖨ;->ᐡ(Z)V

    :cond_3
    iget-object v0, p0, Lo/ᖨ;->CC:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    invoke-direct {p0}, Lo/ᖨ;->ไ()V

    iget-boolean v0, p0, Lo/ᖨ;->CL:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᖨ;->CL:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lo/ᖨ;->ว(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lo/ᖨ;->CR:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lo/ᖨ;->CR:Landroid/os/Bundle;

    :goto_0
    iget-object v0, p0, Lo/ᖨ;->CD:Lo/乀;

    invoke-virtual {v0, v3}, Lo/乀;->ˎ(Landroid/os/Bundle;)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private ผ()V
    .locals 2

    iget-object v0, p0, Lo/ᖨ;->CX:Lo/ah;

    new-instance v1, Lo/ᖨ$ˊ;

    invoke-direct {v1, p0}, Lo/ᖨ$ˊ;-><init>(Lo/ᖨ;)V

    invoke-interface {v0, v1}, Lo/ah;->ˊ(Lo/ﺕ;)V

    return-void
.end method

.method private ภ()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Set<Lcom/google/android/gms/common/api/Scope;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lo/ᖨ;->CV:Ljava/util/List;

    invoke-static {v1}, Lo/h;->ʾ(Ljava/util/List;)[Lcom/google/android/gms/common/api/Scope;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private ล()V
    .locals 4

    iget-object v0, p0, Lo/ᖨ;->CX:Lo/ah;

    iget-object v1, p0, Lo/ᖨ;->Db:Lo/בֿ;

    invoke-direct {p0}, Lo/ᖨ;->ภ()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lo/ᖨ$if;

    invoke-direct {v3, p0}, Lo/ᖨ$if;-><init>(Lo/ᖨ;)V

    invoke-interface {v0, v1, v2, v3}, Lo/ah;->ˊ(Lo/בֿ;Ljava/util/Set;Lo/an;)V

    return-void
.end method

.method private ว(I)V
    .locals 7

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lo/ᖨ;->CI:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lo/ᖨ;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ᖨ;->CF:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᖨ$ᐝ;

    move-object v3, v0

    invoke-interface {v3}, Lo/ᖨ$ᐝ;->ท()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-interface {v3}, Lo/ᖨ$ᐝ;->cancel()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    iget-object v0, p0, Lo/ᖨ;->CF:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᖨ$ᐝ;

    move-object v3, v0

    invoke-interface {v3}, Lo/ᖨ$ᐝ;->cancel()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lo/ᖨ;->CF:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :goto_2
    iget-object v0, p0, Lo/ᖨ;->Df:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᖨ$ᐝ;

    move-object v3, v0

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lo/ᖨ$ᐝ;->ˊ(Lo/ᖨ$ˏ;)V

    invoke-interface {v3}, Lo/ᖨ$ᐝ;->cancel()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lo/ᖨ;->Df:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lo/ᖨ;->De:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴉ;

    move-object v3, v0

    invoke-virtual {v3}, Lo/ᴉ;->clear()V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lo/ᖨ;->De:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lo/ᖨ;->CG:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_6

    iget-object v0, p0, Lo/ᖨ;->CF:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᖨ;->CL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_6
    :try_start_1
    iget-object v0, p0, Lo/ᖨ;->CU:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_7
    invoke-virtual {p0}, Lo/ᖨ;->isConnecting()Z

    move-result v2

    invoke-virtual {p0}, Lo/ᖨ;->isConnected()Z

    move-result v3

    const/4 v0, 0x3

    iput v0, p0, Lo/ᖨ;->CI:I

    if-eqz v2, :cond_9

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᖨ;->CG:Lcom/google/android/gms/common/ConnectionResult;

    :cond_8
    iget-object v0, p0, Lo/ᖨ;->CC:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᖨ;->CW:Z

    iget-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒰ$ˊ;

    move-object v5, v0

    invoke-interface {v5}, Lo/ᒰ$ˊ;->disconnect()V

    goto :goto_5

    :cond_a
    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    invoke-direct {p0, v4}, Lo/ᖨ;->ᐡ(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᖨ;->CW:Z

    const/4 v0, 0x4

    iput v0, p0, Lo/ᖨ;->CI:I

    if-eqz v3, :cond_d

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lo/ᖨ;->CD:Lo/乀;

    invoke-virtual {v0, p1}, Lo/乀;->ᵅ(I)V

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᖨ;->CW:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_7

    :catchall_0
    move-exception v6

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    :goto_7
    return-void
.end method

.method private ห()V
    .locals 5

    invoke-virtual {p0}, Lo/ᖨ;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lo/ᖨ;->CP:Lo/ᖨ$ˋ;

    invoke-virtual {v1}, Lo/ᖨ$ˋ;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This method must be run on the mHandlerForCallbacks thread"

    invoke-static {v0, v1}, Lo/ﺧ;->ˎ(ZLjava/lang/Object;)V

    iget v0, p0, Lo/ᖨ;->CK:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lo/ᖨ;->Da:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lo/ᖨ;->CM:I

    iget-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒰ$ˎ;

    move-object v3, v0

    iget-object v0, p0, Lo/ᖨ;->CU:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lo/ᖨ;->ป()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v4

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    :goto_2
    goto :goto_3

    :cond_1
    iget-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒰ$ˊ;

    iget-object v1, p0, Lo/ᖨ;->Db:Lo/בֿ;

    invoke-interface {v0, v1}, Lo/ᒰ$ˊ;->ˊ(Lo/בֿ;)V

    :goto_3
    goto :goto_1

    :cond_2
    return-void
.end method

.method private โ()V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Lo/ᖨ;->CK:I

    iget-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lo/ᖨ;->CM:I

    iget-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒰ$ˎ;

    move-object v3, v0

    iget-object v0, p0, Lo/ᖨ;->CU:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/ᖨ;->ป()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒰ$ˊ;

    iget-object v1, p0, Lo/ᖨ;->Db:Lo/בֿ;

    invoke-interface {v0, v1}, Lo/ᒰ$ˊ;->ˋ(Lo/בֿ;)V

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method private ไ()V
    .locals 4

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lo/ᖨ;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/ᖨ;->Ⴡ()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lo/ﺧ;->ˎ(ZLjava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lo/ᖨ;->CF:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lo/ᖨ;->CF:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᖨ$ᐝ;

    invoke-direct {p0, v0}, Lo/ᖨ;->ˊ(Lo/ᖨ$ᐝ;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v0, "GoogleApiClientImpl"

    const-string v1, "Service died while flushing queue"

    :try_start_2
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v3

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    :goto_2
    return-void
.end method

.method private ძ()V
    .locals 3

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lo/ᖨ;->CJ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lo/ᖨ;->CJ:Z

    iget-object v0, p0, Lo/ᖨ;->CP:Lo/ᖨ$ˋ;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lo/ᖨ$ˋ;->removeMessages(I)V

    iget-object v0, p0, Lo/ᖨ;->CP:Lo/ᖨ$ˋ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ᖨ$ˋ;->removeMessages(I)V

    iget-object v0, p0, Lo/ᖨ;->CQ:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ᖨ;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/ᖨ;->CQ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᖨ;->CQ:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :goto_0
    return-void
.end method

.method static synthetic ᐝ(Lo/ᖨ;)Lo/ᖨ$ˋ;
    .locals 1

    iget-object v0, p0, Lo/ᖨ;->CP:Lo/ᖨ$ˋ;

    return-object v0
.end method

.method private ᐝ(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->չ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᖨ;->CP:Lo/ᖨ$ˋ;

    new-instance v1, Lo/ᗁ;

    invoke-direct {v1, p0}, Lo/ᗁ;-><init>(Lo/ᖨ;)V

    invoke-virtual {v0, v1}, Lo/ᖨ$ˋ;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lo/ᖨ;->ˎ(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    return-void
.end method

.method static synthetic ᐝ(Lo/ᖨ;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ᖨ;->ˋ(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic ᐝ(Lo/ᖨ;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo/ᖨ;->CW:Z

    return p1
.end method

.method private ᐡ(Z)V
    .locals 1

    iget-object v0, p0, Lo/ᖨ;->CX:Lo/ah;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ᖨ;->CX:Lo/ah;

    invoke-interface {v0}, Lo/ah;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/ᖨ;->CX:Lo/ah;

    invoke-interface {v0}, Lo/ah;->ﾓ()V

    :cond_0
    iget-object v0, p0, Lo/ᖨ;->CX:Lo/ah;

    invoke-interface {v0}, Lo/ah;->disconnect()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᖨ;->Db:Lo/בֿ;

    :cond_2
    return-void
.end method

.method static synthetic ι(Lo/ᖨ;)Z
    .locals 1

    iget-boolean v0, p0, Lo/ᖨ;->CW:Z

    return v0
.end method


# virtual methods
.method public connect()V
    .locals 4

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lo/ᖨ;->CL:Z

    invoke-virtual {p0}, Lo/ᖨ;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/ᖨ;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lo/ᖨ;->CW:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᖨ;->CG:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x1

    iput v0, p0, Lo/ᖨ;->CI:I

    const/4 v0, 0x0

    iput v0, p0, Lo/ᖨ;->CK:I

    iget-object v0, p0, Lo/ᖨ;->CR:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lo/ᖨ;->CM:I

    iget-object v0, p0, Lo/ᖨ;->CU:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᖨ;->Da:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᖨ;->Dc:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᖨ;->Dd:Z

    iget-boolean v0, p0, Lo/ᖨ;->CZ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ᖨ;->CX:Lo/ah;

    invoke-interface {v0}, Lo/ah;->connect()V

    :cond_2
    iget-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒰ$ˊ;

    move-object v2, v0

    invoke-interface {v2}, Lo/ᒰ$ˊ;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    :goto_1
    return-void
.end method

.method public disconnect()V
    .locals 1

    invoke-direct {p0}, Lo/ᖨ;->ძ()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lo/ᖨ;->ว(I)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "GoogleApiClient:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mConnectionState="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget v0, p0, Lo/ᖨ;->CI:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "CONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string v0, "CONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string v0, "DISCONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string v0, "DISCONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    const-string v0, "UNKNOWN"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    const-string v0, " mResuming="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lo/ᖨ;->CJ:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWaitingToDisconnect="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lo/ᖨ;->CL:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mWorkQueue.size()="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lo/ᖨ;->CF:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mUnconsumedRunners.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lo/ᖨ;->Df:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒰ$ˊ;

    move-object v4, v0

    invoke-interface {v4, v2, p2, p3, p4}, Lo/ᒰ$ˊ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lo/ᖨ;->Cn:Landroid/os/Looper;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 2

    iget v0, p0, Lo/ᖨ;->CI:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnecting()Z
    .locals 2

    iget v0, p0, Lo/ᖨ;->CI:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˊ(Lo/ᒰ$ˎ;)Lo/ᒰ$ˊ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::Lo/\u14b0$\u02ca;>(Lo/\u14b0$\u02ce<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒰ$ˊ;

    move-object v1, v0

    const-string v0, "Appropriate Api was not requested."

    invoke-static {v1, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public ˊ(Lo/ᖧ$if;)Lo/ᖧ$if;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::Lo/\u14b0$\u02ca;R::Lo/\u14b9;T:Lo/\u15a7$if<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lo/ᖨ;->CS:Ljava/util/Map;

    invoke-virtual {p1}, Lo/ᖧ$if;->ܫ()Lo/ᒰ$ˎ;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v0, v1}, Lo/ﺧ;->ˏ(ZLjava/lang/Object;)V

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lo/ᖨ;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lo/ᖨ;->ˋ(Lo/ᖧ$if;)Lo/ᖧ$if;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ᖨ;->CF:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v2, p1

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catchall_0
    move-exception v3

    iget-object v0, p0, Lo/ᖨ;->CB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public ˊ(Lo/ᒴ$ˊ;)V
    .locals 1

    iget-object v0, p0, Lo/ᖨ;->CD:Lo/乀;

    invoke-virtual {v0, p1}, Lo/乀;->ˊ(Lo/ᒴ$ˊ;)V

    return-void
.end method

.method public ˊ(Lo/ᒴ$ˋ;)V
    .locals 1

    iget-object v0, p0, Lo/ᖨ;->CD:Lo/乀;

    invoke-virtual {v0, p1}, Lo/乀;->ˊ(Lo/ᒴ$ˋ;)V

    return-void
.end method

.method public ˋ(Lo/ᖧ$if;)Lo/ᖧ$if;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::Lo/\u14b0$\u02ca;T:Lo/\u15a7$if<+Lo/\u14b9;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lo/ᖨ;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/ᖨ;->Ⴡ()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lo/ﺧ;->ˎ(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lo/ᖨ;->ไ()V

    :try_start_0
    invoke-direct {p0, p1}, Lo/ᖨ;->ˊ(Lo/ᖨ$ᐝ;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/ᖨ;->ว(I)V

    :goto_1
    return-object p1
.end method

.method public ˋ(Lo/ᒴ$ˊ;)V
    .locals 1

    iget-object v0, p0, Lo/ᖨ;->CD:Lo/乀;

    invoke-virtual {v0, p1}, Lo/乀;->ˋ(Lo/ᒴ$ˊ;)V

    return-void
.end method

.method public ˋ(Lo/ᒴ$ˋ;)V
    .locals 1

    iget-object v0, p0, Lo/ᖨ;->CD:Lo/乀;

    invoke-virtual {v0, p1}, Lo/乀;->ˋ(Lo/ᒴ$ˋ;)V

    return-void
.end method

.method Ⴡ()Z
    .locals 1

    iget-boolean v0, p0, Lo/ᖨ;->CJ:Z

    return v0
.end method
