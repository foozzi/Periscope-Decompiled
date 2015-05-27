.class public final Lo/ik;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/gl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ik$if;,
        Lo/ik$ˊ;
    }
.end annotation


# instance fields
.field private final JZ:Lo/gt;

.field private final Ki:Lo/hg;

.field private final Kk:Lo/fk;


# direct methods
.method public constructor <init>(Lo/gt;Lo/fk;Lo/hg;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lo/ik;->JZ:Lo/gt;

    .line 54
    iput-object p2, p0, Lo/ik;->Kk:Lo/fk;

    .line 55
    iput-object p3, p0, Lo/ik;->Ki:Lo/hg;

    .line 56
    return-void
.end method

.method static ˊ(Lo/fk;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2

    .line 71
    const-class v0, Lo/go;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lo/go;

    move-object v1, v0

    .line 72
    if-nez v1, :cond_0

    invoke-interface {p0, p1}, Lo/fk;->ˊ(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lo/go;->value()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private ˊ(Lo/fl;Lo/jy;Ljava/lang/Class;)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/fl;Lo/jy<*>;Ljava/lang/Class<*>;)Ljava/util/Map<Ljava/lang/String;Lo/ik$\u02ca;>;"
        }
    .end annotation

    .line 126
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 127
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    return-object v7

    .line 131
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lo/jy;->V()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 132
    :goto_0
    const-class v0, Ljava/lang/Object;

    move-object/from16 v1, p3

    if-eq v1, v0, :cond_4

    .line 133
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 134
    move-object v10, v9

    array-length v11, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_3

    aget-object v13, v10, v12

    .line 135
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v13, v1}, Lo/ik;->ˊ(Ljava/lang/reflect/Field;Z)Z

    move-result v14

    .line 136
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Lo/ik;->ˊ(Ljava/lang/reflect/Field;Z)Z

    move-result v15

    .line 137
    if-nez v14, :cond_1

    if-nez v15, :cond_1

    .line 138
    goto :goto_2

    .line 140
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Lo/jy;->V()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-static {v0, v2, v1}, Lo/gs;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v16

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, p0

    invoke-direct {v3, v13}, Lo/ik;->ˋ(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lo/jy;->ʽ(Ljava/lang/reflect/Type;)Lo/jy;

    move-result-object v4

    move v5, v14

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lo/ik;->ˊ(Lo/fl;Ljava/lang/reflect/Field;Ljava/lang/String;Lo/jy;ZZ)Lo/ik$ˊ;

    move-result-object v17

    .line 144
    move-object/from16 v0, v17

    iget-object v0, v0, Lo/ik$ˊ;->name:Ljava/lang/String;

    move-object/from16 v1, v17

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ik$ˊ;

    move-object/from16 v18, v0

    .line 145
    if-eqz v18, :cond_2

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v18

    iget-object v2, v2, Lo/ik$ˊ;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 150
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lo/jy;->V()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-static {v0, v2, v1}, Lo/gs;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lo/jy;->ʽ(Ljava/lang/reflect/Type;)Lo/jy;

    move-result-object p2

    .line 151
    invoke-virtual/range {p2 .. p2}, Lo/jy;->U()Ljava/lang/Class;

    move-result-object p3

    .line 152
    goto/16 :goto_0

    .line 153
    :cond_4
    return-object v7
.end method

.method private ˊ(Lo/fl;Ljava/lang/reflect/Field;Lo/jy;)Lo/gk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/fl;Ljava/lang/reflect/Field;Lo/jy<*>;)Lo/gk<*>;"
        }
    .end annotation

    .line 117
    const-class v0, Lo/gn;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lo/gn;

    move-object v1, v0

    .line 118
    if-eqz v1, :cond_0

    .line 119
    iget-object v0, p0, Lo/ik;->JZ:Lo/gt;

    invoke-static {v0, p1, p3, v1}, Lo/ib;->ˊ(Lo/gt;Lo/fl;Lo/jy;Lo/gn;)Lo/gk;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_0

    return-object v2

    .line 122
    :cond_0
    invoke-virtual {p1, p3}, Lo/fl;->ˊ(Lo/jy;)Lo/gk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˊ(Lo/ik;Lo/fl;Ljava/lang/reflect/Field;Lo/jy;)Lo/gk;
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lo/ik;->ˊ(Lo/fl;Ljava/lang/reflect/Field;Lo/jy;)Lo/gk;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Lo/fl;Ljava/lang/reflect/Field;Ljava/lang/String;Lo/jy;ZZ)Lo/ik$ˊ;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/fl;Ljava/lang/reflect/Field;Ljava/lang/String;Lo/jy<*>;ZZ)Lo/ik$\u02ca;"
        }
    .end annotation

    .line 89
    invoke-virtual {p4}, Lo/jy;->U()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lo/hp;->ʼ(Ljava/lang/reflect/Type;)Z

    move-result v9

    .line 91
    new-instance v0, Lo/il;

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move/from16 v4, p6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lo/il;-><init>(Lo/ik;Ljava/lang/String;ZZLo/fl;Ljava/lang/reflect/Field;Lo/jy;Z)V

    return-object v0
.end method

.method static ˊ(Ljava/lang/reflect/Field;ZLo/hg;)Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lo/hg;->ˊ(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lo/hg;->ˊ(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ˋ(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lo/ik;->Kk:Lo/fk;

    invoke-static {v0, p1}, Lo/ik;->ˊ(Lo/fk;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ˊ(Lo/fl;Lo/jy;)Lo/gk;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/fl;Lo/jy<TT;>;)Lo/gk<TT;>;"
        }
    .end annotation

    .line 76
    invoke-virtual {p2}, Lo/jy;->U()Ljava/lang/Class;

    move-result-object v3

    .line 78
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lo/ik;->JZ:Lo/gt;

    invoke-virtual {v0, p2}, Lo/gt;->ˋ(Lo/jy;)Lo/ho;

    move-result-object v4

    .line 83
    new-instance v0, Lo/ik$if;

    invoke-direct {p0, p1, p2, v3}, Lo/ik;->ˊ(Lo/fl;Lo/jy;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v4, v1, v2}, Lo/ik$if;-><init>(Lo/ho;Ljava/util/Map;Lo/il;)V

    return-object v0
.end method

.method public ˊ(Ljava/lang/reflect/Field;Z)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lo/ik;->Ki:Lo/hg;

    invoke-static {p1, p2, v0}, Lo/ik;->ˊ(Ljava/lang/reflect/Field;ZLo/hg;)Z

    move-result v0

    return v0
.end method
