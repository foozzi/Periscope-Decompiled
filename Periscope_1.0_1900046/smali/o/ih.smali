.class public final Lo/ih;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/gl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ih$if;
    }
.end annotation


# instance fields
.field private final JZ:Lo/gt;

.field private final Kq:Z


# direct methods
.method public constructor <init>(Lo/gt;Z)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lo/ih;->JZ:Lo/gt;

    .line 112
    iput-boolean p2, p0, Lo/ih;->Kq:Z

    .line 113
    return-void
.end method

.method private ˊ(Lo/fl;Ljava/lang/reflect/Type;)Lo/gk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/fl;Ljava/lang/reflect/Type;)Lo/gk<*>;"
        }
    .end annotation

    .line 140
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lo/ir;->Mh:Lo/gk;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lo/jy;->ʽ(Ljava/lang/reflect/Type;)Lo/jy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/fl;->ˊ(Lo/jy;)Lo/gk;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static synthetic ˊ(Lo/ih;)Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lo/ih;->Kq:Z

    return v0
.end method


# virtual methods
.method public ˊ(Lo/fl;Lo/jy;)Lo/gk;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/fl;Lo/jy<TT;>;)Lo/gk<TT;>;"
        }
    .end annotation

    .line 116
    invoke-virtual/range {p2 .. p2}, Lo/jy;->V()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 118
    invoke-virtual/range {p2 .. p2}, Lo/jy;->U()Ljava/lang/Class;

    move-result-object v9

    .line 119
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_0
    invoke-static {v8}, Lo/gs;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v10

    .line 124
    invoke-static {v8, v10}, Lo/gs;->ˋ(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v11

    .line 125
    const/4 v0, 0x0

    aget-object v0, v11, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v0}, Lo/ih;->ˊ(Lo/fl;Ljava/lang/reflect/Type;)Lo/gk;

    move-result-object v12

    .line 126
    const/4 v0, 0x1

    aget-object v0, v11, v0

    invoke-static {v0}, Lo/jy;->ʽ(Ljava/lang/reflect/Type;)Lo/jy;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lo/fl;->ˊ(Lo/jy;)Lo/gk;

    move-result-object v13

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ih;->JZ:Lo/gt;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lo/gt;->ˋ(Lo/jy;)Lo/ho;

    move-result-object v14

    .line 131
    new-instance v0, Lo/ih$if;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    aget-object v3, v11, v3

    move-object v4, v12

    const/4 v5, 0x1

    aget-object v5, v11, v5

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lo/ih$if;-><init>(Lo/ih;Lo/fl;Ljava/lang/reflect/Type;Lo/gk;Ljava/lang/reflect/Type;Lo/gk;Lo/ho;)V

    move-object v15, v0

    .line 133
    return-object v15
.end method
