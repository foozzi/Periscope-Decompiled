.class public final Lo/hp;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Ls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
        }
    .end annotation
.end field

.field private static final Lt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v2, Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 44
    new-instance v3, Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 46
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v2, v3, v0, v1}, Lo/hp;->ˊ(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 47
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    invoke-static {v2, v3, v0, v1}, Lo/hp;->ˊ(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 48
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Character;

    invoke-static {v2, v3, v0, v1}, Lo/hp;->ˊ(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 49
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Double;

    invoke-static {v2, v3, v0, v1}, Lo/hp;->ˊ(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 50
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    invoke-static {v2, v3, v0, v1}, Lo/hp;->ˊ(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 51
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    invoke-static {v2, v3, v0, v1}, Lo/hp;->ˊ(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 52
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Long;

    invoke-static {v2, v3, v0, v1}, Lo/hp;->ˊ(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Short;

    invoke-static {v2, v3, v0, v1}, Lo/hp;->ˊ(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 54
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Void;

    invoke-static {v2, v3, v0, v1}, Lo/hp;->ˊ(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lo/hp;->Ls:Ljava/util/Map;

    .line 57
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lo/hp;->Lt:Ljava/util/Map;

    .line 58
    return-void
.end method

.method public static ʼ(Ljava/lang/reflect/Type;)Z
    .locals 1

    .line 70
    sget-object v0, Lo/hp;->Ls:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static ˊ(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)V"
        }
    .end annotation

    .line 62
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public static ι(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/lang/Class<TT;>;"
        }
    .end annotation

    .line 96
    sget-object v0, Lo/hp;->Ls:Ljava/util/Map;

    invoke-static {p0}, Lo/gr;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    .line 98
    if-nez v2, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0
.end method
