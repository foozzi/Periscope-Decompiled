.class Lo/pd;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Uw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lo/pc;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final Ux:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/pd;->Uw:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/Class<*>;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/pd;->Ux:Ljava/util/Map;

    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    .line 49
    iget-object v0, p0, Lo/pd;->Ux:Ljava/util/Map;

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method ˑ(Ljava/lang/Class;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Class<*>;)Ljava/util/List<Lo/pc;>;"
        }
    .end annotation

    .line 55
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 57
    sget-object v5, Lo/pd;->Uw:Ljava/util/Map;

    monitor-enter v5

    .line 58
    :try_start_0
    sget-object v0, Lo/pd;->Uw:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    .line 59
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    .line 60
    :goto_0
    if-eqz v4, :cond_0

    .line 61
    return-object v4

    .line 63
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    move-object/from16 v5, p1

    .line 65
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    :goto_1
    if-eqz v5, :cond_b

    .line 68
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 69
    const-string v0, "java."

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "javax."

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "android."

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    goto/16 :goto_5

    .line 75
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 76
    move-object v10, v9

    array-length v11, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_a

    aget-object v13, v10, v12

    .line 77
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    .line 78
    const-string v0, "onEvent"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 79
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v15

    .line 80
    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_8

    and-int/lit16 v0, v15, 0x1448

    if-nez v0, :cond_8

    .line 81
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v16

    .line 82
    move-object/from16 v0, v16

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 83
    const-string v0, "onEvent"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 85
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 86
    sget-object v18, Lo/pf;->UB:Lo/pf;

    goto :goto_3

    .line 87
    :cond_2
    const-string v0, "MainThread"

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    sget-object v18, Lo/pf;->UC:Lo/pf;

    goto :goto_3

    .line 89
    :cond_3
    const-string v0, "BackgroundThread"

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    sget-object v18, Lo/pf;->UD:Lo/pf;

    goto :goto_3

    .line 91
    :cond_4
    const-string v0, "Async"

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    sget-object v18, Lo/pf;->UE:Lo/pf;

    goto :goto_3

    .line 94
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/pd;->Ux:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    goto/16 :goto_4

    .line 97
    :cond_6
    new-instance v0, Lo/ow;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal onEvent method, check for typos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ow;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :goto_3
    const/4 v0, 0x0

    aget-object v19, v16, v0

    .line 101
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 102
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const/16 v0, 0x3e

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 105
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    new-instance v0, Lo/pc;

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Lo/pc;-><init>(Ljava/lang/reflect/Method;Lo/pf;Ljava/lang/Class;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_7
    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/pd;->Ux:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 111
    sget-object v0, Lo/ot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping method (not public, static or abstract): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_9
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 116
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 117
    goto/16 :goto_1

    .line 118
    :cond_b
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 119
    new-instance v0, Lo/ow;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no public methods called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ow;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_c
    sget-object v8, Lo/pd;->Uw:Ljava/util/Map;

    monitor-enter v8

    .line 123
    :try_start_1
    sget-object v0, Lo/pd;->Uw:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    monitor-exit v8

    goto :goto_6

    :catchall_1
    move-exception v21

    monitor-exit v8

    throw v21

    .line 125
    :goto_6
    return-object v4
.end method
