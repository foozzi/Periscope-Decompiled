.class public final Lo/gt;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final Kl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/reflect/Type;Lo/fs<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/reflect/Type;Lo/fs<*>;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lo/gt;->Kl:Ljava/util/Map;

    .line 49
    return-void
.end method

.method private ʻ(Ljava/lang/Class;)Lo/ho;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/lang/Class<-TT;>;)Lo/ho<TT;>;"
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 99
    :cond_0
    new-instance v0, Lo/gz;

    invoke-direct {v0, p0, v1}, Lo/gz;-><init>(Lo/gt;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method private ˎ(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lo/ho;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;Ljava/lang/Class<-TT;>;)Lo/ho<TT;>;"
        }
    .end annotation

    .line 130
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lo/ha;

    invoke-direct {v0, p0}, Lo/ha;-><init>(Lo/gt;)V

    return-object v0

    .line 137
    :cond_0
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Lo/hb;

    invoke-direct {v0, p0, p1}, Lo/hb;-><init>(Lo/gt;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 153
    :cond_1
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    new-instance v0, Lo/hc;

    invoke-direct {v0, p0}, Lo/hc;-><init>(Lo/gt;)V

    return-object v0

    .line 159
    :cond_2
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    new-instance v0, Lo/hd;

    invoke-direct {v0, p0}, Lo/hd;-><init>(Lo/gt;)V

    return-object v0

    .line 166
    :cond_3
    new-instance v0, Lo/he;

    invoke-direct {v0, p0}, Lo/he;-><init>(Lo/gt;)V

    return-object v0

    .line 174
    :cond_4
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 175
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    new-instance v0, Lo/hf;

    invoke-direct {v0, p0}, Lo/hf;-><init>(Lo/gt;)V

    return-object v0

    .line 181
    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_6

    const-class v0, Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lo/jy;->ʽ(Ljava/lang/reflect/Type;)Lo/jy;

    move-result-object v1

    invoke-virtual {v1}, Lo/jy;->U()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 183
    new-instance v0, Lo/gv;

    invoke-direct {v0, p0}, Lo/gv;-><init>(Lo/gt;)V

    return-object v0

    .line 189
    :cond_6
    new-instance v0, Lo/gw;

    invoke-direct {v0, p0}, Lo/gw;-><init>(Lo/gt;)V

    return-object v0

    .line 197
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private ˏ(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lo/ho;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;Ljava/lang/Class<-TT;>;)Lo/ho<TT;>;"
        }
    .end annotation

    .line 202
    new-instance v0, Lo/gx;

    invoke-direct {v0, p0, p2, p1}, Lo/gx;-><init>(Lo/gt;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lo/gt;->Kl:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lo/jy;)Lo/ho;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/jy<TT;>;)Lo/ho<TT;>;"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lo/jy;->V()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lo/jy;->U()Ljava/lang/Class;

    move-result-object v2

    .line 58
    iget-object v0, p0, Lo/gt;->Kl:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fs;

    move-object v3, v0

    .line 59
    if-eqz v3, :cond_0

    .line 60
    new-instance v0, Lo/gu;

    invoke-direct {v0, p0, v3, v1}, Lo/gu;-><init>(Lo/gt;Lo/fs;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lo/gt;->Kl:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fs;

    move-object v4, v0

    .line 71
    if-eqz v4, :cond_1

    .line 72
    new-instance v0, Lo/gy;

    invoke-direct {v0, p0, v4, v1}, Lo/gy;-><init>(Lo/gt;Lo/fs;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 79
    :cond_1
    invoke-direct {p0, v2}, Lo/gt;->ʻ(Ljava/lang/Class;)Lo/ho;

    move-result-object v5

    .line 80
    if-eqz v5, :cond_2

    .line 81
    return-object v5

    .line 84
    :cond_2
    invoke-direct {p0, v1, v2}, Lo/gt;->ˎ(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lo/ho;

    move-result-object v6

    .line 85
    if-eqz v6, :cond_3

    .line 86
    return-object v6

    .line 90
    :cond_3
    invoke-direct {p0, v1, v2}, Lo/gt;->ˏ(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lo/ho;

    move-result-object v0

    return-object v0
.end method
